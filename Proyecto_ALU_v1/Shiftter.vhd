----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:58:42 12/21/2015 
-- Design Name: 
-- Module Name:    Shiftter - Behavioral 
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
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Shiftter is
    Port ( mantisa : in  STD_LOGIC_VECTOR (22 downto 0);
           enable : in  STD_LOGIC;
           num_despl : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_despl : out  STD_LOGIC_VECTOR (22 downto 0));
end Shiftter;

architecture Behavioral of Shiftter is


signal m_des : std_logic_vector(23 downto 0);


begin


process(mantisa,num_despl,enable)
	begin
	
	if (enable/='0') then
	
		if (num_despl/="00000000")and(num_despl/="11111111") then
	
		--	m_des<= '1'& mantisa(22 downto 0);
			mantisa_despl <= std_logic_vector(shift_right(unsigned('1'&mantisa), to_integer(unsigned(num_despl)-1)));
			--m_des <= std_logic_vector(shift_right(unsigned(m_des), to_integer(unsigned(num_despl))));
			--mantisa_despl<=m_des(23 downto 1);
			
		elsif (num_despl="00000000") then
			mantisa_despl <= mantisa;
		elsif num_despl="11111111" then
			mantisa_despl<="11111111111111111111111"; -- ERROR
		else
			mantisa_despl<="11111111111111111111111"; -- ERROR
		end if;
--	elsif (enable/='0') and (mantisa="00000000000000000000000") then
--	     mantisa_despl <= mantisa;
	elsif (enable='0') then
		  mantisa_despl<="11111111111111111111111"; -- ERROR
	else 
		mantisa_despl<="11111111111111111111111"; -- ERROR
	end if;
	
	
end process;



end Behavioral;

