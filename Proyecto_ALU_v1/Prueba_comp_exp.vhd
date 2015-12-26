--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:15:59 12/20/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_comp_exp.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparador_Exp
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
 
ENTITY Prueba_comp_exp IS
END Prueba_comp_exp;
 
ARCHITECTURE behavior OF Prueba_comp_exp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparador_Exp
    PORT(
         e1 : IN  std_logic_vector(7 downto 0);
         e2 : IN  std_logic_vector(7 downto 0);
         eMax : OUT  std_logic_vector(7 downto 0);
         n_despl : OUT  std_logic_vector(7 downto 0);
		   exp_iguales : out std_logic 

        );
    END COMPONENT;
    

   --Inputs
   signal e1 : std_logic_vector(7 downto 0) := (others => '0');
   signal e2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal eMax : std_logic_vector(7 downto 0);
   signal n_despl : std_logic_vector(7 downto 0);
	signal exp_iguales : std_logic ;

   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparador_Exp PORT MAP (
          e1 => e1,
          e2 => e2,
          eMax => eMax,
          n_despl => n_despl,
			 exp_iguales=>exp_iguales
		
        );

   -- Clock process definitions
   clk_process :process
   begin
		
		e2<="10000010";
		e1<="10000111";
		wait for clk_period/4;
		
		e2<="10000000";
		e1<="10001111";
		wait for clk_period/4;
		e2<="10101010";
		e1<="01010101";
		wait for clk_period/4;
		
		e2<="11001100";
		e1<="11001100";
		wait for clk_period/4;
		
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
