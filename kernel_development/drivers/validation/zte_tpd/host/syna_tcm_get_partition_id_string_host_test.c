#include <limits.h>
#include <stdio.h>
#include <string.h>

enum flash_area {
    FLASH_AREA_PLACEHOLDER = 0,
};

#include "../../../reconstructed/zte_tpd/syna_tcm_get_partition_id_string.c"

static int failures;

static void expect_name(int partition_id, const char *expected)
{
    char *actual = syna_tcm_get_partition_id_string((enum flash_area)partition_id);

    if (strcmp(actual, expected) != 0) {
        fprintf(stderr, "partition %d: got '%s' expected '%s'\n",
                partition_id, actual, expected);
        failures++;
    }
}

int main(void)
{
    static const char *const expected_names[] = {
        "APP_CODE", "APP_CODE_COPRO", "APP_CONFIG", "DISPLAY", "BOOT_CODE",
        "BOOT_CONFIG", "APP_PROD_TEST", "F35_APP_CODE", "FORCE", "GAMMA",
        "TEMPERATURE_GAMM", "LCM", "LOOKUP", "OEM", "OPEN_SHORT", "OTP",
        "PPDT", "ROMBOOT_APP_CODE", "TOOL_BOOT_CONFIG", "JSON_CONFIG_AREA",
        "CUSTOM_CS_AREA", "CUSTOM_LOCKDOWN_AREA", "CUSTOM_MTP_AREA",
    };
    unsigned int index;

    for (index = 0; index < sizeof(expected_names) / sizeof(expected_names[0]); index++)
        expect_name((int)index + 1, expected_names[index]);

    expect_name(0, " ");
    expect_name(-1, " ");
    expect_name(24, " ");
    expect_name(INT_MIN, " ");
    expect_name(INT_MAX, " ");

    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_get_partition_id_string host tests (28 cases)");
    return 0;
}
