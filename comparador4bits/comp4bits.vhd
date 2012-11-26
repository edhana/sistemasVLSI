library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Exemplo 1 da apostila comVHDL
-- Comparador de 4 bits

-- Definicao da entidade do comparador
entity comp4bits is
	port (
		x, y: in std_logic_vector(3 downto 0);
		sinalSaida: out std_logic
	);
end comp4bits;

-- Arquitetura de funcionamento da entidade
architecture comportamental of comp4bits is
begin
	process(x,y) -- lista de sensibilidade do processo(if e um commando sequencial)
		begin	
			if(x = y) then
				sinalSaida <= '1';
			else
				sinalSaida <= '0';
			end if;
		end process;
end comportamental;