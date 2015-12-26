--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:16:04 12/26/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/PRUEBA_REAL_SUMADOR.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumador_iee_754
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
 
ENTITY PRUEBA_REAL_SUMADOR IS
END PRUEBA_REAL_SUMADOR;
 
ARCHITECTURE behavior OF PRUEBA_REAL_SUMADOR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador_iee_754
    PORT(
         mantisa_simple_presicion_uno : IN  std_logic_vector(22 downto 0);
         mantisa_simple_presicion_dos : IN  std_logic_vector(22 downto 0);
         exponente_simple_presicion_uno : IN  std_logic_vector(7 downto 0);
         exponente_simple_presicion_dos : IN  std_logic_vector(7 downto 0);
         enable_754 : IN  std_logic;
         numero_sumado_ieee754 : OUT  std_logic_vector(30 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mantisa_simple_presicion_uno : std_logic_vector(22 downto 0) := (others => '0');
   signal mantisa_simple_presicion_dos : std_logic_vector(22 downto 0) := (others => '0');
   signal exponente_simple_presicion_uno : std_logic_vector(7 downto 0) := (others => '0');
   signal exponente_simple_presicion_dos : std_logic_vector(7 downto 0) := (others => '0');
   signal enable_754 : std_logic := '0';

 	--Outputs
   signal numero_sumado_ieee754 : std_logic_vector(30 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador_iee_754 PORT MAP (
          mantisa_simple_presicion_uno => mantisa_simple_presicion_uno,
          mantisa_simple_presicion_dos => mantisa_simple_presicion_dos,
          exponente_simple_presicion_uno => exponente_simple_presicion_uno,
          exponente_simple_presicion_dos => exponente_simple_presicion_dos,
          enable_754 => enable_754,
          numero_sumado_ieee754 => numero_sumado_ieee754
        );

   -- Clock process definitions
   cloc_process :process
   begin
--		--25
--		exponente_simple_presicion_uno<="10000011";
--		mantisa_simple_presicion_uno<="10010000000000000000000";
--		--40
--		exponente_simple_presicion_dos<="10000100";
--		mantisa_simple_presicion_dos <="01000000000000000000000";
--		enable_754 <='1';
--		wait for clock_period/4;
--		--85
--		
--		exponente_simple_presicion_uno<="10000101";
--		mantisa_simple_presicion_uno<="01010100000000000000000";
--		--1467
--		
--		exponente_simple_presicion_dos<="10001001";
--		mantisa_simple_presicion_dos <="01101110110000000000000";
--		enable_754 <='1';
--		wait for clock_period/4;
--		--11.4893
--	
--		exponente_simple_presicion_uno<="10000010";
--		mantisa_simple_presicion_uno<="01101111101010000101100";
--		--4.658
--	
--		exponente_simple_presicion_dos<="10000001";
--		mantisa_simple_presicion_dos <="00101010000111001010110";
--		enable_754 <='1';
--		wait for clock_period/4;
--		--30.632
--		
--		exponente_simple_presicion_uno<="10000011";
--		mantisa_simple_presicion_uno<="11101010000111001010110";
--		--28.674807
--		exponente_simple_presicion_dos<="10000011";
--		mantisa_simple_presicion_dos <="11001010110011000000001";
--		enable_754 <='1';
--		wait for clock_period/4;
		
		--	0.25
		exponente_simple_presicion_uno<="01111101";
		mantisa_simple_presicion_uno<="00000000000000000000000";
		--0.75
		exponente_simple_presicion_dos<="01111110";
		mantisa_simple_presicion_dos <="10000000000000000000000";
		enable_754 <='1';
		wait for clock_period/4;
		--0.93
		
		exponente_simple_presicion_uno<="01111110";
		mantisa_simple_presicion_uno<="11011100001010001111011";
		--0.35
		
		exponente_simple_presicion_dos<="01111101";
		mantisa_simple_presicion_dos <="01100110011001100110011";
		enable_754 <='1';
		wait for clock_period/4;
		--9000000
	
		exponente_simple_presicion_uno<="10010110";
		mantisa_simple_presicion_uno<="00010010101010001000000";
		--50000000
	
		exponente_simple_presicion_dos<="10011000";
		mantisa_simple_presicion_dos <="01111101011110000100000";
		enable_754 <='1';
		wait for clock_period/4;
		--0.0001
		
		exponente_simple_presicion_uno<="01110001";
		mantisa_simple_presicion_uno<="10100011011011100010111";
		--0.00003
		exponente_simple_presicion_dos<="01101111";
		mantisa_simple_presicion_dos <="11110111010100010000010";
		enable_754 <='1';
		wait for clock_period/4;
		
--		--	0
--		exponente_simple_presicion_uno<="00000000";
--		mantisa_simple_presicion_uno<="00000000000000000000000";
--		--2.5521175E38
--		exponente_simple_presicion_dos<="11111110";
--		mantisa_simple_presicion_dos <="01111111111111111111111";
--		enable_754 <='1';
--		wait for clock_period/4;
--		--2.5521175E38
--		
--		exponente_simple_presicion_uno<="11111110";
--		mantisa_simple_presicion_uno<="01111111111111111111111";
--		--2.5521175E38
--		
--		exponente_simple_presicion_dos<="11111110";
--		mantisa_simple_presicion_dos <="01111111111111111111111";
--		enable_754 <='1';
--		wait for clock_period/4;
--		--no normalizado
--	
--		exponente_simple_presicion_uno<="00000000";
--		mantisa_simple_presicion_uno<="00010010101010001000000";
--		--50000000
--	
--		exponente_simple_presicion_dos<="10011000";
--		mantisa_simple_presicion_dos <="01111101011110000100000";
--		enable_754 <='1';
--		wait for clock_period/4;
--		--infinito
--		
--		exponente_simple_presicion_uno<="11111111";
--		mantisa_simple_presicion_uno<="00000000000000000000000";
--		--NAN
--		exponente_simple_presicion_dos<="11111111";
--		mantisa_simple_presicion_dos <="11110111010100010000010";
--		enable_754 <='1';
--		wait for clock_period/4;
--		
--		
		
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
