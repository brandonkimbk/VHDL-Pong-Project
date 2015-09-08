library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity puck_move is
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
end puck_move;


architecture behavioural of puck_move is
begin
	process(clk, reset_connect)
	
	variable puck_x_coord_temp : unsigned(7 downto 0) := to_unsigned(80,8);
	variable puck_y_coord_temp : unsigned(6 downto 0) := to_unsigned(60,7);
	
	variable puck_x_vector : unsigned(0 downto 0) := "1";		-- positive 1
	variable puck_y_vector : unsigned(0 downto 0) := "1";		-- positive 1
	
	
	begin
		if(reset_connect = '1') then
			puck_x_coord_temp := to_unsigned(80,8);
			puck_y_coord_temp := to_unsigned(60,7);
			puck_x_vector := "1";		-- positive 1
			puck_y_vector := "1";		-- positive 1
			
			puck_x_coord <= std_logic_vector(puck_x_coord_temp);
			puck_y_coord <= std_logic_vector(puck_y_coord_temp);
			
		elsif(rising_edge(clk)) then
			if(idle_connect = '0') then		-- DO EVERYTHING
				
				if(slowclock = '1') then
					if(puck_boundary = '1') then			-- if boundary is met, inverse vector
						puck_y_vector := puck_y_vector + 1;
					end if;
					
					if(puck_player = '1') then
						puck_x_vector := puck_x_vector +1;
					end if;

					if (puck_x_vector = "1") then			-- for x coordinate 
						puck_x_coord_temp := puck_x_coord_temp + 1;
					else
						puck_x_coord_temp := puck_x_coord_temp - 1;
					end if;
					
					if (puck_y_vector = "1") then			-- for y coordinate 
						puck_y_coord_temp := puck_y_coord_temp + 1;
					else
						puck_y_coord_temp := puck_y_coord_temp - 1;
					end if;
					
					puck_x_coord <= std_logic_vector(puck_x_coord_temp);
					puck_y_coord <= std_logic_vector(puck_y_coord_temp);
					puck_x_direction <= puck_x_vector;
																
				end if;
			end if;
		end if;
	end process;
end behavioural;