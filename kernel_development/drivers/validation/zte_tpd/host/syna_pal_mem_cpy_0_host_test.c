#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

static unsigned int printk_calls;
static const char *captured_format;
static const char *captured_name;
static unsigned int captured_minimum;
static unsigned int captured_size;
static unsigned int captured_expected;

static int host_printk(const char *format, ...)
{
    va_list arguments;

    printk_calls++;
    captured_format = format;
    va_start(arguments, format);
    captured_name = va_arg(arguments, const char *);
    captured_minimum = va_arg(arguments, unsigned int);
    captured_size = va_arg(arguments, unsigned int);
    captured_expected = va_arg(arguments, unsigned int);
    va_end(arguments);
    return 0;
}

#define printk host_printk
#include "../../../reconstructed/zte_tpd/syna_pal_mem_cpy_0.c"
#undef printk

static void reset_state(void)
{
    printk_calls = 0;
    captured_format = NULL;
    captured_name = NULL;
    captured_minimum = 0;
    captured_size = 0;
    captured_expected = 0;
}

static int test_valid_size_copies_exactly_two_words(void)
{
    unsigned long long destination[3] = {0, 0, 0xaaaaaaaaaaaaaaaaULL};
    unsigned long long source[3] = {
        0x1111111111111111ULL,
        0x2222222222222222ULL,
        0x3333333333333333ULL,
    };

    reset_state();
    syna_pal_mem_cpy_0(destination, 16, source);
    if (destination[0] != source[0] || destination[1] != source[1] ||
        destination[2] != 0xaaaaaaaaaaaaaaaaULL || printk_calls != 0) {
        fprintf(stderr, "valid copy contract mismatch\n");
        return 1;
    }
    return 0;
}

static int test_larger_size_still_copies_sixteen_bytes(void)
{
    unsigned long long destination[3] = {0, 0, 0xbbbbbbbbbbbbbbbbULL};
    unsigned long long source[3] = {
        0x4444444444444444ULL,
        0x5555555555555555ULL,
        0x6666666666666666ULL,
    };

    reset_state();
    syna_pal_mem_cpy_0(destination, 17, source);
    if (destination[0] != source[0] || destination[1] != source[1] ||
        destination[2] != 0xbbbbbbbbbbbbbbbbULL || printk_calls != 0) {
        fprintf(stderr, "large size copy contract mismatch\n");
        return 1;
    }
    return 0;
}

static int test_small_size_logs_without_copy(void)
{
    static const char expected_format[] =
        "\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n";
    unsigned long long destination[2] = {0xaaaaaaaaaaaaaaaaULL, 0xbbbbbbbbbbbbbbbbULL};
    unsigned long long source[2] = {0x1111111111111111ULL, 0x2222222222222222ULL};

    reset_state();
    syna_pal_mem_cpy_0(destination, 15, source);
    if (destination[0] != 0xaaaaaaaaaaaaaaaaULL ||
        destination[1] != 0xbbbbbbbbbbbbbbbbULL || printk_calls != 1 ||
        strcmp(captured_format, expected_format) != 0 ||
        strcmp(captured_name, "syna_pal_mem_cpy") != 0 ||
        captured_minimum != 16 || captured_size != 15 || captured_expected != 16) {
        fprintf(stderr, "small size log contract mismatch\n");
        return 1;
    }
    return 0;
}

static int test_null_pointers_are_silent(void)
{
    unsigned long long destination[2] = {0, 0};
    unsigned long long source[2] = {1, 2};

    reset_state();
    syna_pal_mem_cpy_0(NULL, 16, source);
    syna_pal_mem_cpy_0(destination, 16, NULL);
    if (destination[0] != 0 || destination[1] != 0 || printk_calls != 0) {
        fprintf(stderr, "null pointer path must be silent\n");
        return 1;
    }
    return 0;
}

int main(void)
{
    if (test_valid_size_copies_exactly_two_words() ||
        test_larger_size_still_copies_sixteen_bytes() ||
        test_small_size_logs_without_copy() || test_null_pointers_are_silent())
        return 1;

    printf("PASS syna_pal_mem_cpy_0 host tests (4 cases)\n");
    return 0;
}
