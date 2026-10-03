#include <stdarg.h>
#include <stdio.h>
#include <string.h>

static unsigned int log_calls;
static const char *log_format;
static const char *log_name;
static unsigned int log_source_size;
static unsigned int log_destination_size;
static unsigned int log_copy_size;

static int printk(const char *format, ...)
{
  va_list args;

  log_calls++;
  log_format = format;
  va_start(args, format);
  log_name = va_arg(args, const char *);
  log_source_size = va_arg(args, unsigned int);
  log_destination_size = va_arg(args, unsigned int);
  log_copy_size = va_arg(args, unsigned int);
  va_end(args);
  return 0;
}

#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/syna_pal_mem_cpy_1.c"

static unsigned int passed;
static unsigned int failed;

#define CHECK(name, condition) do { \
  if (condition) { printf("PASS %s\n", name); passed++; } \
  else { printf("FAIL %s\n", name); failed++; } \
} while (0)

static void reset_log(void)
{
  log_calls = 0;
  log_format = NULL;
  log_name = NULL;
  log_source_size = 0;
  log_destination_size = 0;
  log_copy_size = 0;
}

int main(void)
{
  unsigned char source[] = { 1, 2, 3, 4, 5, 6 };
  unsigned char destination[6] = { 0 };
  int result;

  reset_log();
  result = syna_pal_mem_cpy_1(destination, sizeof(destination), source,
                              sizeof(source), sizeof(source));
  CHECK("valid_copy_returns_zero", result == 0 && !memcmp(destination, source, sizeof(source)) && !log_calls);

  reset_log();
  result = syna_pal_mem_cpy_1(NULL, sizeof(destination), source, sizeof(source), 1);
  CHECK("null_destination_returns_einval", result == -22 && !log_calls);

  reset_log();
  result = syna_pal_mem_cpy_1(destination, 2, source, sizeof(source), 3);
  CHECK("destination_limit_returns_einval", result == -22 && log_calls == 1);
  CHECK("destination_limit_log_arguments", log_name && !strcmp(log_name, "syna_pal_mem_cpy") && log_source_size == sizeof(source) && log_destination_size == 2 && log_copy_size == 3 && log_format);

  reset_log();
  result = syna_pal_mem_cpy_1(destination, sizeof(destination), source, 2, 3);
  CHECK("source_limit_returns_einval", result == -22 && log_calls == 1);
  CHECK("source_limit_log_arguments", log_source_size == 2 && log_destination_size == sizeof(destination) && log_copy_size == 3);

  reset_log();
  result = syna_pal_mem_cpy_1(destination, 2, source, 1, 3);
  CHECK("both_limits_preserve_argument_order", result == -22 && log_source_size == 1 && log_destination_size == 2 && log_copy_size == 3);

  printf("SUMMARY passed=%u failed=%u\n", passed, failed);
  return failed ? 1 : 0;
}
