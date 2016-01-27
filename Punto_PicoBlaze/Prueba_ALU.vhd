--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:18:20 01/21/2016
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Punto_PicoBlaze/Prueba_ALU.vhd
-- Project Name:  Punto_PicoBlaze
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_iee_754
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
 
ENTITY Prueba_ALU IS
END Prueba_ALU;
 
ARCHITECTURE behavior OF Prueba_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_iee_754
    PORT(
         mantisa_simple_presicion_uno : IN  std_logic_vector(22 downto 0);
         mantisa_simple_presicion_dos : IN  std_logic_vector(22 downto 0);
         operacion_pico_blaze : IN  std_logic_vector(1 downto 0);
         signo_simple_presicion_uno : IN  std_logic;
         signo_simple_presicion_dos : IN  std_logic;
         exponente_simple_presicion_uno : IN  std_logic_vector(7 downto 0);
         exponente_simple_presicion_dos : IN  std_logic_vector(7 downto 0);
         enable_754 : IN  std_logic;
         signo_ieee754 : OUT  std_logic;
         interrupcion_picoblaze : OUT  std_logic;
         numero_sumado_ieee754 : OUT  std_logic_vector(30 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mantisa_simple_presicion_uno : std_logic_vector(22 downto 0) := (others => '0');
   signal mantisa_simple_presicion_dos : std_logic_vector(22 downto 0) := (others => '0');
   signal operacion_pico_blaze : std_logic_vector(1 downto 0) := (others => '0');
   signal signo_simple_presicion_uno : std_logic := '0';
   signal signo_simple_presicion_dos : std_logic := '0';
   signal exponente_simple_presicion_uno : std_logic_vector(7 downto 0) := (others => '0');
   signal exponente_simple_presicion_dos : std_logic_vector(7 downto 0) := (others => '0');
   signal enable_754 : std_logic := '0';

 	--Outputs
   signal signo_ieee754 : std_logic;
   signal interrupcion_picoblaze : std_logic;
   signal numero_sumado_ieee754 : std_logic_vector(30 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_iee_754 PORT MAP (
          mantisa_simple_presicion_uno => mantisa_simple_presicion_uno,
          mantisa_simple_presicion_dos => mantisa_simple_presicion_dos,
          operacion_pico_blaze => operacion_pico_blaze,
          signo_simple_presicion_uno => signo_simple_presicion_uno,
          signo_simple_presicion_dos => signo_simple_presicion_dos,
          exponente_simple_presicion_uno => exponente_simple_presicion_uno,
          exponente_simple_presicion_dos => exponente_simple_presicion_dos,
          enable_754 => enable_754,
          signo_ieee754 => signo_ieee754,
          interrupcion_picoblaze => interrupcion_picoblaze,
          numero_sumado_ieee754 => numero_sumado_ieee754
        );

   -- Clock process definitions
   cloc_process :process
   begin
		   mantisa_simple_presicion_uno<="00000000000000000000000";-- : IN  std_logic_vector(22 downto 0);
         mantisa_simple_presicion_dos<="00000000000000000000000";-- : IN  std_logic_vector(22 downto 0);
         operacion_pico_blaze<="01";-- : IN  std_logic_vector(1 downto 0);
         signo_simple_presicion_uno<='0';-- : IN  std_logic;
         signo_simple_presicion_dos<='0';-- : IN  std_logic;
         exponente_simple_presicion_uno<="01111111";-- : IN  std_logic_vector(7 downto 0);
         exponente_simple_presicion_dos<="01111111";-- : IN  std_logic_vector(7 downto 0);
         enable_754<='1';-- : IN  std_logic;

		wait for clock_period/2;
		 mantisa_simple_presicion_uno<="00000000000000000000000";-- : IN  std_logic_vector(22 downto 0);
         mantisa_simple_presicion_dos<="00000000000000000000000";-- : IN  std_logic_vector(22 downto 0);
         operacion_pico_blaze<="00";-- : IN  std_logic_vector(1 downto 0);
         signo_simple_presicion_uno<='1';-- : IN  std_logic;
         signo_simple_presicion_dos<='0';-- : IN  std_logic;
         exponente_simple_presicion_uno<="01111111";-- : IN  std_logic_vector(7 downto 0);
         exponente_simple_presicion_dos<="01111111";-- : IN  std_logic_vector(7 downto 0);
         enable_754<='1';-- : IN  std_logic;
		wait for clock_period/2;
		 mantisa_simple_presicion_uno<="00000000000000000000000";-- : IN  std_logic_vector(22 downto 0);
         mantisa_simple_presicion_dos<="00000000000000000000000";-- : IN  std_logic_vector(22 downto 0);
         operacion_pico_blaze<="10";-- : IN  std_logic_vector(1 downto 0);
         signo_simple_presicion_uno<='0';-- : IN  std_logic;
         signo_simple_presicion_dos<='0';-- : IN  std_logic;
         exponente_simple_presicion_uno<="00000000";-- : IN  std_logic_vector(7 downto 0);
         exponente_simple_presicion_dos<="01111111";-- : IN  std_logic_vector(7 downto 0);
         enable_754<='1';-- : IN  std_logic;
		wait for clock_period/2;
		--1989.231 01000100111110001010011101100100
		 mantisa_simple_presicion_uno<="11110001010011101100100";-- : IN  std_logic_vector(22 downto 0);
         mantisa_simple_presicion_dos<="11110111011101001111111";-- : IN  std_logic_vector(22 downto 0);
         operacion_pico_blaze<="01";-- : IN  std_logic_vector(1 downto 0);
         signo_simple_presicion_uno<='0';-- : IN  std_logic;
         signo_simple_presicion_dos<='0';-- : IN  std_logic;
         exponente_simple_presicion_dos<="10001001";-- : IN  std_logic_vector(7 downto 0);
         exponente_simple_presicion_uno<="10001001";-- : IN  std_logic_vector(7 downto 0);
         enable_754<='1';-- : IN  std_logic;
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
