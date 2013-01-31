library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity de0_nano_clock is
	port(
		clk : in std_logic;
		button : in std_logic;
		led : out std_logic
	);
end entity;

architecture de0_nano_clock_arch of de0_nano_clock is
begin

	process(clk, button)
		variable counter : std_logic_vector(31 downto 0) := (others =>'0');
	begin
		if(clk'event and clk='0') then
			counter := counter + '1';				
		end if;
		
		if(counter > 300) then
			led <= '1';
		end if;
	end process;
end de0_nano_clock_arch;
