#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef uint16_t umode_t;

struct device {
    const char *name;
    uint8_t reserved_0008[0x68];
    const char *type;
};

static unsigned int kasprintf_calls;
static unsigned int observed_gfp;
static const char *observed_format;
static const char *observed_source;
static char result_buffer[128];
static int kasprintf_returns_null;

static char *kasprintf(unsigned int gfp, const char *format, ...)
{
    va_list args;
    const char *source;

    kasprintf_calls++;
    observed_gfp = gfp;
    observed_format = format;
    va_start(args, format);
    source = va_arg(args, const char *);
    va_end(args);
    observed_source = source;
    if (kasprintf_returns_null)
        return NULL;
    snprintf(result_buffer, sizeof(result_buffer), format, source);
    return result_buffer;
}

#include "../../../reconstructed/zte_tpd/syna_cdev_devnode.c"

static void reset_observations(void)
{
    kasprintf_calls = 0;
    observed_gfp = 0;
    observed_format = NULL;
    observed_source = NULL;
    result_buffer[0] = '\0';
    kasprintf_returns_null = 0;
}

static int test_null_mode_short_circuit(void)
{
    reset_observations();
    if (syna_cdev_devnode(NULL, NULL) != NULL || kasprintf_calls != 0)
        return fprintf(stderr, "null mode contract mismatch\n"), 1;
    return 0;
}

static int test_type_is_preferred(void)
{
    struct device device = {
        .name = "fallback-name",
        .type = "type-name",
    };
    umode_t mode = 0;
    char *node;

    reset_observations();
    node = syna_cdev_devnode(&device, &mode);
    if (mode != 0x600 || node != result_buffer || strcmp(node, "type-name") != 0 ||
        kasprintf_calls != 1 || observed_gfp != 0xcc0 ||
        strcmp(observed_format, "%s") != 0 || observed_source != device.type)
        return fprintf(stderr, "type preference contract mismatch\n"), 1;
    return 0;
}

static int test_name_is_fallback(void)
{
    struct device device = {
        .name = "fallback-name",
        .type = NULL,
    };
    umode_t mode = 0;
    char *node;

    reset_observations();
    node = syna_cdev_devnode(&device, &mode);
    if (mode != 0x600 || node != result_buffer || strcmp(node, "fallback-name") != 0 ||
        kasprintf_calls != 1 || observed_source != device.name)
        return fprintf(stderr, "name fallback contract mismatch\n"), 1;
    return 0;
}

static int test_kasprintf_failure_is_propagated(void)
{
    struct device device = {
        .name = "fallback-name",
        .type = "type-name",
    };
    umode_t mode = 0;

    reset_observations();
    kasprintf_returns_null = 1;
    if (syna_cdev_devnode(&device, &mode) != NULL || mode != 0x600 ||
        kasprintf_calls != 1 || observed_source != device.type)
        return fprintf(stderr, "kasprintf failure contract mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_null_mode_short_circuit() || test_type_is_preferred() ||
        test_name_is_fallback() || test_kasprintf_failure_is_propagated())
        return 1;
    puts("PASS syna_cdev_devnode host tests (4 cases)");
    return 0;
}
