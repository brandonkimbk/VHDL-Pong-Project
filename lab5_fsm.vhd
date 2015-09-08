library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab5_fsm is
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
end lab5_fsm;


architecture behavioural of lab5_fsm is	
	
	signal nextStep_pulse : std_logic;
begin

		process(clock) 
			type button_fsm is (idle,triggered);
			variable button_state : button_fsm := idle;
		begin
			if(falling_edge(clock)) then
				case button_state is
					when idle =>
						nextStep_pulse <= '0';
						button_state := idle;
						if (nextStep = '0') then
							nextStep_pulse <= '1';
							button_state := triggered;
							
						end if;
						
					when triggered =>
						nextStep_pulse <= '0';
						button_state := triggered;
						if (nextStep = '1') then
							nextStep_pulse <= '0';
							button_state := idle;
						end if;
				end case;
			end if;
		end process;
							
process(clock, reset)

--Initialize state_types and PRESENT_STATE
type state_types is (soft_reset_state,reset_state, idle_state, play_state, score_state, winner_state, end_game);
variable PRESENT_STATE : state_types := reset_state;
variable NEXT_STATE : state_types;
variable P1_score_count_temp : unsigned( 3 downto 0 ) := "0000";
variable P2_score_count_temp : unsigned( 3 downto 0 ) := "0000";

	begin
		if( reset = '0') then
			reset_connect <= '1'; -- tell all parts to reset
			winner1 <= "000000000";
			winner2 <= "000000000";
			idle_connect <= '1'; --don't move
			P1_score_count_temp := "0000";
			P2_score_count_temp := "0000";

			NEXT_STATE := reset_state;
			PRESENT_STATE := reset_state;

			
		elsif(rising_edge(clock)) then
			-- map out state changes
			case PRESENT_STATE is
				when soft_reset_state =>
					reset_connect <= '1';
					NEXT_STATE := reset_state;
				when reset_state =>
					reset_connect <= '0'; --clear reset
					NEXT_STATE := idle_state;
				when idle_state =>
					idle_connect <= '1';
					if( nextStep_pulse = '1' ) then
						NEXT_STATE := play_state;
						idle_connect <= '0'; --move!
					end if;
				when play_state =>
					--game ends if either player reaches 5
					if( score_p1 = '1' OR score_p2 = '1') then
						NEXT_STATE := score_state;
						if( score_p1 = '1') then 
							P1_score_count_temp := P1_score_count_temp + 1;
						elsif( score_p2 = '1') then
							P2_score_count_temp := P2_score_count_temp + 1;
						end if;
						--idle_connect <= '1'; --freeze!
					end if;
				when score_state =>
					idle_connect <= '1';
					if( P1_score_count_temp = "0101" OR P2_score_count_temp = "0101") then
						next_state := winner_state;
					else
						next_state := soft_reset_state;
					end if;
			
				when winner_state =>
					--display winner
					if( P1_score_count_temp = "0101") then
						winner1 <= "111111111";
					else
						winner2 <= "111111111";
					end if;
					NEXT_STATE := end_game;
				when end_game =>
					NEXT_STATE := end_game;

			end case;
			PRESENT_STATE := NEXT_STATE;
			P1_score_count <= std_logic_vector(P1_score_count_temp);
			P2_score_count <= std_logic_vector(P2_score_count_temp);
		end if;
	end process;
end behavioural;