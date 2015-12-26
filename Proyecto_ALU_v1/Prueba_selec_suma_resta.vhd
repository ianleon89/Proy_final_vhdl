--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:36:51 12/24/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_selec_suma_resta.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Seleccion_suma_resta
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
 
ENTITY Prueba_selec_suma_resta IS
END Prueba_selec_suma_resta;
 
ARCHITECTURE behavior OF Prueba_selec_suma_resta IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Seleccion_suma_resta
    PORT(
         result : IN  std_logic_vector(45 downto 0);
         carry : IN  std_logic_vector(3 downto 0);
         selec_suma_resta : IN  std_logic_vector(1 downto 0);
         mantisa_selec : OUT  std_logic_vector(22 downto 0);
         carry_selec : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal result : std_logic_vector(45 downto 0) := (others => '0');
   signal carry : std_logic_vector(3 downto 0) := (others => '0');
   signal selec_suma_resta : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal mantisa_selec : std_logic_vector(22 downto 0);
   signal carry_selec : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Seleccion_suma_resta PORT MAP (
          result => result,
          carry => carry,
          selec_suma_resta => selec_suma_resta,
          mantisa_selec => mantisa_selec,
          carry_selec => carry_selec
        );

   -- Clock process definitions
   cloc_process :process
   begin
		result<="0111010100101011010011100000011110111001101010";
		carry<="1001";
		selec_suma_resta<="00";
		wait for clock_period/4;
		result<="0111010100101011010011100000011110111001101010";
		carry<="1101";
		selec_suma_resta<="01";
		wait for clock_period/4;
		result<="0111010100101011010011100000011110111001101010";
		carry<="1001";
		selec_suma_resta<="10";
		wait for clock_period/4;
		result<="0111010100101011010011100000011110111001101010";
		carry<="1010";
		selec_suma_resta<="11";
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
