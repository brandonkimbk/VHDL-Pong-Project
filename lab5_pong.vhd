library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab5_pong is
  port(CLOCK_50            : in  std_logic;
       KEY                 : in  std_logic_vector(3 downto 0);
       SW                  : in  std_logic_vector(17 downto 0);
		 
		 LEDR						: out std_logic_vector(17 downto 0);		-- for debugging
		 HEX7 : out std_logic_vector(6 downto 0);  
	    HEX6 : out std_logic_vector(6 downto 0);  
	    HEX5 : out std_logic_vector(6 downto 0);  
	    HEX4 : out std_logic_vector(6 downto 0);   

	    HEX3 : out std_logic_vector(6 downto 0); 
	    HEX2 : out std_logic_vector(6 downto 0);  
	    HEX1 : out std_logic_vector(6 downto 0);  
	    HEX0 : out std_logic_vector(6 downto 0);  
		 
       VGA_R, VGA_G, VGA_B : out std_logic_vector(9 downto 0);  -- The outs go to VGA controller
       VGA_HS              : out std_logic;
       VGA_VS              : out std_logic;
       VGA_BLANK           : out std_logic;
       VGA_SYNC            : out std_logic;
       VGA_CLK             : out std_logic
	);
end lab5_pong;

architecture rtl of lab5_pong is

 --Component from the Verilog file: vga_adapter.v

  component vga_adapter
    generic(RESOLUTION : string);
    port (resetn                                       : in  std_logic;
          clock                                        : in  std_logic;
          colour                                       : in  std_logic_vector(2 downto 0);
          x                                            : in  std_logic_vector(7 downto 0);
          y                                            : in  std_logic_vector(6 downto 0);
          plot                                         : in  std_logic;
          VGA_R, VGA_G, VGA_B                          : out std_logic_vector(9 downto 0);
          VGA_HS, VGA_VS, VGA_BLANK, VGA_SYNC, VGA_CLK : out std_logic);
  end component;

  
	component lab5_fsm is
		port(	clock: in std_logic;
				reset: in std_logic;
				nextStep: in std_logic; --use this to register start button
				score_p1: in std_logic; --this is from collision detector
				score_p2: in std_logic;

				winner1: out std_logic_vector(8 downto 0);		--LEDR17..9
				winner2: out std_logic_vector(8 downto 0);		--LEDR8..0
				
				reset_connect: out std_logic;
				idle_connect: out std_logic;
				P1_score_count : out std_logic_vector(3 downto 0); --this is what gets sent to HEX
				P2_score_count : out std_logic_vector(3 downto 0)
			);
	end component;
	
	component lab5_datapath IS
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
	END component;
	
	component write7seg is
		port(
			disp : in std_logic_vector(3 downto 0);  
			-- 7-segment display
			seg7 : out std_logic_vector(6 downto 0)
		);  
	end component ;
	
  
	signal x      : std_logic_vector(7 downto 0);
	signal y      : std_logic_vector(6 downto 0);
	signal colour : std_logic_vector(2 downto 0);
	signal plot   : std_logic;
	signal score_p1: std_logic;
	signal score_p2: std_logic;
	signal reset_connect : std_logic;
	signal idle_connect  : std_logic;
   signal P1_score_count : std_logic_vector(3 downto 0);
	signal P2_score_count : std_logic_vector(3 downto 0);
  
  
begin

  -- includes the vga adapter, which should be in your project 
  vga_u0 : vga_adapter
    generic map(RESOLUTION => "160x120") 
    port map(resetn    => KEY(3),
             clock     => CLOCK_50,
             colour    => colour,
             x         => x,
             y         => y,
             plot      => plot,
             VGA_R     => VGA_R,
             VGA_G     => VGA_G,
             VGA_B     => VGA_B,
             VGA_HS    => VGA_HS,
             VGA_VS    => VGA_VS,
             VGA_BLANK => VGA_BLANK,
             VGA_SYNC  => VGA_SYNC,
             VGA_CLK   => VGA_CLK);
	
		U0: lab5_fsm 
		port map(clock => CLOCK_50, reset => KEY(3), nextStep => KEY(0), score_p1 => score_p1, score_p2 => score_p2,
				winner1 => LEDR(17 downto 9), winner2 => LEDR(8 downto 0), 
				reset_connect => reset_connect, idle_connect => idle_connect, 
				P1_score_count => P1_score_count, 
				P2_score_count => P2_score_count
				);
		
		U1: lab5_datapath
		port map(clock => CLOCK_50, reset => KEY(3), p1_goalie_sw => SW(17), p1_forward_sw => SW(16), 
				p2_goalie_sw => SW(0),	p2_forward_sw => SW(1), colour => colour, x => x, y => y, plot => plot,
				score_p1 => score_p1, score_p2 => score_p2, reset_connect => reset_connect, idle_connect => idle_connect 
				);
		
		DispP1Score: write7seg 
			port map(  disp => P1_score_count, seg7 => HEX7 
			);
	
		DispP2Score: write7seg 
			port map(  disp => P2_score_count, seg7 => HEX0 
			);
		
		--clear other 7segs
		
		clrhex1: write7seg
			port map(  disp => "1111", seg7 => HEX1 
			);
		
		clrhex2: write7seg
			port map(  disp => "1111", seg7 => HEX2 
			);
		
		clrhex3: write7seg
			port map(  disp => "1111", seg7 => HEX3  
			);
		
		clrhex4: write7seg
			port map(  disp => "1111", seg7 => HEX4  
			);
		
		clrhex5: write7seg
			port map(  disp => "1111", seg7 => HEX5 
			);
		
		clrhex6: write7seg
			port map(  disp => "1111", seg7 => HEX6 
			);


end RTL;