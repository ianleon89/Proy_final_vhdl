----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:50:17 12/24/2015 
-- Design Name: 
-- Module Name:    seleccion_operacion - Behavioral 
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

entity seleccion_operacion is
    Port ( mantisa_rl : in  STD_LOGIC_VECTOR (45 downto 0);
           expo_rl : in  STD_LOGIC_VECTOR (15 downto 0);
           operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           mantisa_reall : out  STD_LOGIC_VECTOR (22 downto 0);
           exponente_reall : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end seleccion_operacion;

architecture Behavioral of seleccion_operacion is

begin
	
	with operacion select
		mantisa_reall<= mantisa_rl(22 downto 0) when "00",
							 mantisa_rl(22 downto 0) when "01",
							 mantisa_rl(45 downto 23) when "10",
							 "11111111111111111111111" when others;
	with operacion select
		exponente_reall<= expo_rl(7 downto 0) when "00",
								expo_rl(7 downto 0) when "01",
								expo_rl(15 downto 8) when "10",
							   "11111111" when others;
			
							
	

end Behavioral;

