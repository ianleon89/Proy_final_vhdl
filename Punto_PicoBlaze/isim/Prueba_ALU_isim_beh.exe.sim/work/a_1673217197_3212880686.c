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
static const char *ng0 = "C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Shiftter.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1830103426_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);


static void work_a_1673217197_3212880686_p_0(char *t0)
{
    char t9[16];
    char t18[16];
    char t23[16];
    char t25[16];
    char t28[16];
    char *t1;
    char *t2;
    unsigned char t3;
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
    char *t19;
    char *t20;
    int t21;
    unsigned char t22;
    char *t24;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 != (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB15;

LAB16:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 5781);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 23U);
    xsi_driver_first_trans_fast_port(t6);

LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t1 = (t0 + 5568U);
    t7 = (t0 + 5680);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t12 = (7 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t14 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t6, t1, t7, t9);
    if (t14 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5568U);
    t6 = (t0 + 5696);
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
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t9);
    if (t3 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5568U);
    t6 = (t0 + 5704);
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
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t6, t9);
    if (t3 != 0)
        goto LAB13;

LAB14:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5735);
    t6 = (t0 + 3232);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 23U);
    xsi_driver_first_trans_fast_port(t6);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(58, ng0);
    t20 = (t0 + 1032U);
    t24 = *((char **)t20);
    t26 = ((IEEE_P_2592010699) + 4024);
    t27 = (t0 + 5552U);
    t20 = xsi_base_array_concat(t20, t25, t26, (char)99, (unsigned char)3, (char)97, t24, t27, (char)101);
    t29 = (t0 + 1352U);
    t30 = *((char **)t29);
    t29 = (t0 + 5568U);
    t31 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t28, t30, t29, 1);
    t32 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t31, t28);
    t33 = ieee_p_1242562249_sub_1830103426_1035706684(IEEE_P_1242562249, t23, t20, t25, t32);
    t34 = (t0 + 3232);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t33, 23U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB6;

LAB8:    t11 = (t0 + 1352U);
    t15 = *((char **)t11);
    t11 = (t0 + 5568U);
    t16 = (t0 + 5688);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 7;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t21 = (7 - 0);
    t13 = (t21 * 1);
    t13 = (t13 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t13;
    t22 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t15, t11, t16, t18);
    t5 = t22;
    goto LAB10;

LAB11:    xsi_set_current_line(63, ng0);
    t10 = (t0 + 1032U);
    t11 = *((char **)t10);
    t10 = (t0 + 3232);
    t15 = (t10 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t19 = *((char **)t17);
    memcpy(t19, t11, 23U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB6;

LAB13:    xsi_set_current_line(65, ng0);
    t10 = (t0 + 5712);
    t15 = (t0 + 3232);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t19 = (t17 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 23U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB6;

LAB15:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 5758);
    t7 = (t0 + 3232);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t15 = *((char **)t11);
    memcpy(t15, t1, 23U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

}


extern void work_a_1673217197_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1673217197_3212880686_p_0};
	xsi_register_didat("work_a_1673217197_3212880686", "isim/Prueba_ALU_isim_beh.exe.sim/work/a_1673217197_3212880686.didat");
	xsi_register_executes(pe);
}
