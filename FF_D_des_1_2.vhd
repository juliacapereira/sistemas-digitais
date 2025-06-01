LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FF_D_des_1_2 IS
	PORT (D, Clock : IN STD_LOGIC;--Declaração das variáveis de entrada.
			Qc, Qcb : OUT STD_LOGIC --Declaração das variáveis de saída, Qc=Qc e Qcb=Qc barrado.
			);
END FF_D_des_1_2;

ARCHITECTURE logic OF FF_D_des_1_2 IS
--Quando clock for 0, ou seja desce, Q recebe o valor de D e Qcb recebe o valor de D barrado:
BEGIN
	PROCESS
	BEGIN
		WAIT UNTIL Clock'EVENT AND Clock='0';
		Qc<=D;
		Qcb<= NOT D;
	END PROCESS;
END logic;