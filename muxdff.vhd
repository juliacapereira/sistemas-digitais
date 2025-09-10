library ieee;
use ieee.std_logic_1164.all;
use work.pkg.all;

ENTITY muxdff IS
	PORT(D0,D1,Sel,Clock: in STD_LOGIC;
		  Q : OUT STD_LOGIC
		  );
END muxdff;

ARCHITECTURE logic OF muxdff is
SIGNAL P: STD_LOGIC;
BEGIN
s0: mux2to1 port map(D0,D1,Sel,P);
	PROCESS
	BEGIN
			WAIT UNTIL Clock'EVENT AND Clock='1';
			Q<=P;
	END PROCESS;
END logic;