#include <stdarg.h>
#include <stdio.h>

typedef long long __int64;
static unsigned char device_memory[2300];
__int64 tpd_cdev = (__int64)device_memory;
char unk_322AA[] = "%s";
static __int64 cancelled[10];
static int cancel_count;
static int printk_count;

int printk(const char *format, ...)
{
    va_list args;
    va_start(args, format);
    ++printk_count;
    va_end(args);
    return 0;
}

void cancel_delayed_work_sync(__int64 work)
{
    if (cancel_count < 10)
        cancelled[cancel_count] = work;
    ++cancel_count;
}

#include "../../../reconstructed/zte_tpd/tpd_report_work_deinit.c"

static int check_contract(void)
{
    static const __int64 offsets[10] = {
        1216, 1320, 1424, 1528, 1632,
        1736, 1840, 1944, 2048, 2152,
    };
    int i;

    cancel_count = 0;
    printk_count = 0;
    tpd_report_work_deinit();
    if (printk_count != 1 || cancel_count != 10)
        return 0;
    for (i = 0; i < 10; ++i) {
        if (cancelled[i] != tpd_cdev + offsets[i])
            return 0;
    }
    return 1;
}

int main(void)
{
    if (!check_contract())
        return 1;
    if (!check_contract())
        return 2;
    puts("PASS tpd_report_work_deinit host tests (2 cases)");
    return 0;
}
