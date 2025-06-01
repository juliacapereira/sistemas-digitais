library ieee;
use ieee.std_logic_1164.all;
use work.PKG_2_2.all;

	entity principal is 
		port( D, Reset, Clock: in std_logic;
					Q,Qb: out std_logic);
	end principal;
	
	architecture logic of principal is
	--realiza a chamada do arquivo do flip flop,ou seja, realiza a operação contida no arquivo através da chamada do arquivo pelo package
		begin 
			p1: FF_BS_Res port map(D,Reset,Clock,Q,Qb);
	end logic;
