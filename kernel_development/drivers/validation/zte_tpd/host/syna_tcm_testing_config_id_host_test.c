#include <assert.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned char _BYTE;
typedef unsigned int _DWORD;

struct tcm_dev { int unused; };
struct testing_item { int unused; };
struct tcm_application_info { unsigned long long words[2]; };

static unsigned char status_reg[1920];
#define SP_EL0 0
#define _ReadStatusReg(reg) ((unsigned long long)(uintptr_t)status_reg)

static int app_info_return;
static int alloc_return;
static int config_id_return;
static int get_app_info_calls;
static int alloc_calls;
static int copy_calls;
static int check_calls;
static int printk_calls;
static const char *last_print_function;
static const char *last_print_result;
static void *last_copy_destination;
static unsigned int last_copy_size;
static void *last_copy_source;

static int printk(const char *format, ...)
{
  va_list args;
  (void)format;
  va_start(args, format);
  last_print_function = va_arg(args, const char *);
  last_print_result = va_arg(args, const char *);
  va_end(args);
  printk_calls++;
  return 0;
}

static const char unk_3298B[] = "app-info";
static const char unk_3310F[] = "result";

static int syna_tcm_get_app_info(struct tcm_dev *tcm,
                                 struct tcm_application_info *info,
                                 int reserved)
{
  (void)tcm;
  (void)reserved;
  get_app_info_calls++;
  if (app_info_return >= 0) {
    info->words[0] = 0x1122334455667788ULL;
    info->words[1] = 0x8877665544332211ULL;
  }
  return app_info_return;
}

static int syna_tcm_buf_alloc_0(unsigned long long buffer_address)
{
  unsigned char *buffer = (unsigned char *)(uintptr_t)buffer_address;
  alloc_calls++;
  if (alloc_return < 0)
    return alloc_return;
  *(void **)buffer = calloc(1, 64);
  *(unsigned int *)(buffer + 8) = 40;
  return *(void **)buffer ? 0 : -12;
}

static void syna_pal_mem_cpy_0(unsigned long long destination_address, unsigned int size,
                                const void *source)
{
  void *destination = (void *)(uintptr_t)destination_address;
  copy_calls++;
  last_copy_destination = destination;
  last_copy_size = size;
  last_copy_source = (void *)source;
  memcpy(destination, source, size);
}

static int syna_tcm_testing_0002_check_config_id(void *firmware,
                                                  unsigned long long limit)
{
  (void)firmware;
  (void)limit;
  check_calls++;
  return config_id_return;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_testing_config_id.c"

static void reset_state(void)
{
  memset(status_reg, 0, sizeof(status_reg));
  app_info_return = 7;
  alloc_return = 0;
  config_id_return = 1;
  get_app_info_calls = 0;
  alloc_calls = 0;
  copy_calls = 0;
  check_calls = 0;
  printk_calls = 0;
  last_print_function = NULL;
  last_print_result = NULL;
  last_copy_destination = NULL;
  last_copy_size = 0;
  last_copy_source = NULL;
}

static void test_null_inputs(void)
{
  struct tcm_dev tcm;
  struct testing_item item;

  reset_state();
  assert(syna_tcm_testing_config_id(NULL, &item, false) == -161);
  assert(syna_tcm_testing_config_id(&tcm, NULL, false) == -161);
  assert(get_app_info_calls == 0 && printk_calls == 0);
}

static void test_app_info_failure(void)
{
  struct tcm_dev tcm;
  unsigned char item[0x100] = {0};

  reset_state();
  app_info_return = -5;
  assert(syna_tcm_testing_config_id(&tcm, (struct testing_item *)item, false) == -163);
  assert(get_app_info_calls == 1 && printk_calls == 2);
  assert(item[0x10] == 0);
  assert(strcmp(last_print_function, "syna_tcm_testing_config_id") == 0);
  assert(strcmp(last_print_result, "fail") == 0);
}

static void test_dual_firmware_without_result_buffer(void)
{
  struct tcm_dev tcm;
  unsigned char item[0x100] = {0};

  reset_state();
  assert(syna_tcm_testing_config_id(&tcm, (struct testing_item *)item, true) == 7);
  assert(get_app_info_calls == 1 && alloc_calls == 0 && check_calls == 0);
  assert(item[0x10] == 1 && printk_calls == 1);
  assert(strcmp(last_print_result, "pass") == 0);
}

static void test_config_id_pass_and_copy(void)
{
  struct tcm_dev tcm;
  unsigned char item[0x100] = {0};
  unsigned char limit[8] = "limit";
  unsigned char limit_object[16] = {0};
  unsigned char result_buffer[0x48] = {0};
  void *limit_ptr = limit;
  void *limit_object_ptr = limit_object;
  void *result_ptr = result_buffer;
  unsigned int limit_size = sizeof(limit);

  memcpy(limit_object, &limit_ptr, sizeof(limit_ptr));
  memcpy(limit_object + 8, &limit_size, sizeof(limit_size));
  memcpy(item + 0x38, &limit_object_ptr, sizeof(limit_object_ptr));
  memcpy(item + 0xd8, &result_ptr, sizeof(result_ptr));
  reset_state();
  assert(syna_tcm_testing_config_id(&tcm, (struct testing_item *)item, false) == 7);
  assert(get_app_info_calls == 1 && alloc_calls == 1 && copy_calls == 1);
  assert(check_calls == 1 && item[0x10] == 1 && printk_calls == 1);
  assert(last_copy_destination != NULL && last_copy_size == 40);
  assert(last_copy_source != NULL && *(void **)result_buffer != NULL);
  assert(*(unsigned int *)(result_buffer + 12) == 16);
  free(*(void **)result_buffer);
}

static void test_config_id_mismatch_and_alloc_failure(void)
{
  struct tcm_dev tcm;
  unsigned char item[0x100] = {0};
  unsigned char limit[8] = "limit";
  unsigned char limit_object[16] = {0};
  unsigned char result_buffer[0x48] = {0};
  void *limit_ptr = limit;
  void *limit_object_ptr = limit_object;
  void *result_ptr = result_buffer;
  unsigned int limit_size = sizeof(limit);

  memcpy(limit_object, &limit_ptr, sizeof(limit_ptr));
  memcpy(limit_object + 8, &limit_size, sizeof(limit_size));
  memcpy(item + 0x38, &limit_object_ptr, sizeof(limit_object_ptr));
  memcpy(item + 0xd8, &result_ptr, sizeof(result_ptr));
  reset_state();
  config_id_return = 0;
  assert(syna_tcm_testing_config_id(&tcm, (struct testing_item *)item, false) == -162);
  assert(item[0x10] == 0 && check_calls == 1 && printk_calls == 1);
  assert(strcmp(last_print_result, "fail") == 0);
  free(*(void **)result_buffer);

  memset(item, 0, sizeof(item));
  memcpy(item + 0xd8, &result_ptr, sizeof(result_ptr));
  reset_state();
  alloc_return = -12;
  assert(syna_tcm_testing_config_id(&tcm, (struct testing_item *)item, false) == -162);
  assert(alloc_calls == 1 && copy_calls == 0 && check_calls == 0);
  assert(item[0x10] == 0 && printk_calls == 1);
}

int main(void)
{
  test_null_inputs();
  test_app_info_failure();
  test_dual_firmware_without_result_buffer();
  test_config_id_pass_and_copy();
  test_config_id_mismatch_and_alloc_failure();
  puts("syna_tcm_testing_config_id host oracle: PASS (5 groups)");
  return 0;
}
