library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity player_move is
	port(
			clk 		: in std_logic; -- A 50MHz clock
			slowclock	: in std_logic;
			
			player_sw	: in std_logic;

			player_y	: out std_logic_vector(6 downto 0);
			player_boundary	: in std_logic_vector(1 downto 0);
			
			reset_connect: in std_logic;
			idle_connect: in std_logic
	);  
end player_move;


architecture behavioural of player_move is
begin
	process(clk, reset_connect)
	
	variable y_coord : unsigned(6 downto 0) := to_unsigned(55,7);
	
	begin
		if(reset_connect = '1') then
			y_coord := to_unsigned(55,7);
			player_y	<= std_logic_vector(y_coord);
		
		elsif(rising_edge(clk)) then
			if(idle_connect = '0') then		-- IDLE IS OFF
			
				if(slowclock = '1') then
					if(player_boundary = "00") then 	-- boundary is not met
						if (player_sw = '1') then		-- if sw is up
							y_coord := y_coord - 1;
						else
							y_coord := y_coord + 1;
						end if;
					elsif(player_boundary = "10") then	-- upper boundary is met
						if (player_sw = '0') then
							y_coord := y_coord + 1;
						end if;
					else											-- lower boundary is met
						if (player_sw = '1') then
							y_coord := y_coord -1;
						end if;		
					end if;
					player_y <= std_logic_vector(y_coord);
				end if;
			end if;
		end if;
	end process;
end behavioural;