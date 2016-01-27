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
static const char *ng0 = "C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Detector_de_Rebose.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2770553711_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_2599083972_3965413181(char *, int , char *, char *);
unsigned char ieee_p_3620187407_sub_2599155846_3965413181(char *, int , char *, char *);
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2400667692_3212880686_p_0(char *t0)
{
    char t5[16];
    char t21[16];
    char t38[16];
    char t40[16];
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
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    unsigned char t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    char *t39;
    char *t41;
    char *t42;
    int t43;
    unsigned int t44;
    unsigned char t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    int t50;
    int t51;

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7620U);
    t3 = (t0 + 7820);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 7869);
    *((int *)t1) = 22;
    t2 = (t0 + 7873);
    *((int *)t2) = 0;
    t8 = 22;
    t12 = 0;

LAB15:    if (t8 >= t12)
        goto LAB16;

LAB18:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 7636U);
    t3 = (t0 + 2448U);
    t4 = *((char **)t3);
    t8 = *((int *)t4);
    t3 = ieee_p_1242562249_sub_2770553711_1035706684(IEEE_P_1242562249, t5, t2, t1, t8);
    t6 = (t0 + 4264);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t17 = (t11 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t3, 23U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 7652U);
    t10 = ieee_p_3620187407_sub_2599083972_3965413181(IEEE_P_3620187407, t8, t3, t1);
    if (t10 != 0)
        goto LAB26;

LAB28:    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t8 = *((int *)t2);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 7652U);
    t10 = ieee_p_3620187407_sub_2599155846_3965413181(IEEE_P_3620187407, t8, t3, t1);
    if (t10 != 0)
        goto LAB33;

LAB34:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 7908);
    t3 = (t0 + 4136);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 7916);
    t3 = (t0 + 4072);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 23U);
    xsi_driver_first_trans_fast_port(t3);

LAB27:    xsi_set_current_line(110, ng0);
    t1 = (t0 + 2448U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 22;
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 1;

LAB3:    t1 = (t0 + 3992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t7 = (t0 + 1032U);
    t11 = *((char **)t7);
    t12 = (1 - 1);
    t9 = (t12 * -1);
    t13 = (1U * t9);
    t14 = (0 + t13);
    t7 = (t11 + t14);
    t15 = *((unsigned char *)t7);
    t16 = (t15 == (unsigned char)3);
    if (t16 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4072);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 23U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(63, ng0);
    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t17 = (t0 + 7652U);
    t19 = (t0 + 7822);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 7;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (7 - 0);
    t25 = (t24 * 1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t26 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t18, t17, t19, t21);
    if (t26 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 7838);
    t3 = (t0 + 4136);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 7846);
    t3 = (t0 + 4072);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 23U);
    xsi_driver_first_trans_fast_port(t3);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(65, ng0);
    t23 = (t0 + 1032U);
    t27 = *((char **)t23);
    t28 = (0 - 1);
    t25 = (t28 * -1);
    t29 = (1U * t25);
    t30 = (0 + t29);
    t23 = (t27 + t30);
    t31 = *((unsigned char *)t23);
    t32 = (t0 + 1192U);
    t33 = *((char **)t32);
    t34 = (22 - 22);
    t35 = (t34 * 1U);
    t36 = (0 + t35);
    t32 = (t33 + t36);
    t39 = ((IEEE_P_2592010699) + 4024);
    t41 = (t40 + 0U);
    t42 = (t41 + 0U);
    *((int *)t42) = 22;
    t42 = (t41 + 4U);
    *((int *)t42) = 1;
    t42 = (t41 + 8U);
    *((int *)t42) = -1;
    t43 = (1 - 22);
    t44 = (t43 * -1);
    t44 = (t44 + 1);
    t42 = (t41 + 12U);
    *((unsigned int *)t42) = t44;
    t37 = xsi_base_array_concat(t37, t38, t39, (char)99, t31, (char)97, t32, t40, (char)101);
    t44 = (1U + 22U);
    t45 = (23U != t44);
    if (t45 == 1)
        goto LAB11;

LAB12:    t42 = (t0 + 4072);
    t46 = (t42 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t37, 23U);
    xsi_driver_first_trans_fast_port(t42);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7652U);
    t3 = (t0 + 7830);
    t6 = (t21 + 0U);
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
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t5, t2, t1, t3, t21);
    t11 = (t5 + 12U);
    t9 = *((unsigned int *)t11);
    t13 = (1U * t9);
    t10 = (8U != t13);
    if (t10 == 1)
        goto LAB13;

LAB14:    t17 = (t0 + 4136);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t7, 8U);
    xsi_driver_first_trans_fast_port(t17);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB11:    xsi_size_not_matching(23U, t44, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(8U, t13, 0);
    goto LAB14;

LAB16:    xsi_set_current_line(87, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 7869);
    t24 = *((int *)t3);
    t28 = (t24 - 22);
    t9 = (t28 * -1);
    xsi_vhdl_check_range_of_index(22, 0, -1, *((int *)t3));
    t13 = (1U * t9);
    t14 = (0 + t13);
    t6 = (t4 + t14);
    t15 = *((unsigned char *)t6);
    t16 = (t15 == (unsigned char)2);
    if (t16 == 1)
        goto LAB22;

LAB23:    t10 = (unsigned char)0;

LAB24:    if (t10 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;

LAB20:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2568U);
    t2 = *((char **)t1);
    t24 = *((int *)t2);
    t28 = (t24 - 1);
    t1 = (t0 + 2568U);
    t3 = *((char **)t1);
    t1 = (t3 + 0);
    *((int *)t1) = t28;

LAB17:    t1 = (t0 + 7869);
    t8 = *((int *)t1);
    t2 = (t0 + 7873);
    t12 = *((int *)t2);
    if (t8 == t12)
        goto LAB18;

LAB25:    t24 = (t8 + -1);
    t8 = t24;
    t3 = (t0 + 7869);
    *((int *)t3) = t8;
    goto LAB15;

LAB19:    xsi_set_current_line(88, ng0);
    t7 = (t0 + 2448U);
    t17 = *((char **)t7);
    t50 = *((int *)t17);
    t51 = (t50 + 1);
    t7 = (t0 + 2448U);
    t18 = *((char **)t7);
    t7 = (t18 + 0);
    *((int *)t7) = t51;
    goto LAB20;

LAB22:    t7 = (t0 + 2688U);
    t11 = *((char **)t7);
    t43 = *((int *)t11);
    t26 = (t43 == 1);
    t10 = t26;
    goto LAB24;

LAB26:    xsi_set_current_line(97, ng0);
    t4 = (t0 + 1352U);
    t6 = *((char **)t4);
    t4 = (t0 + 7652U);
    t7 = (t0 + 2448U);
    t11 = *((char **)t7);
    t12 = *((int *)t11);
    t7 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t21, t6, t4, t12);
    t17 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t5, t7, t21, 1);
    t18 = (t5 + 12U);
    t9 = *((unsigned int *)t18);
    t13 = (1U * t9);
    t15 = (8U != t13);
    if (t15 == 1)
        goto LAB29;

LAB30:    t19 = (t0 + 4136);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    t23 = (t22 + 56U);
    t27 = *((char **)t23);
    memcpy(t27, t17, 8U);
    xsi_driver_first_trans_fast_port(t19);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t9 = (22 - 21);
    t13 = (t9 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t4 = ((IEEE_P_2592010699) + 4024);
    t6 = (t21 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 21;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 21);
    t25 = (t8 * -1);
    t25 = (t25 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t25;
    t3 = xsi_base_array_concat(t3, t5, t4, (char)97, t1, t21, (char)99, (unsigned char)2, (char)101);
    t25 = (22U + 1U);
    t10 = (23U != t25);
    if (t10 == 1)
        goto LAB31;

LAB32:    t7 = (t0 + 4072);
    t11 = (t7 + 56U);
    t17 = *((char **)t11);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t3, 23U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 4200);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB27;

LAB29:    xsi_size_not_matching(8U, t13, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(23U, t25, 0);
    goto LAB32;

LAB33:    xsi_set_current_line(101, ng0);
    t4 = (t0 + 4200);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t17 = *((char **)t11);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(102, ng0);
    t1 = (t0 + 7877);
    t3 = (t0 + 4136);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 7885);
    t3 = (t0 + 4072);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 23U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB27;

}


extern void work_a_2400667692_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2400667692_3212880686_p_0};
	xsi_register_didat("work_a_2400667692_3212880686", "isim/Prueba_ALU_isim_beh.exe.sim/work/a_2400667692_3212880686.didat");
	xsi_register_executes(pe);
}
