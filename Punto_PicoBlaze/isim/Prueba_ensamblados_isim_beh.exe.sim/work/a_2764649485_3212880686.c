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
static const char *ng0 = "C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Multiplicador.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2053728113_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4042748798_3965413181(char *, char *, char *, char *, char *);


static void work_a_2764649485_3212880686_p_0(char *t0)
{
    char t7[16];
    char t16[16];
    char t25[16];
    char t33[16];
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    char *t27;
    int t28;
    unsigned char t29;
    char *t30;
    char *t31;
    char *t34;
    char *t35;
    int t36;
    unsigned char t37;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;

LAB0:    xsi_set_current_line(53, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 7432U);
    t5 = (t0 + 7702);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 7;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (7 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t12 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t4, t3, t5, t7);
    if (t12 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t18 = (t0 + 1192U);
    t22 = *((char **)t18);
    t18 = (t0 + 7448U);
    t23 = (t0 + 7733);
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 0;
    t27 = (t26 + 4U);
    *((int *)t27) = 7;
    t27 = (t26 + 8U);
    *((int *)t27) = 1;
    t28 = (7 - 0);
    t11 = (t28 * 1);
    t11 = (t11 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t11;
    t29 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t22, t18, t23, t25);
    if (t29 == 1)
        goto LAB11;

LAB12:    t21 = (unsigned char)0;

LAB13:    t1 = t21;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 7432U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 7448U);
    t8 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t16, t4, t3, t6, t5);
    t9 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t7, t8, t16, 127);
    t13 = (t0 + 4288);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 8U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2472U);
    t4 = *((char **)t3);
    t3 = (t0 + 7560U);
    t5 = (t0 + 7797);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 7;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t10 = (7 - 0);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t1 = ieee_p_3620187407_sub_4042748798_3965413181(IEEE_P_3620187407, t4, t3, t5, t7);
    if (t1 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 7805);
    t5 = (t0 + 4032);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t3, 8U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(68, ng0);
    t3 = (t0 + 4224);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);

LAB15:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 7464U);
    t3 = xsi_base_array_concat(t3, t16, t5, (char)99, (unsigned char)3, (char)97, t4, t6, (char)101);
    t8 = (t0 + 1512U);
    t9 = *((char **)t8);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t0 + 7480U);
    t8 = xsi_base_array_concat(t8, t25, t13, (char)99, (unsigned char)3, (char)97, t9, t14, (char)101);
    t15 = ieee_p_1242562249_sub_2053728113_1035706684(IEEE_P_1242562249, t7, t3, t16, t8, t25);
    t17 = (t0 + 4352);
    t18 = (t17 + 56U);
    t22 = *((char **)t18);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 48U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(71, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t11 = (47 - 45);
    t44 = (t11 * 1U);
    t45 = (0 + t44);
    t3 = (t4 + t45);
    t5 = (t0 + 4096);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t3, 23U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(72, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t11 = (47 - 47);
    t44 = (t11 * 1U);
    t45 = (0 + t44);
    t3 = (t4 + t45);
    t5 = (t0 + 4160);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t3, 2U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t3 = (t0 + 3952);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t35 = (t0 + 7764);
    t39 = (t0 + 4032);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t35, 8U);
    xsi_driver_first_trans_fast_port(t39);
    xsi_set_current_line(55, ng0);
    t3 = (t0 + 7772);
    t5 = (t0 + 4096);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t3, 23U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(56, ng0);
    t3 = (t0 + 7795);
    t5 = (t0 + 4160);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t3, 2U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(57, ng0);
    t3 = (t0 + 4224);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t9 = (t0 + 1352U);
    t13 = *((char **)t9);
    t9 = (t0 + 7464U);
    t14 = (t0 + 7710);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 22;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (22 - 0);
    t11 = (t19 * 1);
    t11 = (t11 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t11;
    t20 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t13, t9, t14, t16);
    t2 = t20;
    goto LAB10;

LAB11:    t27 = (t0 + 1512U);
    t30 = *((char **)t27);
    t27 = (t0 + 7480U);
    t31 = (t0 + 7741);
    t34 = (t33 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = 0;
    t35 = (t34 + 4U);
    *((int *)t35) = 22;
    t35 = (t34 + 8U);
    *((int *)t35) = 1;
    t36 = (22 - 0);
    t11 = (t36 * 1);
    t11 = (t11 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t11;
    t37 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t30, t27, t31, t33);
    t21 = t37;
    goto LAB13;

LAB14:    xsi_set_current_line(64, ng0);
    t9 = (t0 + 2472U);
    t13 = *((char **)t9);
    t11 = (7 - 7);
    t44 = (t11 * 1U);
    t45 = (0 + t44);
    t9 = (t13 + t45);
    t14 = (t0 + 4032);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t22 = *((char **)t18);
    memcpy(t22, t9, 8U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(65, ng0);
    t3 = (t0 + 4224);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB15;

}


extern void work_a_2764649485_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2764649485_3212880686_p_0};
	xsi_register_didat("work_a_2764649485_3212880686", "isim/Prueba_ensamblados_isim_beh.exe.sim/work/a_2764649485_3212880686.didat");
	xsi_register_executes(pe);
}
