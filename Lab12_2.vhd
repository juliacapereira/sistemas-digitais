LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
use work.mochila.all;

entity Lab12_2 is
port (
			SW: in std_logic_vector ( 5 downto 0);
			KEY: in std_logic_vector (1 downto 0);
			HEX0: out std_logic_vector ( 0 to 6);
			HEX2: out std_logic_vector ( 0 to 6)
		);
end Lab12_2;

architecture registrador of Lab12_2 is

signal Q: std_logic_vector (3 downto 0);
signal R: std_logic_vector (3 downto 0);

begin

R<=SW(3 downto 0);

instanciamento: shift4 port map (R, KEY(1), SW(5), KEY(0),Q);

with R select 
	HEX0 <= 	"0000001" when "0000",
				"1001111" when "0001",
				"0010010" when "0010",
				"0000110" when "0011",
				"1001100" when "0100",
				"0100100" when "0101",
				"0100000" when "0110",
				"0001111" when "0111",
				"0000000" when "1000",
				"0001100" when "1001",
				"0001000" when "1010",
				"1100000" when "1011",
				"0110001" when "1100",
				"1000010" when "1101",
				"0110000" when "1110",
				"0111000" when "1111",
				"1111111" when others;
				
with Q select 
	HEX2 <= 	"0000001" when "0000",
				"1001111" when "0001",
				"0010010" when "0010",
				"0000110" when "0011",
				"1001100" when "0100",
				"0100100" when "0101",
				"0100000" when "0110",
				"0001111" when "0111",
				"0000000" when "1000",
				"0001100" when "1001",
				"0001000" when "1010",
				"1100000" when "1011",
				"0110001" when "1100",
				"1000010" when "1101",
				"0110000" when "1110",
				"0111000" when "1111",
				"1111111" when others;	
end registrador;