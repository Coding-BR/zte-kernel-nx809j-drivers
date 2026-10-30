#include <stdio.h>

unsigned int dword_30F04;
unsigned int dword_30F8C;
unsigned int dword_31014;
unsigned int dword_3109C;
unsigned int dword_31124;
unsigned int dword_311AC;
unsigned int dword_31234;
unsigned int dword_312BC;
unsigned int dword_31344;
unsigned int dword_313CC;

#include "../../../reconstructed/zte_tpd/ghost_check_reset.c"

static int all_zero(void)
{
    return dword_30F04 == 0 && dword_30F8C == 0 &&
           dword_31014 == 0 && dword_3109C == 0 &&
           dword_31124 == 0 && dword_311AC == 0 &&
           dword_31234 == 0 && dword_312BC == 0 &&
           dword_31344 == 0 && dword_313CC == 0;
}

static void seed(unsigned int value)
{
    dword_30F04 = value + 0;
    dword_30F8C = value + 1;
    dword_31014 = value + 2;
    dword_3109C = value + 3;
    dword_31124 = value + 4;
    dword_311AC = value + 5;
    dword_31234 = value + 6;
    dword_312BC = value + 7;
    dword_31344 = value + 8;
    dword_313CC = value + 9;
}

int main(void)
{
    seed(0x1000);
    ghost_check_reset();
    if (!all_zero())
        return 1;
    seed(0xdead0000U);
    ghost_check_reset();
    if (!all_zero())
        return 2;
    puts("PASS ghost_check_reset host tests (2 cases)");
    return 0;
}
