----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:19:23 12/23/2015 
-- Design Name: 
-- Module Name:    Pressenta_resultados - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Pressenta_resultados is
    Port ( error_exp : in  STD_LOGIC;
			  enable : in std_logic;
           cod_error : in  STD_LOGIC_VECTOR (6 downto 0);
           mantisa_real : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_real : in  STD_LOGIC_VECTOR (7 downto 0);
           numero_ieee_754 : out  STD_LOGIC_VECTOR (30 downto 0));
end Pressenta_resultados;

architecture Behavioral of Pressenta_resultados is

begin
process (error_exp,cod_error,mantisa_real,exponente_real)

begin
	if enable /='1' then
		if cod_error(6) /= '0' and error_exp/='1'  then
			numero_ieee_754<= exponente_real & mantisa_real;
		elsif cod_error ="0001001" or cod_error="0000001" or cod_error="0001000"  then
			numero_ieee_754<="0000000011111111111111111111111";
		elsif cod_error="0010000" or cod_error="0000010" or cod_error="0010010" then
			numero_ieee_754<="1111111100000000000000000000000";
		elsif ((cod_error(0) and cod_error(1))or(cod_error(3) and cod_error(4)))='1' then
			numero_ieee_754<="1111111111111111111111111111111";
		else
			numero_ieee_754<="1111111111111111111111111111111";
		end if;
	else
			numero_ieee_754<="1111111111111111111111111111111";
	end if;
end process;
end Behavioral;

