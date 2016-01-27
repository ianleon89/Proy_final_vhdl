----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:44:58 01/16/2016 
-- Design Name: 
-- Module Name:    Decoder_Inputs - Behavioral 
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

entity Decoder_Inputs is
    Port ( Entrada_resultado_alu : in  STD_LOGIC_VECTOR (31 downto 0);
           Selector : in  STD_LOGIC_VECTOR (1 downto 0);
			  enable: in std_logic;
           Salida_apicob : out  STD_LOGIC_VECTOR (7 downto 0));
end Decoder_Inputs;

architecture Behavioral of Decoder_Inputs is

begin
process (Entrada_resultado_alu,enable,Selector)
begin
	if enable='1' then
		case Selector is
			when "00"=>Salida_apicob<= Entrada_resultado_alu (7 downto 0); 
			when "01"=>Salida_apicob<=	Entrada_resultado_alu (15 downto 8);
			when "10"=>Salida_apicob<=	Entrada_resultado_alu (23 downto 16);
			when others =>Salida_apicob<=	Entrada_resultado_alu (31 downto 24);
		end case;
	
	end if;
end process;
end Behavioral;

