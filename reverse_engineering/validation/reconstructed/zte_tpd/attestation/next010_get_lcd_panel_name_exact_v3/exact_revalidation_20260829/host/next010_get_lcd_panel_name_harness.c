#include <stdio.h>
#include <string.h>

#include "../../../curated/zte_tpd/get_lcd_panel_name.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return 1; \
	} \
} while (0)

int main(void)
{
	const char *first = get_lcd_panel_name();
	const char *second = get_lcd_panel_name();

	REQUIRE(first != NULL);
	REQUIRE(second == first);
	REQUIRE(strcmp(first, "Unknown_lcd") == 0);
	puts("PASS test_panel_name_value_and_identity");
	puts("PASS test_panel_name_repeatability");
	puts("SUMMARY total=2 passed=2 failed=0");
	return 0;
}
