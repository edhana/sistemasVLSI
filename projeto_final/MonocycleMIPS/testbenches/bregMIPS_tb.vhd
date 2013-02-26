-- Testbench for the file bregMIPS.library ieee ;
library ieee;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all ;

entity bregMIPS_tb is
end entity ; -- bregMIPS_tb

architecture arch of bregMIPS_tb is
  signal clk, rd, wr : std_logic;
  signal add1, add2, wadd : std_logic_vector(4 downto 0);
  signal wdata, r1, r2 : std_logic_vector(31 downto 0);

  component bregMIPS is
    port (
      clk   : in std_logic;
      rd    : in std_logic; -- read signal
      wr    : in std_logic; -- write signal
      add1  : in std_logic_vector(4 downto 0); -- first read register address
      add2  : in std_logic_vector(4 downto 0); -- second read register address
      wadd  : in std_logic_vector(4 downto 0); -- 32 bit output register address
      wdata : in std_logic_vector(31 downto 0); -- value to write into the wadd 32 bit register address
      r1    : out std_logic_vector(31 downto 0);
      r2    : out std_logic_vector(31 downto 0)
    );
  end component;
begin
  bregMIPS_port : bregMIPS 
    port map (
      clk => clk,
      rd => rd,
      wr => wr,
      add1 => add1,
      add2 => add2,
      wadd => wadd,
      wdata => wdata,
      r1 => r1,
      r2 => r2
    );

  init : process
  begin    
    add1 <= "00001";
    add2 <= "00100";
    wadd <= "00100";
    wdata <= x"CCCCFFFF";    
    wait;
  end process init;

  always : process
    variable clk_tmp : std_logic := '0';   
    variable wr_tmp : std_logic := '0';
    variable rd_tmp : std_logic := '1';
    variable counter : INTEGER := 0;
  begin
    clk <= clk_tmp;
    clk_tmp := not clk_tmp;
    counter := counter + 1;

    if(counter > 10) then
      counter := 0;
      wr_tmp := not wr_tmp;
      rd_tmp := not rd_tmp;
    end if;
    
    rd <= rd_tmp; 
    wr <= wr_tmp;
    wait for 20ns;
  end process always;
end architecture arch; -- arch

