LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

	PACKAGE pkg IS
		COMPONENT mux2to1 IS
			PORT ( w0, w1, s : IN STD_LOGIC ;
			f : OUT STD_LOGIC ) ;
		END COMPONENT ;
		COMPONENT muxdff IS
			PORT(D0,D1,Sel,Clock: in STD_LOGIC;
		  Q : OUT STD_LOGIC
		  );
		END COMPONENT;
	END PACKAGE;
	