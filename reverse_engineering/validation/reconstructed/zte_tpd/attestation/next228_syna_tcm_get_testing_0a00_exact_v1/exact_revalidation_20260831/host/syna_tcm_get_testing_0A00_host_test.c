#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

struct testing_item {
	unsigned long sentinel;
};

struct testing_item test_0A00;

#include "../../../reconstructed/zte_tpd/syna_tcm_get_testing_0A00.c"

static void expect(bool condition, const char *message)
{
	if (condition)
		return;
	fprintf(stderr, "FAIL syna_tcm_get_testing_0A00: %s\n", message);
	exit(1);
}

int main(void)
{
	struct testing_item *item;

	test_0A00.sentinel = 0xa00UL;
	item = syna_tcm_get_testing_0A00();
	expect(item == &test_0A00, "returned object identity differs");
	expect(item->sentinel == 0xa00UL, "returned object does not alias test_0A00");
	puts("PASS syna_tcm_get_testing_0A00 host tests (1 case)");
	return 0;
}
