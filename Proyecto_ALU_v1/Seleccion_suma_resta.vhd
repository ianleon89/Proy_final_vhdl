----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:18 12/24/2015 
-- Design Name: 
-- Module Name:    Seleccion_suma_resta - Behavioral 
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

entity Seleccion_suma_resta_mul is
    Port ( result : in  STD_LOGIC_VECTOR (68 downto 0);
           carry : in  STD_LOGIC_VECTOR (5 downto 0);
           selec : in  STD_LOGIC_VECTOR (1 downto 0);
           mantisa_selec : out  STD_LOGIC_VECTOR (22 downto 0);
           carry_selec : out  STD_LOGIC_VECTOR (1 downto 0));
end Seleccion_suma_resta_mul;

architecture Behavioral of Seleccion_suma_resta_mul is

begin
	
	with selec select
		mantisa_selec <= result(22 downto 0) when "00",
							  result(45 downto 23)when "01",
							  result(68 downto 46) when "10",
							  "11111111111111111111111" when others;
 	with selec select
		carry_selec<= carry(1 downto 0) when "00",
							carry(3 downto 2) when "01",
							carry(5 downto 4) when "10",
							"01" when others;

end Behavioral;

