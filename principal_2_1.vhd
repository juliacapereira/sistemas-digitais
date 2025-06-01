LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use work.PKG_2_1.all;

	ENTITY principal_2_1 is
		PORT(D,Resetn,Clock :IN STD_LOGIC;
			 Q,Qb :OUT STD_LOGIC
			 );
	END principal_2_1;
	--Utilização do flipflop:
	ARCHITECTURE logica of principal_2_1 is
		begin 
			s01 : FF_D_2_1 port map(D, Resetn, Clock, Q, Qb);
	end logica;