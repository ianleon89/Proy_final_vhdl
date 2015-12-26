--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:27:13 12/24/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_selec_oper.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seleccion_operacion
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
 
ENTITY Prueba_selec_oper IS
END Prueba_selec_oper;
 
ARCHITECTURE behavior OF Prueba_selec_oper IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seleccion_operacion
    PORT(
         mantisa_rl : IN  std_logic_vector(45 downto 0);
         expo_rl : IN  std_logic_vector(15 downto 0);
         operacion : IN  std_logic_vector(1 downto 0);
         mantisa_reall : OUT  std_logic_vector(22 downto 0);
         exponente_reall : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mantisa_rl : std_logic_vector(45 downto 0) := (others => '0');
   signal expo_rl : std_logic_vector(15 downto 0) := (others => '0');
   signal operacion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal mantisa_reall : std_logic_vector(22 downto 0);
   signal exponente_reall : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seleccion_operacion PORT MAP (
          mantisa_rl => mantisa_rl,
          expo_rl => expo_rl,
          operacion => operacion,
          mantisa_reall => mantisa_reall,
          exponente_reall => exponente_reall
        );

   -- Clock process definitions
   cloc_process :process
   begin
	
		mantisa_rl<="1110100111010110110101100001001110101111111111";
		expo_rl<="1100101100011010";
		operacion<="00";
	
		
		wait for clock_period/4;
		
		mantisa_rl<="1110100111010110110101100001001110101111111111";
		expo_rl<="1100101100011010";
		operacion<="01";
	
	
		wait for clock_period/4;
		
		mantisa_rl<="1110100111010110110101100001001110101111111111";
		expo_rl<="1100101100011010";
		operacion<="10";
		wait for clock_period/4;
	
		mantisa_rl<="1110100111010110110101100001001110101111111111";
		expo_rl<="1100101100011010";
		operacion<="11";
		wait for clock_period/4;
		
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
