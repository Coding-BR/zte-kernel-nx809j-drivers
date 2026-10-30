#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "../../../reconstructed/zte_tpd/get_lcd_panel_name.c"

static void expect(bool condition, const char *message)
{
	if (condition)
		return;
	fprintf(stderr, "FAIL get_lcd_panel_name: %s\n", message);
	exit(1);
}

int main(void)
{
	const char *first = get_lcd_panel_name();
	const char *second = get_lcd_panel_name();

	expect(first != NULL, "returned NULL");
	expect(first == second, "returned address is not static");
	expect(strcmp(first, "Unknown_lcd") == 0, "stock literal mismatch");
	puts("PASS get_lcd_panel_name host tests (1 case)");
	return 0;
}
