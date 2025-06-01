library ieee;
use ieee.std_logic_1164.all;
use work.PKG_1_1.all;

	entity principal_1_1 is
		port( D, Clk: in std_logic;
				Qa, Qab, Qb, Qbb, Qc, Qcb: out std_logic);
	end entity;
	
	architecture logic of principal_1_1 is
	--Utilização do latch, flipflop sensivel a borda de subida e fliflop sensível a borda de descida:
		begin
			p1: latchD_1_1 port map(D,CLk,Qa,Qab);
			p2: FF_D_BS_1_1 port map(D,Clk,Qb,Qbb);
			p3: FF_D_BD_1_1 port map(D,Clk,Qc,Qcb);
	end logic;
		
		
	
	