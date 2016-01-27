--
-- Interrupt test for KCPSM3 
--
-- Ken Chapman - Xilinx Ltd - June 2003
--
--
------------------------------------------------------------------------------------
--
-- Library declarations
--
-- Standard IEEE libraries
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--
------------------------------------------------------------------------------------
--
--
entity kcpsm3_int_test is
    Port (         operando1 : out std_logic_vector(31 downto 0);
                   operando2 : out std_logic_vector(31 downto 0);
						 operacion : out std_logic_vector(1 downto 0);
						 enable_alu : out std_logic;
						 entrada_resultado_alu:in std_logic_vector(31 downto 0);
						 interrupt_event : in std_logic;
                   clk : in std_logic);
    end kcpsm3_int_test;
--
------------------------------------------------------------------------------------
--
-- Start of test achitecture
--
architecture Behavioral of kcpsm3_int_test is
--
------------------------------------------------------------------------------------
--
-- declaration of KCPSM3
--
  component kcpsm3 
    Port (      address : out std_logic_vector(9 downto 0);
            instruction : in std_logic_vector(17 downto 0);
                port_id : out std_logic_vector(7 downto 0);
           write_strobe : out std_logic;
               out_port : out std_logic_vector(7 downto 0);
            read_strobe : out std_logic;
                in_port : in std_logic_vector(7 downto 0);
              interrupt : in std_logic;
          interrupt_ack : out std_logic;
                  reset : in std_logic;
                    clk : in std_logic);
    end component;
--
-- declaration of program ROM
--
  component int_test 
    Port (      address : in std_logic_vector(9 downto 0);
            instruction : out std_logic_vector(17 downto 0);
                    clk : in std_logic);
    end component;
--
------------------------------------------------------------------------------------
--Declaracion del decoder

component Decoder_ALU

 Port (	  data : in  STD_LOGIC_VECTOR (7 downto 0);
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
			  enable_alu:out STD_LOGIC);

end component;

--Declaracion el mux de entrada

component Decoder_Inputs
 Port ( 	  Entrada_resultado_alu : in  STD_LOGIC_VECTOR (31 downto 0);
           Selector : in  STD_LOGIC_VECTOR (1 downto 0);
			  enable: in std_logic;
           Salida_apicob : out  STD_LOGIC_VECTOR (7 downto 0));

end component;


-- Signals used to connect KCPSM3 to program ROM and I/O logic
--
signal address       : std_logic_vector(9 downto 0);
signal instruction   : std_logic_vector(17 downto 0);
signal port_id       : std_logic_vector(7 downto 0);
signal out_port      : std_logic_vector(7 downto 0);
signal in_port       : std_logic_vector(7 downto 0);
signal write_strobe  : std_logic;
signal read_strobe   : std_logic;
signal interrupt     : std_logic :='0';
signal interrupt_ack : std_logic;
signal reset         : std_logic;
--
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--
-- Start of circuit description
--
begin
	---DEcoder
	c121:Decoder_ALU
	port map(
			  data => out_port,
           selec=>port_id(3 downto 0), --: in  STD_LOGIC_VECTOR (3 downto 0);
           enable=>write_strobe,-- : in  STD_LOGIC;
           op1_lsb=>operando1(7 downto 0), --: out  STD_LOGIC_VECTOR (7 downto 0);
           op1_lssb=>operando1(15 downto 8), --: out  STD_LOGIC_VECTOR (7 downto 0);
           op1_mssb=>operando1(23 downto 16), --: out  STD_LOGIC_VECTOR (7 downto 0);
           op1_msb=> operando1(31 downto 24), --: out  STD_LOGIC_VECTOR (7 downto 0);
           op2_lsb=>operando2(7 downto 0), --: out  STD_LOGIC_VECTOR (7 downto 0);
           op2_lssb=>operando2(15 downto 8), --: out  STD_LOGIC_VECTOR (7 downto 0);
           op2_mssb=>operando2(23 downto 16), --: out  STD_LOGIC_VECTOR (7 downto 0);
           op2_msb=> operando2(31 downto 24),
           operacion=>operacion(1 downto 0), --: out  STD_LOGIC_VECTOR (1 downto 0)
			  enable_alu=>enable_alu
	
	
	);
	--MUX entrada
	 C122:Decoder_Inputs
	 port map(
		Entrada_resultado_alu=>entrada_resultado_alu,-- : in  STD_LOGIC_VECTOR (31 downto 0);
      Selector=>port_id(1 downto 0),-- : in  STD_LOGIC_VECTOR (1 downto 0);
		enable=>read_strobe,--: in std_logic;
      Salida_apicob=>in_port-- : out  STD_LOGIC_VECTOR (7 downto 0));
	 );
  -- Inserting KCPSM3 and the program memory

  processor: kcpsm3
    port map(      address => address,
               instruction => instruction,
                   port_id => port_id,
              write_strobe => write_strobe,
                  out_port => out_port,
               read_strobe => read_strobe,
                   in_port => in_port,
                 interrupt => interrupt,
             interrupt_ack => interrupt_ack,
                     reset => reset,
                       clk => clk);
 
  program: int_test
    port map(      address => address,
               instruction => instruction,
                       clk => clk);

  -- Unused inputs on processor

  --in_port <= "00000000";
  reset <= '0';

  -- Adding the output registers to the processor
   
--  IO_registers: process(clk)
--  begin
--
--    if clk'event and clk='1' then
--
--      -- waveform register at address 02
--      if port_id(1)='1' and write_strobe='1' then
--        waveforms <= out_port;
--      end if;
--
--      -- Interrupt Counter register at address 04
--      if port_id(2)='1' and write_strobe='1' then
--        counter <= out_port;
--      end if;
--
--    end if;
-- 
--  end process IO_registers;
--
--

  -- Adding the interrupt input
  -- Note that the initial value of interrupt (low) is  
  -- defined at signal declaration.
   
  interrupt_control: process(clk)
  begin

    if clk'event and clk='1' then
      if interrupt_ack='1' then
        interrupt <= '0';
       elsif interrupt_event='1' then
        interrupt <= '1';
       else
        interrupt <= interrupt;
      end if;
    end if; 

  end process interrupt_control;

end Behavioral;

------------------------------------------------------------------------------------
--
-- END OF FILE KCPSM3_INT_TEST.VHD
--
------------------------------------------------------------------------------------

