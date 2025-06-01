LIBRARY ieee;
use ieee.std_logic_1164.all;

	Entity FF_D_2_1 IS
		PORT(D,Resetn,Clock :IN STD_LOGIC; --Declaração das entradas do flip-flop.
			  Q,Qb :OUT STD_LOGIC --Declaração das saídas do flipflop, Q=Q e Qb= Q barrado.
			  );
	END FF_D_2_1;
	
	ARCHITECTURE logica of FF_D_2_1 is
	--Quando resetn for igual a 0, as saídas Q e Qb tem valor fixo 0 e 1, porém quando resetn é 1 as saídas Q e Qb assumem o valor de D quando o clock for igual a 1, ou seja, sobe.
	BEGIN
		PROCESS (Resetn, Clock)
		BEGIN
			IF Resetn='0' THEN
				Q<='0';
				Qb<='1';
			ELSIF Clock'EVENT AND Clock='1' THEN
				Q<=D;
				Qb<=NOT D;
			END IF;
		END PROCESS;
	END logica;