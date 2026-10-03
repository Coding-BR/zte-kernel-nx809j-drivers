#define ZTE_TPD_HOST_TEST 1
#include <stdint.h>
#include <stdio.h>
#include <stddef.h>
#include <string.h>

typedef struct ztp_device ztp_device;
static int printk_calls;

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}
#define printk test_printk
static const char unk_34878[] = "";

#include "../../../reconstructed/zte_tpd/tpd_test_cmd_show.c"

static int check(int condition, const char *message)
{
    if (!condition) {
        fprintf(stderr, "FAIL: %s\n", message);
        return 1;
    }
    return 0;
}

int main(void)
{
    char output[32] = {0};
    int ret = tpd_test_cmd_show(NULL, output);

    if (check(ret == 9, "snprintf return length"))
        return 1;
    if (check(strcmp(output, "0,16,37,0") == 0, "formatted output"))
        return 1;
    if (check(printk_calls == 1, "diagnostic printk"))
        return 1;

    puts("PASS tpd_test_cmd_show contract test (3 checks)");
    return 0;
}
