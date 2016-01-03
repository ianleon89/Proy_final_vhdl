--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:28:18 12/27/2015
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Prueba_selector_opera.vhd
-- Project Name:  Proyecto_ALU_v1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Seleccion_Operacion
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
 
ENTITY Prueba_selector_opera IS
END Prueba_selector_opera;
 
ARCHITECTURE behavior OF Prueba_selector_opera IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Seleccion_Operacion
    PORT(
         expo1 : IN  std_logic_vector(7 downto 0);
         expo2 : IN  std_logic_vector(7 downto 0);
         signo1 : IN  std_logic;
         signo2 : IN  std_logic;
         operacion : IN  std_logic_vector(1 downto 0);
         operacion_real : OUT  std_logic_vector(1 downto 0);
         signo : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal expo1 : std_logic_vector(7 downto 0) := (others => '0');
   signal expo2 : std_logic_vector(7 downto 0) := (others => '0');
   signal signo1 : std_logic := '0';
   signal signo2 : std_logic := '0';
   signal operacion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal operacion_real : std_logic_vector(1 downto 0);
   signal signo : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Seleccion_Operacion PORT MAP (
          expo1 => expo1,
          expo2 => expo2,
          signo1 => signo1,
          signo2 => signo2,
          operacion => operacion,
          operacion_real => operacion_real,
          signo => signo
        );

   -- Clock process definitions
   cloc_process :process
   begin
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='0';
		signo2 <='0';
		operacion <="00";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='0';
		signo2 <='1';
		operacion <="00";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='1';
		signo2 <='0';
		operacion <="00";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='1';
		signo2 <='1';
		operacion <="00";
		wait for clock_period/32;
		
		-------------------------
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='0';
		signo2 <='0';
		operacion <="01";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='0';
		signo2 <='1';
		operacion <="01";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='1';
		signo2 <='0';
		operacion <="01";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='1';
		signo2 <='1';
		operacion <="01";
		wait for clock_period/32;
		-------------------------
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='0';
		signo2 <='0';
		operacion <="10";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='0';
		signo2 <='1';
		operacion <="10";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='1';
		signo2 <='0';
		operacion <="10";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='1';
		signo2 <='1';
		operacion <="10";
		wait for clock_period/32;
		-------------------------
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='0';
		signo2 <='0';
		operacion <="11";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='0';
		signo2 <='1';
		operacion <="11";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='1';
		signo2 <='0';
		operacion <="11";
		wait for clock_period/32;
		expo1 <="01110110";
		expo2 <="11110000";
		signo1 <='1';
		signo2 <='1';
		operacion <="11";
		wait for clock_period/32;
		--------------------------------------
		
		expo1 <="11110000";
		expo2 <="01110110";
		signo1 <='0';
		signo2 <='0';
		operacion <="00";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='0';
		signo2 <='1';
		operacion <="00";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='0';
		operacion <="00";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='1';
		operacion <="00";
		wait for clock_period/32;
		
		-------------------------
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='0';
		signo2 <='0';
		operacion <="01";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='0';
		signo2 <='1';
		operacion <="01";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='0';
		operacion <="01";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='1';
		operacion <="01";
		wait for clock_period/32;
		-------------------------
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='0';
		signo2 <='0';
		operacion <="10";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='0';
		signo2 <='1';
		operacion <="10";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='0';
		operacion <="10";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='1';
		operacion <="10";
		wait for clock_period/32;
		-------------------------
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='0';
		signo2 <='0';
		operacion <="11";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='0';
		signo2 <='1';
		operacion <="11";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='0';
		operacion <="11";
		wait for clock_period/32;
		expo2 <="01110110";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='1';
		operacion <="11";
		wait for clock_period/32;
		-------------------
		
		expo2 <="11110000";
		expo1 <="11110000";
		signo1 <='0';
		signo2 <='0';
		operacion <="00";
		wait for clock_period/32;
		expo2 <="11110000";
		expo1 <="11110000";
		signo1 <='0';
		signo2 <='1';
		operacion <="01";
		wait for clock_period/32;
		expo2 <="11110000";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='0';
		operacion <="10";
		wait for clock_period/32;
		expo2 <="11110000";
		expo1 <="11110000";
		signo1 <='1';
		signo2 <='1';
		operacion <="11";
		wait for clock_period/32;
		
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
