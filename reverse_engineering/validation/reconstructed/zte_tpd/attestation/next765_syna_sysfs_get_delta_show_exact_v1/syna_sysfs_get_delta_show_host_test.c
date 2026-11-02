#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>

typedef long long __int64;
typedef short __int16;
typedef unsigned int _DWORD;
typedef unsigned long long _QWORD;
typedef unsigned char u8;
typedef unsigned char _BYTE;
#define __fastcall
#define __int8 char
#define nullptr ((void *)0)
#define HIDWORD(value) ((unsigned int)(((uint64_t)(value)) >> 32))
#define LODWORD(value) (*(uint32_t *)&(value))
#define LOBYTE(value) (*(uint8_t *)&(value))
#define __break(value) ((void)(value))
#define SP_EL0 0

struct kobject { unsigned char bytes[64]; };
struct kobj_attribute { unsigned char bytes[8]; };

static unsigned char status_page[2048];
static unsigned char kobj_storage[64];
static unsigned char container_storage[256];
static unsigned char tcm_storage[256];
static unsigned char core_storage[256];
static unsigned char api_storage[128];
static char output[4096];
static unsigned int enable_calls;
static unsigned int wait_calls;
static unsigned int alloc_calls;
static unsigned int free_calls;
static unsigned int lock_calls;
static unsigned int unlock_calls;
static int fail_enable;
static int successful_waits;
static int managed_available;

static void set_u64(unsigned char *base, size_t offset, uint64_t value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static void set_u32(unsigned char *base, size_t offset, uint32_t value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static uintptr_t host_read_status_reg(int selector)
{
  (void)selector;
  return (uintptr_t)status_page;
}

static int test_scnprintf(__int64 buffer_address, size_t size,
                          const char *format, ...)
{
  va_list arguments;
  int result;
  char *buffer = (char *)(uintptr_t)buffer_address;

  va_start(arguments, format);
  result = vsnprintf(buffer, size, format, arguments);
  va_end(arguments);
  if (result < 0)
    return result;
  return result >= (int)size ? (int)size - 1 : result;
}

static int test_printk(const char *format, ...)
{
  (void)format;
  return 0;
}

static int test_enable_report(__int64 device, unsigned int code,
                              int enable, unsigned int timeout)
{
  (void)device; (void)code; (void)enable; (void)timeout;
  ++enable_calls;
  return fail_enable ? -241 : 0;
}

static int test_wait_for_report(__int64 device, unsigned int code,
                                void *event_data, int poll, unsigned int timeout)
{
  unsigned char *buffer;
  (void)device; (void)code; (void)poll; (void)timeout;
  ++wait_calls;
  if (successful_waits <= 0)
    return -244;
  --successful_waits;
  buffer = calloc(2, sizeof(int16_t));
  if (!buffer)
    return -12;
  ((int16_t *)buffer)[0] = 12;
  ((int16_t *)buffer)[1] = -7;
  set_u64((unsigned char *)event_data, 0, (uint64_t)(uintptr_t)buffer);
  return 0;
}

static __int64 test_request_managed_device(void)
{
  return managed_available ? (__int64)(uintptr_t)api_storage : 0;
}

static void *test_devm_kmalloc(__int64 device, unsigned int size,
                               unsigned int flags)
{
  (void)device; (void)flags;
  ++alloc_calls;
  return calloc(1, size ? size : 1);
}

static void test_devm_kfree(__int64 device, void *pointer)
{
  (void)device;
  ++free_calls;
  free(pointer);
}

static void test_mutex_lock(__int64 lock) { (void)lock; ++lock_calls; }
static void test_mutex_unlock(__int64 lock) { (void)lock; ++unlock_calls; }
static void test_mutex_init(void *lock, const char *name, void *key)
{
  (void)lock; (void)name; (void)key;
}
static void test_report_callback(__int64 report_api, _QWORD argument)
{
  (void)report_api; (void)argument;
}
static void test_fortify(unsigned int reason, size_t left, size_t right)
{
  (void)reason; (void)left; (void)right;
  abort();
}

static char syna_pal_mutex_alloc___key_2;
static char unk_37DFA[] = "irq";
static char unk_3365A[] = "no-tcm";
static char unk_3BE43[] = "managed-device";
static char unk_38286[] = "alloc";
static char unk_36715[] = "data";
static char unk_34845[] = "release";
static char unk_3D2DB[] = "report";

#define _ReadStatusReg(reg) host_read_status_reg((reg))
#define scnprintf test_scnprintf
#define printk test_printk
#define syna_tcm_enable_report test_enable_report
#define syna_tcm_wait_for_report test_wait_for_report
#define syna_request_managed_device test_request_managed_device
#define devm_kmalloc test_devm_kmalloc
#define devm_kfree test_devm_kfree
#define mutex_lock test_mutex_lock
#define mutex_unlock test_mutex_unlock
#define _mutex_init test_mutex_init
#define _fortify_panic test_fortify

#include "../../../reconstructed/zte_tpd/syna_sysfs_get_delta_show.c"

static void reset_state(void)
{
  memset(status_page, 0, sizeof(status_page));
  memset(kobj_storage, 0, sizeof(kobj_storage));
  memset(container_storage, 0, sizeof(container_storage));
  memset(tcm_storage, 0, sizeof(tcm_storage));
  memset(core_storage, 0, sizeof(core_storage));
  memset(api_storage, 0, sizeof(api_storage));
  memset(output, 0, sizeof(output));
  enable_calls = wait_calls = alloc_calls = free_calls = 0;
  lock_calls = unlock_calls = 0;
  fail_enable = 0;
  successful_waits = 0;
  managed_available = 1;
  set_u64(kobj_storage, 24, (uint64_t)(uintptr_t)container_storage);
  set_u64(container_storage, 152, (uint64_t)(uintptr_t)tcm_storage);
  set_u64(tcm_storage, 0, (uint64_t)(uintptr_t)core_storage);
  set_u64(core_storage, 72, (uint64_t)(uintptr_t)api_storage);
  set_u64(api_storage, 56, (uint64_t)(uintptr_t)test_report_callback);
  set_u32(tcm_storage, 28, 1);
  set_u32(tcm_storage, 32, 2);
}

static int run_tests(void)
{
  ssize_t result;

  reset_state();
  fail_enable = 1;
  result = syna_sysfs_get_delta_show((struct kobject *)kobj_storage,
                                     (struct kobj_attribute *)0, output);
  if (result <= 0 || strstr(output, "Fail to enable report") == NULL ||
      enable_calls != 1 || wait_calls != 0)
    return 1;

  reset_state();
  successful_waits = 0;
  result = syna_sysfs_get_delta_show((struct kobject *)kobj_storage,
                                     (struct kobj_attribute *)0, output);
  if (result <= 0 || strstr(output, "Done") == NULL ||
      enable_calls != 2 || alloc_calls != 0 || free_calls != 0 ||
      wait_calls != 5 || lock_calls == 0 || lock_calls != unlock_calls)
    return 2;

  reset_state();
  managed_available = 0;
  successful_waits = 0;
  result = syna_sysfs_get_delta_show((struct kobject *)kobj_storage,
                                     (struct kobj_attribute *)0, output);
  if (result <= 0 || strstr(output, "Done") == NULL ||
      alloc_calls != 0 || free_calls != 0)
    return 3;

  return 0;
}

int main(void)
{
  int result = run_tests();
  if (result != 0) {
    printf("FAIL syna_sysfs_get_delta_show host tests case %d\n", result);
    return 1;
  }
  puts("PASS syna_sysfs_get_delta_show host tests (3 cases)");
  return 0;
}
