#include <assert.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

static unsigned int printk_calls;
static const char *formats[4];
static const char *functions[4];
static long long copy_src;
static int copy_dest;
static size_t copy_length;

static int test_printk(const char *format, ...)
{
  va_list args;
  unsigned int index = printk_calls++;

  assert(index < 4);
  formats[index] = format;
  va_start(args, format);
  functions[index] = va_arg(args, const char *);
  if (strcmp(format,
             "\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n") == 0) {
    copy_src = va_arg(args, long long);
    copy_dest = va_arg(args, int);
    copy_length = va_arg(args, size_t);
  }
  va_end(args);
  return 0;
}

#define __int8 char
#define __int64 long long
#define __fastcall
#define _DWORD int
#define _BYTE unsigned char
#define unk_3B313 "\0013[error] %s: Invalid given data buffer\n"
#define unk_3944E "\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n"
#define unk_320CD "\0013[error] %s: Fail to copy identification info\n"
#define printk test_printk
#include "../../../reconstructed/zte_tpd/syna_tcm_v1_parse_idinfo.c"
#undef printk
#undef unk_320CD
#undef unk_3944E
#undef unk_3B313
#undef _BYTE
#undef _DWORD
#undef __fastcall
#undef __int64
#undef __int8

static void reset_observations(void)
{
  memset(formats, 0, sizeof(formats));
  memset(functions, 0, sizeof(functions));
  printk_calls = 0;
  copy_src = 0;
  copy_dest = 0;
  copy_length = 0;
}

static void assert_function(unsigned int index, const char *format)
{
  assert(index < printk_calls);
  assert(formats[index] != NULL);
  assert(strcmp(formats[index], format) == 0);
  assert(functions[index] != NULL);
  assert(strcmp(functions[index], "syna_tcm_v1_parse_idinfo") == 0 ||
         strcmp(functions[index], "syna_pal_mem_cpy") == 0);
}

int main(void)
{
  unsigned char object[256];
  unsigned char input[64];
  unsigned char object_copy[sizeof(object)];
  unsigned char input_copy[sizeof(input)];
  unsigned int i;

  for (i = 0; i < sizeof(object); ++i)
    object[i] = (unsigned char)(0xa0U + (i & 0x1fU));
  for (i = 0; i < sizeof(input); ++i)
    input[i] = (unsigned char)(i + 1U);

  memcpy(object_copy, object, sizeof(object));
  memcpy(input_copy, input, sizeof(input));
  reset_observations();
  assert(syna_tcm_v1_parse_idinfo((long long)(uintptr_t)object, NULL, 64, 1) ==
         4294967055LL);
  assert(printk_calls == 1);
  assert_function(0, "\0013[error] %s: Invalid given data buffer\n");
  assert(memcmp(object, object_copy, sizeof(object)) == 0);

  reset_observations();
  assert(syna_tcm_v1_parse_idinfo((long long)(uintptr_t)object,
                                  (const void *)(uintptr_t)input, 64, 0) ==
         4294967055LL);
  assert(printk_calls == 1);
  assert_function(0, "\0013[error] %s: Invalid given data buffer\n");

  reset_observations();
  assert(syna_tcm_v1_parse_idinfo((long long)(uintptr_t)object,
                                  (const void *)(uintptr_t)input, 7, 8) ==
         4294967274LL);
  assert(printk_calls == 2);
  assert_function(0, "\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n");
  assert(copy_src == 7);
  assert(copy_dest == 48);
  assert(copy_length == 8);
  assert_function(1, "\0013[error] %s: Fail to copy identification info\n");
  assert(memcmp(object, object_copy, sizeof(object)) == 0);

  reset_observations();
  assert(syna_tcm_v1_parse_idinfo((long long)(uintptr_t)object,
                                  (const void *)(uintptr_t)input, 7, 7) == 0);
  assert(printk_calls == 0);
  assert(memcmp(object + 128, input, 7) == 0);
  assert(object[9] == input[1]);
  assert(memcmp(input, input_copy, sizeof(input)) == 0);

  memcpy(object, object_copy, sizeof(object));
  reset_observations();
  assert(syna_tcm_v1_parse_idinfo((long long)(uintptr_t)object,
                                  (const void *)(uintptr_t)input, 48, 64) == 0);
  assert(printk_calls == 0);
  assert(memcmp(object + 128, input, 48) == 0);
  assert(object[9] == input[1]);
  assert(memcmp(input, input_copy, sizeof(input)) == 0);

  memcpy(object, object_copy, sizeof(object));
  reset_observations();
  assert(syna_tcm_v1_parse_idinfo((long long)(uintptr_t)object,
                                  (const void *)(uintptr_t)input, 49, 0x100) == 0);
  assert(printk_calls == 0);
  assert(memcmp(object + 128, input, 48) == 0);

  memcpy(object, object_copy, sizeof(object));
  reset_observations();
  assert(syna_tcm_v1_parse_idinfo((long long)(uintptr_t)object,
                                  (const void *)(uintptr_t)input, 48, 48) == 0);
  assert(printk_calls == 0);
  assert(memcmp(object + 128, input, 48) == 0);
  assert(memcmp(input, input_copy, sizeof(input)) == 0);

  puts("syna_tcm_v1_parse_idinfo host oracle: PASS");
  return 0;
}
