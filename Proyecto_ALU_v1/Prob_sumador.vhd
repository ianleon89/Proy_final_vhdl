--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:48:53 12/23/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prob_sumador.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumador
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
 
ENTITY Prob_sumador IS
END Prob_sumador;
 
ARCHITECTURE behavior OF Prob_sumador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador
    PORT(
         mantisa_desplazada : IN  std_logic_vector(22 downto 0);
			ex_igl: in std_logic;
         mantisa_no_desplazada : IN  std_logic_vector(22 downto 0);
         resultado : OUT  std_logic_vector(22 downto 0);
         carry : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mantisa_desplazada : std_logic_vector(22 downto 0) := (others => '0');
   signal mantisa_no_desplazada : std_logic_vector(22 downto 0) := (others => '0');
	signal ex_igl:  std_logic:='0';
 	--Outputs
   signal resultado : std_logic_vector(22 downto 0);
   signal carry : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador PORT MAP (
          mantisa_desplazada => mantisa_desplazada,
          mantisa_no_desplazada => mantisa_no_desplazada,
			 ex_igl=>ex_igl,
          resultado => resultado,
          carry => carry
        );

   -- Clock process definitions
   cloc_process :process
   begin
	 ex_igl<='0';
	 mantisa_desplazada <="00101101011011101011110";
    mantisa_no_desplazada<="11101100101101110110101"; 
		
	 wait for clock_period/4;	
	 ex_igl<='0';
	 mantisa_desplazada <="00000000011011101011110";
    mantisa_no_desplazada<="11101100000001110110101"; 
	 
	 wait for clock_period/4;
	 ex_igl<='0';
	 mantisa_desplazada <="11111111111111111111111";
    mantisa_no_desplazada<="11111111101101110110101"; 
		
	 wait for clock_period/4;	
	 ex_igl<='1';
	 mantisa_desplazada <="11101010000111001010110";
    mantisa_no_desplazada<="11001010110011000000001"; 
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
