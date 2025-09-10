library ieee;
use ieee.std_logic_1164.all;

 package pkg is
 
 --Declaração do componente fulladder e suas entradas e saídas para ser usado no principal:
	component fulladder is 
			port(a, b, cin: in std_logic;
					s: out std_logic;
					cout: out std_logic);
	end  component;
	
 --Declaração do componente somador e suas entradas e saídas para ser usado no principal:
	component somador is
			port(a, b: in std_logic_vector (3 downto 0);
					cin: in std_logic;
					soma: out std_logic_vector(3 downto 0);
					overflow: out std_logic;
					cout: out std_logic);
	end component;
	
 --Declaração do componente multiplicador e suas entradas e saídas para ser usado no principal:
	component multiplicador is 
			port( a,b: in std_logic_vector(1 downto 0);
				   m: out std_logic_vector(3 downto 0));
	end component;
	
 --Declaração do componente comparador e suas entradas e saídas para ser usado no principal:
	component comparador is
			port (a,b: in std_logic_vector(3 downto 0);
					Equ,Grt,Lst: out std_logic);
	end component;
	
 end pkg;
 
 