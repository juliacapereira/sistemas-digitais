library ieee;
use ieee.std_logic_1164.all;
use work.pkg.all;

ENTITY placa_1b IS
	PORT(SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		  KEY: IN STD_LOGIC_vector(0 downto 0);
		  LEDR: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END placa_1b;

ARCHITECTURE logica OF placa_1b IS
signal Clock : STD_LOGIC;
BEGIN
 s0: muxdff port map(SW(0),SW(1),SW(2),Clock,LEDR(0));
	
 LEDR(1)<=SW(1);
 LEDR(2)<=SW(2);
 LEDR(3)<=SW(0);
 Clock<=KEY(0);
 
END logica;
		
		  