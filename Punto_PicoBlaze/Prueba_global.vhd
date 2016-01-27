--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:04:21 01/16/2016
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Punto_PicoBlaze/Prueba_global.vhd
-- Project Name:  Punto_PicoBlaze
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: kcpsm3_int_test
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Prueba_global IS
END Prueba_global;
 
ARCHITECTURE behavior OF Prueba_global IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT kcpsm3_int_test
    PORT(
         operando1 : OUT  std_logic_vector(31 downto 0);
         operando2 : OUT  std_logic_vector(31 downto 0);
         operacion : OUT  std_logic_vector(1 downto 0);
         enable_alu : OUT  std_logic;
         entrada_resultado_alu : IN  std_logic_vector(31 downto 0);
         interrupt_event : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal entrada_resultado_alu : std_logic_vector(31 downto 0) := (others => '0');
   signal interrupt_event : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal operando1 : std_logic_vector(31 downto 0);
   signal operando2 : std_logic_vector(31 downto 0);
   signal operacion : std_logic_vector(1 downto 0);
   signal enable_alu : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: kcpsm3_int_test PORT MAP (
          operando1 => operando1,
          operando2 => operando2,
          operacion => operacion,
          enable_alu => enable_alu,
          entrada_resultado_alu => entrada_resultado_alu,
          interrupt_event => interrupt_event,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		entrada_resultado_alu<="10011011001010100101011101011001";
		
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		interrupt_event<='1';
      wait for 100 ns;	
		interrupt_event<='0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
