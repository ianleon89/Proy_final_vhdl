--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:33:22 12/20/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_selec_comp_mantisa.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Selec_Comp_Mantisa
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
 
ENTITY Prueba_selec_comp_mantisa IS
END Prueba_selec_comp_mantisa;
 
ARCHITECTURE behavior OF Prueba_selec_comp_mantisa IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Selec_Comp_Mantisa
    PORT(
         ex1 : IN  std_logic_vector(7 downto 0);
         ex2 : IN  std_logic_vector(7 downto 0);
         A : IN  std_logic_vector(22 downto 0);
         M : IN  std_logic_vector(22 downto 0);
         Mantisa_despl : OUT  std_logic_vector(22 downto 0);
         Mantisa_sin_despl : OUT  std_logic_vector(22 downto 0);
         Mantisa_iguales : OUT  std_logic;
         cod_error : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ex1 : std_logic_vector(7 downto 0) := (others => '0');
   signal ex2 : std_logic_vector(7 downto 0) := (others => '0');
   signal A : std_logic_vector(22 downto 0) := (others => '0');
   signal M : std_logic_vector(22 downto 0) := (others => '0');

 	--Outputs
   signal Mantisa_despl : std_logic_vector(22 downto 0);
   signal Mantisa_sin_despl : std_logic_vector(22 downto 0);
   signal Mantisa_iguales : std_logic;
   signal cod_error : std_logic_vector(6 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Selec_Comp_Mantisa PORT MAP (
          ex1 => ex1,
          ex2 => ex2,
          A => A,
          M => M,
          Mantisa_despl => Mantisa_despl,
          Mantisa_sin_despl => Mantisa_sin_despl,
          Mantisa_iguales => Mantisa_iguales,
          cod_error => cod_error
        );

   -- Clock process definitions
   clck_process :process
   begin
		ex1<="00000000";
		ex2<="11111111";
		A<="00000000000000000000000";
		M<="11111111111111111111111";
		wait for clock_period/9;
		ex1<="11111111";
		ex2<="00000000";
		A<="00000000000000000000000";
		M<="11111111111111111111111";
		wait for clock_period/9;
		ex1<="00000000";
		ex2<="11111111";
		A<="00010000000000000000001";
		M<="11001110111110011111111";
		wait for clock_period/9;
		ex1<="00000111";
		ex2<="00000000";
		A<="00010000000001100000001";
		M<="11001110111110011111111";
		wait for clock_period/9;
		ex1<="00000000";
		ex2<="00010001";
		A<="00010000000001100000001";
		M<="11001110111110011111111";
		wait for clock_period/9;
		ex1<="00010010";
		ex2<="11111111";
		A<="00010000000001100000001";
		M<="11001110111110011111111";
		wait for clock_period/9;
		ex1<="11111111";
		ex2<="10011010";
		A<="00001100000000110000000";
		M<="00001110111110011111111";
		wait for clock_period/9;
		ex1<="00000111";
		ex2<="10000000";
		A<="00010000000001100000001";
		M<="11001110111110011111111";
		wait for clock_period/9;
		ex1<="10000011";
		ex2<="10000011";
		A<="11101010000111001010110";
		M<="11001010110011000000001";
		wait for clock_period/9;
		
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
