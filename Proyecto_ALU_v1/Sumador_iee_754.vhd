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

entity ALU_IEEE_754 is
    Port ( mantisa_simple_presicion_uno : in  STD_LOGIC_VECTOR (22 downto 0);
			  mantisa_simple_presicion_dos : in  STD_LOGIC_VECTOR (22 downto 0);
			  operacion_pico_blaze: in std_logic_vector(1 downto 0);
			  signo_simple_presicion_uno: in std_logic;
			  signo_simple_presicion_dos: in std_logic;
           exponente_simple_presicion_uno : in  STD_LOGIC_VECTOR (7 downto 0);
			  exponente_simple_presicion_dos : in  STD_LOGIC_VECTOR (7 downto 0);
			  enable_754: in  STD_LOGIC;
			  signo_ieee754: out std_logic;
           numero_sumado_ieee754 : out  STD_LOGIC_VECTOR (30 downto 0));
			 
end ALU_IEEE_754;

architecture Behavioral of ALU_IEEE_754 is


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
           resultado_suma_resta_mul  : in  STD_LOGIC_VECTOR (22 downto 0);
			  exponente_max : in std_logic_vector(7 downto 0);
			  exponente_real : out STD_LOGIC_VECTOR (7 downto 0);
			  error: out std_logic:='0';
           mantisa_real : out  STD_LOGIC_VECTOR (22 downto 0));

end component;

component Pressenta_resultados 
	Port ( error_exp : in  STD_LOGIC;
			  enable : in std_logic;
           cod_error : in  STD_LOGIC_VECTOR (6 downto 0);
           mantisa_real : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_real : in  STD_LOGIC_VECTOR (7 downto 0);
           numero_ieee_754 : out  STD_LOGIC_VECTOR (30 downto 0));
end component;

component Restador
Port ( mantisa_desplazada_res : in  STD_LOGIC_VECTOR (22 downto 0);
           mantisa_no_desplazada_res : in  STD_LOGIC_VECTOR (22 downto 0);
           expnt_iguales : in  STD_LOGIC;
           mantisas_iguales : in  STD_LOGIC;
           resultado_resta : out  STD_LOGIC_VECTOR (22 downto 0);
           carry_resta : out  STD_LOGIC_VECTOR (1 downto 0));
end component;
component Multiplicador 

 Port ( 	  exponente1 : in  STD_LOGIC_VECTOR (7 downto 0);
           exponente2 : in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa1 : in  STD_LOGIC_VECTOR (22 downto 0);
           mantisa2 : in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_multiplicado : out  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_multiplicada : out  STD_LOGIC_VECTOR (22 downto 0);
			  carry_mul : out STD_LOGIC_VECTOR (1 downto 0);
           error : out  STD_LOGIC);
			  
end component;

component Selec_exponente 
 Port ( exponente_suma_resta : in  STD_LOGIC_VECTOR (7 downto 0);
           exponente_mul : in  STD_LOGIC_VECTOR (7 downto 0);
           operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           exponente_seleccionado : out  STD_LOGIC_VECTOR (7 downto 0));
	
end component;

component Seleccion_Operacion
Port ( expo1 : in  STD_LOGIC_VECTOR (7 downto 0);
           expo2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  signo1: in STD_LOGIC;
			  signo2: in STD_LOGIC;
           operacion : in  STD_LOGIC_VECTOR (1 downto 0);
           operacion_real : out  STD_LOGIC_VECTOR (1 downto 0);
           signo : out  STD_LOGIC
			  );
end component;

component Seleccion_suma_resta_mul
Port ( 	  result : in  STD_LOGIC_VECTOR (68 downto 0);
           carry : in  STD_LOGIC_VECTOR (5 downto 0);
           selec : in  STD_LOGIC_VECTOR (1 downto 0);
           mantisa_selec : out  STD_LOGIC_VECTOR (22 downto 0);
           carry_selec : out  STD_LOGIC_VECTOR (1 downto 0));

end component;
--Senales
	signal senal_emax : std_logic_vector(7 downto 0);
	signal senal_exponente_real : std_logic_vector(7 downto 0);
	signal senal_exp_mul : std_logic_vector(7 downto 0);
	signal senal_numero_despl : std_logic_vector(7 downto 0);
	signal senal_exp_sum_rest_mul: std_logic_vector(7 downto 0);
	signal senal_mantisa_despl : std_logic_vector(22 downto 0);
	signal senal_mantisa_shift : std_logic_vector(22 downto 0);
	signal senal_mantisa_no_despl:std_logic_vector(22 downto 0);
	signal senal_resultado_suma:std_logic_vector(22 downto 0);
	signal senal_resultado_mul :  STD_LOGIC_VECTOR (22 downto 0);
	signal senal_mantisa_real:std_logic_vector(22 downto 0);
	signal senal_cod_error : std_logic_vector(6 downto 0);
	signal senal_acarreo_suma: std_logic_vector(1 downto 0);
	signal senal_operacion_real : std_logic_vector(1 downto 0);
	signal senal_resultado_resta :  STD_LOGIC_VECTOR (22 downto 0);
	signal senal_resultado_sum_rest_mul : STD_LOGIC_VECTOR (22 downto 0);
   signal senal_acarreo_resta	 : STD_LOGIC_VECTOR (1 downto 0);
	signal senal_acarreo	 : STD_LOGIC_VECTOR (1 downto 0);
	signal senal_acarreo_mul : STD_LOGIC_VECTOR (1 downto 0);
	signal senal_exp_iguales:std_logic ;
	signal senal_mantisas_iguales:std_logic;
	signal senal_signo:std_logic;
	signal senal_error_exp_rebose:std_logic ;
	signal senal_error_exponente:std_logic ;
	signal senal_vcc: std_logic  ;
   signal senal_error_mul:std_logic;

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
       Mantisa_iguales => senal_mantisas_iguales,
		 cod_error=> senal_cod_error
	);
	
	c21: Seleccion_Operacion port map (
		 expo1=> exponente_simple_presicion_uno, --: in  STD_LOGIC_VECTOR (7 downto 0);
       expo2=> exponente_simple_presicion_dos, --: in  STD_LOGIC_VECTOR (7 downto 0);
		 signo1=> signo_simple_presicion_uno, --: in STD_LOGIC;
		 signo2=> signo_simple_presicion_dos, --: in STD_LOGIC;
       operacion => operacion_pico_blaze,  -- : in  STD_LOGIC_VECTOR (1 downto 0);
       operacion_real=> senal_operacion_real ,-- : out  STD_LOGIC_VECTOR (1 downto 0);
       signo=> signo_ieee754 --: out  STD_LOGIC
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
      carry=>senal_acarreo_suma-- : out  STD_LOGIC_VECTOR (1 downto 0));
	);
	
	c31: Restador port map (
		mantisa_desplazada_res => senal_mantisa_shift ,	--: in  STD_LOGIC_VECTOR (22 downto 0);
      mantisa_no_desplazada_res =>	senal_mantisa_no_despl,	-- : in  STD_LOGIC_VECTOR (22 downto 0);
      expnt_iguales =>	senal_exp_iguales,	-- : in  STD_LOGIC;
      mantisas_iguales => senal_mantisas_iguales ,	--: in  STD_LOGIC;
      resultado_resta => senal_resultado_resta,	--: out  STD_LOGIC_VECTOR (22 downto 0);
      carry_resta => senal_acarreo_resta		--: out  STD_LOGIC_VECTOR (1 downto 0));
	
	);
	
	d1: Multiplicador port map(
			  exponente1 => exponente_simple_presicion_uno, --: in  STD_LOGIC_VECTOR (7 downto 0);
           exponente2 => exponente_simple_presicion_dos,--: in  STD_LOGIC_VECTOR (7 downto 0);
           mantisa1 => senal_mantisa_despl,--: in  STD_LOGIC_VECTOR (22 downto 0);
           mantisa2 => senal_mantisa_no_despl,--: in  STD_LOGIC_VECTOR (22 downto 0);
           exponente_multiplicado => senal_exp_mul,--: out  STD_LOGIC_VECTOR (7 downto 0);
           mantisa_multiplicada => senal_resultado_mul,--: out  STD_LOGIC_VECTOR (22 downto 0);
			  carry_mul => senal_acarreo_mul,--: out STD_LOGIC_VECTOR (1 downto 0);
           error => senal_error_mul--: out  STD_LOGIC
	);
	
	c32: Seleccion_suma_resta_mul port map (
	
		result(22 downto 0) => senal_resultado_suma, 			--: in  STD_LOGIC_VECTOR (45 downto 0);
		result(45 downto 23) => senal_resultado_resta, 
		result(68 downto 46) => senal_resultado_mul,
      carry	(1 downto 0)=> senal_acarreo_suma,		-- : in  STD_LOGIC_VECTOR (3 downto 0);
		carry	(3 downto 2)=> senal_acarreo_resta,
		carry (5 downto 4)=> senal_acarreo_mul,
      selec	=> senal_operacion_real,		-- : in  STD_LOGIC_VECTOR (1 downto 0);
      mantisa_selec	=> senal_resultado_sum_rest_mul ,				-- : out  STD_LOGIC_VECTOR (22 downto 0);
      carry_selec		=> senal_acarreo			-- : out  STD_LOGIC_VECTOR (1 downto 0));
	
	);
	
	c41: Selec_exponente port map(
		exponente_suma_resta => senal_emax,-- : in  STD_LOGIC_VECTOR (7 downto 0);
      exponente_mul=> senal_exp_mul, --: in  STD_LOGIC_VECTOR (7 downto 0);
      operacion=> senal_operacion_real,  --: in  STD_LOGIC_VECTOR (1 downto 0);
      exponente_seleccionado=> senal_exp_sum_rest_mul --: out  STD_LOGIC_VECTOR (7 downto 0));
	
	);
	
	c4: Detector_de_Rebose port map(
		acarreo => senal_acarreo,--: in  STD_LOGIC_VECTOR (1 downto 0);
      resultado_suma_resta_mul => senal_resultado_sum_rest_mul , --: in  STD_LOGIC_VECTOR (22 downto 0);
		exponente_max=>senal_exp_sum_rest_mul,-- : in std_logic_vector(7 downto 0);
		exponente_real=> senal_exponente_real,--: out STD_LOGIC_VECTOR (7 downto 0);
		error=>senal_error_exp_rebose,--: out std_logic:='0';
      mantisa_real=>senal_mantisa_real-- out  STD_LOGIC_VECTOR (22 downto 0));
	
	);
		senal_error_exponente<= (not senal_operacion_real(1) and senal_error_exp_rebose) or (senal_operacion_real(1) and senal_error_mul);
	c5: Pressenta_resultados port map(
		
		error_exp=> senal_error_exponente,--: in  STD_LOGIC;
		enable => enable_754,-- : in std_logic;
      cod_error=>senal_cod_error, --: in  STD_LOGIC_VECTOR (6 downto 0);
      mantisa_real=> senal_mantisa_real,-- : in  STD_LOGIC_VECTOR (22 downto 0);
      exponente_real=>senal_exponente_real, --: in  STD_LOGIC_VECTOR (7 downto 0);
      numero_ieee_754=>numero_sumado_ieee754 --: out  STD_LOGIC_VECTOR (30 downto 0));
	);
end Behavioral;

