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
static const char *ng0 = "C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Comparador_Exp.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
unsigned char ieee_p_3620187407_sub_2546382208_3965413181(char *, char *, char *, int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_0032937458_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6496U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 6512U);
    t5 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB3;

LAB4:    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t12 = (t0 + 6512U);
    t14 = (t0 + 1032U);
    t15 = *((char **)t14);
    t14 = (t0 + 6496U);
    t16 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t13, t12, t15, t14);
    if (t16 != 0)
        goto LAB5;

LAB6:
LAB7:    t23 = (t0 + 1032U);
    t24 = *((char **)t23);
    t23 = (t0 + 3656);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t24, 8U);
    xsi_driver_first_trans_fast_port(t23);

LAB2:    t29 = (t0 + 3560);
    *((int *)t29) = 1;

LAB1:    return;
LAB3:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 3656);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB2;

LAB5:    t17 = (t0 + 1192U);
    t18 = *((char **)t17);
    t17 = (t0 + 3656);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t18, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB2;

LAB8:    goto LAB2;

}

static void work_a_0032937458_3212880686_p_1(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6496U);
    t3 = (t0 + 6609);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 7;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (7 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6512U);
    t3 = (t0 + 6625);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 7;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (7 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6496U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 6512U);
    t10 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t10 != 0)
        goto LAB7;

LAB8:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6512U);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 6496U);
    t10 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t10 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 6657);
    t3 = (t0 + 3720);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3848);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3576);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t7 = (t0 + 6617);
    t12 = (t0 + 3720);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB5:    xsi_set_current_line(59, ng0);
    t7 = (t0 + 6633);
    t12 = (t0 + 3720);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB3;

LAB7:    xsi_set_current_line(61, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 6496U);
    t8 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t6);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 6512U);
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t11);
    t18 = (t8 - t17);
    t13 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t5, t18, 8);
    t14 = (t5 + 12U);
    t9 = *((unsigned int *)t14);
    t9 = (t9 * 1U);
    t19 = (8U != t9);
    if (t19 == 1)
        goto LAB9;

LAB10:    t15 = (t0 + 3784);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 8U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6560U);
    t10 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t2, t1, 23);
    if (t10 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 6641);
    t3 = (t0 + 3720);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB12:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3848);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB9:    xsi_size_not_matching(8U, t9, 0);
    goto LAB10;

LAB11:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 3720);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB12;

LAB14:    xsi_set_current_line(70, ng0);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 6512U);
    t8 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t7, t6);
    t11 = (t0 + 1032U);
    t12 = *((char **)t11);
    t11 = (t0 + 6496U);
    t17 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t11);
    t18 = (t8 - t17);
    t13 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t5, t18, 8);
    t14 = (t5 + 12U);
    t9 = *((unsigned int *)t14);
    t9 = (t9 * 1U);
    t19 = (8U != t9);
    if (t19 == 1)
        goto LAB16;

LAB17:    t15 = (t0 + 3784);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t13, 8U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6560U);
    t10 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t2, t1, 23);
    if (t10 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 6649);
    t3 = (t0 + 3720);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);

LAB19:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3848);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB16:    xsi_size_not_matching(8U, t9, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1832U);
    t4 = *((char **)t3);
    t3 = (t0 + 3720);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 8U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB19;

}


extern void work_a_0032937458_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0032937458_3212880686_p_0,(void *)work_a_0032937458_3212880686_p_1};
	xsi_register_didat("work_a_0032937458_3212880686", "isim/Prueba_comp_exp_isim_beh.exe.sim/work/a_0032937458_3212880686.didat");
	xsi_register_executes(pe);
}
