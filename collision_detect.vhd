library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity collision_detect is
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
end collision_detect;


architecture behavioural of collision_detect is
begin
	process(clk)
	
	constant UPPER_BOUND : unsigned(6 downto 0) := to_unsigned(10,7);				--6 is the size of the unsigned
	constant LOWER_BOUND : unsigned(6 downto 0) := to_unsigned(109,7);
	constant LEFT_BOUND : unsigned(7 downto 0) := to_unsigned(10,8);				--6 is the size of the unsigned
	constant RIGHT_BOUND : unsigned(7 downto 0) := to_unsigned(149,8);
	
	constant P1_GOALIE_X : unsigned(7 downto 0) := to_unsigned(25,8);
	constant P1_FORWARD_X : unsigned(7 downto 0) := to_unsigned(55,8);
	constant P2_GOALIE_X : unsigned(7 downto 0) := to_unsigned(135,8);
	constant P2_FORWARD_X : unsigned(7 downto 0) := to_unsigned(115,8);
	
	variable p1_goalie_upper : unsigned(6 downto 0);
	variable p1_forward_upper : unsigned(6 downto 0);
	variable p2_goalie_upper : unsigned(6 downto 0);
	variable p2_forward_upper : unsigned(6 downto 0);
	
	begin
		if(rising_edge(clk)) then
			if(unsigned(p1_goalie_y)= UPPER_BOUND) then		--p1_goalie
				p1_goalie_boundary <= "10";
			elsif((unsigned(p1_goalie_y)+9) = LOWER_BOUND) then	
				p1_goalie_boundary <= "01";
			else
				p1_goalie_boundary <= "00";
			end if;
			
			if(unsigned(p1_forward_y)= UPPER_BOUND) then		--p1_forward
				p1_forward_boundary <= "10";
			elsif((unsigned(p1_forward_y)+9) = LOWER_BOUND) then	
				p1_forward_boundary <= "01";
			else
				p1_forward_boundary <= "00";
			end if;
			
			if(unsigned(p2_goalie_y)= UPPER_BOUND) then		--p2_goalie
				p2_goalie_boundary <= "10";
			elsif((unsigned(p2_goalie_y)+9) = LOWER_BOUND) then	
				p2_goalie_boundary <= "01";
			else
				p2_goalie_boundary <= "00";
			end if;
			
			if(unsigned(p2_forward_y)= UPPER_BOUND) then		--p2_forward
				p2_forward_boundary <= "10";
			elsif((unsigned(p2_forward_y)+9) = LOWER_BOUND) then	
				p2_forward_boundary <= "01";
			else
				p2_forward_boundary <= "00";
			end if;

			if(unsigned(puck_y_coord)= UPPER_BOUND OR unsigned(puck_y_coord)= LOWER_BOUND) then	--puck top/bottom boundary
				puck_boundary <= '1';
			else 
				puck_boundary <= '0';
			end if;
			
			--=================PLAYER COLLISION DETECTOR================
			--if sw is down = 0, compare puck_y_coord to player_y-1 and
			--if sw is up = 1, compare puck_y_coord to player y+1.
			--ALSO, check left boundary of paddle only when puck is moving to the right, etc.
			
			--SW CHECK
			if(p1_goalie_sw = '1') then							-- if going up
				p1_goalie_upper := unsigned(p1_goalie_y)-1;	-- move boundary one pixel up
			else
				p1_goalie_upper := unsigned(p1_goalie_y)+1;
			end if;
			
			if(p1_forward_sw = '1') then								-- if going up
				p1_forward_upper := unsigned(p1_forward_y)-1;	-- move boundary one pixel up
			else
				p1_forward_upper := unsigned(p1_forward_y)+1;
			end if;
			
			if(p2_goalie_sw = '1') then							-- if going up
				p2_goalie_upper := unsigned(p2_goalie_y)-1;	-- move boundary one pixel up
			else
				p2_goalie_upper := unsigned(p2_goalie_y)+1;
			end if;
			
			if(p2_forward_sw = '1') then								-- if going up
				p2_forward_upper := unsigned(p2_forward_y)-1;	-- move boundary one pixel up
			else
				p2_forward_upper := unsigned(p2_forward_y)+1;
			end if;
			------------------
	
			--P1_goalie
			if((unsigned(puck_x_coord)=(P1_GOALIE_X+1)) AND ((unsigned(puck_y_coord)>=p1_goalie_upper) AND 
			(unsigned(puck_y_coord)<=(p1_goalie_upper+9))) AND (puck_x_direction)="0") then
				puck_player <= '1';
				
			--P1_forward
			elsif((unsigned(puck_x_coord)=(P1_FORWARD_X-1)) AND ((unsigned(puck_y_coord)>=p1_forward_upper) AND 
			(unsigned(puck_y_coord)<=(p1_forward_upper+9))) AND (puck_x_direction)="1") then
				puck_player <= '1';
			elsif((unsigned(puck_x_coord)=(P1_FORWARD_X+1)) AND ((unsigned(puck_y_coord)>=p1_forward_upper) AND 
			(unsigned(puck_y_coord)<=(p1_forward_upper+9))) AND (puck_x_direction)="0") then
				puck_player <= '1';
			
			--P2_goalie
			elsif((unsigned(puck_x_coord)=(P2_GOALIE_X-1)) AND ((unsigned(puck_y_coord)>=p2_goalie_upper) AND 
			(unsigned(puck_y_coord)<=(p2_goalie_upper+9))) AND (puck_x_direction)="1") then
				puck_player <= '1';
				
			--P2_forward
			elsif((unsigned(puck_x_coord)=(P2_FORWARD_X-1)) AND ((unsigned(puck_y_coord)>=p2_forward_upper) AND 
			(unsigned(puck_y_coord)<=(p2_forward_upper+9))) AND (puck_x_direction)="1") then
				puck_player <= '1';
			elsif((unsigned(puck_x_coord)=(P2_FORWARD_X+1)) AND ((unsigned(puck_y_coord)>=p2_forward_upper) AND 
			(unsigned(puck_y_coord)<=(p2_forward_upper+9))) AND (puck_x_direction)="0") then
				puck_player <= '1';
			else
				puck_player <= '0';
			end if;
			--================================================================
			
			if(unsigned(puck_x_coord)= LEFT_BOUND) then
				score_p2 <= '1';
			elsif(unsigned(puck_x_coord) = RIGHT_BOUND) then 
				score_p1 <= '1';
			else
				score_p1 <= '0';
				score_p2 <= '0';
			end if;
			
		end if;
	end process;
		
end behavioural;