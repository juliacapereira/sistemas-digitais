library ieee;
use ieee.std_logic_1164.all;
--Inclusão no Package:
use work.pkg.all;

--Declaração dos sinais de entrada(a, b) e saída(Equ para igual, Grt para a>b e Lst para a<b):	
		entity comparador is
			
			port (a,b: in std_logic_vector(3 downto 0);
					Equ,Grt,Lst: out std_logic);
						
		end comparador;
		
--Declaração da operação de Comparação através de funções lógicas, retornando 1 em Equ quando são iguais, 1 em Grt quando a>b e 1 em Lst para a<b:
	architecture logic of comparador is
		
		signal i: std_logic_vector(3 downto 0);
		signal Equ2: std_logic;
		signal Grt2: std_logic;

		begin

			i(3) <= a(3) XNOR b(3);
			i(2) <= a(2) XNOR b(2);
			i(1) <= a(1) XNOR b(1);
			i(0) <= a(0) XNOR b(0);
			Equ2 <= i(0) and i(1) and i(2) and i(3);
			Grt2 <= (a(3) and not b(3)) OR (i(3) and a(2) and not b(2)) OR (i(3) and i(2) and a(1) and not b(1))
			OR (i(3) and i(2) and i(1) and a(0) and not b(0));

			--Colocando os valores finais em Equ Grt e Lst:			
			Equ <=Equ2;
			Grt<=Grt2;
			Lst <= Equ2 NOR Grt2;
			
	end logic;