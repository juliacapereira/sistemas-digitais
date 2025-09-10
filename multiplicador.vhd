library ieee;
use ieee.std_logic_1164.all;
--Inclusão no package:
use work.pkg.all;

--Declaração dos sinais de entrada(a, b) e saída(m=multiplicação):	
	entity multiplicador is
	
		port( a,b: in std_logic_vector(1 downto 0);
				m: out std_logic_vector(3 downto 0));
				
	end multiplicador;
	
--Declaração da operação de multiplicação feita através de funções lógicas e soma feita através do fulladder:
	architecture logic of multiplicador is
	
		signal soma: std_logic_vector(3 downto 0);
		signal pp: std_logic_vector(2 downto 0);
		signal c: std_logic;
		
		begin
		
			soma(0)<=(a(0) and b(0));
			pp(0)<=(a(0) and b(1));
			pp(1)<=(a(1) and b(0));
			pp(2)<=(a(1) and b(1));
			
			s01: fulladder port map(pp(0),pp(1),'0',soma(1),c);
			s02: fulladder port map (pp(2),c,'0',soma(2),soma(3));
			
			m<=soma;
			
	end logic;
		