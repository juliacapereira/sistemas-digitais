library ieee;
use ieee.std_logic_1164.all;

ENTITY FF_D_sub_1_2 IS
	PORT (D,Clock : IN STD_LOGIC;--Declaração das variáveis de entrada.
			Qb, Qbb : OUT STD_LOGIC--Declaração das variáveis de saída, Qb=Qb e Qbb=Qb barrado.
			);
END FF_D_sub_1_2;

ARCHITECTURE logica OF FF_D_sub_1_2 IS
--Quando o Clock for 1,ou seja sobe, Qb recebe o valor de D e Qbb recebe o valor de Qb barrado
BEGIN
	PROCESS 
	BEGIN
		WAIT UNTIL Clock'EVENT AND Clock ='1';
		Qb<=D;
		Qbb<=NOT D;
	END PROCESS;
END logica;