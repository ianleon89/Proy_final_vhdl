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

entity Seleccion_Operacion is
    Port ( expo1 : in  STD_LOGIC_VECTOR (7 downto 0);
           expo2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  signo1: in STD_LOGIC;
			  signo2: in STD_LOGIC;
           operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           operacion_real : out  STD_LOGIC_VECTOR (1 downto 0);
           signo : out  STD_LOGIC
			  );
end Seleccion_Operacion;

architecture Behavioral of Seleccion_Operacion is

begin
	
process(signo1,signo2,expo1,expo2,operacion)
begin	
		if (expo1>expo2) then
		
			if signo1 = '1' and signo2 = '1' then
			
				if operacion = "00" then
					operacion_real<="00";
					signo<='1';
				elsif operacion = "01" then
					operacion_real<="01";
					signo<='1';
				else
					operacion_real<=operacion;
					signo<=signo1 xor signo2;
				
				end if;
			elsif signo1 = '1' and signo2 = '0' then
				
				if operacion = "00" then
					operacion_real<="01";
					signo<='1';
				elsif operacion = "01" then
					operacion_real<="00";
					signo<='1';
				else
					operacion_real<=operacion;
					signo<=signo1 xor signo2;
				
				end if;
			elsif signo1 = '0' and signo2 = '1' then
				
				if operacion = "00" then
					operacion_real<="01";
					signo<='0';
				elsif operacion = "01" then
					operacion_real<="00";
					signo<='0';
				else
					operacion_real<=operacion;
					signo<=signo1 xor signo2;
				
				end if;
			else
				operacion_real<=operacion;
				signo<=signo1 xor signo2;
			end if;
		
		elsif(expo2>expo1) then
		
			if signo1 = '1' and signo2 = '1' then
			
				if operacion = "00" then
					operacion_real<="00";
					signo<='1';
				elsif operacion = "01" then
					operacion_real<="01";
					signo<='0';
				else
					operacion_real<=operacion;
					signo<=signo1 xor signo2;
				
				end if;
			elsif signo1 = '1' and signo2 = '0' then
				
				if operacion = "00" then
					operacion_real<="01";
					signo<='0';
				elsif operacion = "01" then
					operacion_real<="00";
					signo<='1';
				else
					operacion_real<=operacion;
					signo<=signo1 xor signo2;
				
				end if;
			elsif signo1 = '0' and signo2 = '1' then
				
				if operacion = "00" then
					operacion_real<="01";
					signo<='1';
				elsif operacion = "01" then
					operacion_real<="00";
					signo<='0';
				else
					operacion_real<=operacion;
					signo<=signo1 xor signo2;
				
				end if;
			else
				operacion_real<=operacion;
				if operacion = "00" then
					signo<='0';
				elsif operacion = "01" then
					signo<='1';
				else
					signo<=signo1 xor signo2;
				end if;
			end if;
		else
		
			if signo1 = '1' and signo2 = '1' then
			
				if operacion = "00" then
					operacion_real<="00";
					signo<='1';
				elsif operacion = "01" then
					operacion_real<="01";
					signo<='0';
				else
					operacion_real<=operacion;
					signo<=signo1 xor signo2;
				
				end if;
			elsif signo1 = '1' and signo2 = '0' then
				
				if operacion = "00" then
					operacion_real<="01";
					signo<='0';
				elsif operacion = "01" then
					operacion_real<="00";
					signo<='0';
				else
					operacion_real<=operacion;
					signo<=signo1 xor signo2;
				
				end if;
			elsif signo1 = '0' and signo2 = '1' then
				
				if operacion = "00" then
					operacion_real<="01";
					signo<='0';
				elsif operacion = "01" then
					operacion_real<="00";
					signo<='0';
				else
					operacion_real<=operacion;
					signo<=signo1 xor signo2;
				
				end if;
			else
				operacion_real<=operacion;
				if(operacion="11") then
					signo<=signo1 xor signo2;
				else
					signo<='0';
				end if;
			
			end if;

		end if;
	
end process;
	
--	with operacion select
--		mantisa_reall<= mantisa_rl(22 downto 0) when "00",
--							 mantisa_rl(22 downto 0) when "01",
--							 mantisa_rl(45 downto 23) when "10",
--							 "11111111111111111111111" when others;
--	with operacion select
--		exponente_reall<= expo_rl(7 downto 0) when "00",
--								expo_rl(7 downto 0) when "01",
--								expo_rl(15 downto 8) when "10",
--							   "11111111" when others;
			
							
	

end Behavioral;

