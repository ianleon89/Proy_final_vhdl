----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:04:19 01/02/2016 
-- Design Name: 
-- Module Name:    Selec_exponente - Behavioral 
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

entity Selec_exponente is
    Port ( exponente_suma_resta : in  STD_LOGIC_VECTOR (7 downto 0);
           exponente_mul : in  STD_LOGIC_VECTOR (7 downto 0);
           operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           exponente_seleccionado : out  STD_LOGIC_VECTOR (7 downto 0));
end Selec_exponente;

architecture Behavioral of Selec_exponente is

begin

	with operacion select
	
	exponente_seleccionado <= exponente_mul when "10",
									  exponente_suma_resta when others;

end Behavioral;

