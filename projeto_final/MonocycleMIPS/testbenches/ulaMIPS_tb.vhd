-- Testbench for de ulaMIPS module
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.project_constants.all;


entity ulaMIPS_tb is
  generic(
    op_test_1a : std_logic_vector(31 downto 0) := "11110000111100001111000011110000";
    op_test_1b : std_logic_vector(31 downto 0) := "11110000111100001111000011110001";
    op_test_2a : std_logic_vector(31 downto 0) := "11111111111111110000000000000000";
    op_test_2b : std_logic_vector(31 downto 0) := (others => '1')
  );

  type state is (idle, test_sum, test_and, test3);

end ulaMIPS_tb;

architecture behaviour_ulaMips_tb_arch of ulaMIPS_tb is
  signal data_operator1, data_operator2 : std_logic_vector(31 downto 0);
  signal operation, last_operation : std_logic_vector(3 downto 0);
  signal zero : std_logic;
  signal result : std_logic_vector(31 downto 0);
  signal st : state := idle;

  -- Somente para me guiar nos testes com algum tipo de temporizador
  signal clock_tmp : std_logic := '0';

  component ulaMIPS is
    port (
      data_operator1 : in std_logic_vector(31 downto 0);
      data_operator2 : in std_logic_vector(31 downto 0);
      operation : in std_logic_vector(3 downto 0);
      zero : out std_logic;
      result : BUFFER std_logic_vector(31 downto 0)
    );
  end component;
begin

  -- mapping
  ula_port_map : ulaMIPS
    port map (
      data_operator1 => data_operator1,
      data_operator2 => data_operator2,
      operation => operation,
      zero => zero,
      result => result
    );

  -- Clock process to help read the tests
  always : process 
  begin
    clock_tmp <= not clock_tmp;
    wait for 20ns;
  end process always;

  test_state_type : process(clock_tmp)
    -- variable data_value : std_logic_vector(31 downto 0);
  begin

    if(clock_tmp'event and clock_tmp = '1') then
      case st is
        when idle =>
          last_operation <= operation;
          operation <= "1111";
          data_operator1 <= zero32_bits;
          data_operator2 <= zero32_bits;
          st <= test_sum;
        when test_sum =>
          last_operation <= operation;
          operation <= "0111";
          data_operator1 <= op_test_1a;
          data_operator2 <= op_test_1b;
          st <= test_and;
        when test_and =>      
          last_operation <= operation;          
          operation <= "0000";
          data_operator1 <= op_test_2a;
          data_operator2 <= op_test_2b;
          st <= idle;
        when others =>
          st <= idle;
      end case;
    end if;

  end process test_state_type;

  test_process : process(last_operation)
  begin
    case last_operation is
      when "1111" =>
      -- Ultimo teste
      when "0111" =>
        -- Verificar como fazer para usar os asserts de orma inteligente
        assert (result = "11100001111000011110000111100001") report "Resultado da Soma Incorreto" severity error;  
      -- TODO: Testar todos os estados da ula
      when others =>
        -- Por enquanto nada          
        report "TODOS os outros valores de operation: ";-- & str(operation);
    end case;
  end process test_process;
  
end architecture;