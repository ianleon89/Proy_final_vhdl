--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.49d
--  \   \         Application: netgen
--  /   /         Filename: Decoder_ALU_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jan 14 16:05:16 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Decoder_ALU -w -dir netgen/synthesis -ofmt vhdl -sim Decoder_ALU.ngc Decoder_ALU_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: Decoder_ALU.ngc
-- Output file	: C:\Users\ANDRES\Documents\UBA\Ibimestre\circuitoslogicosprogramables\Punto_PicoBlaze\netgen\synthesis\Decoder_ALU_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Decoder_ALU
-- Xilinx	: C:\Xilinx\14.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Decoder_ALU is
  port (
    op2_lssb : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    operacion : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    op1_mssb : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    op1_lsb : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    op2_mssb : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    op1_msb : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    op1_lssb : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    op2_lsb : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    op2_msb : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    selec : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    data : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Decoder_ALU;

architecture Structure of Decoder_ALU is
  signal N01 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal data_0_IBUF_10 : STD_LOGIC; 
  signal data_1_IBUF_11 : STD_LOGIC; 
  signal data_2_IBUF_12 : STD_LOGIC; 
  signal data_3_IBUF_13 : STD_LOGIC; 
  signal data_4_IBUF_14 : STD_LOGIC; 
  signal data_5_IBUF_15 : STD_LOGIC; 
  signal data_6_IBUF_16 : STD_LOGIC; 
  signal data_7_IBUF_17 : STD_LOGIC; 
  signal op1_lsb_0_26 : STD_LOGIC; 
  signal op1_lsb_1_27 : STD_LOGIC; 
  signal op1_lsb_2_28 : STD_LOGIC; 
  signal op1_lsb_3_29 : STD_LOGIC; 
  signal op1_lsb_4_30 : STD_LOGIC; 
  signal op1_lsb_5_31 : STD_LOGIC; 
  signal op1_lsb_6_32 : STD_LOGIC; 
  signal op1_lsb_7_33 : STD_LOGIC; 
  signal op1_lsb_not0001 : STD_LOGIC; 
  signal op1_lssb_0_51 : STD_LOGIC; 
  signal op1_lssb_1_52 : STD_LOGIC; 
  signal op1_lssb_2_53 : STD_LOGIC; 
  signal op1_lssb_3_54 : STD_LOGIC; 
  signal op1_lssb_4_55 : STD_LOGIC; 
  signal op1_lssb_5_56 : STD_LOGIC; 
  signal op1_lssb_6_57 : STD_LOGIC; 
  signal op1_lssb_7_58 : STD_LOGIC; 
  signal op1_lssb_not0001 : STD_LOGIC; 
  signal op1_msb_0_76 : STD_LOGIC; 
  signal op1_msb_1_77 : STD_LOGIC; 
  signal op1_msb_2_78 : STD_LOGIC; 
  signal op1_msb_3_79 : STD_LOGIC; 
  signal op1_msb_4_80 : STD_LOGIC; 
  signal op1_msb_5_81 : STD_LOGIC; 
  signal op1_msb_6_82 : STD_LOGIC; 
  signal op1_msb_7_83 : STD_LOGIC; 
  signal op1_msb_not0001 : STD_LOGIC; 
  signal op1_mssb_0_101 : STD_LOGIC; 
  signal op1_mssb_1_102 : STD_LOGIC; 
  signal op1_mssb_2_103 : STD_LOGIC; 
  signal op1_mssb_3_104 : STD_LOGIC; 
  signal op1_mssb_4_105 : STD_LOGIC; 
  signal op1_mssb_5_106 : STD_LOGIC; 
  signal op1_mssb_6_107 : STD_LOGIC; 
  signal op1_mssb_7_108 : STD_LOGIC; 
  signal op1_mssb_cmp_eq0000 : STD_LOGIC; 
  signal op1_mssb_cmp_eq0002 : STD_LOGIC; 
  signal op1_mssb_cmp_eq0003 : STD_LOGIC; 
  signal op1_mssb_cmp_eq0004 : STD_LOGIC; 
  signal op1_mssb_cmp_eq0005 : STD_LOGIC; 
  signal op1_mssb_cmp_eq0006 : STD_LOGIC; 
  signal op1_mssb_not0001 : STD_LOGIC; 
  signal op2_lsb_0_132 : STD_LOGIC; 
  signal op2_lsb_1_133 : STD_LOGIC; 
  signal op2_lsb_2_134 : STD_LOGIC; 
  signal op2_lsb_3_135 : STD_LOGIC; 
  signal op2_lsb_4_136 : STD_LOGIC; 
  signal op2_lsb_5_137 : STD_LOGIC; 
  signal op2_lsb_6_138 : STD_LOGIC; 
  signal op2_lsb_7_139 : STD_LOGIC; 
  signal op2_lsb_not0001 : STD_LOGIC; 
  signal op2_lssb_0_157 : STD_LOGIC; 
  signal op2_lssb_1_158 : STD_LOGIC; 
  signal op2_lssb_2_159 : STD_LOGIC; 
  signal op2_lssb_3_160 : STD_LOGIC; 
  signal op2_lssb_4_161 : STD_LOGIC; 
  signal op2_lssb_5_162 : STD_LOGIC; 
  signal op2_lssb_6_163 : STD_LOGIC; 
  signal op2_lssb_7_164 : STD_LOGIC; 
  signal op2_lssb_not0001 : STD_LOGIC; 
  signal op2_msb_0_182 : STD_LOGIC; 
  signal op2_msb_1_183 : STD_LOGIC; 
  signal op2_msb_2_184 : STD_LOGIC; 
  signal op2_msb_3_185 : STD_LOGIC; 
  signal op2_msb_4_186 : STD_LOGIC; 
  signal op2_msb_5_187 : STD_LOGIC; 
  signal op2_msb_6_188 : STD_LOGIC; 
  signal op2_msb_7_189 : STD_LOGIC; 
  signal op2_msb_not0001 : STD_LOGIC; 
  signal op2_mssb_0_207 : STD_LOGIC; 
  signal op2_mssb_1_208 : STD_LOGIC; 
  signal op2_mssb_2_209 : STD_LOGIC; 
  signal op2_mssb_3_210 : STD_LOGIC; 
  signal op2_mssb_4_211 : STD_LOGIC; 
  signal op2_mssb_5_212 : STD_LOGIC; 
  signal op2_mssb_6_213 : STD_LOGIC; 
  signal op2_mssb_7_214 : STD_LOGIC; 
  signal op2_mssb_not0001 : STD_LOGIC; 
  signal operacion_0_226 : STD_LOGIC; 
  signal operacion_1_227 : STD_LOGIC; 
  signal operacion_not0001 : STD_LOGIC; 
  signal selec_0_IBUF_235 : STD_LOGIC; 
  signal selec_1_IBUF_236 : STD_LOGIC; 
  signal selec_2_IBUF_237 : STD_LOGIC; 
  signal selec_3_IBUF_238 : STD_LOGIC; 
  signal op1_lsb_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal op1_lssb_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal op1_msb_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal op1_mssb_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal op2_lsb_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal op2_lssb_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal op2_msb_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal op2_mssb_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal operacion_mux0000 : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  operacion_0 : LD
    port map (
      D => operacion_mux0000(0),
      G => operacion_not0001,
      Q => operacion_0_226
    );
  operacion_1 : LD
    port map (
      D => operacion_mux0000(1),
      G => operacion_not0001,
      Q => operacion_1_227
    );
  op2_msb_0 : LD
    port map (
      D => op2_msb_mux0000(0),
      G => op2_msb_not0001,
      Q => op2_msb_0_182
    );
  op2_msb_1 : LD
    port map (
      D => op2_msb_mux0000(1),
      G => op2_msb_not0001,
      Q => op2_msb_1_183
    );
  op2_msb_2 : LD
    port map (
      D => op2_msb_mux0000(2),
      G => op2_msb_not0001,
      Q => op2_msb_2_184
    );
  op2_msb_3 : LD
    port map (
      D => op2_msb_mux0000(3),
      G => op2_msb_not0001,
      Q => op2_msb_3_185
    );
  op2_msb_4 : LD
    port map (
      D => op2_msb_mux0000(4),
      G => op2_msb_not0001,
      Q => op2_msb_4_186
    );
  op2_msb_5 : LD
    port map (
      D => op2_msb_mux0000(5),
      G => op2_msb_not0001,
      Q => op2_msb_5_187
    );
  op2_msb_6 : LD
    port map (
      D => op2_msb_mux0000(6),
      G => op2_msb_not0001,
      Q => op2_msb_6_188
    );
  op2_msb_7 : LD
    port map (
      D => op2_msb_mux0000(7),
      G => op2_msb_not0001,
      Q => op2_msb_7_189
    );
  op2_lssb_0 : LD
    port map (
      D => op2_lssb_mux0000(0),
      G => op2_lssb_not0001,
      Q => op2_lssb_0_157
    );
  op2_lssb_1 : LD
    port map (
      D => op2_lssb_mux0000(1),
      G => op2_lssb_not0001,
      Q => op2_lssb_1_158
    );
  op2_lssb_2 : LD
    port map (
      D => op2_lssb_mux0000(2),
      G => op2_lssb_not0001,
      Q => op2_lssb_2_159
    );
  op2_lssb_3 : LD
    port map (
      D => op2_lssb_mux0000(3),
      G => op2_lssb_not0001,
      Q => op2_lssb_3_160
    );
  op2_lssb_4 : LD
    port map (
      D => op2_lssb_mux0000(4),
      G => op2_lssb_not0001,
      Q => op2_lssb_4_161
    );
  op2_lssb_5 : LD
    port map (
      D => op2_lssb_mux0000(5),
      G => op2_lssb_not0001,
      Q => op2_lssb_5_162
    );
  op2_lssb_6 : LD
    port map (
      D => op2_lssb_mux0000(6),
      G => op2_lssb_not0001,
      Q => op2_lssb_6_163
    );
  op2_lssb_7 : LD
    port map (
      D => op2_lssb_mux0000(7),
      G => op2_lssb_not0001,
      Q => op2_lssb_7_164
    );
  op2_lsb_0 : LD
    port map (
      D => op2_lsb_mux0000(0),
      G => op2_lsb_not0001,
      Q => op2_lsb_0_132
    );
  op2_lsb_1 : LD
    port map (
      D => op2_lsb_mux0000(1),
      G => op2_lsb_not0001,
      Q => op2_lsb_1_133
    );
  op2_lsb_2 : LD
    port map (
      D => op2_lsb_mux0000(2),
      G => op2_lsb_not0001,
      Q => op2_lsb_2_134
    );
  op2_lsb_3 : LD
    port map (
      D => op2_lsb_mux0000(3),
      G => op2_lsb_not0001,
      Q => op2_lsb_3_135
    );
  op2_lsb_4 : LD
    port map (
      D => op2_lsb_mux0000(4),
      G => op2_lsb_not0001,
      Q => op2_lsb_4_136
    );
  op2_lsb_5 : LD
    port map (
      D => op2_lsb_mux0000(5),
      G => op2_lsb_not0001,
      Q => op2_lsb_5_137
    );
  op2_lsb_6 : LD
    port map (
      D => op2_lsb_mux0000(6),
      G => op2_lsb_not0001,
      Q => op2_lsb_6_138
    );
  op2_lsb_7 : LD
    port map (
      D => op2_lsb_mux0000(7),
      G => op2_lsb_not0001,
      Q => op2_lsb_7_139
    );
  op1_lssb_0 : LD
    port map (
      D => op1_lssb_mux0000(0),
      G => op1_lssb_not0001,
      Q => op1_lssb_0_51
    );
  op1_lssb_1 : LD
    port map (
      D => op1_lssb_mux0000(1),
      G => op1_lssb_not0001,
      Q => op1_lssb_1_52
    );
  op1_lssb_2 : LD
    port map (
      D => op1_lssb_mux0000(2),
      G => op1_lssb_not0001,
      Q => op1_lssb_2_53
    );
  op1_lssb_3 : LD
    port map (
      D => op1_lssb_mux0000(3),
      G => op1_lssb_not0001,
      Q => op1_lssb_3_54
    );
  op1_lssb_4 : LD
    port map (
      D => op1_lssb_mux0000(4),
      G => op1_lssb_not0001,
      Q => op1_lssb_4_55
    );
  op1_lssb_5 : LD
    port map (
      D => op1_lssb_mux0000(5),
      G => op1_lssb_not0001,
      Q => op1_lssb_5_56
    );
  op1_lssb_6 : LD
    port map (
      D => op1_lssb_mux0000(6),
      G => op1_lssb_not0001,
      Q => op1_lssb_6_57
    );
  op1_lssb_7 : LD
    port map (
      D => op1_lssb_mux0000(7),
      G => op1_lssb_not0001,
      Q => op1_lssb_7_58
    );
  op1_msb_0 : LD
    port map (
      D => op1_msb_mux0000(0),
      G => op1_msb_not0001,
      Q => op1_msb_0_76
    );
  op1_msb_1 : LD
    port map (
      D => op1_msb_mux0000(1),
      G => op1_msb_not0001,
      Q => op1_msb_1_77
    );
  op1_msb_2 : LD
    port map (
      D => op1_msb_mux0000(2),
      G => op1_msb_not0001,
      Q => op1_msb_2_78
    );
  op1_msb_3 : LD
    port map (
      D => op1_msb_mux0000(3),
      G => op1_msb_not0001,
      Q => op1_msb_3_79
    );
  op1_msb_4 : LD
    port map (
      D => op1_msb_mux0000(4),
      G => op1_msb_not0001,
      Q => op1_msb_4_80
    );
  op1_msb_5 : LD
    port map (
      D => op1_msb_mux0000(5),
      G => op1_msb_not0001,
      Q => op1_msb_5_81
    );
  op1_msb_6 : LD
    port map (
      D => op1_msb_mux0000(6),
      G => op1_msb_not0001,
      Q => op1_msb_6_82
    );
  op1_msb_7 : LD
    port map (
      D => op1_msb_mux0000(7),
      G => op1_msb_not0001,
      Q => op1_msb_7_83
    );
  op2_mssb_0 : LD
    port map (
      D => op2_mssb_mux0000(0),
      G => op2_mssb_not0001,
      Q => op2_mssb_0_207
    );
  op2_mssb_1 : LD
    port map (
      D => op2_mssb_mux0000(1),
      G => op2_mssb_not0001,
      Q => op2_mssb_1_208
    );
  op2_mssb_2 : LD
    port map (
      D => op2_mssb_mux0000(2),
      G => op2_mssb_not0001,
      Q => op2_mssb_2_209
    );
  op2_mssb_3 : LD
    port map (
      D => op2_mssb_mux0000(3),
      G => op2_mssb_not0001,
      Q => op2_mssb_3_210
    );
  op2_mssb_4 : LD
    port map (
      D => op2_mssb_mux0000(4),
      G => op2_mssb_not0001,
      Q => op2_mssb_4_211
    );
  op2_mssb_5 : LD
    port map (
      D => op2_mssb_mux0000(5),
      G => op2_mssb_not0001,
      Q => op2_mssb_5_212
    );
  op2_mssb_6 : LD
    port map (
      D => op2_mssb_mux0000(6),
      G => op2_mssb_not0001,
      Q => op2_mssb_6_213
    );
  op2_mssb_7 : LD
    port map (
      D => op2_mssb_mux0000(7),
      G => op2_mssb_not0001,
      Q => op2_mssb_7_214
    );
  op1_lsb_0 : LD
    port map (
      D => op1_lsb_mux0000(0),
      G => op1_lsb_not0001,
      Q => op1_lsb_0_26
    );
  op1_lsb_1 : LD
    port map (
      D => op1_lsb_mux0000(1),
      G => op1_lsb_not0001,
      Q => op1_lsb_1_27
    );
  op1_lsb_2 : LD
    port map (
      D => op1_lsb_mux0000(2),
      G => op1_lsb_not0001,
      Q => op1_lsb_2_28
    );
  op1_lsb_3 : LD
    port map (
      D => op1_lsb_mux0000(3),
      G => op1_lsb_not0001,
      Q => op1_lsb_3_29
    );
  op1_lsb_4 : LD
    port map (
      D => op1_lsb_mux0000(4),
      G => op1_lsb_not0001,
      Q => op1_lsb_4_30
    );
  op1_lsb_5 : LD
    port map (
      D => op1_lsb_mux0000(5),
      G => op1_lsb_not0001,
      Q => op1_lsb_5_31
    );
  op1_lsb_6 : LD
    port map (
      D => op1_lsb_mux0000(6),
      G => op1_lsb_not0001,
      Q => op1_lsb_6_32
    );
  op1_lsb_7 : LD
    port map (
      D => op1_lsb_mux0000(7),
      G => op1_lsb_not0001,
      Q => op1_lsb_7_33
    );
  op1_mssb_0 : LD
    port map (
      D => op1_mssb_mux0000(0),
      G => op1_mssb_not0001,
      Q => op1_mssb_0_101
    );
  op1_mssb_1 : LD
    port map (
      D => op1_mssb_mux0000(1),
      G => op1_mssb_not0001,
      Q => op1_mssb_1_102
    );
  op1_mssb_2 : LD
    port map (
      D => op1_mssb_mux0000(2),
      G => op1_mssb_not0001,
      Q => op1_mssb_2_103
    );
  op1_mssb_3 : LD
    port map (
      D => op1_mssb_mux0000(3),
      G => op1_mssb_not0001,
      Q => op1_mssb_3_104
    );
  op1_mssb_4 : LD
    port map (
      D => op1_mssb_mux0000(4),
      G => op1_mssb_not0001,
      Q => op1_mssb_4_105
    );
  op1_mssb_5 : LD
    port map (
      D => op1_mssb_mux0000(5),
      G => op1_mssb_not0001,
      Q => op1_mssb_5_106
    );
  op1_mssb_6 : LD
    port map (
      D => op1_mssb_mux0000(6),
      G => op1_mssb_not0001,
      Q => op1_mssb_6_107
    );
  op1_mssb_7 : LD
    port map (
      D => op1_mssb_mux0000(7),
      G => op1_mssb_not0001,
      Q => op1_mssb_7_108
    );
  op2_mssb_mux0000_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0006,
      I1 => data_7_IBUF_17,
      O => op2_mssb_mux0000(7)
    );
  op2_mssb_mux0000_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0006,
      I1 => data_6_IBUF_16,
      O => op2_mssb_mux0000(6)
    );
  op2_mssb_mux0000_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0006,
      I1 => data_5_IBUF_15,
      O => op2_mssb_mux0000(5)
    );
  op2_mssb_mux0000_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0006,
      I1 => data_4_IBUF_14,
      O => op2_mssb_mux0000(4)
    );
  op2_mssb_mux0000_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0006,
      I1 => data_3_IBUF_13,
      O => op2_mssb_mux0000(3)
    );
  op2_mssb_mux0000_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0006,
      I1 => data_2_IBUF_12,
      O => op2_mssb_mux0000(2)
    );
  op2_mssb_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0006,
      I1 => data_1_IBUF_11,
      O => op2_mssb_mux0000(1)
    );
  op2_mssb_mux0000_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0006,
      I1 => data_0_IBUF_10,
      O => op2_mssb_mux0000(0)
    );
  op2_lssb_mux0000_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0005,
      I1 => data_7_IBUF_17,
      O => op2_lssb_mux0000(7)
    );
  op2_lssb_mux0000_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0005,
      I1 => data_6_IBUF_16,
      O => op2_lssb_mux0000(6)
    );
  op2_lssb_mux0000_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0005,
      I1 => data_5_IBUF_15,
      O => op2_lssb_mux0000(5)
    );
  op2_lssb_mux0000_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0005,
      I1 => data_4_IBUF_14,
      O => op2_lssb_mux0000(4)
    );
  op2_lssb_mux0000_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0005,
      I1 => data_3_IBUF_13,
      O => op2_lssb_mux0000(3)
    );
  op2_lssb_mux0000_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0005,
      I1 => data_2_IBUF_12,
      O => op2_lssb_mux0000(2)
    );
  op2_lssb_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0005,
      I1 => data_1_IBUF_11,
      O => op2_lssb_mux0000(1)
    );
  op2_lssb_mux0000_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0005,
      I1 => data_0_IBUF_10,
      O => op2_lssb_mux0000(0)
    );
  op2_lsb_mux0000_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0004,
      I1 => data_7_IBUF_17,
      O => op2_lsb_mux0000(7)
    );
  op2_lsb_mux0000_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0004,
      I1 => data_6_IBUF_16,
      O => op2_lsb_mux0000(6)
    );
  op2_lsb_mux0000_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0004,
      I1 => data_5_IBUF_15,
      O => op2_lsb_mux0000(5)
    );
  op2_lsb_mux0000_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0004,
      I1 => data_4_IBUF_14,
      O => op2_lsb_mux0000(4)
    );
  op2_lsb_mux0000_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0004,
      I1 => data_3_IBUF_13,
      O => op2_lsb_mux0000(3)
    );
  op2_lsb_mux0000_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0004,
      I1 => data_2_IBUF_12,
      O => op2_lsb_mux0000(2)
    );
  op2_lsb_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0004,
      I1 => data_1_IBUF_11,
      O => op2_lsb_mux0000(1)
    );
  op2_lsb_mux0000_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0004,
      I1 => data_0_IBUF_10,
      O => op2_lsb_mux0000(0)
    );
  op1_mssb_not000111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => selec_1_IBUF_236,
      I1 => selec_2_IBUF_237,
      O => N01
    );
  op1_mssb_mux0000_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0000,
      I1 => data_7_IBUF_17,
      O => op1_mssb_mux0000(7)
    );
  op1_mssb_mux0000_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0000,
      I1 => data_6_IBUF_16,
      O => op1_mssb_mux0000(6)
    );
  op1_mssb_mux0000_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0000,
      I1 => data_5_IBUF_15,
      O => op1_mssb_mux0000(5)
    );
  op1_mssb_mux0000_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0000,
      I1 => data_4_IBUF_14,
      O => op1_mssb_mux0000(4)
    );
  op1_mssb_mux0000_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0000,
      I1 => data_3_IBUF_13,
      O => op1_mssb_mux0000(3)
    );
  op1_mssb_mux0000_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0000,
      I1 => data_2_IBUF_12,
      O => op1_mssb_mux0000(2)
    );
  op1_mssb_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0000,
      I1 => data_1_IBUF_11,
      O => op1_mssb_mux0000(1)
    );
  op1_mssb_mux0000_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0000,
      I1 => data_0_IBUF_10,
      O => op1_mssb_mux0000(0)
    );
  op1_msb_mux0000_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0003,
      I1 => data_7_IBUF_17,
      O => op1_msb_mux0000(7)
    );
  op1_msb_mux0000_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0003,
      I1 => data_6_IBUF_16,
      O => op1_msb_mux0000(6)
    );
  op1_msb_mux0000_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0003,
      I1 => data_5_IBUF_15,
      O => op1_msb_mux0000(5)
    );
  op1_msb_mux0000_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0003,
      I1 => data_4_IBUF_14,
      O => op1_msb_mux0000(4)
    );
  op1_msb_mux0000_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0003,
      I1 => data_3_IBUF_13,
      O => op1_msb_mux0000(3)
    );
  op1_msb_mux0000_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0003,
      I1 => data_2_IBUF_12,
      O => op1_msb_mux0000(2)
    );
  op1_msb_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0003,
      I1 => data_1_IBUF_11,
      O => op1_msb_mux0000(1)
    );
  op1_msb_mux0000_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0003,
      I1 => data_0_IBUF_10,
      O => op1_msb_mux0000(0)
    );
  op1_lssb_mux0000_7_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0002,
      I1 => data_7_IBUF_17,
      O => op1_lssb_mux0000(7)
    );
  op1_lssb_mux0000_6_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0002,
      I1 => data_6_IBUF_16,
      O => op1_lssb_mux0000(6)
    );
  op1_lssb_mux0000_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0002,
      I1 => data_5_IBUF_15,
      O => op1_lssb_mux0000(5)
    );
  op1_lssb_mux0000_4_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0002,
      I1 => data_4_IBUF_14,
      O => op1_lssb_mux0000(4)
    );
  op1_lssb_mux0000_3_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0002,
      I1 => data_3_IBUF_13,
      O => op1_lssb_mux0000(3)
    );
  op1_lssb_mux0000_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0002,
      I1 => data_2_IBUF_12,
      O => op1_lssb_mux0000(2)
    );
  op1_lssb_mux0000_1_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0002,
      I1 => data_1_IBUF_11,
      O => op1_lssb_mux0000(1)
    );
  op1_lssb_mux0000_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => op1_mssb_cmp_eq0002,
      I1 => data_0_IBUF_10,
      O => op1_lssb_mux0000(0)
    );
  operacion_not000111 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => selec_0_IBUF_235,
      I1 => selec_1_IBUF_236,
      I2 => selec_2_IBUF_237,
      O => N2
    );
  op2_msb_mux0000_7_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => data_7_IBUF_17,
      I1 => selec_3_IBUF_238,
      I2 => N2,
      O => op2_msb_mux0000(7)
    );
  op2_msb_mux0000_6_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => data_6_IBUF_16,
      I1 => selec_3_IBUF_238,
      I2 => N2,
      O => op2_msb_mux0000(6)
    );
  op2_msb_mux0000_5_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => data_5_IBUF_15,
      I1 => selec_3_IBUF_238,
      I2 => N2,
      O => op2_msb_mux0000(5)
    );
  op2_msb_mux0000_4_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => data_4_IBUF_14,
      I1 => selec_3_IBUF_238,
      I2 => N2,
      O => op2_msb_mux0000(4)
    );
  op2_msb_mux0000_3_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => data_3_IBUF_13,
      I1 => selec_3_IBUF_238,
      I2 => N2,
      O => op2_msb_mux0000(3)
    );
  op2_msb_mux0000_2_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => data_2_IBUF_12,
      I1 => selec_3_IBUF_238,
      I2 => N2,
      O => op2_msb_mux0000(2)
    );
  op2_msb_mux0000_1_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => data_1_IBUF_11,
      I1 => selec_3_IBUF_238,
      I2 => N2,
      O => op2_msb_mux0000(1)
    );
  op2_msb_mux0000_0_1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => data_0_IBUF_10,
      I1 => selec_3_IBUF_238,
      I2 => N2,
      O => op2_msb_mux0000(0)
    );
  operacion_mux0000_1_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => data_1_IBUF_11,
      I1 => selec_0_IBUF_235,
      I2 => selec_3_IBUF_238,
      I3 => N01,
      O => operacion_mux0000(1)
    );
  operacion_mux0000_0_1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => data_0_IBUF_10,
      I1 => selec_0_IBUF_235,
      I2 => selec_3_IBUF_238,
      I3 => N01,
      O => operacion_mux0000(0)
    );
  op1_mssb_cmp_eq00061 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => selec_0_IBUF_235,
      I1 => selec_2_IBUF_237,
      I2 => selec_1_IBUF_236,
      I3 => selec_3_IBUF_238,
      O => op1_mssb_cmp_eq0006
    );
  op1_mssb_cmp_eq00051 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_2_IBUF_237,
      I2 => selec_1_IBUF_236,
      I3 => selec_0_IBUF_235,
      O => op1_mssb_cmp_eq0005
    );
  op1_mssb_cmp_eq00041 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => selec_2_IBUF_237,
      I3 => selec_1_IBUF_236,
      O => op1_mssb_cmp_eq0004
    );
  op1_mssb_cmp_eq00031 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => selec_1_IBUF_236,
      I1 => selec_2_IBUF_237,
      I2 => selec_3_IBUF_238,
      I3 => selec_0_IBUF_235,
      O => op1_mssb_cmp_eq0003
    );
  op1_mssb_cmp_eq00021 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => selec_2_IBUF_237,
      I1 => selec_1_IBUF_236,
      I2 => selec_3_IBUF_238,
      I3 => selec_0_IBUF_235,
      O => op1_mssb_cmp_eq0002
    );
  op1_mssb_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => selec_1_IBUF_236,
      I3 => selec_2_IBUF_237,
      O => op1_mssb_cmp_eq0000
    );
  op1_lsb_mux0000_7_1 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => data_7_IBUF_17,
      I3 => N01,
      O => op1_lsb_mux0000(7)
    );
  op1_lsb_mux0000_6_1 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => data_6_IBUF_16,
      I3 => N01,
      O => op1_lsb_mux0000(6)
    );
  op1_lsb_mux0000_5_1 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => data_5_IBUF_15,
      I3 => N01,
      O => op1_lsb_mux0000(5)
    );
  op1_lsb_mux0000_4_1 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => data_4_IBUF_14,
      I3 => N01,
      O => op1_lsb_mux0000(4)
    );
  op1_lsb_mux0000_3_1 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => data_3_IBUF_13,
      I3 => N01,
      O => op1_lsb_mux0000(3)
    );
  op1_lsb_mux0000_2_1 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => data_2_IBUF_12,
      I3 => N01,
      O => op1_lsb_mux0000(2)
    );
  op1_lsb_mux0000_1_1 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => data_1_IBUF_11,
      I3 => N01,
      O => op1_lsb_mux0000(1)
    );
  op1_lsb_mux0000_0_1 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => data_0_IBUF_10,
      I3 => N01,
      O => op1_lsb_mux0000(0)
    );
  selec_3_IBUF : IBUF
    port map (
      I => selec(3),
      O => selec_3_IBUF_238
    );
  selec_2_IBUF : IBUF
    port map (
      I => selec(2),
      O => selec_2_IBUF_237
    );
  selec_1_IBUF : IBUF
    port map (
      I => selec(1),
      O => selec_1_IBUF_236
    );
  selec_0_IBUF : IBUF
    port map (
      I => selec(0),
      O => selec_0_IBUF_235
    );
  data_7_IBUF : IBUF
    port map (
      I => data(7),
      O => data_7_IBUF_17
    );
  data_6_IBUF : IBUF
    port map (
      I => data(6),
      O => data_6_IBUF_16
    );
  data_5_IBUF : IBUF
    port map (
      I => data(5),
      O => data_5_IBUF_15
    );
  data_4_IBUF : IBUF
    port map (
      I => data(4),
      O => data_4_IBUF_14
    );
  data_3_IBUF : IBUF
    port map (
      I => data(3),
      O => data_3_IBUF_13
    );
  data_2_IBUF : IBUF
    port map (
      I => data(2),
      O => data_2_IBUF_12
    );
  data_1_IBUF : IBUF
    port map (
      I => data(1),
      O => data_1_IBUF_11
    );
  data_0_IBUF : IBUF
    port map (
      I => data(0),
      O => data_0_IBUF_10
    );
  op2_lssb_7_OBUF : OBUF
    port map (
      I => op2_lssb_7_164,
      O => op2_lssb(7)
    );
  op2_lssb_6_OBUF : OBUF
    port map (
      I => op2_lssb_6_163,
      O => op2_lssb(6)
    );
  op2_lssb_5_OBUF : OBUF
    port map (
      I => op2_lssb_5_162,
      O => op2_lssb(5)
    );
  op2_lssb_4_OBUF : OBUF
    port map (
      I => op2_lssb_4_161,
      O => op2_lssb(4)
    );
  op2_lssb_3_OBUF : OBUF
    port map (
      I => op2_lssb_3_160,
      O => op2_lssb(3)
    );
  op2_lssb_2_OBUF : OBUF
    port map (
      I => op2_lssb_2_159,
      O => op2_lssb(2)
    );
  op2_lssb_1_OBUF : OBUF
    port map (
      I => op2_lssb_1_158,
      O => op2_lssb(1)
    );
  op2_lssb_0_OBUF : OBUF
    port map (
      I => op2_lssb_0_157,
      O => op2_lssb(0)
    );
  operacion_1_OBUF : OBUF
    port map (
      I => operacion_1_227,
      O => operacion(1)
    );
  operacion_0_OBUF : OBUF
    port map (
      I => operacion_0_226,
      O => operacion(0)
    );
  op1_mssb_7_OBUF : OBUF
    port map (
      I => op1_mssb_7_108,
      O => op1_mssb(7)
    );
  op1_mssb_6_OBUF : OBUF
    port map (
      I => op1_mssb_6_107,
      O => op1_mssb(6)
    );
  op1_mssb_5_OBUF : OBUF
    port map (
      I => op1_mssb_5_106,
      O => op1_mssb(5)
    );
  op1_mssb_4_OBUF : OBUF
    port map (
      I => op1_mssb_4_105,
      O => op1_mssb(4)
    );
  op1_mssb_3_OBUF : OBUF
    port map (
      I => op1_mssb_3_104,
      O => op1_mssb(3)
    );
  op1_mssb_2_OBUF : OBUF
    port map (
      I => op1_mssb_2_103,
      O => op1_mssb(2)
    );
  op1_mssb_1_OBUF : OBUF
    port map (
      I => op1_mssb_1_102,
      O => op1_mssb(1)
    );
  op1_mssb_0_OBUF : OBUF
    port map (
      I => op1_mssb_0_101,
      O => op1_mssb(0)
    );
  op1_lsb_7_OBUF : OBUF
    port map (
      I => op1_lsb_7_33,
      O => op1_lsb(7)
    );
  op1_lsb_6_OBUF : OBUF
    port map (
      I => op1_lsb_6_32,
      O => op1_lsb(6)
    );
  op1_lsb_5_OBUF : OBUF
    port map (
      I => op1_lsb_5_31,
      O => op1_lsb(5)
    );
  op1_lsb_4_OBUF : OBUF
    port map (
      I => op1_lsb_4_30,
      O => op1_lsb(4)
    );
  op1_lsb_3_OBUF : OBUF
    port map (
      I => op1_lsb_3_29,
      O => op1_lsb(3)
    );
  op1_lsb_2_OBUF : OBUF
    port map (
      I => op1_lsb_2_28,
      O => op1_lsb(2)
    );
  op1_lsb_1_OBUF : OBUF
    port map (
      I => op1_lsb_1_27,
      O => op1_lsb(1)
    );
  op1_lsb_0_OBUF : OBUF
    port map (
      I => op1_lsb_0_26,
      O => op1_lsb(0)
    );
  op2_mssb_7_OBUF : OBUF
    port map (
      I => op2_mssb_7_214,
      O => op2_mssb(7)
    );
  op2_mssb_6_OBUF : OBUF
    port map (
      I => op2_mssb_6_213,
      O => op2_mssb(6)
    );
  op2_mssb_5_OBUF : OBUF
    port map (
      I => op2_mssb_5_212,
      O => op2_mssb(5)
    );
  op2_mssb_4_OBUF : OBUF
    port map (
      I => op2_mssb_4_211,
      O => op2_mssb(4)
    );
  op2_mssb_3_OBUF : OBUF
    port map (
      I => op2_mssb_3_210,
      O => op2_mssb(3)
    );
  op2_mssb_2_OBUF : OBUF
    port map (
      I => op2_mssb_2_209,
      O => op2_mssb(2)
    );
  op2_mssb_1_OBUF : OBUF
    port map (
      I => op2_mssb_1_208,
      O => op2_mssb(1)
    );
  op2_mssb_0_OBUF : OBUF
    port map (
      I => op2_mssb_0_207,
      O => op2_mssb(0)
    );
  op1_msb_7_OBUF : OBUF
    port map (
      I => op1_msb_7_83,
      O => op1_msb(7)
    );
  op1_msb_6_OBUF : OBUF
    port map (
      I => op1_msb_6_82,
      O => op1_msb(6)
    );
  op1_msb_5_OBUF : OBUF
    port map (
      I => op1_msb_5_81,
      O => op1_msb(5)
    );
  op1_msb_4_OBUF : OBUF
    port map (
      I => op1_msb_4_80,
      O => op1_msb(4)
    );
  op1_msb_3_OBUF : OBUF
    port map (
      I => op1_msb_3_79,
      O => op1_msb(3)
    );
  op1_msb_2_OBUF : OBUF
    port map (
      I => op1_msb_2_78,
      O => op1_msb(2)
    );
  op1_msb_1_OBUF : OBUF
    port map (
      I => op1_msb_1_77,
      O => op1_msb(1)
    );
  op1_msb_0_OBUF : OBUF
    port map (
      I => op1_msb_0_76,
      O => op1_msb(0)
    );
  op1_lssb_7_OBUF : OBUF
    port map (
      I => op1_lssb_7_58,
      O => op1_lssb(7)
    );
  op1_lssb_6_OBUF : OBUF
    port map (
      I => op1_lssb_6_57,
      O => op1_lssb(6)
    );
  op1_lssb_5_OBUF : OBUF
    port map (
      I => op1_lssb_5_56,
      O => op1_lssb(5)
    );
  op1_lssb_4_OBUF : OBUF
    port map (
      I => op1_lssb_4_55,
      O => op1_lssb(4)
    );
  op1_lssb_3_OBUF : OBUF
    port map (
      I => op1_lssb_3_54,
      O => op1_lssb(3)
    );
  op1_lssb_2_OBUF : OBUF
    port map (
      I => op1_lssb_2_53,
      O => op1_lssb(2)
    );
  op1_lssb_1_OBUF : OBUF
    port map (
      I => op1_lssb_1_52,
      O => op1_lssb(1)
    );
  op1_lssb_0_OBUF : OBUF
    port map (
      I => op1_lssb_0_51,
      O => op1_lssb(0)
    );
  op2_lsb_7_OBUF : OBUF
    port map (
      I => op2_lsb_7_139,
      O => op2_lsb(7)
    );
  op2_lsb_6_OBUF : OBUF
    port map (
      I => op2_lsb_6_138,
      O => op2_lsb(6)
    );
  op2_lsb_5_OBUF : OBUF
    port map (
      I => op2_lsb_5_137,
      O => op2_lsb(5)
    );
  op2_lsb_4_OBUF : OBUF
    port map (
      I => op2_lsb_4_136,
      O => op2_lsb(4)
    );
  op2_lsb_3_OBUF : OBUF
    port map (
      I => op2_lsb_3_135,
      O => op2_lsb(3)
    );
  op2_lsb_2_OBUF : OBUF
    port map (
      I => op2_lsb_2_134,
      O => op2_lsb(2)
    );
  op2_lsb_1_OBUF : OBUF
    port map (
      I => op2_lsb_1_133,
      O => op2_lsb(1)
    );
  op2_lsb_0_OBUF : OBUF
    port map (
      I => op2_lsb_0_132,
      O => op2_lsb(0)
    );
  op2_msb_7_OBUF : OBUF
    port map (
      I => op2_msb_7_189,
      O => op2_msb(7)
    );
  op2_msb_6_OBUF : OBUF
    port map (
      I => op2_msb_6_188,
      O => op2_msb(6)
    );
  op2_msb_5_OBUF : OBUF
    port map (
      I => op2_msb_5_187,
      O => op2_msb(5)
    );
  op2_msb_4_OBUF : OBUF
    port map (
      I => op2_msb_4_186,
      O => op2_msb(4)
    );
  op2_msb_3_OBUF : OBUF
    port map (
      I => op2_msb_3_185,
      O => op2_msb(3)
    );
  op2_msb_2_OBUF : OBUF
    port map (
      I => op2_msb_2_184,
      O => op2_msb(2)
    );
  op2_msb_1_OBUF : OBUF
    port map (
      I => op2_msb_1_183,
      O => op2_msb(1)
    );
  op2_msb_0_OBUF : OBUF
    port map (
      I => op2_msb_0_182,
      O => op2_msb(0)
    );
  operacion_not00012 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_0_IBUF_235,
      I2 => selec_1_IBUF_236,
      I3 => selec_2_IBUF_237,
      O => operacion_not0001
    );
  op2_msb_not00011 : LUT4
    generic map(
      INIT => X"A8AB"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_1_IBUF_236,
      I2 => selec_2_IBUF_237,
      I3 => selec_0_IBUF_235,
      O => op2_msb_not0001
    );
  op1_msb_not00011 : LUT4
    generic map(
      INIT => X"A8AD"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_2_IBUF_237,
      I2 => selec_1_IBUF_236,
      I3 => selec_0_IBUF_235,
      O => op1_msb_not0001
    );
  op1_lssb_not00011 : LUT4
    generic map(
      INIT => X"A8AD"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_1_IBUF_236,
      I2 => selec_2_IBUF_237,
      I3 => selec_0_IBUF_235,
      O => op1_lssb_not0001
    );
  op1_lsb_not00011 : LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_1_IBUF_236,
      I2 => selec_2_IBUF_237,
      O => op1_lsb_not0001
    );
  op2_mssb_not00011 : LUT4
    generic map(
      INIT => X"E8A9"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_1_IBUF_236,
      I2 => selec_2_IBUF_237,
      I3 => selec_0_IBUF_235,
      O => op2_mssb_not0001
    );
  op2_lssb_not00011 : LUT4
    generic map(
      INIT => X"A8E9"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_1_IBUF_236,
      I2 => selec_2_IBUF_237,
      I3 => selec_0_IBUF_235,
      O => op2_lssb_not0001
    );
  op2_lsb_not00011 : LUT4
    generic map(
      INIT => X"B8A9"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_1_IBUF_236,
      I2 => selec_2_IBUF_237,
      I3 => selec_0_IBUF_235,
      O => op2_lsb_not0001
    );
  op1_mssb_not00012 : LUT4
    generic map(
      INIT => X"B8A9"
    )
    port map (
      I0 => selec_3_IBUF_238,
      I1 => selec_2_IBUF_237,
      I2 => selec_1_IBUF_236,
      I3 => selec_0_IBUF_235,
      O => op1_mssb_not0001
    );

end Structure;

