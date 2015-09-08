library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity screenColour is
	port(x_connect		: in std_logic_vector(7 downto 0);
		  y_connect		: in std_logic_vector(6 downto 0);

		  pixelColour	: out std_logic_vector(2 downto 0)
		);
end screenColour;
	
architecture behavioural of screenColour is
begin
	process( x_connect, y_connect )
		variable x_temp0: unsigned(7 downto 0) := "00000000";
		variable y_temp0: unsigned(6 downto 0) := "0000000";
	
	begin
		x_temp0 := unsigned(x_connect);
		y_temp0 := unsigned(y_connect);
		
	--	if (y_temp0 >= 0 AND y_temp0 < 10 ) then
	--		pixelColour <= "100"; --RED
	--	elsif ( y_temp0 >= 110 AND y_temp0 < 120 ) then
	--			pixelColour <= "011"; --CYAN
		if ( x_temp0 >= 0 AND x_temp0 < 10) then
				pixelColour <= "010";
		elsif ( x_temp0 >= 150 AND x_temp0 < 160 ) then
				pixelColour <= "011";
		else
				pixelColour <= "000"; --BLACK
		end if;
	end process;
end architecture;