LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.PKG_1_2.all;

	ENTITY principal_1_2 is
		port(D,Clock: in std_logic;
			  Qa,Qab,Qb,Qbb,Qc,Qcb: out std_logic
			  );
	end entity;
		--Utilização do latch, flipflop sensivel a borda de subida e fliflop sensível a borda de descida:
	architecture logic of principal_1_2 is
		begin
			s1: latchD_1_2 port map(D,Clock,Qa,Qab);
			s2: FF_D_sub_1_2 port map(D,Clock,Qb,Qbb);
			s3: FF_D_des_1_2 port map(D,Clock,Qc,Qcb);
		end logic;