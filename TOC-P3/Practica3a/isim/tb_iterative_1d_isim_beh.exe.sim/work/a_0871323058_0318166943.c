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
static const char *ng0 = "C:/Workspace VHDL limpio/Practica3a/tb_iterative_1d.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_2271993008_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );


static void work_a_0871323058_0318166943_p_0(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    int t6;
    char *t7;
    int t8;
    int t9;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int64 t20;
    unsigned char t21;
    unsigned char t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;
    unsigned char t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    unsigned char t35;
    int t36;
    int t37;

LAB0:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = xsi_vhdl_pow(2, t4);
    t6 = (t5 - 1);
    t2 = (t0 + 5796);
    *((int *)t2) = 0;
    t7 = (t0 + 5800);
    *((int *)t7) = t6;
    t8 = 0;
    t9 = t6;

LAB4:    if (t8 <= t9)
        goto LAB5;

LAB7:    xsi_set_current_line(92, ng0);

LAB31:    *((char **)t1) = &&LAB32;

LAB1:    return;
LAB5:    xsi_set_current_line(76, ng0);
    t11 = (t0 + 5796);
    t12 = (t0 + 1648U);
    t13 = *((char **)t12);
    t14 = *((int *)t13);
    t12 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t10, *((int *)t11), t14);
    t15 = (t0 + 3496);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t12, 16U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(77, ng0);
    t20 = (1 * 1000LL);
    t2 = (t0 + 2920);
    xsi_process_wait(t2, t20);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 5796);
    t8 = *((int *)t2);
    t3 = (t0 + 5800);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB7;

LAB28:    t4 = (t8 + 1);
    t8 = t4;
    t7 = (t0 + 5796);
    *((int *)t7) = t8;
    goto LAB4;

LAB8:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t3 + 0);
    *((int *)t2) = 2;
    xsi_set_current_line(80, ng0);

LAB12:    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = (t0 + 1648U);
    t7 = *((char **)t2);
    t5 = *((int *)t7);
    t21 = (t4 < t5);
    if (t21 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t2 = (t0 + 3560);
    t7 = (t2 + 56U);
    t11 = *((char **)t7);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((int *)t13) = t4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 5728U);
    t4 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t3, t2);
    t7 = (t0 + 2128U);
    t11 = *((char **)t7);
    t5 = *((int *)t11);
    t21 = (t4 == t5);
    if (t21 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(90, ng0);
    t20 = (99 * 1000LL);
    t2 = (t0 + 2920);
    xsi_process_wait(t2, t20);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1032U);
    t11 = *((char **)t2);
    t2 = (t0 + 2008U);
    t12 = *((char **)t2);
    t6 = *((int *)t12);
    t14 = (t6 - 15);
    t23 = (t14 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t6);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t2 = (t11 + t25);
    t26 = *((unsigned char *)t2);
    t27 = (t26 == (unsigned char)3);
    if (t27 == 1)
        goto LAB19;

LAB20:    t22 = (unsigned char)0;

LAB21:    if (t22 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 1);
    t2 = (t0 + 2008U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t5;

LAB17:    goto LAB12;

LAB14:;
LAB16:    xsi_set_current_line(82, ng0);
    t17 = (t0 + 2128U);
    t18 = *((char **)t17);
    t36 = *((int *)t18);
    t37 = (t36 + 1);
    t17 = (t0 + 2128U);
    t19 = *((char **)t17);
    t17 = (t19 + 0);
    *((int *)t17) = t37;
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 + 3);
    t2 = (t0 + 2008U);
    t7 = *((char **)t2);
    t2 = (t7 + 0);
    *((int *)t2) = t5;
    goto LAB17;

LAB19:    t13 = (t0 + 1032U);
    t15 = *((char **)t13);
    t13 = (t0 + 2008U);
    t16 = *((char **)t13);
    t28 = *((int *)t16);
    t29 = (t28 - 2);
    t30 = (t29 - 15);
    t31 = (t30 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t29);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t13 = (t15 + t33);
    t34 = *((unsigned char *)t13);
    t35 = (t34 == (unsigned char)3);
    t22 = t35;
    goto LAB21;

LAB22:    t7 = (t0 + 5804);
    xsi_report(t7, 5U, (unsigned char)2);
    goto LAB23;

LAB24:    goto LAB6;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB29:    goto LAB2;

LAB30:    goto LAB29;

LAB32:    goto LAB30;

}


extern void work_a_0871323058_0318166943_init()
{
	static char *pe[] = {(void *)work_a_0871323058_0318166943_p_0};
	xsi_register_didat("work_a_0871323058_0318166943", "isim/tb_iterative_1d_isim_beh.exe.sim/work/a_0871323058_0318166943.didat");
	xsi_register_executes(pe);
}
