library ieee;
use ieee.std_logic_1164.all;

	entity FF_D_BS_1_1 is
		port(D, Clk: in std_logic;--Declaração das variáveis de entrada.
				Qb, Qbb: out std_logic);--Declaração das variáveis de saída, Qb=Qb e Qbb=Qb barrado.
	end entity;
	
	architecture logic of FF_D_BS_1_1 is
	--Quando o Clock for 1,ou seja sobe, Qb recebe o valor de D e Qbb recebe o valor de Qb barrado
		begin 
			PROCESS(Clk)
				begin
					if Clk'EVENT AND Clk='1' then
						Qb<=D;
						Qbb<=not D;
					end if;
				end process;
			end logic;