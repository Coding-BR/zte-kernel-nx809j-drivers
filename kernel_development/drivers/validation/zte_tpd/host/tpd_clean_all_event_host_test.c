#include <stdint.h>
#include <stdio.h>

uint64_t unk_30EF8, unk_30F80, unk_31008, unk_31090, unk_31118;
uint64_t unk_311A0, unk_31228, unk_312B0, unk_31338, unk_313C0;
uint32_t dword_30EFF, dword_30F87, dword_3100F, dword_31097, dword_3111F;
uint32_t dword_311A7, dword_3122F, dword_312B7, dword_3133F, dword_313C7;
uint32_t dword_30F04, dword_30F8C, dword_31014, dword_3109C, dword_31124;
uint32_t dword_311AC, dword_31234, dword_312BC, dword_31344, dword_313CC;

#include "../../../reconstructed/zte_tpd/tpd_clean_all_event.c"

#define CHECK_ZERO(name) do { if ((name) != 0) return 0; } while (0)

static int all_zero(void)
{
    CHECK_ZERO(unk_30EF8); CHECK_ZERO(unk_30F80); CHECK_ZERO(unk_31008);
    CHECK_ZERO(unk_31090); CHECK_ZERO(unk_31118); CHECK_ZERO(unk_311A0);
    CHECK_ZERO(unk_31228); CHECK_ZERO(unk_312B0); CHECK_ZERO(unk_31338);
    CHECK_ZERO(unk_313C0); CHECK_ZERO(dword_30EFF); CHECK_ZERO(dword_30F87);
    CHECK_ZERO(dword_3100F); CHECK_ZERO(dword_31097); CHECK_ZERO(dword_3111F);
    CHECK_ZERO(dword_311A7); CHECK_ZERO(dword_3122F); CHECK_ZERO(dword_312B7);
    CHECK_ZERO(dword_3133F); CHECK_ZERO(dword_313C7); CHECK_ZERO(dword_30F04);
    CHECK_ZERO(dword_30F8C); CHECK_ZERO(dword_31014); CHECK_ZERO(dword_3109C);
    CHECK_ZERO(dword_31124); CHECK_ZERO(dword_311AC); CHECK_ZERO(dword_31234);
    CHECK_ZERO(dword_312BC); CHECK_ZERO(dword_31344); CHECK_ZERO(dword_313CC);
    return 1;
}

static void seed(uint32_t value)
{
    unk_30EF8 = value + 0; unk_30F80 = value + 1; unk_31008 = value + 2;
    unk_31090 = value + 3; unk_31118 = value + 4; unk_311A0 = value + 5;
    unk_31228 = value + 6; unk_312B0 = value + 7; unk_31338 = value + 8;
    unk_313C0 = value + 9; dword_30EFF = value + 10; dword_30F87 = value + 11;
    dword_3100F = value + 12; dword_31097 = value + 13; dword_3111F = value + 14;
    dword_311A7 = value + 15; dword_3122F = value + 16; dword_312B7 = value + 17;
    dword_3133F = value + 18; dword_313C7 = value + 19; dword_30F04 = value + 20;
    dword_30F8C = value + 21; dword_31014 = value + 22; dword_3109C = value + 23;
    dword_31124 = value + 24; dword_311AC = value + 25; dword_31234 = value + 26;
    dword_312BC = value + 27; dword_31344 = value + 28; dword_313CC = value + 29;
}

int main(void)
{
    seed(0x1000U); tpd_clean_all_event(); if (!all_zero()) return 1;
    seed(0xdead0000U); tpd_clean_all_event(); if (!all_zero()) return 2;
    puts("PASS tpd_clean_all_event host tests (2 cases)");
    return 0;
}
