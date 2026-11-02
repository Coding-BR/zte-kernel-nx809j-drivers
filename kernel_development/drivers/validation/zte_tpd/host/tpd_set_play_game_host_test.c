#include <assert.h>
#include <stdint.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

struct ztp_device;
struct syna_tcm;

static unsigned int helper_calls;
static struct syna_tcm *helper_cdev;
static int helper_mode;
static unsigned long long helper_limit;
static int helper_result;

static unsigned int printk_calls;
static const char *last_format;
static const char *last_function;

static int test_printk(const char *format, ...)
{
  va_list args;

  va_start(args, format);
  ++printk_calls;
  last_format = format;
  last_function = va_arg(args, const char *);
  va_end(args);
  return 0;
}

static int syna_dev_set_play_game(struct syna_tcm *cdev, int mode,
                                  unsigned long long limit)
{
  ++helper_calls;
  helper_cdev = cdev;
  helper_mode = mode;
  helper_limit = limit;
  return helper_result;
}

#define __int64 long long
#define __fastcall
#define _QWORD unsigned long long
#define _DWORD unsigned int
#define _BYTE unsigned char
#define printk test_printk
#define unk_34878 "\0016[info ] %s: enter\n"
#define unk_32D58 "\0016[info ] %s: play no need reset"
#define unk_34BC7 "\0013[error] %s: set play_game mode failed!"
#define unk_3B5E0 "\0013[error] %s: error, change set in suspend!"
#include "../../../reconstructed/zte_tpd/tpd_set_play_game.c"
#undef unk_3B5E0
#undef unk_34BC7
#undef unk_32D58
#undef unk_34878
#undef printk
#undef _QWORD
#undef __fastcall
#undef __int64

static void reset_observations(void)
{
  helper_calls = 0;
  helper_cdev = NULL;
  helper_mode = 0;
  helper_limit = 0;
  helper_result = 0;
  printk_calls = 0;
  last_format = NULL;
  last_function = NULL;
}

static void assert_function_log(const char *format)
{
  assert(last_format != NULL);
  assert(strcmp(last_format, format) == 0);
  assert(last_function != NULL);
  assert(strcmp(last_function, "tpd_set_play_game") == 0);
}

static void set_u64(unsigned char *base, size_t offset, unsigned long long value)
{
  memcpy(base + offset, &value, sizeof(value));
}

static void set_u32(unsigned char *base, size_t offset, unsigned int value)
{
  memcpy(base + offset, &value, sizeof(value));
}

int main(void)
{
  unsigned char cdev[3200];
  unsigned char tcm[1600];
  unsigned char zte_state[256];
  unsigned char root[1024];
  const unsigned int return_value = 0x13572468U;
  const int requested_mode = 7;
  const unsigned int fallback_limit = 0x11223344U;

  memset(cdev, 0, sizeof(cdev));
  memset(tcm, 0, sizeof(tcm));
  memset(zte_state, 0, sizeof(zte_state));
  memset(root, 0, sizeof(root));
  set_u64(cdev, 3072, (unsigned long long)(uintptr_t)tcm);
  set_u32(cdev, 16, return_value);
  set_u64(tcm, 0, (unsigned long long)(uintptr_t)root);
  set_u32(root, 524, fallback_limit);
  set_u64(tcm, 624, (unsigned long long)(uintptr_t)zte_state);

  set_u64(cdev, 3072, 0);
  reset_observations();
  assert(tpd_set_play_game((struct ztp_device *)cdev, requested_mode) == -22);
  assert(printk_calls == 1);
  assert_function_log("\0016[info ] %s: enter\n");
  assert(helper_calls == 0);

  set_u64(cdev, 3072, (unsigned long long)(uintptr_t)tcm);
  set_u32(tcm, 1404, 0);
  reset_observations();
  assert(tpd_set_play_game((struct ztp_device *)cdev, requested_mode) == return_value);
  assert(printk_calls == 2);
  assert_function_log("\0013[error] %s: error, change set in suspend!");
  assert(helper_calls == 0);

  set_u32(tcm, 1404, 1);
  set_u32(tcm, 1500, requested_mode);
  reset_observations();
  assert(tpd_set_play_game((struct ztp_device *)cdev, requested_mode) == return_value);
  assert(printk_calls == 2);
  assert_function_log("\0016[info ] %s: play no need reset");
  assert(helper_calls == 0);

  set_u32(tcm, 1500, 0);
  helper_result = 0;
  reset_observations();
  assert(tpd_set_play_game((struct ztp_device *)cdev, requested_mode) == return_value);
  assert(printk_calls == 1);
  assert_function_log("\0016[info ] %s: enter\n");
  assert(helper_calls == 1);
  assert(helper_cdev == (struct syna_tcm *)tcm);
  assert(helper_mode == requested_mode);
  assert(helper_limit == fallback_limit);
  assert(*(unsigned int *)(tcm + 1500) == (unsigned int)requested_mode);

  set_u32(zte_state, 184, 1);
  zte_state[188] = 1;
  set_u32(tcm, 1500, 0);
  helper_result = 0;
  reset_observations();
  assert(tpd_set_play_game((struct ztp_device *)cdev, requested_mode) == return_value);
  assert(printk_calls == 1);
  assert(helper_calls == 1);
  assert(helper_limit == 0);

  set_u32(tcm, 1500, 0);
  reset_observations();
  helper_result = -5;
  assert(tpd_set_play_game((struct ztp_device *)cdev, requested_mode) == return_value);
  assert(printk_calls == 2);
  assert_function_log("\0013[error] %s: set play_game mode failed!");
  assert(helper_calls == 1);

  assert(*(unsigned int *)(cdev + 16) == return_value);
  puts("tpd_set_play_game host oracle: PASS");
  return 0;
}
