library ieee;
use ieee.std_logic_1164.all;
use work.fulladder_package.all;

	entity subtrator is
		port(a, b: in std_logic_vector(3 downto 0);
				opcao: in std_logic;
				s: out std_logic_vector(3 downto 0);
				cout: out std_logic);
	end subtrator;
	
	
	architecture tentativa of subtrator is
	
		component full_adder
		
			port(a,b,cin: in std_logic;
					s,cout: out std_logic);
					
		end component;
		
	signal c: std_logic_vector(2 downto 0);
	signal x,y: std_logic_vector(3 downto 0);
		
		begin 
		--realiza a operação xor entre a entrada b (numero de 4 bits e a opcao pois se a opcao
		--for 1 (subtracao), 
		--inverte o valor de y)
		y(0)<=b(0) xor opcao;
		y(1)<=b(1) xor opcao;
		y(2)<=b(2) xor opcao;
		y(3)<= b(3) xor opcao;
		
		s1: somador port map(a,y,opcao,cout);
		
	end architecture;
		
	