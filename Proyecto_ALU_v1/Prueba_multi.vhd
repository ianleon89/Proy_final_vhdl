--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:38:03 01/02/2016
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_multi.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Multiplicador
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
 
ENTITY Prueba_multi IS
END Prueba_multi;
 
ARCHITECTURE behavior OF Prueba_multi IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Multiplicador
    PORT(
         exponente1 : IN  std_logic_vector(7 downto 0);
         exponente2 : IN  std_logic_vector(7 downto 0);
         mantisa1 : IN  std_logic_vector(22 downto 0);
         mantisa2 : IN  std_logic_vector(22 downto 0);
         exponente_multiplicado : OUT  std_logic_vector(7 downto 0);
         mantisa_multiplicada : OUT  std_logic_vector(22 downto 0);
         carry_mul : OUT  std_logic_vector(1 downto 0);
         error : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal exponente1 : std_logic_vector(7 downto 0) := (others => '0');
   signal exponente2 : std_logic_vector(7 downto 0) := (others => '0');
   signal mantisa1 : std_logic_vector(22 downto 0) := (others => '0');
   signal mantisa2 : std_logic_vector(22 downto 0) := (others => '0');

 	--Outputs
   signal exponente_multiplicado : std_logic_vector(7 downto 0);
   signal mantisa_multiplicada : std_logic_vector(22 downto 0);
   signal carry_mul : std_logic_vector(1 downto 0);
   signal error : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Multiplicador PORT MAP (
          exponente1 => exponente1,
          exponente2 => exponente2,
          mantisa1 => mantisa1,
          mantisa2 => mantisa2,
          exponente_multiplicado => exponente_multiplicado,
          mantisa_multiplicada => mantisa_multiplicada,
          carry_mul => carry_mul,
          error => error
        );

   -- Clock process definitions
   cloc_process :process
   begin
		
		exponente1<= "10000101";--82.95*82.95
      exponente2<="10000101";
      mantisa1 <="01001011110011001100110";
      mantisa2 <="01001011110011001100110";
		wait for clock_period/2;--5*67
		exponente1<= "10000001";
      exponente2<="10000101";
      mantisa1 <="01000000000000000000000";
      mantisa2 <="00001100000000000000000";
		wait for clock_period/2;--8.75*8.75
		exponente1<= "10000010";
      exponente2<= "10000010";
      mantisa1 <="00011000000000000000000";
      mantisa2 <="00011000000000000000000";
		wait for clock_period/2;--14*2
		exponente1<= "10000010";
      exponente2<= "10000000";
      mantisa1 <="11000000000000000000000";
      mantisa2 <="00000000000000000000000";
		wait for clock_period/2;--14*0 --fallo
		exponente1<= "10000010";
      exponente2<= "00000000";
      mantisa1 <="11000000000000000000000";
      mantisa2 <="00000000000000000000000";
		wait for clock_period/2;--17363828*263727283
		exponente1<= "10010111";
      exponente2<= "10011010";
      mantisa1 <="00001000111100110111010";
      mantisa2 <="11110111000001010001011";
		wait for clock_period/2;--457,68 * 81636,95
		exponente1<= "10000111";
      exponente2<= "10001111";
      mantisa1 <="11001001101011100001010";
      mantisa2 <="00111110111001001111010";
		wait for clock_period/2;
		wait for clock_period/2;--0.0052* 0.00095
		exponente1<= "01110111";
      exponente2<= "01110100";
      mantisa1 <="01010100110010011000011";
      mantisa2 <="11110010000100101101100";
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
