--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:20:49 12/23/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_rebose.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Detector_de_Rebose
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
 
ENTITY Prueba_rebose IS
END Prueba_rebose;
 
ARCHITECTURE behavior OF Prueba_rebose IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Detector_de_Rebose
    PORT(
         acarreo : IN  std_logic_vector(1 downto 0);
         resultado_suma : IN  std_logic_vector(22 downto 0);
         exponente_max : IN  std_logic_vector(7 downto 0);
         exponente_real : OUT  std_logic_vector(7 downto 0);
         error : OUT  std_logic;
         mantisa_real : OUT  std_logic_vector(22 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal acarreo : std_logic_vector(1 downto 0) := (others => '0');
   signal resultado_suma : std_logic_vector(22 downto 0) := (others => '0');
   signal exponente_max : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal exponente_real : std_logic_vector(7 downto 0);
   signal error : std_logic;
   signal mantisa_real : std_logic_vector(22 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Detector_de_Rebose PORT MAP (
          acarreo => acarreo,
          resultado_suma => resultado_suma,
          exponente_max => exponente_max,
          exponente_real => exponente_real,
          error => error,
          mantisa_real => mantisa_real
        );

   -- Clock process definitions
   cloc_process :process
   begin
		acarreo<="00";
		resultado_suma<="11111111111111111111111";
		exponente_max<="00110110";
		wait for clock_period/4;
		acarreo<="10";
		resultado_suma<="10010110011110101011010";
		exponente_max<="00110110";
		wait for clock_period/4;
		acarreo<="01";
		resultado_suma<="11110110011110111011010";
		exponente_max<="00110110";
		wait for clock_period/4;
		acarreo<="11";
		resultado_suma<="10110100111010001010111";
		exponente_max<="10000011";
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
