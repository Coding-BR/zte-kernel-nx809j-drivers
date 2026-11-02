#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef int64_t __int64;
typedef uint64_t _QWORD;
struct syna_tcm { uint8_t opaque; };

static uint8_t fixture[0x480 + 0x32000];
static void *frame_buffer;
static uintptr_t lock_address;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int printk_calls;
static const char *log_format;
static const char *log_name;

void mutex_lock(uintptr_t address)
{ lock_address = address; lock_calls++; }
void mutex_unlock(uintptr_t address)
{ lock_address = address; unlock_calls++; }
int printk(const char *format, const char *name)
{ printk_calls++; log_format = format; log_name = name; return 0; }

#include "build/zte_reset_frame_list_under_test.c"

static void check(int condition, const char *name, unsigned int *failures)
{ printf("%s %s\n", condition ? "PASS" : "FAIL", name); if (!condition) (*failures)++; }

int main(void)
{
    unsigned int failures = 0;
    uint8_t *base = fixture;

    memset(fixture, 0xa5, sizeof(fixture));
    frame_buffer = base + 0x480;
    *(void **)(base + 0x460) = frame_buffer;
    memset(base + 0x43c, 0xff, sizeof(_QWORD));
    zte_reset_frame_list((struct syna_tcm *)base);

    check(lock_calls == 1, "lock_once", &failures);
    check(unlock_calls == 1, "unlock_once", &failures);
    check(lock_address == (uintptr_t)base + 0x470, "mutex_offset_0x470", &failures);
    check(memcmp(base + 0x43c, "\0\0\0\0\0\0\0\0", sizeof(_QWORD)) == 0,
          "counter_offset_0x43c_zeroed", &failures);
    check(frame_buffer == base + 0x480, "buffer_pointer_offset_0x460", &failures);
    check(memchr(frame_buffer, 0xa5, 0x32000) == NULL, "full_0x32000_buffer_zeroed", &failures);
    check(printk_calls == 1, "log_once", &failures);
    check(strcmp(log_format, "\0016[info ] %s: reset success") == 0 &&
          strcmp(log_name, "zte_reset_frame_list") == 0, "stock_log", &failures);
    printf("SUMMARY tests=8 failures=%u\n", failures);
    return failures ? 1 : 0;
}
