#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

void *tpd_cdev;
char unk_38D27[256] = "\0015tpd: cdev->ignore_tp_irq is %d.\n";
#define _BYTE uint8_t

static const char *last_format;
static unsigned int last_value;
static unsigned int printk_calls;

static int printk(const char *format, ...)
{
    va_list arguments;

    last_format = format;
    va_start(arguments, format);
    last_value = va_arg(arguments, unsigned int);
    va_end(arguments);
    printk_calls++;
    return 0;
}

#include "../../../reconstructed/zte_tpd/set_lcd_reset_processing.c"

static void reset_state(void)
{
    last_format = NULL;
    last_value = 0;
    printk_calls = 0;
}

static int expect(bool condition, const char *message)
{
    if (condition)
        return 0;
    fprintf(stderr, "%s\n", message);
    return 1;
}

static int test_zero_writes_byte_and_logs(void)
{
    uint8_t storage[32] = {0xa5};

    reset_state();
    tpd_cdev = storage;
    set_lcd_reset_processing(0);
    return expect(storage[24] == 0 && printk_calls == 1 &&
                      last_format == unk_38D27 && last_value == 0,
                  "zero value contract");
}

static int test_one_writes_byte_and_logs(void)
{
    uint8_t storage[32] = {0};

    reset_state();
    tpd_cdev = storage;
    set_lcd_reset_processing(1);
    return expect(storage[24] == 1 && printk_calls == 1 &&
                      last_format == unk_38D27 && last_value == 1,
                  "one value contract");
}

static int test_masks_logged_value_but_preserves_byte(void)
{
    uint8_t storage[32] = {0};

    reset_state();
    tpd_cdev = storage;
    set_lcd_reset_processing(0xff);
    return expect(storage[24] == 0xff && printk_calls == 1 &&
                      last_format == unk_38D27 && last_value == 1,
                  "masked log contract");
}

int main(void)
{
    if (test_zero_writes_byte_and_logs() ||
        test_one_writes_byte_and_logs() ||
        test_masks_logged_value_but_preserves_byte())
        return 1;
    puts("PASS set_lcd_reset_processing host tests (3 cases)");
    return 0;
}
