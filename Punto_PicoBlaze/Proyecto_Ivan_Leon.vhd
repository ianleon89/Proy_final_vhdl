----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:26:23 01/19/2016 
-- Design Name: 
-- Module Name:    Proyecto_Ivan_Leon - Behavioral 
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

entity Proyecto_Ivan_Leon is
    Port ( clk : in  STD_LOGIC);
end Proyecto_Ivan_Leon;

architecture Behavioral of Proyecto_Ivan_Leon is
--Declaracion Pico Blaze
component kcpsm3_int_test
	  Port (        operando1 : out std_logic_vector(31 downto 0);
                   operando2 : out std_logic_vector(31 downto 0);
						 operacion : out std_logic_vector(1 downto 0);
						 enable_alu : out std_logic;
						 entrada_resultado_alu:in std_logic_vector(31 downto 0);
						 interrupt_event : in std_logic;
                   clk : in std_logic);
end component;
-- Declaracion de la ALU
component ALU_iee_754
 Port ( 	  mantisa_simple_presicion_uno : in  STD_LOGIC_VECTOR (22 downto 0);
			  mantisa_simple_presicion_dos : in  STD_LOGIC_VECTOR (22 downto 0);
			  operacion_pico_blaze: in std_logic_vector(1 downto 0);
			  signo_simple_presicion_uno: in std_logic;
			  signo_simple_presicion_dos: in std_logic;
           exponente_simple_presicion_uno : in  STD_LOGIC_VECTOR (7 downto 0);
			  exponente_simple_presicion_dos : in  STD_LOGIC_VECTOR (7 downto 0);
			  enable_754: in  STD_LOGIC;
			  signo_ieee754: out std_logic;
			  interrupcion_picoblaze:out std_logic;
           resultado_ieee754 : out  STD_LOGIC_VECTOR (30 downto 0));
end component;


	signal senal_operando1 : std_logic_vector(31 downto 0);
	signal senal_operando2 : std_logic_vector(31 downto 0);
	signal senal_operacion : std_logic_vector(1 downto 0);
	signal senal_resultado : std_logic_vector(31 downto 0);
	signal senal_enable: std_logic;
	signal senal_interrupcion : std_logic;
begin

	comp1: ALU_iee_754 port map(
		
		mantisa_simple_presicion_uno => senal_operando1(22 downto 0),--: in  STD_LOGIC_VECTOR (22 downto 0);
		mantisa_simple_presicion_dos => senal_operando2(22 downto 0), --: in  STD_LOGIC_VECTOR (22 downto 0);
		operacion_pico_blaze=>senal_operacion,--: in std_logic_vector(1 downto 0);
		signo_simple_presicion_uno=>senal_operando1(31),--: in std_logic;
		signo_simple_presicion_dos=>senal_operando2(31),--: in std_logic;
      exponente_simple_presicion_uno=>senal_operando1(30 downto 23),-- : in  STD_LOGIC_VECTOR (7 downto 0);
		exponente_simple_presicion_dos=>senal_operando2(30 downto 23), --: in  STD_LOGIC_VECTOR (7 downto 0);
		enable_754=>senal_enable,--: in  STD_LOGIC;
		signo_ieee754=>senal_resultado(31),--: out std_logic;
		interrupcion_picoblaze=>senal_interrupcion,--:out std_logic;
      resultado_ieee754=>senal_resultado(30 downto 0)-- : out  STD_LOGIC_VECTOR (30 downto 0));
	);
	comp2: kcpsm3_int_test port map(
	
		operando1=>senal_operando1,-- : out std_logic_vector(31 downto 0);
      operando2=>senal_operando2, --: out std_logic_vector(31 downto 0);
		operacion=>senal_operacion, --: out std_logic_vector(1 downto 0);
		enable_alu=>senal_enable, --: out std_logic;
		entrada_resultado_alu=>senal_resultado,--:in std_logic_vector(31 downto 0);
		interrupt_event=>senal_interrupcion, --: in std_logic;
      clk=>clk --: in std_logic
	
	);

end Behavioral;

