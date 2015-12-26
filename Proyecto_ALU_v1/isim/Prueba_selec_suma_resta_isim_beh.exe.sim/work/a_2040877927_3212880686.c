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
static const char *ng0 = "C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Seleccion_suma_resta.vhd";



static void work_a_2040877927_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6208);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 6210);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB9:
LAB7:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 6212);
    t4 = (t0 + 3496);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 23U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(44, ng0);

LAB13:    t2 = (t0 + 3400);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(45, ng0);
    t9 = (t0 + 1032U);
    t10 = *((char **)t9);
    t11 = (45 - 22);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t9 = (t10 + t13);
    t14 = (t0 + 3496);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 23U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB4;

LAB6:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t11 = (45 - 45);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t2 = (t3 + t13);
    t4 = (t0 + 3496);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 23U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:;
LAB11:    t3 = (t0 + 3400);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}

static void work_a_2040877927_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 3080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t2 = (t0 + 6235);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB8:    t6 = (t0 + 6237);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB9:
LAB7:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 6239);
    t4 = (t0 + 3560);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(48, ng0);

LAB13:    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB14;

LAB1:    return;
LAB5:    xsi_set_current_line(49, ng0);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t11 = (3 - 1);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t9 = (t10 + t13);
    t14 = (t0 + 3560);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 2U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB4;

LAB6:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t11 = (3 - 3);
    t12 = (t11 * 1U);
    t13 = (0 + t12);
    t2 = (t3 + t13);
    t4 = (t0 + 3560);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 2U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:;
LAB11:    t3 = (t0 + 3416);
    *((int *)t3) = 0;
    goto LAB2;

LAB12:    goto LAB11;

LAB14:    goto LAB12;

}


extern void work_a_2040877927_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2040877927_3212880686_p_0,(void *)work_a_2040877927_3212880686_p_1};
	xsi_register_didat("work_a_2040877927_3212880686", "isim/Prueba_selec_suma_resta_isim_beh.exe.sim/work/a_2040877927_3212880686.didat");
	xsi_register_executes(pe);
}
