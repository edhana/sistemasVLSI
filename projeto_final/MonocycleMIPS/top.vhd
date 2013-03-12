-- Top entitiy of the project
library ieee;
use ieee.std_logic_1164.all;
use work.project_constants.all;

entity top is
  port(
    clk : in std_logic;
    rst : in std_logic -- ainda não sei se e necessario
    );
end top;

architecture main of top is


  -- component signals
  -- ula
  signal data_input1 :  std_logic_vector(register_width-1 downto 0);
  signal data_input2 :  std_logic_vector(register_width-1 downto 0);
  signal operation : std_logic_vector(3 downto 0);
  signal zero : std_logic;
  signal result : std_logic_vector(register_width-1 downto 0);

  -- breg
  signal read_signal : std_logic;
  signal write_signal : std_logic;
  signal input_address1 : std_logic_vector(address_width-1 downto 0);
  signal input_address2 : std_logic_vector(address_width-1 downto 0);
  signal write_data : std_logic_vector(register_width-1 downto 0);
  signal write_data_address : std_logic_vector(address_width-1 downto 0);
begin  
  register_bnk : entity work.bregMIPS(main)
    port map(
      clk => clk,
      rd  => read_signal,      
      wr  => write_signal,
      add1 => input_address1,
      add2 => input_address2,
      wadd  => write_data_address, 
      wdata => write_data,
      r1 => data_input1,
      r2 => data_input2
    );

  ula : entity work.ulaMIPS(main)
    port map(
      data_operator1 => data_input1,
      data_operator2 => data_input1,
      operation => operation,
      zero => zero,
      result => result
    );

end main;