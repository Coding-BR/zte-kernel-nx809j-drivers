#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct work_struct {
	unsigned long marker;
};

struct ufp_tp_ops_struct {
	uint8_t reserved_0000[0x08];
	int single_tap_pending;
	uint8_t reserved_000c[0x9c];
};

static struct ufp_tp_ops_struct ufp_tp_ops;

_Static_assert(offsetof(struct ufp_tp_ops_struct, single_tap_pending) == 0x08,
		       "single_tap_pending must remain at the recovered stock offset");
_Static_assert(sizeof(struct ufp_tp_ops_struct) == 0xa8,
		       "ufp_tp_ops layout must retain its recovered size");

#include "../../../reconstructed/zte_tpd/ufp_single_tap_work.c"

static int run_case(const char *name, int initial_value)
{
	struct work_struct work = { .marker = 0xa5a5a5a5UL };
	struct ufp_tp_ops_struct before;

	memset(&ufp_tp_ops, 0x5a, sizeof(ufp_tp_ops));
	ufp_tp_ops.single_tap_pending = initial_value;
	memcpy(&before, &ufp_tp_ops, sizeof(before));
	ufp_single_tap_work(&work);

	if (ufp_tp_ops.single_tap_pending != 0) {
		fprintf(stderr, "%s: pending flag was not cleared\n", name);
		return 1;
	}
	if (memcmp(ufp_tp_ops.reserved_0000, before.reserved_0000,
		   sizeof(ufp_tp_ops.reserved_0000)) != 0 ||
	    memcmp(ufp_tp_ops.reserved_000c, before.reserved_000c,
		   sizeof(ufp_tp_ops.reserved_000c)) != 0) {
		fprintf(stderr, "%s: callback changed bytes outside the recovered field\n", name);
		return 1;
	}
	return 0;
}

int main(void)
{
	if (run_case("pending", 1) || run_case("clear", 0) ||
	    run_case("negative", -1) || run_case("int-max", INT32_MAX))
		return 1;
	puts("PASS ufp_single_tap_work host tests (4 cases)");
	return 0;
}
