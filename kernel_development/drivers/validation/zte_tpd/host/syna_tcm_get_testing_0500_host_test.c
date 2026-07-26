#include <stdint.h>
#include <stdio.h>

struct testing_item {
    uint32_t marker;
};

struct testing_item test_0500;

#include "../../../reconstructed/zte_tpd/syna_tcm_get_testing_0500.c"

static int failures;

static void test_testing_item(const char *name, uint32_t marker)
{
    struct testing_item *item;

    test_0500.marker = marker;
    item = syna_tcm_get_testing_0500();
    if (item != &test_0500) {
        fprintf(stderr, "%s: wrong testing item address\n", name);
        failures++;
        return;
    }
    if (item->marker != marker) {
        fprintf(stderr, "%s: got %u expected %u\n", name, item->marker, marker);
        failures++;
    }
}

int main(void)
{
    test_testing_item("zero", 0);
    test_testing_item("five", 5);
    test_testing_item("maximum", UINT32_MAX);
    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_get_testing_0500 host tests (3 cases)");
    return 0;
}
