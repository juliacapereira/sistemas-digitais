LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY muxdffatv2 IS
PORT ( 

D0, D1, Sel, Clock : IN STD_LOGIC ;
Q : OUT STD_LOGIC ) ;

END muxdffatv2 ;

ARCHITECTURE Behavior OF muxdffatv2 IS
BEGIN

PROCESS
	BEGIN
				WAIT UNTIL Clock'EVENT AND Clock = '1' ;
				IF Sel = '0' THEN
				Q <= D0 ;
		ELSE
				Q <= D1 ;
	END IF ;
END PROCESS ;

END Behavior ;
