library ieee;
use ieee.std_logic_1164.all;
--Inclusão no package:
use work.pkg.all;

--Declaração dos sinais de entrada(a, b, carry_in) e saída(s, carry_out):	
	entity fulladder is
	
			port(a, b, cin: in std_logic;
					s: out std_logic;
					cout: out std_logic);
					
	end  fulladder;
	
--Descrição da operação soma de 1 bit com carry in e carry out através de funções lógicas:
	architecture logica of fulladder is

			begin
				s <= a XOR b XOR cin;
				cout <= (a AND b) OR (a AND cin) OR (b AND cin);
		
	end logica;