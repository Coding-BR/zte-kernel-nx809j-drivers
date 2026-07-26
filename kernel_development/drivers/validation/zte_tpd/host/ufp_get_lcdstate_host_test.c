#include <limits.h>
#include <stdio.h>

int current_lcd_state;

#include "../../../reconstructed/zte_tpd/ufp_get_lcdstate.c"

static int failures;

static void test_lcd_state(const char *name, int expected)
{
	int actual;

	current_lcd_state = expected;
	actual = ufp_get_lcdstate();
	if (actual != expected) {
		fprintf(stderr, "%s: got %d expected %d\n", name, actual, expected);
		failures++;
	}
}

int main(void)
{
	test_lcd_state("zero", 0);
	test_lcd_state("display on", 1);
	test_lcd_state("low power", 2);
	test_lcd_state("negative", -1);
	test_lcd_state("minimum", INT_MIN);
	test_lcd_state("maximum", INT_MAX);
	if (failures != 0)
		return 1;
	puts("PASS ufp_get_lcdstate host tests (6 cases)");
	return 0;
}
