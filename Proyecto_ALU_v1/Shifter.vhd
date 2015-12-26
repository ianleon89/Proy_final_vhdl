----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:37 12/20/2015 
-- Design Name: 
-- Module Name:    Shifter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Shifter is
    Port ( desplaza : in  STD_LOGIC_VECTOR (7 downto 0);
			  ex1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ex2 : in  STD_LOGIC_VECTOR (7 downto 0);
           A : in  STD_LOGIC_VECTOR (22 downto 0);
           M : in  STD_LOGIC_VECTOR (22 downto 0);
           Mantisa_despl : out  STD_LOGIC_VECTOR (22 downto 0);
           Mantisa_sin_despl : out  STD_LOGIC_VECTOR (22 downto 0);
           Mantisa_iguales : out  STD_LOGIC:='0';
			  error: out  STD_LOGIC:='1'
			  
			  );
end Shifter;

architecture Behavioral of Shifter is
	signal sig_M: std_logic_vector(22 downto 0); 
begin
	
	sig_M <= M when ex1>ex2 else
				A when ex2>ex1;
				
	
	process(ex1,ex2)
	begin
		if ex1>ex2 then
			Mantisa_sin_despl<=A;
		elsif ex2>ex1 then
			Mantisa_sin_despl<=M;
		--	sig_M<="00000000000000000000000";
		end if;
		if A=M then
			sig_M<=A;
		end if;
		
	end process;
	
	
end Behavioral;

