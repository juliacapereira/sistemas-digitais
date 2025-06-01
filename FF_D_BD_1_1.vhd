library ieee;
use ieee.std_logic_1164.all;

	entity FF_D_BD_1_1 is
		port(D, Clk: in std_logic;
				Qc, Qcb: out std_logic);
	end entity;
	
	architecture logic of FF_D_BD_1_1 is
	--Quando clock for 0, ou seja desce, Q recebe o valor de D e Qcb recebe o valor de D barrado:
		begin 
			PROCESS(Clk)
				begin
					if Clk'EVENT AND Clk='0' then
						Qc<=D;
						Qcb<=not D;
					end if;
				end process;
			end logic;