#include <limits.h>
#include <stdio.h>

static int observed_state;
static unsigned int state_change_calls;
static int failures;

void change_tp_state(int state)
{
	state_change_calls++;
	observed_state = state;
}

#include "../../../reconstructed/zte_tpd/ufp_notifier_cb.c"

static void expect_int(const char *name, int actual, int expected)
{
	if (actual != expected) {
		fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
		failures++;
	}
}

static void test_state_mapping(int input, int expected_state)
{
	observed_state = -1;
	state_change_calls = 0;

	expect_int("notifier result", ufp_notifier_cb(input), 0);
	expect_int("change_tp_state calls", (int)state_change_calls, 1);
	expect_int("mapped state", observed_state, expected_state);
}

int main(void)
{
	test_state_mapping(0, 0);
	test_state_mapping(1, 1);
	test_state_mapping(-17, 1);
	test_state_mapping(INT_MAX, 1);
	if (failures != 0)
		return 1;
	puts("PASS ufp_notifier_cb host tests (4 cases)");
	return 0;
}
