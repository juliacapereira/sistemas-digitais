LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latchD_1_2 IS 
	PORT(D,Clock :IN STD_LOGIC;--Declaração das variáveis de entrada.
		  Qa,Qab :OUT STD_LOGIC--Declaração das variáveis de saída, Qa=Qa e Qab=Qa barrado.
		  );
END latchD_1_2;

ARCHITECTURE logic OF latchD_1_2 IS
--Quando Clock é 1, ou seja sobe, Qa recebe o valor de D e Qab recebe o valor de D barrado.
BEGIN
	PROCESS (D,Clock)
	BEGIN
		IF Clock='1' Then
			Qa<=D;
			Qab<=NOT D;
		END IF;
	END PROCESS;
END logic;