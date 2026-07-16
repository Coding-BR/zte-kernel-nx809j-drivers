#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define NUBIA_VERSION_LEN 12

typedef uint8_t u8;
typedef uint32_t u32;
typedef long ssize_t;

struct nubia_pcb_gpio_map {
	u32 gpio1;
	u32 gpio2;
	u32 hw_id;
	char pcb_version[NUBIA_VERSION_LEN];
};

struct nubia_rf_band_gpio_map {
	u32 gpio1;
	u32 gpio2;
	char rf_band[NUBIA_VERSION_LEN];
};

static u8 nubia_pcb_gpio1_v;
static u8 nubia_pcb_gpio2_v;
static u8 nubia_pcb_gpio3_v;
static u8 nubia_rf_gpio1_v;
static u8 nubia_rf_gpio2_v;
static int debug_value;

static const struct nubia_pcb_gpio_map hw_pcb_gpio_map[] = {
	{ 0, 0, 0, "MB_A" }, { 0, 2, 1, "MB_B" },
	{ 2, 0, 2, "MB_C" }, { 2, 2, 3, "MB_D" },
	{ 2, 1, 4, "MB_E" }, { 1, 2, 5, "MB_E1" },
	{ 1, 0, 6, "MB_F" }, { 0, 1, 7, "MB_F1" },
	{ 1, 1, 8, "MB_G" }, { 3, 3, 9, "UNKNOW" },
};

static struct nubia_rf_band_gpio_map hw_rf_band_gpio_map[] = {
	{ 0, 0, "COMMON" }, { 0, 2, "CHINA" }, { 2, 0, "JAPAN" },
	{ 2, 2, "SAUDI" }, { 0, 1, "***" }, { 2, 1, "***" },
	{ 1, 0, "***" },
};

static const char charge_version[][4] = { "V2A", "V1A", "V1B" };
static const int hml_config_version[] = { 0, 2, 1 };
static const unsigned long rf_band_gpio1_zero[] = { 0, 1, 2 };
static const unsigned long rf_band_gpio1_two[] = { 3, 4, 5 };

static struct nubia_pcb_gpio_map *
nubia_get_pcb_table_item_by_gpio(struct nubia_pcb_gpio_map *table,
				 unsigned int count)
{
	unsigned int i;

	if (!table || !count)
		return NULL;
	for (i = 0; i < count; i++) {
		if (table[i].gpio1 == nubia_pcb_gpio1_v &&
		    table[i].gpio2 == nubia_pcb_gpio2_v)
			return &table[i];
	}
	return NULL;
}

static int nubia_get_hw_id(void)
{
	struct nubia_pcb_gpio_map *item;

	item = nubia_get_pcb_table_item_by_gpio(
		(struct nubia_pcb_gpio_map *)hw_pcb_gpio_map,
		ARRAY_SIZE(hw_pcb_gpio_map));
	return item ? (int)item->hw_id : 9;
}

static void nubia_get_hw_pcb_version(char *result)
{
	struct nubia_pcb_gpio_map *item;

	item = nubia_get_pcb_table_item_by_gpio(
		(struct nubia_pcb_gpio_map *)hw_pcb_gpio_map,
		ARRAY_SIZE(hw_pcb_gpio_map));
	if (!result)
		return;
	if (item)
		strcpy(result, item->pcb_version);
	else
		memcpy(result, "unknow", sizeof("unknow"));
}

static int charger_100W(void)
{
	return nubia_pcb_gpio3_v == 0;
}

static int charger_80W(void)
{
	return nubia_pcb_gpio3_v == 2;
}

static char *nubia_get_rf_band_by_gpio(struct nubia_rf_band_gpio_map *table,
				       unsigned int count)
{
	unsigned int i;

	if (!table || !count)
		return "unknow";
	for (i = 0; i < count; i++) {
		if (table[i].gpio1 == nubia_rf_gpio1_v &&
		    table[i].gpio2 == nubia_rf_gpio2_v)
			return table[i].rf_band;
	}
	return "unknow";
}

static const char *nubia_hw_rf_band_value(void)
{
	const char *band;
	u8 gpio1 = nubia_rf_gpio1_v;
	long gpio2 = (int8_t)nubia_rf_gpio2_v;
	long index;

	if (gpio1 == 2)
		goto gpio1_two;
	if (gpio1 == 1)
		goto gpio1_one;
	if (gpio1 != 0 ||
	    (unsigned long)gpio2 >= ARRAY_SIZE(rf_band_gpio1_zero))
		return "unknow";
	index = (long)rf_band_gpio1_zero[gpio2];
	goto selected;

gpio1_one:
	if (gpio2 != 0)
		return "unknow";
	index = 6;
	goto selected;

gpio1_two:
	if ((unsigned long)gpio2 >= ARRAY_SIZE(rf_band_gpio1_two))
		return "unknow";
	index = (long)rf_band_gpio1_two[gpio2];

selected:
	band = (const char *)hw_rf_band_gpio_map +
		index * (long)sizeof(hw_rf_band_gpio_map[0]) +
		offsetof(struct nubia_rf_band_gpio_map, rf_band);
	return band;
}

static ssize_t debug_value_show(char *buf)
{
	return snprintf(buf, 5, "%d", debug_value);
}

static ssize_t debug_value_store(const char *buf, size_t count)
{
	sscanf(buf, "%d", &debug_value);
	return (ssize_t)count;
}

static const char *charge_version_value(void)
{
	return nubia_pcb_gpio3_v < ARRAY_SIZE(charge_version)
		? charge_version[nubia_pcb_gpio3_v] : NULL;
}

static int hml_config_version_value(void)
{
	return nubia_pcb_gpio3_v < ARRAY_SIZE(hml_config_version)
		? hml_config_version[nubia_pcb_gpio3_v] : -1;
}

#define REQUIRE(condition) do {                                         \
	if (!(condition)) {                                                \
		fprintf(stderr, "assertion failed at %s:%d: %s\n",          \
			__FILE__, __LINE__, #condition);                        \
		return false;                                                \
	}                                                                  \
} while (0)

static void reset_state(void)
{
	nubia_pcb_gpio1_v = 0;
	nubia_pcb_gpio2_v = 0;
	nubia_pcb_gpio3_v = 0;
	nubia_rf_gpio1_v = 0;
	nubia_rf_gpio2_v = 0;
	debug_value = 0;
}

static bool test_pcb_null_table(void)
{
	reset_state();
	REQUIRE(nubia_get_pcb_table_item_by_gpio(NULL, 10) == NULL);
	return true;
}

static bool test_pcb_zero_count(void)
{
	reset_state();
	REQUIRE(nubia_get_pcb_table_item_by_gpio(
		(struct nubia_pcb_gpio_map *)hw_pcb_gpio_map, 0) == NULL);
	return true;
}

static bool test_pcb_lookup_all(void)
{
	size_t i;

	reset_state();
	for (i = 0; i < ARRAY_SIZE(hw_pcb_gpio_map); i++) {
		nubia_pcb_gpio1_v = (u8)hw_pcb_gpio_map[i].gpio1;
		nubia_pcb_gpio2_v = (u8)hw_pcb_gpio_map[i].gpio2;
		REQUIRE(nubia_get_pcb_table_item_by_gpio(
			(struct nubia_pcb_gpio_map *)hw_pcb_gpio_map,
			ARRAY_SIZE(hw_pcb_gpio_map)) == &hw_pcb_gpio_map[i]);
	}
	return true;
}

static bool test_pcb_missing(void)
{
	reset_state();
	nubia_pcb_gpio1_v = 4;
	REQUIRE(nubia_get_pcb_table_item_by_gpio(
		(struct nubia_pcb_gpio_map *)hw_pcb_gpio_map,
		ARRAY_SIZE(hw_pcb_gpio_map)) == NULL);
	return true;
}

static bool test_hw_id_match(void)
{
	reset_state();
	nubia_pcb_gpio1_v = 1;
	nubia_pcb_gpio2_v = 2;
	REQUIRE(nubia_get_hw_id() == 5);
	return true;
}

static bool test_hw_id_unknown(void)
{
	reset_state();
	nubia_pcb_gpio1_v = 4;
	REQUIRE(nubia_get_hw_id() == 9);
	return true;
}

static bool test_pcb_version_match(void)
{
	char result[NUBIA_VERSION_LEN] = { 0 };

	reset_state();
	nubia_pcb_gpio1_v = 0;
	nubia_pcb_gpio2_v = 1;
	nubia_get_hw_pcb_version(result);
	REQUIRE(strcmp(result, "MB_F1") == 0);
	return true;
}

static bool test_pcb_version_unknown(void)
{
	char result[NUBIA_VERSION_LEN] = { 0 };

	reset_state();
	nubia_pcb_gpio1_v = 4;
	nubia_get_hw_pcb_version(result);
	REQUIRE(strcmp(result, "unknow") == 0);
	return true;
}

static bool test_pcb_version_null(void)
{
	reset_state();
	nubia_get_hw_pcb_version(NULL);
	return true;
}

static bool test_charger_100w_true(void)
{
	reset_state();
	REQUIRE(charger_100W() == 1);
	return true;
}

static bool test_charger_100w_false(void)
{
	reset_state();
	nubia_pcb_gpio3_v = 2;
	REQUIRE(charger_100W() == 0);
	return true;
}

static bool test_charger_80w_true(void)
{
	reset_state();
	nubia_pcb_gpio3_v = 2;
	REQUIRE(charger_80W() == 1);
	return true;
}

static bool test_charger_80w_false(void)
{
	reset_state();
	REQUIRE(charger_80W() == 0);
	return true;
}

static bool test_rf_null_table(void)
{
	reset_state();
	REQUIRE(strcmp(nubia_get_rf_band_by_gpio(NULL, 7), "unknow") == 0);
	return true;
}

static bool test_rf_zero_count(void)
{
	reset_state();
	REQUIRE(strcmp(nubia_get_rf_band_by_gpio(hw_rf_band_gpio_map, 0),
		       "unknow") == 0);
	return true;
}

static bool test_rf_lookup_all(void)
{
	size_t i;

	reset_state();
	for (i = 0; i < ARRAY_SIZE(hw_rf_band_gpio_map); i++) {
		nubia_rf_gpio1_v = (u8)hw_rf_band_gpio_map[i].gpio1;
		nubia_rf_gpio2_v = (u8)hw_rf_band_gpio_map[i].gpio2;
		REQUIRE(nubia_get_rf_band_by_gpio(hw_rf_band_gpio_map,
			ARRAY_SIZE(hw_rf_band_gpio_map)) ==
			hw_rf_band_gpio_map[i].rf_band);
	}
	return true;
}

static bool test_rf_missing(void)
{
	reset_state();
	nubia_rf_gpio1_v = 4;
	REQUIRE(strcmp(nubia_get_rf_band_by_gpio(hw_rf_band_gpio_map,
		ARRAY_SIZE(hw_rf_band_gpio_map)), "unknow") == 0);
	return true;
}

static bool test_rf_show_zero_map(void)
{
	static const char *const expected[] = { "COMMON", "CHINA", "JAPAN" };
	size_t i;

	reset_state();
	for (i = 0; i < ARRAY_SIZE(expected); i++) {
		nubia_rf_gpio2_v = (u8)i;
		REQUIRE(strcmp(nubia_hw_rf_band_value(), expected[i]) == 0);
	}
	return true;
}

static bool test_rf_show_two_map(void)
{
	static const char *const expected[] = { "SAUDI", "***", "***" };
	size_t i;

	reset_state();
	nubia_rf_gpio1_v = 2;
	for (i = 0; i < ARRAY_SIZE(expected); i++) {
		nubia_rf_gpio2_v = (u8)i;
		REQUIRE(strcmp(nubia_hw_rf_band_value(), expected[i]) == 0);
	}
	return true;
}

static bool test_rf_show_one_map(void)
{
	reset_state();
	nubia_rf_gpio1_v = 1;
	REQUIRE(strcmp(nubia_hw_rf_band_value(), "***") == 0);
	return true;
}

static bool test_rf_show_invalid(void)
{
	reset_state();
	nubia_rf_gpio1_v = 1;
	nubia_rf_gpio2_v = 1;
	REQUIRE(strcmp(nubia_hw_rf_band_value(), "unknow") == 0);
	nubia_rf_gpio1_v = 3;
	REQUIRE(strcmp(nubia_hw_rf_band_value(), "unknow") == 0);
	return true;
}

static bool test_debug_store_show(void)
{
	char buffer[8] = { 0 };

	reset_state();
	REQUIRE(debug_value_store("17", 2) == 2);
	REQUIRE(debug_value_show(buffer) == 2);
	REQUIRE(strcmp(buffer, "17") == 0);
	return true;
}

static bool test_charge_versions(void)
{
	static const char *const expected[] = { "V2A", "V1A", "V1B" };
	size_t i;

	reset_state();
	for (i = 0; i < ARRAY_SIZE(expected); i++) {
		nubia_pcb_gpio3_v = (u8)i;
		REQUIRE(strcmp(charge_version_value(), expected[i]) == 0);
	}
	return true;
}

static bool test_charge_version_invalid(void)
{
	reset_state();
	nubia_pcb_gpio3_v = 3;
	REQUIRE(charge_version_value() == NULL);
	return true;
}

static bool test_hml_versions(void)
{
	static const int expected[] = { 0, 2, 1 };
	size_t i;

	reset_state();
	for (i = 0; i < ARRAY_SIZE(expected); i++) {
		nubia_pcb_gpio3_v = (u8)i;
		REQUIRE(hml_config_version_value() == expected[i]);
	}
	return true;
}

static bool test_hml_version_invalid(void)
{
	reset_state();
	nubia_pcb_gpio3_v = 3;
	REQUIRE(hml_config_version_value() == -1);
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "pcb_null_table", test_pcb_null_table },
		{ "pcb_zero_count", test_pcb_zero_count },
		{ "pcb_lookup_all", test_pcb_lookup_all },
		{ "pcb_missing", test_pcb_missing },
		{ "hw_id_match", test_hw_id_match },
		{ "hw_id_unknown", test_hw_id_unknown },
		{ "pcb_version_match", test_pcb_version_match },
		{ "pcb_version_unknown", test_pcb_version_unknown },
		{ "pcb_version_null", test_pcb_version_null },
		{ "charger_100w_true", test_charger_100w_true },
		{ "charger_100w_false", test_charger_100w_false },
		{ "charger_80w_true", test_charger_80w_true },
		{ "charger_80w_false", test_charger_80w_false },
		{ "rf_null_table", test_rf_null_table },
		{ "rf_zero_count", test_rf_zero_count },
		{ "rf_lookup_all", test_rf_lookup_all },
		{ "rf_missing", test_rf_missing },
		{ "rf_show_zero_map", test_rf_show_zero_map },
		{ "rf_show_two_map", test_rf_show_two_map },
		{ "rf_show_one_map", test_rf_show_one_map },
		{ "rf_show_invalid", test_rf_show_invalid },
		{ "debug_store_show", test_debug_store_show },
		{ "charge_versions", test_charge_versions },
		{ "charge_version_invalid", test_charge_version_invalid },
		{ "hml_versions", test_hml_versions },
		{ "hml_version_invalid", test_hml_version_invalid },
	};
	size_t i;

	for (i = 0; i < ARRAY_SIZE(tests); i++) {
		if (!tests[i].run()) {
			printf("FAIL %s\n", tests[i].name);
			return 1;
		}
		printf("PASS %s\n", tests[i].name);
	}
	printf("SUMMARY %zu/%zu\n", i, ARRAY_SIZE(tests));
	return 0;
}
