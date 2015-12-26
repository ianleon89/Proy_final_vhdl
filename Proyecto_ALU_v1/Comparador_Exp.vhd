----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:24:48 12/20/2015 
-- Design Name: 
-- Module Name:    Comparador_Exp - Behavioral 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparador_Exp is
    Port ( e1 : in  STD_LOGIC_VECTOR (7 downto 0);
           e2 : in  STD_LOGIC_VECTOR (7 downto 0);
           eMax : out  STD_LOGIC_VECTOR (7 downto 0);
           n_despl : out  STD_LOGIC_VECTOR (7 downto 0);
			  exp_iguales : out std_logic:='0' 
			  );
end Comparador_Exp;


architecture Behavioral of Comparador_Exp is

signal despl: std_logic_vector(7 downto 0);

begin
emax<= e1 when e1>e2 else
			 e2 when e2>e1 else
			 e1;
	
	process (e1,e2,despl)
	begin
--	n_despl <= e1-e2;
	if e1="00000000" then
			n_despl<="00000000";
	elsif e2="00000000" then 
			n_despl<="00000000";
	elsif e1>e2 then
			despl <= conv_std_logic_vector((conv_integer(e1)-conv_integer(e2)),8);
			
			if despl<23 then
				n_despl<=despl;
			else
				n_despl<="11111111";
			end if;
			exp_iguales<='0';
	elsif e2>e1 then
		 	despl <= conv_std_logic_vector((conv_integer(e2)-conv_integer(e1)),8);
			if despl<23 then
				n_despl<=despl;
			else
				n_despl<="11111111";
			end if;
			exp_iguales<='0';
	else 
			n_despl<="00000000";	
			exp_iguales<='1';
	end if; 

	end process;
	
	
end Behavioral;

