#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

static void *managed_device;
static void *allocation_result;
static unsigned int request_calls;
static unsigned int allocation_calls;
static void *allocated_device;
static unsigned int allocated_size;
static unsigned int allocated_flags;
static unsigned int printk_calls;
static const char *format;
static const char *name;

static void *syna_request_managed_device(void)
{
    request_calls++;
    return managed_device;
}

static void *devm_kmalloc(void *device, unsigned int size, unsigned int flags)
{
    allocation_calls++;
    allocated_device = device;
    allocated_size = size;
    allocated_flags = flags;
    return allocation_result;
}

static int host_printk(const char *message, ...)
{
    va_list arguments;

    printk_calls++;
    format = message;
    va_start(arguments, message);
    name = va_arg(arguments, const char *);
    va_end(arguments);
    return 0;
}

#define printk host_printk
#include "../../../reconstructed/zte_tpd/syna_pal_mem_alloc.c"
#undef printk

static void reset_state(void)
{
    managed_device = NULL;
    allocation_result = NULL;
    request_calls = 0;
    allocation_calls = 0;
    allocated_device = NULL;
    allocated_size = 0;
    allocated_flags = 0;
    printk_calls = 0;
    format = NULL;
    name = NULL;
}

static int test_valid_allocation(void)
{
    uint32_t device;
    uint32_t memory;

    reset_state();
    managed_device = &device;
    allocation_result = &memory;
    if (syna_pal_mem_alloc(64) != &memory || request_calls != 1 ||
        allocation_calls != 1 || allocated_device != &device ||
        allocated_size != 64 || allocated_flags != 0xdc0 || printk_calls != 0)
        return fprintf(stderr, "valid allocation mismatch\n"), 1;
    return 0;
}

static int test_null_device_logs(void)
{
    static const char expected[] = "\0013[error] %s: Invalid managed device\n";

    reset_state();
    if (syna_pal_mem_alloc(64) != NULL || request_calls != 1 ||
        allocation_calls != 0 || printk_calls != 1 || strcmp(format, expected) ||
        strcmp(name, "syna_pal_mem_alloc"))
        return fprintf(stderr, "null device mismatch\n"), 1;
    return 0;
}

static int test_invalid_size_logs(void)
{
    static const char expected[] = "\0013[error] %s: Invalid parameter\n";
    uint32_t device;

    reset_state();
    managed_device = &device;
    if (syna_pal_mem_alloc(0) != NULL || syna_pal_mem_alloc(-1) != NULL ||
        request_calls != 2 || allocation_calls != 0 || printk_calls != 2 ||
        strcmp(format, expected) || strcmp(name, "syna_pal_mem_alloc"))
        return fprintf(stderr, "invalid size mismatch\n"), 1;
    return 0;
}

int main(void)
{
    if (test_valid_allocation() || test_null_device_logs() || test_invalid_size_logs())
        return 1;
    puts("PASS syna_pal_mem_alloc host tests (3 cases)");
    return 0;
}
