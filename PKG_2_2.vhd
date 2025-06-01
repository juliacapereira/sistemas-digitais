library ieee;
use ieee.std_logic_1164.all;
--declaração do componente para uso no arquivo principal

	package PKG_2_2 is
		component FF_BS_Res is
			port( D, Reset, Clock: in std_logic;
				Q,Qb: out std_logic);
		end component;
	end PKG_2_2;