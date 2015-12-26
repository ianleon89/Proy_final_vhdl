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

unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);
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

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6112U);
    t3 = (t0 + 6234);
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

LAB4:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 3392);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 23U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 6283);
    t3 = (t0 + 3456);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3520);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
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

LAB7:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 3392);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 23U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3520);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 3456);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t17 = (t0 + 6144U);
    t19 = (t0 + 6236);
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

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3520);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 6252);
    t3 = (t0 + 3456);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 6260);
    t3 = (t0 + 3392);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 23U);
    xsi_driver_first_trans_fast_port(t3);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(55, ng0);
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

LAB12:    t42 = (t0 + 3392);
    t46 = (t42 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t37, 23U);
    xsi_driver_first_trans_fast_port(t42);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6144U);
    t3 = (t0 + 6244);
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

LAB14:    t17 = (t0 + 3456);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t22 = *((char **)t20);
    memcpy(t22, t7, 8U);
    xsi_driver_first_trans_fast_port(t17);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 3520);
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

}


extern void work_a_2400667692_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2400667692_3212880686_p_0};
	xsi_register_didat("work_a_2400667692_3212880686", "isim/Prueba_rebose_isim_beh.exe.sim/work/a_2400667692_3212880686.didat");
	xsi_register_executes(pe);
}
