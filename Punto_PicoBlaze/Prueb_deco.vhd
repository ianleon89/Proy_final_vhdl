--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:14:23 01/14/2016
-- Design Name:   
-- Module Name:   C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/Punto_PicoBlaze/Prueb_deco.vhd
-- Project Name:  Punto_PicoBlaze
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder_ALU
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
 
ENTITY Prueb_deco IS
END Prueb_deco;
 
ARCHITECTURE behavior OF Prueb_deco IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder_ALU
    PORT(
         data : IN  std_logic_vector(7 downto 0);
         selec : IN  std_logic_vector(3 downto 0);
         enable : IN  std_logic;
         op1_lsb : OUT  std_logic_vector(7 downto 0);
         op1_lssb : OUT  std_logic_vector(7 downto 0);
         op1_mssb : OUT  std_logic_vector(7 downto 0);
         op1_msb : OUT  std_logic_vector(7 downto 0);
         op2_lsb : OUT  std_logic_vector(7 downto 0);
         op2_lssb : OUT  std_logic_vector(7 downto 0);
         op2_mssb : OUT  std_logic_vector(7 downto 0);
         op2_msb : OUT  std_logic_vector(7 downto 0);
         operacion : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(7 downto 0) := (others => '0');
   signal selec : std_logic_vector(3 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal op1_lsb : std_logic_vector(7 downto 0);
   signal op1_lssb : std_logic_vector(7 downto 0);
   signal op1_mssb : std_logic_vector(7 downto 0);
   signal op1_msb : std_logic_vector(7 downto 0);
   signal op2_lsb : std_logic_vector(7 downto 0);
   signal op2_lssb : std_logic_vector(7 downto 0);
   signal op2_mssb : std_logic_vector(7 downto 0);
   signal op2_msb : std_logic_vector(7 downto 0);
   signal operacion : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder_ALU PORT MAP (
          data => data,
          selec => selec,
          enable => enable,
          op1_lsb => op1_lsb,
          op1_lssb => op1_lssb,
          op1_mssb => op1_mssb,
          op1_msb => op1_msb,
          op2_lsb => op2_lsb,
          op2_lssb => op2_lssb,
          op2_mssb => op2_mssb,
          op2_msb => op2_msb,
          operacion => operacion
        );

   -- Clock process definitions
   cloc_process :process
   begin
			data <= "01101001";
			selec <= "0001";
      --   enable<='1';
		wait for clock_period/8;
		
			data <= "11111001";
			selec <= "0010";
       --  enable<='1';

		wait for clock_period/8;
			data <= "00001001";
			selec <= "0011";
--enable<='1';
		wait for clock_period/8;
		
			data <= "10011001";
			selec <= "0100";
        -- enable<='1';

		wait for clock_period/8;
		
		
		-----
		
		data <= "11101101";
			selec <= "0101";
         enable<='1';
		wait for clock_period/8;
		
			data <= "00111001";
			selec <= "0110";
         enable<='0';

		wait for clock_period/8;
			data <= "00101001";
			selec <= "0111";
        enable<='1';
		wait for clock_period/8;
		
			data <= "11001100";
			selec <= "1000";
         enable<='0';

		wait for clock_period/8;
			data <= "00000001";
			selec <= "1001";
         enable<='1';

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
