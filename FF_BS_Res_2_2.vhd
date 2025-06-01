library ieee;
use ieee.std_logic_1164.all;

	entity FF_BS_Res is
	--declaração das entradas do flipflop
		port( D, Reset, Clock: in std_logic;
				Q,Qb: out std_logic);
	end FF_BS_Res;
	
	architecture logic of FF_BS_Res is
		begin
			process
			--quando reset for igual a 0, as saidas q e q barra tem um valor fixo (0 e 1) porém quando o reset for 1, 
			--q e qb correspondem ao valor de D quando o clock sobe
				begin
					wait until Clock'EVENT AND Clock='1';
						if reset='0' then
							Q<='0';
							Qb<='1';
						else
						Q<=D;
						Qb<=NOT D;
						end if;
					end process;
	end logic;
		
			