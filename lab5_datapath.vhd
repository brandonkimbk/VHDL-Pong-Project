library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity lab5_datapath is
	PORT(
			clock : IN STD_LOGIC;
			reset : IN std_logic;
			p1_goalie_sw : in std_logic;
			p1_forward_sw: in std_logic;
			p2_goalie_sw : in std_logic;
			p2_forward_sw: in std_logic;
			colour   : out  std_logic_vector(2 downto 0);
			x        : out  std_logic_vector(7 downto 0);
			y        : out  std_logic_vector(6 downto 0);
			plot		: out std_logic;
			
			score_p1: out std_logic;
			score_p2: out std_logic;
			reset_connect: in std_logic;
			idle_connect: in std_logic
	);
END lab5_datapath;

ARCHITECTURE Behavioural of lab5_datapath is
	
	component changeSpeed is
		port( clk : in std_logic;
				reset_connect : in std_logic;
				idle_connect :in std_logic;
				slowclock : out std_logic
		);
	end component;
	
	component player_move is
		port(
			clk 		: in std_logic; -- A 50MHz clock
			slowclock	: in std_logic;
			
			player_sw		: in std_logic;

			player_y		: out std_logic_vector(6 downto 0);
			player_boundary	: in std_logic_vector(1 downto 0);
			
			reset_connect: in std_logic;
			idle_connect: in std_logic
		);  
	end component;
	
	component puck_move is
		port(
			clk : in std_logic; -- A 50MHz clock
			slowclock : in std_logic;
			
			puck_x_coord : out std_logic_vector(7 downto 0);
			puck_y_coord : out std_logic_vector(6 downto 0);
			puck_x_direction : out unsigned(0 downto 0);
			puck_boundary : in std_logic;
			puck_player  : in std_logic;
			
			reset_connect: in std_logic;
			idle_connect: in std_logic
		);  
	end component;

	component collision_detect is
		port(
			clk : in std_logic; -- A 50MHz clock
			p1_goalie_y  : in std_logic_vector(6 downto 0);
			p1_forward_y : in std_logic_vector(6 downto 0);
			p2_goalie_y  : in std_logic_vector(6 downto 0);
			p2_forward_y : in std_logic_vector(6 downto 0);
			puck_x_coord : in std_logic_vector(7 downto 0);
			puck_y_coord : in std_logic_vector(6 downto 0);
			
			p1_goalie_sw : in std_logic;
			p1_forward_sw: in std_logic;
			p2_goalie_sw : in std_logic;
			p2_forward_sw: in std_logic;
			
			p1_goalie_boundary  : out std_logic_vector(1 downto 0);	-- "00" for no bound, "10" for upper, "01" for lower
			p1_forward_boundary : out std_logic_vector(1 downto 0);
			p2_goalie_boundary  : out std_logic_vector(1 downto 0);
			p2_forward_boundary : out std_logic_vector(1 downto 0);
			puck_boundary: out std_logic;
			puck_player: out std_logic;
			puck_x_direction: in unsigned(0 downto 0);
			
			score_p1: out std_logic;
			score_p2: out std_logic
		);  
	end component;
	
	component DrawScreen is
		port(	clk		: in std_logic;
				p1_goalie_y : in std_logic_vector(6 downto 0);
				p1_forward_y : in std_logic_vector(6 downto 0);
				p2_goalie_y : in std_logic_vector(6 downto 0);
				p2_forward_y : in std_logic_vector(6 downto 0);
				
				puck_y_coord : in std_logic_vector(6 downto 0);
				puck_x_coord : in std_logic_vector(7 downto 0);
				
				x		: out std_logic_vector(7 downto 0);
				y		: out std_logic_vector(6 downto 0);
				
				colour	: out std_logic_vector(2 downto 0);
				plot		: out std_logic
		);
	end component;
	
	
	signal slowclock : std_logic;
	signal p1_goalie_y : std_logic_vector(6 downto 0);
	signal p1_forward_y : std_logic_vector(6 downto 0);
	signal p2_goalie_y : std_logic_vector(6 downto 0);
	signal p2_forward_y : std_logic_vector(6 downto 0);
	signal puck_x_coord : std_logic_vector(7 downto 0);
	signal puck_y_coord : std_logic_vector(6 downto 0);
	
	signal puck_boundary : std_logic;
	signal puck_player : std_logic;
	signal p1_goalie_boundary : std_logic_vector(1 downto 0);
	signal p1_forward_boundary : std_logic_vector(1 downto 0);
	signal p2_goalie_boundary : std_logic_vector(1 downto 0);
	signal p2_forward_boundary : std_logic_vector(1 downto 0);
	signal pixelColour : std_logic_vector(2 downto 0);
	
	signal x_connect : std_logic_vector(7 downto 0);
	signal y_connect : std_logic_vector(6 downto 0);
	signal puck_x_direction: unsigned(0 downto 0);
	
	
begin	

	DiffClock: changeSpeed
		port map (clk => clock, slowclock => slowclock, reset_connect => reset_connect, idle_connect => idle_connect);
		
	Pl_goalie: player_move
		port map(clk => clock, slowclock => slowclock, player_sw => p1_goalie_sw, 
			player_y	=> p1_goalie_y, player_boundary => p1_goalie_boundary,
			reset_connect => reset_connect, idle_connect => idle_connect
		);  
	P1_forward: player_move
		port map(clk => clock, slowclock => slowclock, player_sw => p1_forward_sw, 
			player_y	=> p1_forward_y, player_boundary => p1_forward_boundary,
			reset_connect => reset_connect, idle_connect => idle_connect
		);  
	P2_goalie: player_move
		port map(clk => clock, slowclock => slowclock, player_sw => p2_goalie_sw, 
			player_y	=> p2_goalie_y, player_boundary => p2_goalie_boundary,
			reset_connect => reset_connect, idle_connect => idle_connect
		);  
	P2_forward: player_move
		port map(clk => clock, slowclock => slowclock, player_sw => p2_forward_sw, 
			player_y	=> p2_forward_y, player_boundary => p2_forward_boundary,
			reset_connect => reset_connect, idle_connect => idle_connect
		);  
		
	Puck_Movement: puck_move
		port map(clk => clock, slowclock => slowclock, puck_x_coord => puck_x_coord, 
			puck_y_coord => puck_y_coord, puck_boundary => puck_boundary, puck_player => puck_player,
			reset_connect => reset_connect, idle_connect => idle_connect, puck_x_direction => puck_x_direction
		);  

	Collision: collision_detect
		port map(clk => clock, 
			p1_goalie_y => p1_goalie_y, p1_goalie_boundary => p1_goalie_boundary,
			p1_forward_y => p1_forward_y, p1_forward_boundary => p1_forward_boundary,
			p2_goalie_y => p2_goalie_y, p2_goalie_boundary => p2_goalie_boundary,
			p2_forward_y => p2_forward_y, p2_forward_boundary => p2_forward_boundary,
			puck_x_coord => puck_x_coord, puck_y_coord => puck_y_coord, puck_boundary => puck_boundary,
			puck_player => puck_player, score_p1 => score_p1, score_p2 => score_p2,
			p1_goalie_sw => p1_goalie_sw, p1_forward_sw => p1_forward_sw,
			p2_goalie_sw => p2_goalie_sw, p2_forward_sw => p2_forward_sw, 
			puck_x_direction => puck_x_direction
		);  
	
	screen: DrawScreen
		port map( clk => clock, x => x, y => y, Colour=> Colour, plot => plot, 
		p1_goalie_y => p1_goalie_y, p1_forward_y => p1_forward_y,
		p2_goalie_y => p2_goalie_y, p2_forward_y => p2_forward_y,
		puck_x_coord => puck_x_coord, puck_y_coord => puck_y_coord
		);
		
	
end Behavioural;