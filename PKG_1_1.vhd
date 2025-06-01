library ieee;
use ieee.std_logic_1164.all;

	PACKAGE PKG_1_1 IS
		COMPONENT latchD_1_1 IS
		--Instanciando o latch D com clock:
			PORT( D,Clk: IN STD_LOGIC;
				Qa, Qab: OUT STD_LOGIC);
		END COMPONENT;
	
		component FF_D_BS_1_1 is
		--Instanciando o flip flop D sensível a borda de subida:
			port(D, Clk: in std_logic;
				Qb, Qbb: out std_logic);
		end component;
		
		component FF_D_BD_1_1 is
		--Instanciando o flip flop D sensível a borda de descida:
			port(D, Clk: in std_logic;
					Qc, Qcb: out std_logic);
		end component;
	END PKG_1_1;