--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:24:24 12/27/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_restador.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Restador
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
 
ENTITY Prueba_restador IS
END Prueba_restador;
 
ARCHITECTURE behavior OF Prueba_restador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Restador
    PORT(
         mantisa_desplazada_res : IN  std_logic_vector(22 downto 0);
         mantisa_no_desplazada_res : IN  std_logic_vector(22 downto 0);
         expnt_iguales : IN  std_logic;
         mantisas_iguales : IN  std_logic;
         resultado_resta : OUT  std_logic_vector(22 downto 0);
         carry_resta : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal mantisa_desplazada_res : std_logic_vector(22 downto 0) := (others => '0');
   signal mantisa_no_desplazada_res : std_logic_vector(22 downto 0) := (others => '0');
   signal expnt_iguales : std_logic := '0';
   signal mantisas_iguales : std_logic := '0';

 	--Outputs
   signal resultado_resta : std_logic_vector(22 downto 0);
   signal carry_resta : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Restador PORT MAP (
          mantisa_desplazada_res => mantisa_desplazada_res,
          mantisa_no_desplazada_res => mantisa_no_desplazada_res,
          expnt_iguales => expnt_iguales,
          mantisas_iguales => mantisas_iguales,
          resultado_resta => resultado_resta,
          carry_resta => carry_resta
        );

   -- Clock process definitions
   cloc_process :process
   begin
		
		mantisa_no_desplazada_res<="01111000000000000000000";	
		mantisa_desplazada_res<="10011000000000000000000"; 				--: std_logic_vector(22 downto 0) := (others => '0');
		expnt_iguales <='0';							--: std_logic := '0';
		mantisas_iguales <='0';
		
		wait for clock_period/2;
		
		mantisa_no_desplazada_res<="11101010000111001010110";	
		mantisa_desplazada_res<="11001010110011000000001"; 				--: std_logic_vector(22 downto 0) := (others => '0');
		expnt_iguales <='1';							--: std_logic := '0';
		mantisas_iguales <='0';
		
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
