--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:52:16 01/16/2016
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Punto_PicoBlaze/Prueba_mux_in.vhd
-- Project Name:  Punto_PicoBlaze
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder_Inputs
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
 
ENTITY Prueba_mux_in IS
END Prueba_mux_in;
 
ARCHITECTURE behavior OF Prueba_mux_in IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder_Inputs
    PORT(
         Entrada_resultado_alu : IN  std_logic_vector(31 downto 0);
         Selector : IN  std_logic_vector(1 downto 0);
         Salida_apicob : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Entrada_resultado_alu : std_logic_vector(31 downto 0) := (others => '0');
   signal Selector : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Salida_apicob : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder_Inputs PORT MAP (
          Entrada_resultado_alu => Entrada_resultado_alu,
          Selector => Selector,
          Salida_apicob => Salida_apicob
        );

   -- Clock process definitions
   cloc_process :process
   begin
	
		Entrada_resultado_alu<="01101001110100111010110101101010";
		Selector<="00";
		wait for clock_period/2;
			Selector<="01";
		wait for clock_period/2;
			Selector<="10";
		wait for clock_period/2;
			Selector<="11";
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
