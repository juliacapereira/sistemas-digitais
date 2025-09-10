library ieee;
use ieee.std_logic_1164.all;

ENTITY PLACA3 is
	PORT( HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
			KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			SW: IN STD_LOGIC_vector(0 downto 0)
			);
END PLACA3;

ARCHITECTURE logica OF PLACA3 IS
	SIGNAL J : STD_LOGIC_VECTOR(3 DOWNTO 0);
	COMPONENT ativ3 IS
		PORT (Clock, Resetn, E : IN STD_LOGIC ;
					Q : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	END COMPONENT;
BEGIN 	
	s0: ativ3 PORT MAP (KEY(0), KEY(1), SW(0), J);
	
	WITH J SELECT
		HEX0 <="0000001" when "0000",
				 "1001111" when "0001", 
				 "0010010" when "0010", 
				 "0000110" when "0011", 
				 "1001100" when "0100",
				 "0100100" when "0101",
				 "0100000" when "0110",
				 "0001111" when "0111",
				 "0000000" when "1000",
				 "0000100" when "1001",
				 "0001000" when "1010",
				 "1100000" when "1011",
				 "0110001" when "1100",
				 "1000010" when "1101",
				 "0110000" when "1110", 
				 "0111000" when "1111", 
				 "1111111" when others;
END logica;