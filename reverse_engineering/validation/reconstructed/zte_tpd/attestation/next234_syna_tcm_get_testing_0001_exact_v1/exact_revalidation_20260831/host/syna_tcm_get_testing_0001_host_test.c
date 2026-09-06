#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

struct testing_item {
	unsigned long sentinel;
};

struct testing_item test_0001;

#include "../../../reconstructed/zte_tpd/syna_tcm_get_testing_0001.c"

static void expect(bool condition, const char *message)
{
	if (condition)
		return;
	fprintf(stderr, "FAIL syna_tcm_get_testing_0001: %s\n", message);
	exit(EXIT_FAILURE);
}

int main(void)
{
	struct testing_item *item;

	test_0001.sentinel = 0x10001UL;
	item = syna_tcm_get_testing_0001();
	expect(item == &test_0001, "returned object identity differs");
	expect(item->sentinel == 0x10001UL, "returned object does not alias test_0001");
	puts("PASS syna_tcm_get_testing_0001 host tests (1 case)");
	return EXIT_SUCCESS;
}
