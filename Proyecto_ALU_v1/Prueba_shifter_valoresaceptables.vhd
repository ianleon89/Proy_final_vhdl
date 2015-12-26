--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:54:23 12/21/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_shifter_valoresaceptables.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shiftter
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
 
ENTITY Prueba_shifter_valoresaceptables IS
END Prueba_shifter_valoresaceptables;
 
ARCHITECTURE behavior OF Prueba_shifter_valoresaceptables IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shiftter
    PORT(
         mantisa : IN  std_logic_vector(22 downto 0);
         enable : IN  std_logic;
         num_despl : IN  std_logic_vector(7 downto 0);
         mantisa_despl : OUT  std_logic_vector(22 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mantisa : std_logic_vector(22 downto 0) := (others => '0');
   signal enable : std_logic := '0';
   signal num_despl : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal mantisa_despl : std_logic_vector(22 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shiftter PORT MAP (
          mantisa => mantisa,
          enable => enable,
          num_despl => num_despl,
          mantisa_despl => mantisa_despl
        );

   -- Clock process definitions
   clck_process :process

		begin
		
		enable<='1';
		num_despl<="00000001";
		mantisa<="01100000001110010011000";
		
		wait for clock_period/8;
		enable<='1';
		num_despl<="00000010";
		mantisa<="11111000111111001111111";
		
		wait for clock_period/8;
		enable<='1';
		num_despl<="00000011";
		mantisa<="11100001111110001111111";
		
		wait for clock_period/8;
		enable<='1';
		num_despl<="00000100";
		mantisa<="00001100001110000000110";
		
		wait for clock_period/8;
		enable<='1';
		num_despl<="00000101";
		mantisa<="01000000010111000001100";
		
		wait for clock_period/8;
		enable<='1';
		num_despl<="00000110";
		mantisa<="11111111000000111111111";
		
		wait for clock_period/8;
		enable<='1';
		num_despl<="00000111";
		mantisa<="11111000111111111000011";
		
		wait for clock_period/8;
		enable<='1';
		num_despl<="00001000";
		mantisa<="00000000000011110000000";
		
		wait for clock_period/8;
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
