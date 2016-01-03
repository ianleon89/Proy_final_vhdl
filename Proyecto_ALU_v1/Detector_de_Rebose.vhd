----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:47:19 12/23/2015 
-- Design Name: 
-- Module Name:    Detector_de_Rebose - Behavioral 
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
use IEEE.numeric_std.all;
--use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Detector_de_Rebose is
    Port ( acarreo : in  STD_LOGIC_VECTOR (1 downto 0);
           resultado_suma_resta_mul : in  STD_LOGIC_VECTOR (22 downto 0);
			  exponente_max : in std_logic_vector(7 downto 0);
			  exponente_real : out STD_LOGIC_VECTOR (7 downto 0);
			  error: out std_logic:='0';
           mantisa_real : out  STD_LOGIC_VECTOR (22 downto 0));
			  
end Detector_de_Rebose;

architecture Behavioral of Detector_de_Rebose is

signal senal_resultado : std_logic_vector(22 downto 0);
signal senal_exponente_resultado : std_logic_vector(7 downto 0):= (others => '0');
--signal cont : unsigned := '0'; 
begin

process (acarreo,resultado_suma_resta_mul,exponente_max,senal_resultado,senal_exponente_resultado)

variable count: integer:=0;
variable aux: integer:=22;
variable flag: integer:=1;
begin

	if acarreo /="00" then
		if acarreo(1)='1' then
			if (exponente_max/="11111111") then
				--mantisa_real <= std_logic_vector(shift_right(unsigned(acarreo(0)&resultado_suma(22 downto 1)),1));	
				mantisa_real<=acarreo(0)&resultado_suma_resta_mul(22 downto 1);
				exponente_real<= exponente_max+"00000001";
				error<='0';
			else
				error<='1';
				exponente_real<="11111111";
				mantisa_real<="11111111111111111111111";
			end if;
		else
			mantisa_real <= resultado_suma_resta_mul;
			error<='0';
			exponente_real<=exponente_max;
		end if;
	else
	-- si acarreo es 00 el resultado no esta normalizado, hay que deslpalzar a la izquierda hasta q sea
	-- normalizado
		--senal_exponente_resultado<=exponente_max;
		
		--while aux>=0 loop
		for i in 22 downto 0 loop	
					
		--	if (resultado_suma(aux) = '0') and (flag=1) then
			if (resultado_suma_resta_mul(i) = '0') and (flag=1) then
				count:=count+1;
			else
				flag:=0;
			end if;
				aux:=aux-1;
		end loop;
		senal_resultado<=std_logic_vector(shift_left(unsigned(resultado_suma_resta_mul), count));
		
		if(count < exponente_max) then
			exponente_real<= exponente_max-count-1;
			mantisa_real<=senal_resultado(21 downto 0)&'0';
			error<='0';
		elsif(count>exponente_max) then
			error<='1';
			exponente_real<="00000000";
			mantisa_real<="11111111111111111111111";
		else
			error<='0';
			exponente_real<="00000000";
			mantisa_real<="00000000000000000000000";
		end if;
			
			count:=0;
			aux:=22;
			flag:=1;
			
			
		
	
	------INGRESAR CODIGO DE RESTA
--	mantisa_real<=resultado_suma;
--	exponente_real<="11111111";
--	error<='1';
	
	
	
	end if;	
	
end process;

end Behavioral;

