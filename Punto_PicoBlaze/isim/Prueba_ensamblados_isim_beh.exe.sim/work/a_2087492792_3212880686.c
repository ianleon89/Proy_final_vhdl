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
static const char *ng0 = "C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Restador.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_2087492792_3212880686_p_0(char *t0)
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
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    unsigned int t20;
    unsigned int t21;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7924U);
    t3 = (t0 + 8222);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 22;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (22 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)3);
    if (t17 == 1)
        goto LAB7;

LAB8:    t10 = (unsigned char)0;

LAB9:    if (t10 != 0)
        goto LAB5;

LAB6:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t16 = *((unsigned char *)t2);
    t17 = (t16 == (unsigned char)3);
    if (t17 == 1)
        goto LAB12;

LAB13:    t10 = (unsigned char)0;

LAB14:    if (t10 != 0)
        goto LAB10;

LAB11:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 7940U);
    t1 = xsi_base_array_concat(t1, t5, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t9 = (1U + 23U);
    t10 = (24U != t9);
    if (t10 == 1)
        goto LAB15;

LAB16:    t6 = (t0 + 4480);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 24U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 7924U);
    t1 = xsi_base_array_concat(t1, t5, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t9 = (1U + 23U);
    t10 = (24U != t9);
    if (t10 == 1)
        goto LAB17;

LAB18:    t6 = (t0 + 4544);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 24U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 8004U);
    t3 = (t0 + 2632U);
    t4 = *((char **)t3);
    t3 = (t0 + 8036U);
    t6 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t5, t2, t1, t4, t3);
    t7 = (t0 + 4608);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 24U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t9 = (23 - 22);
    t20 = (t9 * 1U);
    t21 = (0 + t20);
    t1 = (t2 + t21);
    t3 = (t0 + 4352);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 23U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t16 = (t10 != (unsigned char)3);
    if (t16 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t8 = (23 - 23);
    t9 = (t8 * -1);
    t20 = (1U * t9);
    t21 = (0 + t20);
    t1 = (t2 + t21);
    t10 = *((unsigned char *)t1);
    t16 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, (unsigned char)3, t10);
    t3 = (t0 + 4416);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = t16;
    xsi_driver_first_trans_delta(t3, 1U, 1, 0LL);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t8 = (23 - 23);
    t9 = (t8 * -1);
    t20 = (1U * t9);
    t21 = (0 + t20);
    t1 = (t2 + t21);
    t10 = *((unsigned char *)t1);
    t16 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, (unsigned char)3, t10);
    t3 = (t0 + 4416);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = t16;
    xsi_driver_first_trans_delta(t3, 0U, 1, 0LL);

LAB20:
LAB3:    t1 = (t0 + 4272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(60, ng0);
    t7 = (t0 + 1032U);
    t11 = *((char **)t7);
    t7 = (t0 + 4352);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 23U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 8245);
    t3 = (t0 + 4416);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB3;

LAB5:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 8247);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 23U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t8 = (23 - 23);
    t9 = (t8 * -1);
    t20 = (1U * t9);
    t21 = (0 + t20);
    t1 = (t2 + t21);
    t10 = *((unsigned char *)t1);
    t16 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t17 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, (unsigned char)3, t16);
    t3 = (t0 + 4416);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = t17;
    xsi_driver_first_trans_delta(t3, 1U, 1, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4416);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB3;

LAB7:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t18 = *((unsigned char *)t3);
    t19 = (t18 != (unsigned char)3);
    t10 = t19;
    goto LAB9;

LAB10:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 8270);
    t6 = (t0 + 4352);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 23U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 8293);
    t3 = (t0 + 4416);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 2U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB3;

LAB12:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t18 = *((unsigned char *)t3);
    t19 = (t18 == (unsigned char)3);
    t10 = t19;
    goto LAB14;

LAB15:    xsi_size_not_matching(24U, t9, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(24U, t9, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t8 = (23 - 23);
    t9 = (t8 * -1);
    t20 = (1U * t9);
    t21 = (0 + t20);
    t1 = (t3 + t21);
    t17 = *((unsigned char *)t1);
    t18 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t17);
    t19 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, (unsigned char)3, t18);
    t4 = (t0 + 4416);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t19;
    xsi_driver_first_trans_delta(t4, 1U, 1, 0LL);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 4416);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    goto LAB20;

}


extern void work_a_2087492792_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2087492792_3212880686_p_0};
	xsi_register_didat("work_a_2087492792_3212880686", "isim/Prueba_ensamblados_isim_beh.exe.sim/work/a_2087492792_3212880686.didat");
	xsi_register_executes(pe);
}
