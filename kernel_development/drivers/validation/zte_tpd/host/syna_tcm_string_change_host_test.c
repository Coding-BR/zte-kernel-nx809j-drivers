#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ZTE_TPD_HOST_TEST
#include "../../../reconstructed/zte_tpd/string_change.c"

static int failures;

static void expect_bytes(const char *label, long rotation, const char *input,
                         const unsigned char *expected, int expected_length)
{
    unsigned char context[0x610] = { 0 };
    char *mutable_input = malloc(strlen(input) + 1);
    int actual_length = -1;
    unsigned char *actual;

    if (!mutable_input) {
        fprintf(stderr, "FAIL: %s input allocation\n", label);
        failures++;
        return;
    }
    memcpy(mutable_input, input, strlen(input) + 1);
    memcpy(context + 0x608, &rotation, sizeof(rotation));
    actual = string_change((long)context, mutable_input, &actual_length);

    if (!actual || actual_length != expected_length ||
        memcmp(actual, expected, (size_t)expected_length) != 0) {
        fprintf(stderr, "FAIL: %s length=%d expected=%d\n", label,
                actual_length, expected_length);
        if (actual) {
            int index;

            fprintf(stderr, "  actual:");
            for (index = 0; index < actual_length; index++)
                fprintf(stderr, " %u", actual[index]);
            fprintf(stderr, "\n");
        }
        fprintf(stderr, "  expected:");
        for (int index = 0; index < expected_length; index++)
            fprintf(stderr, " %u", expected[index]);
        fprintf(stderr, "\n");
        failures++;
    }
    free(actual);
    free(mutable_input);
}

static void expect_empty_and_invalid(void)
{
    unsigned char context[0x610] = { 0 };
    int length = -1;
    unsigned char *result;
    char empty[] = "";

    result = string_change((long)context, NULL, &length);
    if (!result || length != 0 || result[0] != 0) {
        fprintf(stderr, "FAIL: null input\n");
        failures++;
    }
    free(result);

    result = string_change((long)context, empty, &length);
    if (!result || length != 0 || result[0] != 0) {
        fprintf(stderr, "FAIL: empty input\n");
        failures++;
    }
    free(result);
}

static void expect_allocation_failures(void)
{
    unsigned char context[0x610] = { 0 };
    char input[] = "01,0a";
    int length = -1;
    unsigned char *result;

    zte_tpd_host_alloc_fail_after = 0;
    result = string_change((long)context, NULL, &length);
    if (result || length != 0) {
        fprintf(stderr, "FAIL: empty allocation failure\n");
        failures++;
        free(result);
    }

    zte_tpd_host_alloc_fail_after = 1;
    result = string_change((long)context, input, &length);
    if (result || length != 0) {
        fprintf(stderr, "FAIL: output allocation failure\n");
        failures++;
        free(result);
    }
    zte_tpd_host_alloc_fail_after = -1;
}

int main(void)
{
    static const unsigned char rotation3[] = {
        1, 10, 21, 0, 225, 104, 39, 0, 247, 104,
    };
    static const unsigned char rotation1[] = {
        1, 10, 89, 47, 11, 0, 107, 47, 29, 0,
    };
    static const unsigned char rotation0[] = {
        1, 10, 0, 0, 0, 0, 0, 0, 0, 0,
    };

    expect_empty_and_invalid();
    expect_allocation_failures();
    expect_bytes("rotation 3", 3, "01,0a:1,2,3,4", rotation3, 10);
    expect_bytes("rotation 1", 1, "01,0a:1,2,3,4", rotation1, 10);
    expect_bytes("unsupported rotation", 0, "01,0a:1,2,3,4", rotation0, 10);

    if (failures != 0)
        return 1;
    puts("PASS string_change host tests (7 cases)");
    return 0;
}
