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
static const char *ng0 = "C:/Users/ANDRES/Documents/UBA/Ibimestre/circuitoslogicosprogramables/ProyFinal/programa/Proyecto_ALU_v1/Pressenta_resultados.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_3063216839_3212880686_p_0(char *t0)
{
    char t19[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 != (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 6571);
    t6 = (t0 + 3552);
    t13 = (t6 + 56U);
    t14 = *((char **)t13);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t1, 31U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(67, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t13 = (t6 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t6 = *((char **)t1);
    t7 = (6 - 6);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t6 + t10);
    t11 = *((unsigned char *)t1);
    t12 = (t11 != (unsigned char)2);
    if (t12 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6405);
    t5 = 1;
    if (7U == 7U)
        goto LAB21;

LAB22:    t5 = 0;

LAB23:    if (t5 == 1)
        goto LAB18;

LAB19:    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t17 = (t0 + 6412);
    t11 = 1;
    if (7U == 7U)
        goto LAB27;

LAB28:    t11 = 0;

LAB29:    t4 = t11;

LAB20:    if (t4 == 1)
        goto LAB15;

LAB16:    t25 = (t0 + 1352U);
    t26 = *((char **)t25);
    t25 = (t0 + 6419);
    t12 = 1;
    if (7U == 7U)
        goto LAB33;

LAB34:    t12 = 0;

LAB35:    t3 = t12;

LAB17:    if (t3 != 0)
        goto LAB13;

LAB14:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 6457);
    t5 = 1;
    if (7U == 7U)
        goto LAB47;

LAB48:    t5 = 0;

LAB49:    if (t5 == 1)
        goto LAB44;

LAB45:    t17 = (t0 + 1352U);
    t18 = *((char **)t17);
    t17 = (t0 + 6464);
    t11 = 1;
    if (7U == 7U)
        goto LAB53;

LAB54:    t11 = 0;

LAB55:    t4 = t11;

LAB46:    if (t4 == 1)
        goto LAB41;

LAB42:    t25 = (t0 + 1352U);
    t26 = *((char **)t25);
    t25 = (t0 + 6471);
    t12 = 1;
    if (7U == 7U)
        goto LAB59;

LAB60:    t12 = 0;

LAB61:    t3 = t12;

LAB43:    if (t3 != 0)
        goto LAB39;

LAB40:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t7 = (0 - 6);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = *((unsigned char *)t1);
    t6 = (t0 + 1352U);
    t13 = *((char **)t6);
    t37 = (1 - 6);
    t23 = (t37 * -1);
    t38 = (1U * t23);
    t39 = (0 + t38);
    t6 = (t13 + t39);
    t4 = *((unsigned char *)t6);
    t5 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t4);
    t14 = (t0 + 1352U);
    t17 = *((char **)t14);
    t40 = (3 - 6);
    t41 = (t40 * -1);
    t42 = (1U * t41);
    t43 = (0 + t42);
    t14 = (t17 + t43);
    t11 = *((unsigned char *)t14);
    t18 = (t0 + 1352U);
    t20 = *((char **)t18);
    t44 = (4 - 6);
    t45 = (t44 * -1);
    t46 = (1U * t45);
    t47 = (0 + t46);
    t18 = (t20 + t47);
    t12 = *((unsigned char *)t18);
    t15 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t11, t12);
    t16 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t5, t15);
    t24 = (t16 == (unsigned char)3);
    if (t24 != 0)
        goto LAB65;

LAB66:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 6540);
    t6 = (t0 + 3552);
    t13 = (t6 + 56U);
    t14 = *((char **)t13);
    t17 = (t14 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t1, 31U);
    xsi_driver_first_trans_fast_port(t6);

LAB6:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3616);
    t2 = (t1 + 56U);
    t6 = *((char **)t2);
    t13 = (t6 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t13 = (t0 + 1672U);
    t17 = *((char **)t13);
    t13 = (t0 + 1512U);
    t18 = *((char **)t13);
    t20 = ((IEEE_P_2592010699) + 4024);
    t21 = (t0 + 6324U);
    t22 = (t0 + 6308U);
    t13 = xsi_base_array_concat(t13, t19, t20, (char)97, t17, t21, (char)97, t18, t22, (char)101);
    t23 = (8U + 23U);
    t24 = (31U != t23);
    if (t24 == 1)
        goto LAB11;

LAB12:    t25 = (t0 + 3552);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t13, 31U);
    xsi_driver_first_trans_fast_port(t25);
    goto LAB6;

LAB8:    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t15 = *((unsigned char *)t14);
    t16 = (t15 != (unsigned char)3);
    t5 = t16;
    goto LAB10;

LAB11:    xsi_size_not_matching(31U, t23, 0);
    goto LAB12;

LAB13:    xsi_set_current_line(53, ng0);
    t30 = (t0 + 6426);
    t32 = (t0 + 3552);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t30, 31U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB6;

LAB15:    t3 = (unsigned char)1;
    goto LAB17;

LAB18:    t4 = (unsigned char)1;
    goto LAB20;

LAB21:    t8 = 0;

LAB24:    if (t8 < 7U)
        goto LAB25;
    else
        goto LAB23;

LAB25:    t13 = (t2 + t8);
    t14 = (t1 + t8);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB22;

LAB26:    t8 = (t8 + 1);
    goto LAB24;

LAB27:    t9 = 0;

LAB30:    if (t9 < 7U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t21 = (t18 + t9);
    t22 = (t17 + t9);
    if (*((unsigned char *)t21) != *((unsigned char *)t22))
        goto LAB28;

LAB32:    t9 = (t9 + 1);
    goto LAB30;

LAB33:    t10 = 0;

LAB36:    if (t10 < 7U)
        goto LAB37;
    else
        goto LAB35;

LAB37:    t28 = (t26 + t10);
    t29 = (t25 + t10);
    if (*((unsigned char *)t28) != *((unsigned char *)t29))
        goto LAB34;

LAB38:    t10 = (t10 + 1);
    goto LAB36;

LAB39:    xsi_set_current_line(55, ng0);
    t30 = (t0 + 6478);
    t32 = (t0 + 3552);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t30, 31U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB6;

LAB41:    t3 = (unsigned char)1;
    goto LAB43;

LAB44:    t4 = (unsigned char)1;
    goto LAB46;

LAB47:    t8 = 0;

LAB50:    if (t8 < 7U)
        goto LAB51;
    else
        goto LAB49;

LAB51:    t13 = (t2 + t8);
    t14 = (t1 + t8);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB48;

LAB52:    t8 = (t8 + 1);
    goto LAB50;

LAB53:    t9 = 0;

LAB56:    if (t9 < 7U)
        goto LAB57;
    else
        goto LAB55;

LAB57:    t21 = (t18 + t9);
    t22 = (t17 + t9);
    if (*((unsigned char *)t21) != *((unsigned char *)t22))
        goto LAB54;

LAB58:    t9 = (t9 + 1);
    goto LAB56;

LAB59:    t10 = 0;

LAB62:    if (t10 < 7U)
        goto LAB63;
    else
        goto LAB61;

LAB63:    t28 = (t26 + t10);
    t29 = (t25 + t10);
    if (*((unsigned char *)t28) != *((unsigned char *)t29))
        goto LAB60;

LAB64:    t10 = (t10 + 1);
    goto LAB62;

LAB65:    xsi_set_current_line(57, ng0);
    t21 = (t0 + 6509);
    t25 = (t0 + 3552);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t21, 31U);
    xsi_driver_first_trans_fast_port(t25);
    goto LAB6;

}


extern void work_a_3063216839_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3063216839_3212880686_p_0};
	xsi_register_didat("work_a_3063216839_3212880686", "isim/Prueba_ALU_isim_beh.exe.sim/work/a_3063216839_3212880686.didat");
	xsi_register_executes(pe);
}
