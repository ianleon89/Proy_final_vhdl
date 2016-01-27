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
    char t9[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    int t26;
    int t27;

LAB0:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6724U);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 6740U);
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t7, t6);
    if (t1 != 0)
        goto LAB13;

LAB15:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6724U);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 6740U);
    t1 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t3, t2, t7, t6);
    if (t1 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 3712);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);

LAB14:
LAB3:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6724U);
    t6 = (t0 + 6866);
    t8 = (t9 + 0U);
    t10 = (t8 + 0U);
    *((int *)t10) = 0;
    t10 = (t8 + 4U);
    *((int *)t10) = 7;
    t10 = (t8 + 8U);
    *((int *)t10) = 1;
    t12 = (7 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t10 = (t8 + 12U);
    *((unsigned int *)t10) = t13;
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t6, t9);
    if (t1 != 0)
        goto LAB18;

LAB20:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 6740U);
    t6 = (t0 + 6882);
    t8 = (t9 + 0U);
    t10 = (t8 + 0U);
    *((int *)t10) = 0;
    t10 = (t8 + 4U);
    *((int *)t10) = 7;
    t10 = (t8 + 8U);
    *((int *)t10) = 1;
    t12 = (7 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t10 = (t8 + 12U);
    *((unsigned int *)t10) = t13;
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t6, t9);
    if (t1 != 0)
        goto LAB21;

LAB22:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6724U);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 6740U);
    t1 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t3, t2, t7, t6);
    if (t1 != 0)
        goto LAB23;

LAB24:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 6740U);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 6724U);
    t1 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t3, t2, t7, t6);
    if (t1 != 0)
        goto LAB30;

LAB31:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 6914);
    t6 = (t0 + 3776);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3904);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB19:    t2 = (t0 + 3632);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t11 = (t0 + 1032U);
    t15 = *((char **)t11);
    t11 = (t0 + 6724U);
    t16 = (t0 + 1192U);
    t17 = *((char **)t16);
    t16 = (t0 + 6740U);
    t18 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t15, t11, t17, t16);
    if (t18 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6724U);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 6740U);
    t1 = ieee_std_logic_unsigned_greater_stdv_stdv(IEEE_P_3620187407, t3, t2, t7, t6);
    if (t1 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 3712);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t2 = (t0 + 6756U);
    t7 = (t0 + 6856);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 1;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t12 = (1 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t14 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t2, t7, t9);
    t1 = t14;
    goto LAB7;

LAB8:    xsi_set_current_line(62, ng0);
    t19 = (t0 + 6858);
    t21 = (t0 + 3712);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t19, 8U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB9;

LAB11:    xsi_set_current_line(64, ng0);
    t8 = (t0 + 1032U);
    t10 = *((char **)t8);
    t8 = (t0 + 3712);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t10, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB9;

LAB13:    xsi_set_current_line(70, ng0);
    t8 = (t0 + 1032U);
    t10 = *((char **)t8);
    t8 = (t0 + 3712);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t10, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB14;

LAB16:    xsi_set_current_line(72, ng0);
    t8 = (t0 + 1032U);
    t10 = *((char **)t8);
    t8 = (t0 + 3712);
    t11 = (t8 + 56U);
    t15 = *((char **)t11);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t10, 8U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB14;

LAB18:    xsi_set_current_line(78, ng0);
    t10 = (t0 + 6874);
    t15 = (t0 + 3776);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB19;

LAB21:    xsi_set_current_line(80, ng0);
    t10 = (t0 + 6890);
    t15 = (t0 + 3776);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB19;

LAB23:    xsi_set_current_line(82, ng0);
    t8 = (t0 + 1032U);
    t10 = *((char **)t8);
    t8 = (t0 + 6724U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t8);
    t11 = (t0 + 1192U);
    t15 = *((char **)t11);
    t11 = (t0 + 6740U);
    t26 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t15, t11);
    t27 = (t12 - t26);
    t16 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t9, t27, 8);
    t17 = (t9 + 12U);
    t13 = *((unsigned int *)t17);
    t13 = (t13 * 1U);
    t4 = (8U != t13);
    if (t4 == 1)
        goto LAB25;

LAB26:    t19 = (t0 + 3840);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t16, 8U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 6804U);
    t1 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t3, t2, 23);
    if (t1 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 6898);
    t6 = (t0 + 3776);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB28:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 3904);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB19;

LAB25:    xsi_size_not_matching(8U, t13, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(85, ng0);
    t6 = (t0 + 2152U);
    t7 = *((char **)t6);
    t6 = (t0 + 3776);
    t8 = (t6 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB28;

LAB30:    xsi_set_current_line(91, ng0);
    t8 = (t0 + 1192U);
    t10 = *((char **)t8);
    t8 = (t0 + 6740U);
    t12 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t10, t8);
    t11 = (t0 + 1032U);
    t15 = *((char **)t11);
    t11 = (t0 + 6724U);
    t26 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t15, t11);
    t27 = (t12 - t26);
    t16 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t9, t27, 8);
    t17 = (t9 + 12U);
    t13 = *((unsigned int *)t17);
    t13 = (t13 * 1U);
    t4 = (8U != t13);
    if (t4 == 1)
        goto LAB32;

LAB33:    t19 = (t0 + 3840);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t16, 8U);
    xsi_driver_first_trans_fast(t19);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 6804U);
    t1 = ieee_p_3620187407_sub_2546382208_3965413181(IEEE_P_3620187407, t3, t2, 23);
    if (t1 != 0)
        goto LAB34;

LAB36:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 6906);
    t6 = (t0 + 3776);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB35:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 3904);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB19;

LAB32:    xsi_size_not_matching(8U, t13, 0);
    goto LAB33;

LAB34:    xsi_set_current_line(93, ng0);
    t6 = (t0 + 2152U);
    t7 = *((char **)t6);
    t6 = (t0 + 3776);
    t8 = (t6 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB35;

}


extern void work_a_0032937458_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0032937458_3212880686_p_0};
	xsi_register_didat("work_a_0032937458_3212880686", "isim/Prueba_ALU_isim_beh.exe.sim/work/a_0032937458_3212880686.didat");
	xsi_register_executes(pe);
}
