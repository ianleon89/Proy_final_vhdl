----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:46:25 01/02/2016 
-- Design Name: 
-- Module Name:    Multiplicador - Behavioral 
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multiplicador is
    Port ( exponente1 : in  STD_LOGIC_VECTOR (7 downto 0);
           exponente2 : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa1 : in  STD_LOGIC_VECTOR (22 downto 0);
           mantisa2 : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_multiplicado : out  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_multiplicada : out  STD_LOGIC_VECTOR (22 downto 0);
			  carry_mul : out STD_LOGIC_VECTOR (1 downto 0);
           error : out  STD_LOGIC);
end Multiplicador;

architecture Behavioral of Multiplicador is
	signal mantisa_mul : std_logic_vector(47 downto 0);
	signal exponente_mul: std_logic_vector(7 downto 0):= (others => '0');
begin
	
	process (exponente1,exponente2,mantisa1,mantisa2,exponente_mul,mantisa_mul)
	
	begin
	-- condicion 0
	if (exponente1="00000000" and mantisa1="00000000000000000000000")or(exponente2 ="00000000" and mantisa2="00000000000000000000000") then
		exponente_multiplicado<="00000000";
		mantisa_multiplicada<="00000000000000000000000";
		carry_mul<="01";
		error<='0';
		
	else
	
		exponente_mul<= std_logic_vector(unsigned(exponente1)+unsigned(exponente2)-127);
	
		if exponente_mul/="11111111" then
			exponente_multiplicado<=exponente_mul(7 downto 0);
			error<='0';
		else
			exponente_multiplicado<="11111111";
			error<='1';
		end if;
		mantisa_mul<= std_logic_vector(unsigned('1'&mantisa1)*unsigned('1'&mantisa2));
		mantisa_multiplicada<=mantisa_mul(45 downto 23);
		carry_mul<=mantisa_mul(47 downto 46);
	
	end if;
	
	--Veo si hay rebose
--	if mantisa_mul(47)/='1' then
--		mantisa_real<=mantisa_mul(46 downto 24);
--	else 
--		mantisa_real<= '1' & mantisa_mul(46 downto 25);
--	end if;
--	
--	if mantisa_mul(47 downto 46)="00"then
		
	--end if;
	end process;
end Behavioral;

