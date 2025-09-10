LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

package mochila is

component muxdffatv2 IS
PORT ( 

D0, D1, Sel, Clock : IN STD_LOGIC ;
Q : OUT STD_LOGIC ) ;

END component;

component shift4 IS
PORT ( 
			R : IN STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			L, w, Clock : IN STD_LOGIC ;
			Q : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0) 
		) ;
END component;


END package;