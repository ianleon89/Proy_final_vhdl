--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:30:56 01/19/2016
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Punto_PicoBlaze/Prueba_presentarest.vhd
-- Project Name:  Punto_PicoBlaze
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Pressenta_resultados
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
 
ENTITY Prueba_presentarest IS
END Prueba_presentarest;
 
ARCHITECTURE behavior OF Prueba_presentarest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Pressenta_resultados
    PORT(
         error_exp : IN  std_logic;
         enable : IN  std_logic;
         cod_error : IN  std_logic_vector(6 downto 0);
         mantisa_real : IN  std_logic_vector(22 downto 0);
         exponente_real : IN  std_logic_vector(7 downto 0);
         numero_ieee_754 : OUT  std_logic_vector(30 downto 0);
         interrupt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal error_exp : std_logic := '0';
   signal enable : std_logic := '0';
   signal cod_error : std_logic_vector(6 downto 0) := (others => '0');
   signal mantisa_real : std_logic_vector(22 downto 0) := (others => '0');
   signal exponente_real : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal numero_ieee_754 : std_logic_vector(30 downto 0);
   signal interrupt : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Pressenta_resultados PORT MAP (
          error_exp => error_exp,
          enable => enable,
          cod_error => cod_error,
          mantisa_real => mantisa_real,
          exponente_real => exponente_real,
          numero_ieee_754 => numero_ieee_754,
          interrupt => interrupt
        );

   -- Clock process definitions
   cloc_process :process
   begin
	
		 error_exp <='0';
       enable <= '1';
       cod_error <= "1100100";
       mantisa_real <= "10101010111101010101010";
       exponente_real <= "10110100";
	
		wait for clock_period/2;
		 error_exp <='0';
       enable <= '0';
       cod_error <= "1100100";
       mantisa_real <= "10101010111101010101010";
       exponente_real <= "10110100";
		 
		wait for clock_period/2;
		 error_exp <='0';
       enable <= '0';
       cod_error <= "1100100";
       mantisa_real <= "10101010111101010101010";
       exponente_real <= "10110100";
		 
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
