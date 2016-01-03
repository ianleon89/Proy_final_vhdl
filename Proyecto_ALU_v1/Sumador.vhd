----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:49 12/23/2015 
-- Design Name: 
-- Module Name:    Sumador - Behavioral 
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

entity Sumador is
    Port ( 
				
			  mantisa_desplazada : in  STD_LOGIC_VECTOR (22 downto 0);
           mantisa_no_desplazada : in  STD_LOGIC_VECTOR (22 downto 0);
			  ex_igl: in std_logic;
           resultado : out  STD_LOGIC_VECTOR (22 downto 0);
           carry : out  STD_LOGIC_VECTOR (1 downto 0));
end Sumador;

architecture Behavioral of Sumador is

signal bit_1 : std_logic;
signal bit_2 : std_logic_vector(1 downto 0);
signal mantisa_n_des : std_logic_vector(23 downto 0);
signal mantisa_des : std_logic_vector(23 downto 0);
signal mantisa_sumada : std_logic_vector(23 downto 0);

begin

--process(mantisa_desplazada,mantisa_no_desplazada)
--	begin
--	despl <= conv_std_logic_vector((conv_integer(e2)-conv_integer(e1)),8);
	


	
	--bit_1<=mantisa_desplazada(22) and mantisa_no_desplazada(22);
	--carry(0)<=bit_1 xor '1';
	--carry(1)<=bit_1 and '1';

process (ex_igl,mantisa_sumada,bit_1,bit_2,mantisa_n_des,mantisa_des,mantisa_no_desplazada,mantisa_desplazada)
begin

	
	if mantisa_desplazada="11111111111111111111111" then
		resultado <= mantisa_desplazada;
		carry<="01"; 
	-- Sumador de mantisas
	else
		mantisa_n_des<='0'& mantisa_no_desplazada;
		mantisa_des<='0' & mantisa_desplazada;
		mantisa_sumada<= std_logic_vector(unsigned(mantisa_n_des)+unsigned(mantisa_des));
		resultado<=mantisa_sumada(22 downto 0);
			-- SUMADOR DE 2 Bits para el acarreo
		if (ex_igl/='1') then
			carry(0)<=mantisa_sumada(23) xor '1';
			carry(1)<=mantisa_sumada(23) and '1';	
		else 
			bit_2(0) <= mantisa_sumada(23) xor '1';
			bit_2(1)<= mantisa_sumada(23)and '1';
			bit_1<= bit_2(0) and '1';
			carry(0)<=bit_2(0) xor '1';
			carry(1)<=bit_1 or bit_2(1);
			--carry(0)<=bit_2(0) xor '1';
			--carry(1)<=bit_2(1) and '1';	
		end if;
	
	end if;
--	carry<= std_logic_vector(unsigned(to_integer(bit_1))+unsigned(to_integer(bit_2))+1);
end process;

end Behavioral;

