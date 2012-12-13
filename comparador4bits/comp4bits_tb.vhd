-- Vhdl Test Bench template for design  :  comp4bits
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY comp4bits_tb IS
END comp4bits_tb;

ARCHITECTURE comp4bits_tb_arch OF comp4bits_tb IS
  -- constants                                                 
  -- signals                                                   
  SIGNAL sinalSaida : STD_LOGIC;
  SIGNAL x : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL y : STD_LOGIC_VECTOR(3 DOWNTO 0);

  COMPONENT comp4bits
    PORT (
      sinalSaida : OUT STD_LOGIC;
      x : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      y : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;

  BEGIN
    i1 : comp4bits
    PORT MAP (
      -- list connections between master ports and signals
      sinalSaida => sinalSaida,
      x => x,
      y => y
    );

    init : PROCESS                                               
    BEGIN                                                        
      -- code that executes only once                      
      x <= "0000";
      y <= "0000";    
    WAIT;                                                       
    END PROCESS init;      

    always : PROCESS                                                                                   
    BEGIN        
      FOR i IN 0 TO 3 LOOP      
        CASE i IS
          WHEN 0 =>
            x <= "0000";
            y <= "0000";
          WHEN 1 =>
            x <= "0000";
            y <= "1111";
          WHEN 2 =>
            x <= "1111";
            y <= "0000";
          WHEN 3 =>
            x <= "1111";
            y <= "1111";
        END CASE;
        WAIT FOR 20 ns; -- WAIT TO CHANGE VALUE AGAIN               
      END LOOP;
    END PROCESS always;                                          
END comp4bits_tb_arch;
