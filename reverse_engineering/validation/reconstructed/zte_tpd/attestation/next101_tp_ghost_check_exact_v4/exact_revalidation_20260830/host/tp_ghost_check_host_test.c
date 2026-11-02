#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef int64_t __int64;
typedef uint32_t _DWORD;

#define __int8 char
#define __int16 short

#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define LOWORD(value) (*(uint16_t *)&(value))

struct point_info_struct {
    int x;
    int y;
    unsigned char touch_major;
    unsigned char touch_minor;
    unsigned char reserved_000a[14];
    int down_x;
    int down_y;
    unsigned char reserved_0020[4];
    int up_x;
    int up_y;
    unsigned char reserved_002c[48];
    unsigned short ghost_count;
    unsigned short ghost_active;
};

union cdev_memory {
    max_align_t alignment;
    unsigned char bytes[0xc00];
};

__int64 tpd_cdev;
struct point_info_struct point_report_info[10];

static bool fail_vmalloc;
static unsigned int vfree_calls;
static unsigned int zlog_calls;
static const char *last_format;
static char last_message[2048];

static void *host_vmalloc(size_t size)
{
    return fail_vmalloc ? NULL : malloc(size);
}

static void host_vfree(void *pointer)
{
    ++vfree_calls;
    free(pointer);
}

static int host_printk(const char *format, ...)
{
    va_list args;

    last_format = format;
    va_start(args, format);
    vsnprintf(last_message, sizeof(last_message), format, args);
    va_end(args);
    return 0;
}

static int host_snprintf(char *destination, size_t size, const char *format, ...)
{
    va_list args;
    int result;

    va_start(args, format);
    result = vsnprintf(destination, size, format, args);
    va_end(args);
    return result;
}

static void host_tpd_zlog_record_notify(unsigned int event)
{
    if (event == 0x10)
        ++zlog_calls;
}

#define vmalloc host_vmalloc
#define vfree host_vfree
#define printk host_printk
#define snprintf host_snprintf
#define tpd_zlog_record_notify host_tpd_zlog_record_notify
#include "../../../reconstructed/zte_tpd/tp_ghost_check.c"
#undef tpd_zlog_record_notify
#undef snprintf
#undef printk
#undef vfree
#undef vmalloc

static void write_u8(union cdev_memory *cdev, size_t offset, uint8_t value)
{
    cdev->bytes[offset] = value;
}

static void write_u32(union cdev_memory *cdev, size_t offset, uint32_t value)
{
    memcpy(cdev->bytes + offset, &value, sizeof(value));
}

static int run_case(const char *name, bool allocation_failure, unsigned int mode,
                    uint16_t threshold, uint16_t active, uint16_t count,
                    bool expected_result, const char *expected_prefix)
{
    union cdev_memory cdev = { 0 };
    bool result;

    memset(point_report_info, 0, sizeof(point_report_info));
    fail_vmalloc = allocation_failure;
    vfree_calls = 0;
    zlog_calls = 0;
    last_format = NULL;
    last_message[0] = '\0';
    tpd_cdev = (__int64)(uintptr_t)cdev.bytes;
    write_u32(&cdev, 0x498, mode);
    write_u32(&cdev, 0x49c, 9);
    write_u8(&cdev, 0x493, (uint8_t)threshold);
    write_u8(&cdev, 0x494, (uint8_t)threshold);
    point_report_info[0].ghost_count = count;
    point_report_info[0].ghost_active = active;
    for (unsigned int index = 1; index < 6 && active != 0; ++index)
        point_report_info[index].ghost_active = active;

    result = tp_ghost_check();
    if (result != expected_result ||
        (expected_prefix != NULL && strncmp(last_message, expected_prefix,
                                             strlen(expected_prefix)) != 0) ||
        (expected_prefix == NULL && last_format != NULL)) {
        fprintf(stderr, "%s: result/log mismatch\n", name);
        return 1;
    }
    if (allocation_failure) {
        if (vfree_calls != 0 || zlog_calls != 0)
            return fprintf(stderr, "%s: allocation cleanup mismatch\n", name), 1;
    } else if (expected_result) {
        if (vfree_calls != 1 || zlog_calls != 1)
            return fprintf(stderr, "%s: success cleanup mismatch\n", name), 1;
    } else if (vfree_calls != 1 || zlog_calls != 0) {
        return fprintf(stderr, "%s: no-detection cleanup mismatch\n", name), 1;
    }
    return 0;
}

int main(void)
{
    int failures = 0;

    failures += run_case("allocation", true, 9, 1, 0, 0, false,
                         "\0015tpd: log_buffer malloc fail");
    failures += run_case("none", false, 9, 1, 0, 0, false, NULL);
    failures += run_case("single", false, 1, 1, 0, 1, true,
                         "\0015tpd: tp_ghost_check:single ghost detect");
    failures += run_case("multi", false, 1, 1, 2, 0, true,
                         "\0015tpd: tp_ghost_check:multi ghost detect");
    if (failures != 0)
        return 1;
    puts("PASS tp_ghost_check host tests (4 cases)");
    return 0;
}
