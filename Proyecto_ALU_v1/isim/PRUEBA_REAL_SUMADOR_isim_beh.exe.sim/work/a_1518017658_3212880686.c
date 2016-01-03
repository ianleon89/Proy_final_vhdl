/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/seleccion_operacion.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_1518017658_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4024);
    t4 = xsi_vhdl_greater(t1, t2, 8U, t3, 8U);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4024);
    t4 = xsi_vhdl_greater(t1, t2, 8U, t3, 8U);
    if (t4 != 0)
        goto LAB72;

LAB73:    xsi_set_current_line(148, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB161;

LAB162:    t4 = (unsigned char)0;

LAB163:    if (t4 != 0)
        goto LAB158;

LAB160:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB183;

LAB184:    t4 = (unsigned char)0;

LAB185:    if (t4 != 0)
        goto LAB181;

LAB182:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t8 = (t5 == (unsigned char)2);
    if (t8 == 1)
        goto LAB205;

LAB206:    t4 = (unsigned char)0;

LAB207:    if (t4 != 0)
        goto LAB203;

LAB204:    xsi_set_current_line(188, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(189, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6696);
    t4 = 1;
    if (2U == 2U)
        goto LAB228;

LAB229:    t4 = 0;

LAB230:    if (t4 != 0)
        goto LAB225;

LAB227:    xsi_set_current_line(192, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB226:
LAB159:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB30;

LAB31:    t4 = (unsigned char)0;

LAB32:    if (t4 != 0)
        goto LAB28;

LAB29:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t8 = (t5 == (unsigned char)2);
    if (t8 == 1)
        goto LAB52;

LAB53:    t4 = (unsigned char)0;

LAB54:    if (t4 != 0)
        goto LAB50;

LAB51:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t6 = (t0 + 1672U);
    t13 = *((char **)t6);
    t6 = (t0 + 6620);
    t15 = 1;
    if (2U == 2U)
        goto LAB14;

LAB15:    t15 = 0;

LAB16:    if (t15 != 0)
        goto LAB11;

LAB13:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6624);
    t4 = 1;
    if (2U == 2U)
        goto LAB22;

LAB23:    t4 = 0;

LAB24:    if (t4 != 0)
        goto LAB20;

LAB21:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB12:    goto LAB6;

LAB8:    t6 = (t0 + 1512U);
    t10 = *((char **)t6);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t5 = t12;
    goto LAB10;

LAB11:    xsi_set_current_line(54, ng0);
    t19 = (t0 + 6622);
    t21 = (t0 + 3552);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t19, 2U);
    xsi_driver_first_trans_fast_port(t21);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB14:    t16 = 0;

LAB17:    if (t16 < 2U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t17 = (t13 + t16);
    t18 = (t6 + t16);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB15;

LAB19:    t16 = (t16 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(57, ng0);
    t10 = (t0 + 6626);
    t14 = (t0 + 3552);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB22:    t16 = 0;

LAB25:    if (t16 < 2U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB23;

LAB27:    t16 = (t16 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 6628);
    t12 = 1;
    if (2U == 2U)
        goto LAB36;

LAB37:    t12 = 0;

LAB38:    if (t12 != 0)
        goto LAB33;

LAB35:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6632);
    t4 = 1;
    if (2U == 2U)
        goto LAB44;

LAB45:    t4 = 0;

LAB46:    if (t4 != 0)
        goto LAB42;

LAB43:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB34:    goto LAB6;

LAB30:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)2);
    t4 = t11;
    goto LAB32;

LAB33:    xsi_set_current_line(67, ng0);
    t14 = (t0 + 6630);
    t18 = (t0 + 3552);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 2U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB34;

LAB36:    t16 = 0;

LAB39:    if (t16 < 2U)
        goto LAB40;
    else
        goto LAB38;

LAB40:    t10 = (t6 + t16);
    t13 = (t1 + t16);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB37;

LAB41:    t16 = (t16 + 1);
    goto LAB39;

LAB42:    xsi_set_current_line(70, ng0);
    t10 = (t0 + 6634);
    t14 = (t0 + 3552);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB34;

LAB44:    t16 = 0;

LAB47:    if (t16 < 2U)
        goto LAB48;
    else
        goto LAB46;

LAB48:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB45;

LAB49:    t16 = (t16 + 1);
    goto LAB47;

LAB50:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 6636);
    t12 = 1;
    if (2U == 2U)
        goto LAB58;

LAB59:    t12 = 0;

LAB60:    if (t12 != 0)
        goto LAB55;

LAB57:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6640);
    t4 = 1;
    if (2U == 2U)
        goto LAB66;

LAB67:    t4 = 0;

LAB68:    if (t4 != 0)
        goto LAB64;

LAB65:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB56:    goto LAB6;

LAB52:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)3);
    t4 = t11;
    goto LAB54;

LAB55:    xsi_set_current_line(80, ng0);
    t14 = (t0 + 6638);
    t18 = (t0 + 3552);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 2U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB56;

LAB58:    t16 = 0;

LAB61:    if (t16 < 2U)
        goto LAB62;
    else
        goto LAB60;

LAB62:    t10 = (t6 + t16);
    t13 = (t1 + t16);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB59;

LAB63:    t16 = (t16 + 1);
    goto LAB61;

LAB64:    xsi_set_current_line(83, ng0);
    t10 = (t0 + 6642);
    t14 = (t0 + 3552);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB56;

LAB66:    t16 = 0;

LAB69:    if (t16 < 2U)
        goto LAB70;
    else
        goto LAB68;

LAB70:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB67;

LAB71:    t16 = (t16 + 1);
    goto LAB69;

LAB72:    xsi_set_current_line(97, ng0);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB77;

LAB78:    t5 = (unsigned char)0;

LAB79:    if (t5 != 0)
        goto LAB74;

LAB76:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t8 = (t5 == (unsigned char)3);
    if (t8 == 1)
        goto LAB99;

LAB100:    t4 = (unsigned char)0;

LAB101:    if (t4 != 0)
        goto LAB97;

LAB98:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t5 = *((unsigned char *)t2);
    t8 = (t5 == (unsigned char)2);
    if (t8 == 1)
        goto LAB121;

LAB122:    t4 = (unsigned char)0;

LAB123:    if (t4 != 0)
        goto LAB119;

LAB120:    xsi_set_current_line(137, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(138, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6668);
    t4 = 1;
    if (2U == 2U)
        goto LAB144;

LAB145:    t4 = 0;

LAB146:    if (t4 != 0)
        goto LAB141;

LAB143:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6670);
    t4 = 1;
    if (2U == 2U)
        goto LAB152;

LAB153:    t4 = 0;

LAB154:    if (t4 != 0)
        goto LAB150;

LAB151:    xsi_set_current_line(143, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB142:
LAB75:    goto LAB3;

LAB74:    xsi_set_current_line(99, ng0);
    t6 = (t0 + 1672U);
    t13 = *((char **)t6);
    t6 = (t0 + 6644);
    t15 = 1;
    if (2U == 2U)
        goto LAB83;

LAB84:    t15 = 0;

LAB85:    if (t15 != 0)
        goto LAB80;

LAB82:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6648);
    t4 = 1;
    if (2U == 2U)
        goto LAB91;

LAB92:    t4 = 0;

LAB93:    if (t4 != 0)
        goto LAB89;

LAB90:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB81:    goto LAB75;

LAB77:    t6 = (t0 + 1512U);
    t10 = *((char **)t6);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    t5 = t12;
    goto LAB79;

LAB80:    xsi_set_current_line(100, ng0);
    t19 = (t0 + 6646);
    t21 = (t0 + 3552);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t19, 2U);
    xsi_driver_first_trans_fast_port(t21);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB81;

LAB83:    t16 = 0;

LAB86:    if (t16 < 2U)
        goto LAB87;
    else
        goto LAB85;

LAB87:    t17 = (t13 + t16);
    t18 = (t6 + t16);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB84;

LAB88:    t16 = (t16 + 1);
    goto LAB86;

LAB89:    xsi_set_current_line(103, ng0);
    t10 = (t0 + 6650);
    t14 = (t0 + 3552);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(104, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB81;

LAB91:    t16 = 0;

LAB94:    if (t16 < 2U)
        goto LAB95;
    else
        goto LAB93;

LAB95:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB92;

LAB96:    t16 = (t16 + 1);
    goto LAB94;

LAB97:    xsi_set_current_line(112, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 6652);
    t12 = 1;
    if (2U == 2U)
        goto LAB105;

LAB106:    t12 = 0;

LAB107:    if (t12 != 0)
        goto LAB102;

LAB104:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6656);
    t4 = 1;
    if (2U == 2U)
        goto LAB113;

LAB114:    t4 = 0;

LAB115:    if (t4 != 0)
        goto LAB111;

LAB112:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB103:    goto LAB75;

LAB99:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)2);
    t4 = t11;
    goto LAB101;

LAB102:    xsi_set_current_line(113, ng0);
    t14 = (t0 + 6654);
    t18 = (t0 + 3552);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 2U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(114, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB103;

LAB105:    t16 = 0;

LAB108:    if (t16 < 2U)
        goto LAB109;
    else
        goto LAB107;

LAB109:    t10 = (t6 + t16);
    t13 = (t1 + t16);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB106;

LAB110:    t16 = (t16 + 1);
    goto LAB108;

LAB111:    xsi_set_current_line(116, ng0);
    t10 = (t0 + 6658);
    t14 = (t0 + 3552);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(117, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB103;

LAB113:    t16 = 0;

LAB116:    if (t16 < 2U)
        goto LAB117;
    else
        goto LAB115;

LAB117:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB114;

LAB118:    t16 = (t16 + 1);
    goto LAB116;

LAB119:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 6660);
    t12 = 1;
    if (2U == 2U)
        goto LAB127;

LAB128:    t12 = 0;

LAB129:    if (t12 != 0)
        goto LAB124;

LAB126:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6664);
    t4 = 1;
    if (2U == 2U)
        goto LAB135;

LAB136:    t4 = 0;

LAB137:    if (t4 != 0)
        goto LAB133;

LAB134:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(133, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB125:    goto LAB75;

LAB121:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)3);
    t4 = t11;
    goto LAB123;

LAB124:    xsi_set_current_line(126, ng0);
    t14 = (t0 + 6662);
    t18 = (t0 + 3552);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 2U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(127, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB125;

LAB127:    t16 = 0;

LAB130:    if (t16 < 2U)
        goto LAB131;
    else
        goto LAB129;

LAB131:    t10 = (t6 + t16);
    t13 = (t1 + t16);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB128;

LAB132:    t16 = (t16 + 1);
    goto LAB130;

LAB133:    xsi_set_current_line(129, ng0);
    t10 = (t0 + 6666);
    t14 = (t0 + 3552);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(130, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB125;

LAB135:    t16 = 0;

LAB138:    if (t16 < 2U)
        goto LAB139;
    else
        goto LAB137;

LAB139:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB136;

LAB140:    t16 = (t16 + 1);
    goto LAB138;

LAB141:    xsi_set_current_line(139, ng0);
    t10 = (t0 + 3616);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t10);
    goto LAB142;

LAB144:    t16 = 0;

LAB147:    if (t16 < 2U)
        goto LAB148;
    else
        goto LAB146;

LAB148:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB145;

LAB149:    t16 = (t16 + 1);
    goto LAB147;

LAB150:    xsi_set_current_line(141, ng0);
    t10 = (t0 + 3616);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t10);
    goto LAB142;

LAB152:    t16 = 0;

LAB155:    if (t16 < 2U)
        goto LAB156;
    else
        goto LAB154;

LAB156:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB153;

LAB157:    t16 = (t16 + 1);
    goto LAB155;

LAB158:    xsi_set_current_line(150, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 6672);
    t12 = 1;
    if (2U == 2U)
        goto LAB167;

LAB168:    t12 = 0;

LAB169:    if (t12 != 0)
        goto LAB164;

LAB166:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6676);
    t4 = 1;
    if (2U == 2U)
        goto LAB175;

LAB176:    t4 = 0;

LAB177:    if (t4 != 0)
        goto LAB173;

LAB174:    xsi_set_current_line(157, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(158, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB165:    goto LAB159;

LAB161:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)3);
    t4 = t11;
    goto LAB163;

LAB164:    xsi_set_current_line(151, ng0);
    t14 = (t0 + 6674);
    t18 = (t0 + 3552);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 2U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(152, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB165;

LAB167:    t16 = 0;

LAB170:    if (t16 < 2U)
        goto LAB171;
    else
        goto LAB169;

LAB171:    t10 = (t6 + t16);
    t13 = (t1 + t16);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB168;

LAB172:    t16 = (t16 + 1);
    goto LAB170;

LAB173:    xsi_set_current_line(154, ng0);
    t10 = (t0 + 6678);
    t14 = (t0 + 3552);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(155, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB165;

LAB175:    t16 = 0;

LAB178:    if (t16 < 2U)
        goto LAB179;
    else
        goto LAB177;

LAB179:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB176;

LAB180:    t16 = (t16 + 1);
    goto LAB178;

LAB181:    xsi_set_current_line(163, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 6680);
    t12 = 1;
    if (2U == 2U)
        goto LAB189;

LAB190:    t12 = 0;

LAB191:    if (t12 != 0)
        goto LAB186;

LAB188:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6684);
    t4 = 1;
    if (2U == 2U)
        goto LAB197;

LAB198:    t4 = 0;

LAB199:    if (t4 != 0)
        goto LAB195;

LAB196:    xsi_set_current_line(170, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(171, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB187:    goto LAB159;

LAB183:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)2);
    t4 = t11;
    goto LAB185;

LAB186:    xsi_set_current_line(164, ng0);
    t14 = (t0 + 6682);
    t18 = (t0 + 3552);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 2U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(165, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB187;

LAB189:    t16 = 0;

LAB192:    if (t16 < 2U)
        goto LAB193;
    else
        goto LAB191;

LAB193:    t10 = (t6 + t16);
    t13 = (t1 + t16);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB190;

LAB194:    t16 = (t16 + 1);
    goto LAB192;

LAB195:    xsi_set_current_line(167, ng0);
    t10 = (t0 + 6686);
    t14 = (t0 + 3552);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(168, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB187;

LAB197:    t16 = 0;

LAB200:    if (t16 < 2U)
        goto LAB201;
    else
        goto LAB199;

LAB201:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB198;

LAB202:    t16 = (t16 + 1);
    goto LAB200;

LAB203:    xsi_set_current_line(176, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 6688);
    t12 = 1;
    if (2U == 2U)
        goto LAB211;

LAB212:    t12 = 0;

LAB213:    if (t12 != 0)
        goto LAB208;

LAB210:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 6692);
    t4 = 1;
    if (2U == 2U)
        goto LAB219;

LAB220:    t4 = 0;

LAB221:    if (t4 != 0)
        goto LAB217;

LAB218:    xsi_set_current_line(183, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3552);
    t3 = (t1 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t10 = *((char **)t7);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(184, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t8 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t4, t5);
    t1 = (t0 + 3616);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t13 = *((char **)t10);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t1);

LAB209:    goto LAB159;

LAB205:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t9 = *((unsigned char *)t3);
    t11 = (t9 == (unsigned char)3);
    t4 = t11;
    goto LAB207;

LAB208:    xsi_set_current_line(177, ng0);
    t14 = (t0 + 6690);
    t18 = (t0 + 3552);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t14, 2U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(178, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB209;

LAB211:    t16 = 0;

LAB214:    if (t16 < 2U)
        goto LAB215;
    else
        goto LAB213;

LAB215:    t10 = (t6 + t16);
    t13 = (t1 + t16);
    if (*((unsigned char *)t10) != *((unsigned char *)t13))
        goto LAB212;

LAB216:    t16 = (t16 + 1);
    goto LAB214;

LAB217:    xsi_set_current_line(180, ng0);
    t10 = (t0 + 6694);
    t14 = (t0 + 3552);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 2U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(181, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB209;

LAB219:    t16 = 0;

LAB222:    if (t16 < 2U)
        goto LAB223;
    else
        goto LAB221;

LAB223:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB220;

LAB224:    t16 = (t16 + 1);
    goto LAB222;

LAB225:    xsi_set_current_line(190, ng0);
    t10 = (t0 + 1352U);
    t13 = *((char **)t10);
    t5 = *((unsigned char *)t13);
    t10 = (t0 + 1512U);
    t14 = *((char **)t10);
    t8 = *((unsigned char *)t14);
    t9 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t5, t8);
    t10 = (t0 + 3616);
    t17 = (t10 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t9;
    xsi_driver_first_trans_fast_port(t10);
    goto LAB226;

LAB228:    t16 = 0;

LAB231:    if (t16 < 2U)
        goto LAB232;
    else
        goto LAB230;

LAB232:    t6 = (t2 + t16);
    t7 = (t1 + t16);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB229;

LAB233:    t16 = (t16 + 1);
    goto LAB231;

}


extern void work_a_1518017658_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1518017658_3212880686_p_0};
	xsi_register_didat("work_a_1518017658_3212880686", "isim/PRUEBA_REAL_SUMADOR_isim_beh.exe.sim/work/a_1518017658_3212880686.didat");
	xsi_register_executes(pe);
}
