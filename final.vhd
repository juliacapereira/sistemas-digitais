library ieee;
use ieee.std_logic_1164.all;

--Declaração das entradas e saídas da placa (SW para entradas, LEDR para saída nos leds e HEX para saída no display de 7 segmentos)
	entity final is
	
		port(SW: IN STD_LOGIC_VECTOR(10 downto 0);
			LEDR: out STD_LOGIC_VECTOR (5 downto 0);
			HEX0, HEX2, HEX4, HEX6: out STD_LOGIC_VECTOR(0 to 6)
		  );
		  
	end final;
	
	architecture logica of final is 
		
		signal result : std_logic_vector(3 downto 0);--Sinal que armazena o resultado da ULA para ser mostrado no display de 7 segmentos	
		
		--Declaração do component principal para seu uso na placa
		COMPONENT principal
			port (a,b: in std_logic_vector(3 downto 0);
					result: out std_logic_vector(3 downto 0);
					overflow, carryout, zero,Equ, Grt, Lst: out std_logic;
					Op: in std_logic_vector(2 downto 0)
					);
		END COMPONENT;
		
	--Colocando os resultados de principal em variáveis para o uso na placa(SW(10 downto 7) para a, SW(6 downto 3) para b e SW(2 downto 0) para Op) e recebendo resultado em result, overflow em LEDR(2), carryout em LEDR(0), zero em LEDR(1), Equ em LEDR(3), Grt em LEDR(4) e Lst em LEDR(5).
			BEGIN 
				s0: principal PORT MAP (SW(10 downto 7),SW(6 downto 3), result, LEDR(2), LEDR(0),LEDR(1),LEDR(3),LEDR(4),LEDR(5),SW(2 downto 0));
			
				--Representando "a" no display de 7 segmentos
				with SW(10 downto 7) select
					HEX4<= "0000001" when "0000",
							 "1001111" when "0001", 
							 "0010010" when "0010", 
							 "0000110" when "0011", 
							 "1001100" when "0100",
							 "0100100" when "0101",
							 "0100000" when "0110",
							 "0001111" when "0111",
							 "0000000" when "1000",
							 "0000100" when "1001",
							 "0001000" when "1010",
							 "1100000" when "1011",
							 "0110001" when "1100",
							 "1000010" when "1101",
							 "0110000" when "1110", 
							 "0111000" when "1111", 
							 "1111111" when others;
				--Representando "b" no display de 7 segmentos			 
				with SW(6 downto 3) select
					HEX2<= "0000001" when "0000",
							 "1001111" when "0001", 
							 "0010010" when "0010", 
							 "0000110" when "0011", 
							 "1001100" when "0100",
							 "0100100" when "0101",
							 "0100000" when "0110",
							 "0001111" when "0111",
							 "0000000" when "1000",
							 "0000100" when "1001",
							 "0001000" when "1010",
							 "1100000" when "1011",
							 "0110001" when "1100",
							 "1000010" when "1101",
							 "0110000" when "1110", 
							 "0111000" when "1111", 
							 "1111111" when others;
				--Representando "Op" no display de 7 segmentos			 
				with SW(2 downto 0) select
				  HEX0 <= "0000001" when "000",
							 "1001111" when "001",
							 "0010010" when "010",
							 "0000110" when "011",
							 "1001100" when "100",
							 "0100100" when "101",
							 "0100000" when "110",
							 "0001111" when "111",
							 "1111111" when others;
				--Representando o resultado da ULA no display de 7 segmentos 			 
				with result select
					HEX6<= "0000001" when "0000",
							 "1001111" when "0001", 
							 "0010010" when "0010", 
							 "0000110" when "0011", 
							 "1001100" when "0100",
							 "0100100" when "0101",
							 "0100000" when "0110",
							 "0001111" when "0111",
							 "0000000" when "1000",
							 "0000100" when "1001",
							 "0001000" when "1010",
							 "1100000" when "1011",
							 "0110001" when "1100",
							 "1000010" when "1101",
							 "0110000" when "1110", 
							 "0111000" when "1111", 
							 "1111111" when others;
							 
		
end logica;