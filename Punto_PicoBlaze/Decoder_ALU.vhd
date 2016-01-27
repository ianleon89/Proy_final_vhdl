----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:31:07 01/14/2016 
-- Design Name: 
-- Module Name:    Decoder_ALU - Behavioral 
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_ALU is
    Port ( data : in  STD_LOGIC_VECTOR (7 downto 0);
           selec : in  STD_LOGIC_VECTOR (3 downto 0);
           enable : in  STD_LOGIC;
           op1_lsb : out  STD_LOGIC_VECTOR (7 downto 0);
           op1_lssb : out  STD_LOGIC_VECTOR (7 downto 0);
           op1_mssb : out  STD_LOGIC_VECTOR (7 downto 0);
           op1_msb : out  STD_LOGIC_VECTOR (7 downto 0);
           op2_lsb : out  STD_LOGIC_VECTOR (7 downto 0);
           op2_lssb : out  STD_LOGIC_VECTOR (7 downto 0);
           op2_mssb : out  STD_LOGIC_VECTOR (7 downto 0);
           op2_msb : out  STD_LOGIC_VECTOR (7 downto 0);
           operacion : out  STD_LOGIC_VECTOR (1 downto 0);
			  enable_alu:out std_logic:='0'
			  );
end Decoder_ALU;

architecture Behavioral of Decoder_ALU is
 
--signal aux : std_logic:='0';
begin
	
process(data,selec,enable)

begin
	
	if enable='1' then
	case selec is
		when "0001" => op1_lsb <= data;
		when "0010" => op1_lssb<=data;
		when "0011" => op1_mssb<=data;
		when "0100" => op1_msb<=data;
		when "0101" => op2_lsb <= data;
		when "0110" => op2_lssb<=data;
		when "0111" => op2_mssb<=data;
		when "1000" => op2_msb<=data;
		when "1001" => operacion<=data(1 downto 0);
							enable_alu<='1';		
		when others =>op1_lsb <= "00000000";
						  op1_lssb<="00000000";
						  op1_mssb<="00000000";
                    op1_msb<="00000000";
						  op2_lsb <="00000000";
                    op2_lssb<="00000000";
                    op2_mssb<="00000000";
						  op2_msb<="00000000";
						  operacion<="00";
						  enable_alu<='0';
		end case;
--	else 
--		op1_lsb <= "00000000";
--		op1_lssb<="00000000";
--		op1_mssb<="00000000";
--      op1_msb<="00000000";
--		op2_lsb <="00000000";
--      op2_lssb<="00000000";
--      op2_mssb<="00000000";
--		op2_msb<="00000000";
--		operacion<="00";

	   end if;

					  
end process;
  				  
end Behavioral;