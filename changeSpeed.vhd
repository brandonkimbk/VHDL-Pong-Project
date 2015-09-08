library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity changeSpeed is
	port( clk : in std_logic;
			reset_connect : in std_logic;
			idle_connect :in std_logic;
			slowclock : out std_logic
	);
end changeSpeed;

architecture behavioural of changeSpeed is
begin
	process(clk,reset_connect) 
		variable count: unsigned (23 downto 0) := to_unsigned(0,24);
		variable count_to: unsigned (23 downto 0) := to_unsigned(20000000,24);	--starting speed
		begin
			if(reset_connect = '1') then
				count := to_unsigned(0,24);
				count_to := to_unsigned(2000000,24);										-- starting speed
			elsif( falling_edge(clk) ) then
				if (idle_connect = '0') then 		-- IDLE IS OFF
					if( count < count_to) then
						count := count + 1;
						slowclock <= '0';
					elsif( count = count_to) then
						count := to_unsigned(0,24);
						if(count_to > to_unsigned(500000,24)) then			-- only speed up to this much
							count_to := count_to - to_unsigned(2500,24);		-- speed up by this much
						end if;
						slowclock <= '1';
					end if;
				end if;
			end if;
	end process;
end behavioural;