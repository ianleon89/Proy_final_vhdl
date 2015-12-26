----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:35:30 12/26/2015 
-- Design Name: 
-- Module Name:    Sumador_iee_754 - Behavioral 
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

entity Sumador_iee_754 is
    Port ( mantisa_simple_presicion_uno : in  STD_LOGIC_VECTOR (22 downto 0);
			  mantisa_simple_presicion_dos : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_simple_presicion_uno : in  STD_LOGIC_VECTOR (7 downto 0);
			  exponente_simple_presicion_dos : in  STD_LOGIC_VECTOR (7 downto 0);
			  enable_754: in  STD_LOGIC;
           numero_sumado_ieee754 : out  STD_LOGIC_VECTOR (30 downto 0));
end Sumador_iee_754;

architecture Behavioral of Sumador_iee_754 is


-- Declaro componenetes
component Comparador_Exp
Port ( e1 : in  STD_LOGIC_VECTOR (7 downto 0);
       e2 : in  STD_LOGIC_VECTOR (7 downto 0);
       eMax : out  STD_LOGIC_VECTOR (7 downto 0);
       n_despl : out  STD_LOGIC_VECTOR (7 downto 0);
		 exp_iguales : out std_logic:='0' 
			  );

end component;

component Selec_Comp_Mantisa

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

end component;

component Shiftter
	
  Port ( mantisa : in  STD_LOGIC_VECTOR (22 downto 0);
           enable : in  STD_LOGIC;
           num_despl : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_despl : out  STD_LOGIC_VECTOR (22 downto 0));
end component;

component Sumador
	  Port ( 
				
			  mantisa_desplazada : in  STD_LOGIC_VECTOR (22 downto 0);
           mantisa_no_desplazada : in  STD_LOGIC_VECTOR (22 downto 0);
			  ex_igl: in std_logic;
           resultado : out  STD_LOGIC_VECTOR (22 downto 0);
           carry : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component Detector_de_Rebose

	 Port ( acarreo : in  STD_LOGIC_VECTOR (1 downto 0);
           resultado_suma : in  STD_LOGIC_VECTOR (22 downto 0);
			  exponente_max : in std_logic_vector(7 downto 0);
			  exponente_real : out STD_LOGIC_VECTOR (7 downto 0);
			  error: out std_logic:='0';
           mantisa_real : out  STD_LOGIC_VECTOR (22 downto 0));

end component;

component Pressenta_resultados 
	Port ( error_exp : in  STD_LOGIC;
           cod_error : in  STD_LOGIC_VECTOR (6 downto 0);
           mantisa_real : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_real : in  STD_LOGIC_VECTOR (7 downto 0);
           numero_ieee_754 : out  STD_LOGIC_VECTOR (30 downto 0));
end component;

--Senales
	signal senal_emax : std_logic_vector(7 downto 0);
	signal senal_exponente_real : std_logic_vector(7 downto 0);
	signal senal_numero_despl : std_logic_vector(7 downto 0);
	signal senal_mantisa_despl : std_logic_vector(22 downto 0);
	signal senal_mantisa_shift : std_logic_vector(22 downto 0);
	signal senal_mantisa_no_despl:std_logic_vector(22 downto 0);
	signal senal_resultado_suma:std_logic_vector(22 downto 0);
	signal senal_mantisa_real:std_logic_vector(22 downto 0);
	signal senal_cod_error : std_logic_vector(6 downto 0);
	signal senal_acarreo: std_logic_vector(1 downto 0);
	signal senal_exp_iguales:std_logic ;
	signal senal_error_exp_rebose:std_logic ;
	signal senal_vcc: std_logic  ;

begin
	-- Componenete => Salida fisica
	senal_vcc<='1';
	c0:Comparador_Exp port map(
	
		 e1 => exponente_simple_presicion_uno ,
       e2 => exponente_simple_presicion_dos,
       eMax => senal_emax,
       n_despl => senal_numero_despl,
		 exp_iguales => senal_exp_iguales 

	);

	c1:Selec_Comp_Mantisa port map(
		 ex1 =>  exponente_simple_presicion_uno,  
       ex2 =>  exponente_simple_presicion_dos,
       A => mantisa_simple_presicion_uno,
       M => mantisa_simple_presicion_dos,
       Mantisa_despl=> senal_mantisa_despl,
       Mantisa_sin_despl=> senal_mantisa_no_despl,
     --  Mantisa_iguales => 
		 cod_error=> senal_cod_error
	);
	c2: Shiftter port map(
		mantisa=> senal_mantisa_despl, --: in  STD_LOGIC_VECTOR (22 downto 0);
      enable=> enable_754, --: in  STD_LOGIC;
      num_despl=> senal_numero_despl,-- : in  STD_LOGIC_VECTOR (7 downto 0);
      mantisa_despl=>senal_mantisa_shift  --: out  STD_LOGIC_VECTOR (22 downto 0));
	);
	c3: Sumador port map(
		mantisa_desplazada=>senal_mantisa_shift, -- : in  STD_LOGIC_VECTOR (22 downto 0);
      mantisa_no_desplazada=>senal_mantisa_no_despl,-- : in  STD_LOGIC_VECTOR (22 downto 0);
		ex_igl=>senal_exp_iguales,--: in std_logic;
      resultado=>senal_resultado_suma,-- : out  STD_LOGIC_VECTOR (22 downto 0);
      carry=>senal_acarreo-- : out  STD_LOGIC_VECTOR (1 downto 0));
	);
	c4: Detector_de_Rebose port map(
		acarreo => senal_acarreo,--: in  STD_LOGIC_VECTOR (1 downto 0);
      resultado_suma=>senal_resultado_suma, --: in  STD_LOGIC_VECTOR (22 downto 0);
		exponente_max=>senal_emax,-- : in std_logic_vector(7 downto 0);
		exponente_real=> senal_exponente_real,--: out STD_LOGIC_VECTOR (7 downto 0);
		error=>senal_error_exp_rebose,--: out std_logic:='0';
      mantisa_real=>senal_mantisa_real-- out  STD_LOGIC_VECTOR (22 downto 0));
	
	);
	
	c5: Pressenta_resultados port map(
		error_exp=> senal_error_exp_rebose,--: in  STD_LOGIC;
      cod_error=>senal_cod_error, --: in  STD_LOGIC_VECTOR (6 downto 0);
      mantisa_real=> senal_mantisa_real,-- : in  STD_LOGIC_VECTOR (22 downto 0);
      exponente_real=>senal_exponente_real, --: in  STD_LOGIC_VECTOR (7 downto 0);
      numero_ieee_754=>numero_sumado_ieee754 --: out  STD_LOGIC_VECTOR (30 downto 0));
	);
end Behavioral;

