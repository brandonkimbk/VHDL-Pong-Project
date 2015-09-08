library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DrawScreen is
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
end DrawScreen;
	
architecture behavioural of DrawScreen is
	begin
	
	process(clk)
	
	variable x_temp0: unsigned(7 downto 0) := "00000000";
	variable y_temp0: unsigned(6 downto 0) := "0000000";
	
	constant P1_GOALIE_X : unsigned(7 downto 0) := to_unsigned(25,8);
	constant P1_FORWARD_X : unsigned(7 downto 0) := to_unsigned(55,8);
	constant P2_GOALIE_X : unsigned(7 downto 0) := to_unsigned(135,8);
	constant P2_FORWARD_X : unsigned(7 downto 0) := to_unsigned(115,8);
	
	begin
		if(rising_edge(clk)) then
			
			--initialize

			if ( y_temp0 < 120 ) then

				if ( x_temp0 < 160 ) then
				
					-- background colour
					if ( y_temp0 >= 0 AND y_temp0 < 10 ) then
						colour <= "010";
					elsif ( y_temp0 >= 110 AND y_temp0 < 120 ) then
						colour <= "010";
					elsif ( x_temp0 >= 0 AND x_temp0 < 10) then
						colour <= "011";
					elsif ( x_temp0 >= 150 AND x_temp0 < 160 ) then
						colour <= "011";
					else
						colour <= "000";
					end if;
					
					-- p1 goalie
					if( x_temp0 = P1_GOALIE_X) then
						if(y_temp0 >= unsigned(p1_goalie_y) AND y_temp0 <= (unsigned(p1_goalie_y)+ 9) )then 
						colour <= "001";
						end if;
					end if;
					
					-- p1 forward
					if( x_temp0 = P1_FORWARD_X) then
						if(y_temp0 >= unsigned(p1_forward_y) AND y_temp0 <= (unsigned(p1_forward_y)+ 9) )then 
						colour <= "001";
						end if;
					end if;
					
					-- p2 goalie
					if( x_temp0 = P2_GOALIE_X) then
						if(y_temp0 >= unsigned(p2_goalie_y) AND y_temp0 <= (unsigned(p2_goalie_y)+ 9) )then 
						colour <= "100";
						end if;
					end if;
					
					-- p2 forward
					if( x_temp0 = P2_FORWARD_X) then
						if(y_temp0 >= unsigned(p2_forward_y) AND y_temp0 <= (unsigned(p2_forward_y)+ 9) )then 
						colour <= "100";
						end if;
					end if;

					--puck
					if( x_temp0 = unsigned(puck_x_coord) AND y_temp0 = unsigned(puck_y_coord)) then
						colour <= "111";
					end if;
					
				--plot pixel
			   	plot <= not clk;
				x <= std_logic_vector(x_temp0(7 downto 0));
				y <= std_logic_vector(y_temp0(6 downto 0));

					
					x_temp0 := x_temp0 + 1;			-- increment

				else
					y_temp0 :=  y_temp0 + 1;
					x_temp0 := "00000000";	
				end if;
			else 
			
				x_temp0 := "00000000";	
				y_temp0 := "0000000";	
			end if;
		end if;
	end process;
end architecture

;