#include <assert.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define unk_33DE9 "fmt_invalid_data"
#define unk_3B91C "fmt_invalid_length"
#define unk_33865 "fmt_max_write"
#define unk_37DFA "fmt_transport_read"
#define unk_3617E "fmt_missing_read"
#define unk_31A6B "fmt_read_failed"
#define unk_3849F "fmt_bad_response"

struct log_record {
  const char *format;
  const char *function;
  uintptr_t third;
  int has_third;
};

static struct log_record logs[4];
static unsigned int log_count;

static int test_printk(const char *format, ...)
{
  va_list args;
  struct log_record *record = &logs[log_count++];

  assert(log_count <= 4);
  record->format = format;
  va_start(args, format);
  record->function = va_arg(args, const char *);
  record->has_third = 0;
  if (strcmp(format, unk_3B91C) == 0 ||
      strcmp(format, unk_33865) == 0 ||
      strcmp(format, unk_31A6B) == 0 ||
      strcmp(format, unk_3849F) == 0) {
    record->third = va_arg(args, unsigned int);
    record->has_third = 1;
  } else if (strcmp(format, unk_37DFA) == 0) {
    record->third = (uintptr_t)va_arg(args, unsigned char *);
    record->has_third = 1;
  }
  va_end(args);
  return 0;
}

#define printk test_printk
#include "../../../reconstructed/zte_tpd/syna_tcm_v1_read.c"
#undef printk

struct transport {
  unsigned char reserved[32];
  int (*read)(long long transport, unsigned char *data, unsigned int length);
};

static int callback_result;
static long long callback_transport;
static unsigned char *callback_data;
static unsigned int callback_length;

static int test_read(long long transport, unsigned char *data,
                     unsigned int length)
{
  callback_transport = transport;
  callback_data = data;
  callback_length = length;
  return callback_result;
}

static void reset_logs(void)
{
  memset(logs, 0, sizeof(logs));
  log_count = 0;
}

static void assert_log(unsigned int index, const char *format,
                       const char *function)
{
  assert(index < log_count);
  assert(strcmp(logs[index].format, format) == 0);
  assert(strcmp(logs[index].function, function) == 0);
}

static long long device_address(unsigned char *device)
{
  return (long long)(uintptr_t)device;
}

int main(void)
{
  unsigned char device[128];
  unsigned char data[16];
  struct transport transport;
  struct transport *transport_pointer = &transport;

  memset(device, 0, sizeof(device));
  memset(data, 0, sizeof(data));
  memset(&transport, 0, sizeof(transport));
  transport.read = test_read;

  reset_logs();
  assert(syna_tcm_v1_read(device_address(device), 4, NULL, 4) ==
         4294967055LL);
  assert(log_count == 1);
  assert_log(0, unk_33DE9, "syna_tcm_v1_read");
  assert(logs[0].has_third == 0);

  reset_logs();
  assert(syna_tcm_v1_read(device_address(device), 0, data, 0) == 0);
  assert(log_count == 0);

  reset_logs();
  assert(syna_tcm_v1_read(device_address(device), 5, data, 4) ==
         4294967055LL);
  assert_log(0, unk_3B91C, "syna_tcm_v1_read");
  assert(logs[0].third == 5);

  *(unsigned int *)(device + 60) = 3;
  reset_logs();
  assert(syna_tcm_v1_read(device_address(device), 4, data, 4) ==
         4294967055LL);
  assert_log(0, unk_33865, "syna_tcm_v1_read");
  assert(logs[0].third == 4);

  *(unsigned int *)(device + 60) = 0;
  reset_logs();
  assert(syna_tcm_v1_read(device_address(device), 4, data, 4) ==
         4294967055LL);
  assert_log(0, unk_37DFA, "syna_tcm_read");
  assert(logs[0].third == (uintptr_t)data);
  assert_log(1, unk_31A6B, "syna_tcm_v1_read");
  assert(logs[1].third == 4);

  memcpy(device + 72, &transport_pointer, sizeof(transport_pointer));
  memset(&transport, 0, sizeof(transport));
  reset_logs();
  assert(syna_tcm_v1_read(device_address(device), 4, data, 4) ==
         4294967051LL);
  assert_log(0, unk_3617E, "syna_tcm_read");
  assert_log(1, unk_31A6B, "syna_tcm_v1_read");
  assert(logs[1].third == 4);

  transport.read = test_read;
  callback_result = -5;
  reset_logs();
  assert(syna_tcm_v1_read(device_address(device), 4, data, 4) ==
         4294967291LL);
  assert(callback_transport == (long long)(uintptr_t)&transport);
  assert(callback_data == data);
  assert(callback_length == 4);
  assert_log(0, unk_31A6B, "syna_tcm_v1_read");
  assert(logs[0].third == 4);

  callback_result = 0;
  data[0] = 0xa5;
  reset_logs();
  assert(syna_tcm_v1_read(device_address(device), 4, data, 4) == 0);
  assert(log_count == 0);

  data[0] = 0x00;
  reset_logs();
  assert(syna_tcm_v1_read(device_address(device), 4, data, 4) ==
         4294967054LL);
  assert_log(0, unk_3849F, "syna_tcm_v1_read");
  assert(logs[0].third == 0);

  puts("syna_tcm_v1_read host oracle: PASS");
  return 0;
}
