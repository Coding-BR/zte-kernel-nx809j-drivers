#include <stdio.h>

struct testing_item {
    unsigned long marker;
};

struct testing_item test_0500 = {0x500};

#include "../../../reconstructed/zte_tpd/syna_tcm_get_testing_0500.c"

int main(void)
{
    struct testing_item *first = syna_tcm_get_testing_0500();
    struct testing_item *second = syna_tcm_get_testing_0500();

    if (first != &test_0500 || second != &test_0500 || first != second ||
        first->marker != 0x500)
        return 1;
    puts("PASS syna_tcm_get_testing_0500 host tests (2 cases)");
    return 0;
}
