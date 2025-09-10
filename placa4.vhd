library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY placa4 IS
	PORT(SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		  KEY : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
		  );
END placa4;

ARCHITECTURE logica OF placa4 IS
	SIGNAL JI, aux : INTEGER RANGE 0 TO 15;
	SIGNAL J : STD_LOGIC_VECTOR(3 DOWNTO 0);
	COMPONENT ativ4 IS
		PORT ( R : IN INTEGER RANGE 0 TO 15 ;
				 Clock, Resetn, L : IN STD_LOGIC ;
				 Q : BUFFER INTEGER RANGE 0 TO 15 ) ;
	END COMPONENT;
BEGIN
	aux<= to_integer(unsigned(SW(3 DOWNTO 0))); 
	s0: ativ4 PORT MAP (aux, KEY(0), KEY(1), KEY(2), JI);
	J<=STD_LOGIC_VECTOR(TO_UNSIGNED(JI,4));
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