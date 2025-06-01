library ieee;
use ieee.std_logic_1164.all;
--Instanciando o componente FF_D.
	PACKAGE PKG_2_1 IS
		COMPONENT FF_D_2_1 IS
		PORT(D,Resetn,Clock :IN STD_LOGIC;
			  Q,Qb :OUT STD_LOGIC
			  );
		end COMPONENT;
	END PKG_2_1;