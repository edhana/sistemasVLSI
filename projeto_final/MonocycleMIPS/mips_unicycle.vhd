-- Top entitiy of the project
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.project_constants.all;

entity mips_unicycle is
  generic(
      ula_add_op : std_logic_vector(3 downto 0) := "0010";
      adder_number_4 : std_logic_vector(31 downto 0) := x"00000004"
    );

  port(
    clk : in std_logic;
    rst : in std_logic -- ainda não sei se e necessario
    );
end mips_unicycle;

architecture main of mips_unicycle is

  -- component signals
  -- Arithmetic Logic Unit(ULA)
  signal data_input1 :  std_logic_vector(register_width-1 downto 0);
  signal data_input2 :  std_logic_vector(register_width-1 downto 0);
  signal operation : std_logic_vector(3 downto 0);
  signal zero : std_logic;
  signal result : std_logic_vector(register_width-1 downto 0);

  -- Register Bank
  signal read_signal : std_logic;
  signal write_signal : std_logic;
  signal input_address1 : std_logic_vector(address_width-1 downto 0);
  signal input_address2 : std_logic_vector(address_width-1 downto 0);
  signal write_data : std_logic_vector(register_width-1 downto 0);
  signal write_data_address : std_logic_vector(address_width-1 downto 0);

  -- program counter(pc) - 32 bit address
  signal pc_next_address : natural range 0 to memory_size - 1;

  -- pc adder
  signal pc_adder_result : std_logic_vector(word_length-1 downto 0);

  -- instruction address bus
  signal instruction_address_bus : natural range 0 to memory_size - 1; --TODO: Deixar o range claro

  -- instruction bus
  signal instruction_bus : std_logic_vector(word_length-1 downto 0);

  -- data memory bus and data memory value
  signal data_memory_bus : natural;
  signal data_memory_input : std_logic_vector(word_length-1 downto 0);
  signal data_memory_output : std_logic_vector(word_length-1 downto 0);
  signal memory_write_enable : std_logic;

  -- control unit
  signal cu_output_bus : std_logic_vector(8 downto 0);

  -- shift left result bus
  signal shift_left_bus : std_logic_vector(word_length-1 downto 0);
  signal shift_left_ula_result_bus : std_logic_vector(word_length-1 downto 0);

  -- signal to hold the converted memory address value
  signal stv_address_bus_value : std_logic_vector(word_length-1 downto 0);
begin    

  -- program counter conversions
  stv_address_bus_value <= conv_std_logic_vector(instruction_address_bus, indexes);  
  pc_next_address <= conv_integer(pc_adder_result);


  ---------------------------------------------------------
  -- Declaration of all modules                      
  ---------------------------------------------------------

  -- Program Counter Adder
  pc_adder : entity work.ula_mips(main)
    port map(
      data_operator1 => stv_address_bus_value, 
      data_operator2 => adder_number_4,
      operation => ula_add_op, -- sum
      zero => zero,
      result => pc_adder_result
    );

 -- Program Counter
  pc : entity work.program_counter(main)
    port map (
      clk => clk,
      read_address => pc_next_address,
      instruction_address => instruction_address_bus
    );    

  -- Instruction Memory
  im : entity work.instruction_memory(main)
    port map(
      clk => clk,
      addr => instruction_address_bus,
      q => instruction_bus
    );

  -- Control Unit
  cu : entity work.control_unit(main)
    port map(
        instruction_input => instruction_bus(31 downto 26),
        operation_output => cu_output_bus
    );

  -- Mux RegDst
  mrd : entity work.generic_5_bit_mux(main)
    port map(
      data_input_A => instruction_bus(20 downto 16),
      data_input_B => instruction_bus(15 downto 11),
      control_signal => cu_output_bus(0),
      data_output => write_data_address
    );

  -- register bank
  rb : entity work.bregMIPS(main)
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

  -- Main ULA
  ula : entity work.ula_mips(main)
    port map(
      data_operator1 => data_input1,
      data_operator2 => data_input1,
      operation => operation,
      zero => zero,
      result => result
    );

  -- Sign Extend and Adder ALU
  seula : entity work.ula_mips(main)
    port map(
      data_operator1 => pc_adder_result,
      data_operator2 => shift_left_bus,
      operation => ula_add_op,
      zero => zero,
      result => shift_left_ula_result_bus
    );    

  -- Data Memory
  dm : entity work.simple_ram(main)
    port map(
      clk => clk,
      addr => data_memory_bus,
      data => data_memory_input,
      we => memory_write_enable,
      q => data_memory_output
    );
end main;