library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity draw is
	port(	clk			: in std_logic;
			pixelColour	: in std_logic_vector(2 downto 0);
			
			x_connect	: out std_logic_vector(7 downto 0);
			y_connect		: out std_logic_vector(6 downto 0);
			
			x		: out std_logic_vector(7 downto 0);
			y		: out std_logic_vector(6 downto 0);
			colour		: out std_logic_vector(2 downto 0);
			plot		: out std_logic
	);
end draw;
	
architecture behavioural of draw is
begin

	process(clk) is
	
		variable x_temp0: unsigned(7 downto 0) := "00000000";
		variable y_temp0: unsigned(6 downto 0) := "0000000";
		variable clk_held: std_logic := '0';
	
	begin

		if(rising_edge(clk)) then
		
			--delay	
			if(clk_held = '1') then
				clk_held := '0';
			else
				clk_held := '1';
			end if;

			--increment
			if ( y_temp0 <= 120 ) then
				if ( x_temp0 <= 160 ) then
					colour <= pixelColour;
					x_temp0 := x_temp0 + 1;				
				else
					y_temp0 :=  y_temp0 + 1;
					x_temp0 := "00000000";	
				end if;
			else								-- if done looping
				y_temp0 := "0000000";
				x_temp0 := "00000000";
			end if;
	
			--plot pixel
			if( clk_held = '1') then							-- first cycle, send coordinates to screenColour
				x_connect <= std_logic_vector(x_temp0(7 downto 0));
				y_connect <= std_logic_vector(x_temp0(6 downto 0));
			else														-- second cycle, draw the coordinates
				
				x <= std_logic_vector(x_temp0(7 downto 0));
				y <= std_logic_vector(y_temp0(6 downto 0));	
				plot <= not clk;
		
			end if;
		end if;
	end process;
end architecture;