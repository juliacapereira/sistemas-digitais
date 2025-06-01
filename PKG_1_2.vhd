library ieee;
use ieee.std_logic_1164.all;

	PACKAGE PKG_1_2 IS
	--Instanciando o latch D com clock:
		COMPONENT latchD_1_2 is
		
		PORT(D,Clock :IN STD_LOGIC;
		  Qa,Qab :OUT STD_LOGIC
		  );
		  
		END COMPONENT;
		--Instanciando o flip flop D sensível a borda de subida:
		COMPONENT FF_D_sub_1_2 is
		
		PORT (D,Clock : IN STD_LOGIC;
			Qb, Qbb : OUT STD_LOGIC
			);
		
		END COMPONENT;
		--Instanciando o flip flop D sensível a borda de descida:
		COMPONENT FF_D_des_1_2 is
		
		PORT (D, Clock : IN STD_LOGIC;
			Qc, Qcb : OUT STD_LOGIC
			);
		
		END COMPONENT;
		
	END PKG_1_2;