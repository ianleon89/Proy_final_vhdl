----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:37 12/20/2015 
-- Design Name: 
-- Module Name:    Shifter - Behavioral 
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

entity Selec_Comp_Mantisa is
    Port ( 
			  ex1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ex2 : in  STD_LOGIC_VECTOR (7 downto 0);
           A : in  STD_LOGIC_VECTOR (22 downto 0);
           M : in  STD_LOGIC_VECTOR (22 downto 0);
           Mantisa_despl : out  STD_LOGIC_VECTOR (22 downto 0);
           Mantisa_sin_despl : out  STD_LOGIC_VECTOR (22 downto 0);
           Mantisa_iguales : out  STD_LOGIC:='0';
			  cod_error: out  STD_LOGIC_VECTOR (6 downto 0)
			  
			  );
end Selec_Comp_Mantisa;

architecture Behavioral of Selec_Comp_Mantisa is
	--signal sig_M: std_logic_vector(22 downto 0); 
	signal oper_ok : std_logic:='0';--0 indica que no puedo operar con los valores ingresados
begin
	
	
	process(ex1,ex2,A,M,oper_ok)
	begin
	--  ERROR
	-- 00 valor 0
	--	01 no normalizado
	--	10 infinito
	--	11 NAN
	-- COdigo de ERROR
	-- 0 0 0 0 0 0 0 
   -- | | ___ | ___
	-- 1 2 3   4  5
	-- 1: Bit que indica que se puede operar
	-- 2: Bit que indica que el segundo valor esta en rango cuando es 1 si no es 0
	-- 3: Bits que indican el codigo de error del segundo valor
	-- 4: Bit que indica que el primer valor esta en rango cuando es 1 si no es 0
	-- 5: Bits que indican el codigo de error del primer valor
	
	-- Primer valor exponente :ex1 Mantisa: A
	-- Segundo valor exponente :ex2 Mantisa: M
		
	--------------------------------------------------------------------------------------------	
		if ((ex1="00000000")and(ex2="00000000")) then
		
			if (A="00000000000000000000000")and(M="00000000000000000000000") then
				
				cod_error<="1000000"; --los dos son cero pero se puede trabajar con ellos
			elsif(A/="00000000000000000000000")and (M="00000000000000000000000") then
			
				cod_error<="0000001";--primer valor no normalizado segundo valor es 0;
				
			elsif(M/="00000000000000000000000")and (A="00000000000000000000000") then
			
				cod_error<="0001000";--primer valor 0 segundo valor no normalizado;	
			elsif (M/="00000000000000000000000")and (A/="00000000000000000000000") then
			
				cod_error<="0001001";--los dos valores no estan normalizados;
				
			end if;
		
		------------------------------------------------------------------------------
		elsif (ex1="11111111")and(ex2="00000000") then
		
			if (A="00000000000000000000000")and(M="00000000000000000000000") then
				
				cod_error<="0000010"; --primer valor infinito segundo valor es 0
			elsif(A/="00000000000000000000000")and (M="00000000000000000000000") then
			
				cod_error<="0000011";--primer valor NAN segundo valor es 0;
				
			elsif(M/="00000000000000000000000")and (A="00000000000000000000000") then
			
				cod_error<="0001010";--primer valor infinito segundo valor no normaizado;	
			elsif (M/="00000000000000000000000")and (A/="00000000000000000000000") then
			
				cod_error<="0001011";--primer valor es NAN segundo no normalizado;
				
			end if;
------------------------------------------------------------------------------------------
	
		elsif (ex1="00000000")and(ex2="11111111") then
		
			if (A="00000000000000000000000")and(M="00000000000000000000000") then
				
				cod_error<="0010000"; --primer valor 0 segundo valor es infinito
			elsif(A/="00000000000000000000000")and (M="00000000000000000000000") then
			
				cod_error<="0010001";--primer valor no normlizado segundo valor es infinito;
				
			elsif(M/="00000000000000000000000")and (A="00000000000000000000000") then
			
				cod_error<="0011000";--primer valor cero segundo valor NAN;	
			elsif (M/="00000000000000000000000")and (A/="00000000000000000000000") then
			
				cod_error<="0011001";--primer valor es no normalizado segundo NAN;
				
			end if;
------------------------------------------------------------------------------------------
			
		elsif (ex1="11111111")and(ex2="11111111") then
			
			if (A="00000000000000000000000")and(M="00000000000000000000000") then
				
				cod_error<="0010010"; --los dos son infinitos
			elsif(A/="00000000000000000000000")and (M="00000000000000000000000") then
			
				cod_error<="0010011";--primer valor NAN segundo valor infinito;
				
			elsif(M/="00000000000000000000000")and (A="00000000000000000000000") then
			
				cod_error<="0011010";--primer valor infinito segundo valor NAN;	
			elsif (M/="00000000000000000000000")and (A/="00000000000000000000000") then
			
				cod_error<="0011011";--los dos valores NAN;
				
			end if;
--------------------------------------------------------------------------------------------
			
		elsif (ex1="00000000")and(ex2/="00000000")and(ex2/=11111111) then
			
			if (A="00000000000000000000000") then
				
				cod_error<="1100000"; --primer valor cero el segundo en rango 0<e<255
				oper_ok<='1';-- se puede operar	
			elsif (A/="00000000000000000000000") then
				cod_error<="0100001";-- primer valor no normalizado segundo esta en rango		
			end if;
--------------------------------------------------------------------------------------------
			
		elsif (ex2="00000000")and(ex1/="00000000")and(ex1/=11111111) then
			
			if (M="00000000000000000000000") then
				
				cod_error<="1000100"; --primer valor en rango 0<e<255 segundo valor 0
				oper_ok<='1';-- se puede operar	
			elsif (M/="00000000000000000000000") then
				cod_error<="0001100";-- primer valor esta en rango segundo no normalizado
			
			end if;
--------------------------------------------------------------------------------------------
		
		elsif (ex1="11111111")and(ex2/="00000000")and(ex2/=11111111) then
			
			if (A="00000000000000000000000") then
				
				cod_error<="0100010"; --primer valor infinito el segundo en rango 0<e<255
			
			elsif (A/="00000000000000000000000") then
				
				cod_error<="0100011"; --primer valor NAN el segundo en rango 0<e<255
	
			end if;
--------------------------------------------------------------------------------------------
			
		elsif (ex2="11111111")and(ex1/="00000000")and(ex1/=11111111) then
			
			if (M="00000000000000000000000") then
				
				cod_error<="0010100"; --primer valor en rango 0<e<255 segundo valor infinito
			elsif (M/="00000000000000000000000") then
				
				cod_error<="0011100"; --primer valor en rango 0<e<255 segundo valor NAN
			end if;
--------------------------------------------------------------------------------------------
		else
		cod_error <="1100100";-- los dos valores estan en rango
		oper_ok<='1';-- se puede operar
	end if;
		

		if (ex1>ex2) and oper_ok /='0' then
			Mantisa_sin_despl<=A;
			Mantisa_despl<=M;
		elsif (ex2>ex1) and oper_ok /='0' then
			Mantisa_sin_despl<=M;
			Mantisa_despl<=A;
		--	sig_M<="00000000000000000000000";
		elsif (ex2=ex1) and oper_ok /='0' then
			Mantisa_sin_despl<=M;
			Mantisa_despl<=A;
		else
			Mantisa_sin_despl<="11111111111111111111111";
			Mantisa_despl<="11111111111111111111111";
		end if;
		if (A=M)and oper_ok /='0' then
			--sig_M<=A;
			Mantisa_iguales<='1';
		else
			Mantisa_iguales<='0';
		
			
		end if;
		
	end process;
	
	
end Behavioral;
--
--process(sig_M,desplaza)
--	
--	begin
--	
--	if (sig_M /= "00000000000000000000000")and(desplaza/="00000000")and(desplaza/="11111111") then
--		Mantisa_despl <= std_logic_vector(shift_right(unsigned(sig_M), to_integer(unsigned(desplaza))));
--	elsif (desplaza="00000000") then
--		Mantisa_despl <= sig_M;
--	elsif desplaza="11111111"then
--		error<='1';
--	else
--		Mantisa_iguales<='1';
--	end if;
--	
--	
--	end process;
