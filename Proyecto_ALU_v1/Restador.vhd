----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:17 12/27/2015 
-- Design Name: 
-- Module Name:    Restador - Behavioral 
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

entity Restador is
    Port ( mantisa_desplazada_res : in  STD_LOGIC_VECTOR (22 downto 0);
           mantisa_no_desplazada_res : in  STD_LOGIC_VECTOR (22 downto 0);
           expnt_iguales : in  STD_LOGIC;
           mantisas_iguales : in  STD_LOGIC;
           resultado_resta : out  STD_LOGIC_VECTOR (22 downto 0);
           carry_resta : out  STD_LOGIC_VECTOR (1 downto 0));
end Restador;

architecture Behavioral of Restador is

signal bit_1 : std_logic;
signal bit_2 : std_logic_vector(1 downto 0);
signal mantisa_no_desplazada: std_logic_vector(23 downto 0);
signal mantisa_des_not : std_logic_vector(22 downto 0);
signal mantisa_des : std_logic_vector(23 downto 0);
signal mantisa_restada : std_logic_vector(23 downto 0);

begin
--mantisa_des_not<= not mantisa_desplazada_res;

process (mantisa_des_not,mantisas_iguales,expnt_iguales,mantisa_restada,bit_1,bit_2,mantisa_no_desplazada,mantisa_des,mantisa_no_desplazada_res,mantisa_desplazada_res)
begin

	
	if mantisa_desplazada_res="11111111111111111111111" then
		resultado_resta <= mantisa_desplazada_res;
		carry_resta<="11";
	elsif mantisas_iguales ='1' then
		resultado_resta<="00000000000000000000000";
	else
		
		mantisa_no_desplazada<='0'& mantisa_no_desplazada_res;
		mantisa_des<='0' & mantisa_desplazada_res;
		mantisa_restada<= std_logic_vector(unsigned(mantisa_no_desplazada)-unsigned(mantisa_des));
		resultado_resta<=mantisa_restada(22 downto 0);
	-- carry
		if (expnt_iguales/='1' ) then
			
			carry_resta(0)<= '1' and not mantisa_restada(23) ;
			carry_resta(1)<='0';
		else 
			carry_resta(0)<='1' and mantisa_restada(23);
			carry_resta(1)<='1' and mantisa_restada(23);
		end if;
	
	end if;
--	carry<= std_logic_vector(unsigned(to_integer(bit_1))+unsigned(to_integer(bit_2))+1);
end process;



end Behavioral;


--	mantisa_des_not<= not mantisa_desplazada_res;
--	if mantisa_desplazada_res="11111111111111111111111" then
--		resultado_resta <= mantisa_desplazada_res;
--		carry_resta<="00";
--	elsif mantisas_iguales ='1' then
--		resultado_resta<="00000000000000000000000";
--	else
--		
--		mantisa_no_desplazada<='0'& mantisa_no_desplazada_res;
--		mantisa_des<='0' & mantisa_des_not;
--		mantisa_restada<= std_logic_vector(unsigned(mantisa_no_desplazada)+unsigned(mantisa_des));
--		if(mantisa_restada(23))='1' then
--			resultado_resta<= std_logic_vector(unsigned(mantisa_restada(22 downto 0))+"0000000000000000000001");
--		else
--		   resultado_resta<=mantisa_restada(22 downto 0);
--			
--		end if;
--		
--
--			-- SUMADOR DE 2 Bits para el acarreo
--		if (expnt_iguales/='1') then
--			
--			carry_resta<="01";
--		else 
--			carry_resta<="10";
--		end if;
--	
--	end if;