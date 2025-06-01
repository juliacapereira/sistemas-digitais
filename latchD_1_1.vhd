LIBRARY ieee;
use ieee.std_logic_1164.all;

	ENTITY latchD_1_1 IS
		PORT( D,Clk: IN STD_LOGIC;
				Qa, Qab: OUT STD_LOGIC);
	END ENTITY;
	
	ARCHITECTURE logic of latchD_1_1 is
	--Quando Clock é 1, ou seja sobe, Qa recebe o valor de D e Qab recebe o valor de D barrado.
		begin
			process(D,Clk)
				begin
					if Clk='1' then
						Qa<=D;
						Qab<=not D;
					end if;
				end process;
			end logic;