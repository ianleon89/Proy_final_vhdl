--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:09:51 01/02/2016
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_selecc_exponen.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Selec_exponente
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
 
ENTITY Prueba_selecc_exponen IS
END Prueba_selecc_exponen;
 
ARCHITECTURE behavior OF Prueba_selecc_exponen IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Selec_exponente
    PORT(
         exponente_suma_resta : IN  std_logic_vector(7 downto 0);
         exponente_mul : IN  std_logic_vector(7 downto 0);
         operacion : IN  std_logic_vector(1 downto 0);
         exponente_seleccionado : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal exponente_suma_resta : std_logic_vector(7 downto 0) := (others => '0');
   signal exponente_mul : std_logic_vector(7 downto 0) := (others => '0');
   signal operacion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal exponente_seleccionado : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Selec_exponente PORT MAP (
          exponente_suma_resta => exponente_suma_resta,
          exponente_mul => exponente_mul,
          operacion => operacion,
          exponente_seleccionado => exponente_seleccionado
        );

   -- Clock process definitions
   cloc_process :process
   begin
		
		 exponente_suma_resta <= "00001111";
       exponente_mul<="01010101";
       operacion <="00";
 
		wait for clock_period/2;
		 exponente_suma_resta <= "00001111";
       exponente_mul<="01010101";
       operacion <="01";
		
		wait for clock_period/2;
		exponente_suma_resta <= "00001111";
       exponente_mul<="01010101";
       operacion <="10";
		 wait for clock_period/2;
		 exponente_suma_resta <= "00001111";
       exponente_mul<="01010101";
       operacion <="11";
		 wait for clock_period/2;
		 
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
