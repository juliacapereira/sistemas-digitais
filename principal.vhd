library ieee;
use ieee.std_logic_1164.all;
--Uso do package:
use work.pkg.all;

--Declaração das entradas e saídas que serão usadas durante o arquivo principal:
	entity principal is
		
		port (a,b: in std_logic_vector(3 downto 0);
				result: out std_logic_vector(3 downto 0);
				overflow, carryout, zero,Equ, Grt, Lst: out std_logic;
				Op: in std_logic_vector(2 downto 0)
				);

	end principal;
	
--Declaração dos sinais que serão usados para fazer as operações internas do multiplexador e as operações dos outros arquivos:
	architecture logic of principal is 
	
		signal res_soma, res_sub, res_and, res_or, res_not, res_nop, res_mul: std_logic_vector(3 downto 0);--Sinais que armazenam os resultados
		signal OV, cout: std_logic;--Sinais que armazenam o overflow e o carry-out da soma
		signal Equ_comp, Grt_comp, Lst_comp: std_logic;--Sinais que armazenam o resultado da comparação
		signal OVs, OVsb, couts, coutsb: std_logic;--Sinais que armazenam o overflow e o carry-out da subtração

		begin
		
			--Declaração das operações "and", "not" e "or" que serão executadas pela ULA
			res_and <= a and b;
			res_not <= not b;
			res_or <= a or b;
			res_nop <= "0000";
			
			--Execução das operções soma, subtração, multiplicação e comparação respectivamente e alocação da resposta no respectivo "res" que será usado no multiplexador:
			p1: somador port map (a, b, '0', res_soma, OVs, couts);
			p2: somador port map (a, not b, '1', res_sub, OVsb, coutsb);
			p3: multiplicador port map (a(1 downto 0), b(1 downto 0), res_mul);
			p4: comparador port map (a, b, Equ_comp, Grt_comp, Lst_comp);
			
			--Multiplexador que entrega o resultado da ULA dependendo do Op selecionado: 
				WITH Op SELECT
					result <= res_nop WHEN "000",
								 res_and WHEN "001",
								 res_or WHEN "010",
								 res_not WHEN "011",
								 res_soma WHEN "100",
								 res_sub WHEN "101",
								 res_mul WHEN "110",
								 "0000" WHEN OTHERS ;
				
			--Controle dos LEDS para ligá-los somente quando suas operações forem selecionadas pelo Op:
				With Op SELECT
					Equ <= Equ_comp WHEN "111",
							 '0' WHEN OTHERS;
				
				with Op SELECT
					Grt <= Grt_comp WHEN "111",
							 '0' WHEN OTHERS;
							 
				with Op SELECT
					Lst <= Lst_comp when "111",
							 '0' when others;
							 
				with result select 
					 zero <= '1' when "0000",
								'0' when others;
								
				WITH Op SELECT
					overflow <= OVs when "100",
									OVsb when "101",
									'0' when others;
				
				WITH Op SELECT
					carryout <= couts when "100",
									coutsb when "101",
									'0' when others;					
								 
			end logic;
					
				
			