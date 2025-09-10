library ieee;
use ieee.std_logic_1164.all;
--Inclusão no package:
use work.pkg.all;

--Declaração dos sinais de entrada(a, b, carry_in) e saída(soma, overflow, carry_out):	
	entity somador is
	
		port(a, b: in std_logic_vector (3 downto 0);
				cin: in std_logic;
				soma: out std_logic_vector(3 downto 0);
				overflow: out std_logic;
				cout: out std_logic);
				
	end somador;

--Utilização do fulladder 4 vezes para uma soma de 4 bits, considerando carry in e carry out para cada soma e gerando overflow quando há sua ocorrência:	
	architecture logic of somador is
	
		signal c: std_logic_vector (2 downto 0);
		
		begin
		
		s01: fulladder port map(a(0),b(0),cin,soma(0),c(0));
		s02: fulladder port map(a(1),b(1),c(0),soma(1),c(1));
		s03: fulladder port map(a(2),b(2),c(1),soma(2),c(2));
		s04: fulladder port map(a(3),b(3),c(2),soma(3),cout);
		overflow <= c(2) XOR cout;
		
	end logic;