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
  signal ula_operation : std_logic_vector(3 downto 0);
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

  -- jump address
  signal jump_address : std_logic_vector(word_length-1 downto 0);

  -- instruction address bus
  signal instruction_address_bus : natural range 0 to memory_size - 1;

  -- instruction bus
  signal instruction_bus : std_logic_vector(word_length-1 downto 0);

  -- data memory bus and data memory value
  signal data_memory_bus_address : natural range 0 to 2**RAM_ADDR_WIDTH - 1;
  signal data_memory_input : std_logic_vector(word_length-1 downto 0);
  signal data_memory_output : std_logic_vector(word_length-1 downto 0);
  signal memory_write_enable : std_logic;

  -- control unit
  signal reg_dst, jump, branch, mem_read, mem_write : std_logic;
  signal mem_to_reg, alu_src, reg_write : std_logic;
  signal alu_op : std_logic_vector(1 downto 0);

  -- shift left result bus
  signal se_shift_left_bus : std_logic_vector(word_length-1 downto 0);
  signal shift_left_ula_result_bus : std_logic_vector(word_length-1 downto 0);

  -- signal to hold the converted memory address value
  signal stv_address_bus_value : std_logic_vector(word_length-1 downto 0);

  -- signal to hold converted memory data to address bit
  signal stv_data_memory_bus : std_logic_vector(word_length-1 downto 0);

  -- sign extend bus
  signal sign_extend_output_bus : std_logic_vector(word_length-1 downto 0);
  signal sign_extend_input_bus : std_logic_vector((word_length/2)-1 downto 0);
  signal mux_extend_output_data : std_logic_vector(word_length-1 downto 0);

  signal pc_ula_zero : std_logic;
  signal se_cu_ula_zero : std_logic;
  signal branch_op : std_logic;

  -- mux pc + se_cu_ula output
  signal mux_pc_se_cu_ula_output : std_logic_vector(word_length-1 downto 0);
  signal mux_jump_output : std_logic_vector(word_length-1 downto 0);

begin    

  -- program counter conversions
  stv_address_bus_value <= conv_std_logic_vector(instruction_address_bus, indexes);  

  -- Shift left on the sign extend output operation
  se_shift_left_bus <= sign_extend_output_bus(29 downto 0)&"00";

  -- Jump Address definition
  -- jump_address <= (instruction_bus(25 downto 0)&"00")&pc_adder_result(31 downto 28);
  jump_address <= (instruction_bus(25 downto 0)&"00")&pc_adder_result(3 downto 0);

  -- Branch And Op
  branch_op <= (branch and zero);

  -- always : process(clk)
  -- begin
    pc_next_address <= conv_integer(x"000000"&mux_jump_output(7 downto 0));
  -- end process always;

  ---------------------------------------------------------
  -- Declaration of all modules                      
  ---------------------------------------------------------

  -- Program Counter Adder
  pc_adder : entity work.ula_mips(main)
    port map(
      data_operator1 => stv_address_bus_value, 
      data_operator2 => adder_number_4,
      operation => ula_add_op, -- sum
      zero => pc_ula_zero,
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
      reg_dst => reg_dst,
      jump => jump,
      branch => branch,
      mem_read => mem_read,
      mem_to_reg => mem_to_reg,
      op_alu => alu_op,
      mem_write => mem_write,
      alu_src => alu_src,
      reg_write => reg_write
    );  

  -- Mux RegDst
  mrd : entity work.generic_5_bit_mux(main)
    port map(
      data_input_A => instruction_bus(20 downto 16),
      data_input_B => instruction_bus(15 downto 11),
      control_signal => reg_dst,
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
      r2 => data_memory_input
    );

  -- signal extend mux
  signal_extend_mux : entity work.generic_32_bit_mux(main)
    port map(
      data_input_A => data_memory_input,
      data_input_B => sign_extend_output_bus,
      control_signal => alu_src,
      data_output => mux_extend_output_data
    );

  -- ula control unit
  ula_c_unit : entity work.ula_control(main)
    port map(
      op_code => instruction_bus(5 downto 0),
      op_ula_type => alu_op,
      alu_operation => ula_operation
    );

  -- Main ULA
  ula : entity work.ula_mips(main)
    port map(
      data_operator1 => data_input1,
      data_operator2 => mux_extend_output_data,
      operation => ula_operation,
      zero => zero,
      result => stv_data_memory_bus
    );

  -- Sign Extend and Adder ALU
  sign_extend_ula : entity work.ula_mips(main)
    port map(
      data_operator1 => pc_adder_result,
      data_operator2 => se_shift_left_bus,
      operation => ula_add_op,
      zero => se_cu_ula_zero,
      result => shift_left_ula_result_bus
    );

  -- Mux from control unit ula
  mux_con_u_ula : entity work.generic_32_bit_mux(main)
  port map(
    data_input_A => pc_adder_result,
    data_input_B => shift_left_ula_result_bus,
    control_signal => branch_op,
    data_output => mux_pc_se_cu_ula_output
  );      

  -- mux jump with mux se cu alu  
  mux_jump_se_cu_ula : entity work.generic_32_bit_mux(main)
  port map(
    data_input_A => jump_address,
    data_input_B => mux_pc_se_cu_ula_output,
    control_signal => jump,
    data_output => mux_jump_output
  );        

  -- Data Memory
  dm : entity work.simple_ram(main)
    port map(
      clk => clk,
      addr => data_memory_bus_address,
      data => data_memory_input,
      we => memory_write_enable,
      q => data_memory_output
    );

  dm_mux : entity work.generic_32_bit_mux(main)
    port map(
      data_input_A => data_memory_output,
      data_input_B => stv_data_memory_bus,
      control_signal => mem_to_reg,
      data_output => write_data
    );  

  -- this is just for the generic case of address use, not the mips
  -- common address
  address_bus_converter : process (stv_data_memory_bus)  
    variable int_converted_addr : integer := 0;
    variable memory_part : std_logic_vector(31 downto 0) := x"00000000";
  begin
    memory_part := "00000000000000000000"&stv_data_memory_bus(11 downto 0);
    int_converted_addr := to_integer(ieee.numeric_std.signed(memory_part));
      
    if(int_converted_addr >= 0) then
      -- data memory bus convertion
      data_memory_bus_address <= int_converted_addr;
    end if;
  end process address_bus_converter;

  -- Sign Extend behaviour
  sign_extend_input_bus <= instruction_bus(15 downto 0);
  with sign_extend_input_bus(15) select
      sign_extend_output_bus <= (X"0000" & sign_extend_input_bus) when '0',
                                (X"FFFF" & sign_extend_input_bus) when others;
end main;