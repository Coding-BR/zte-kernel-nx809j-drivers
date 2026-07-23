#include <stdbool.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))

typedef uint8_t u8;

struct tcm_buffer {
  u8 *data;
  uint32_t buf_size;
  uint32_t data_length;
};

struct tcm_dev;
typedef int (*tcm_read_message_fn)(struct tcm_dev *tcm, u8 *code);

struct tcm_dev {
  struct tcm_buffer report_buf;
  struct tcm_buffer resp_buf;
  tcm_read_message_fn read_message;
};

static int read_result;
static int copy_result;
static u8 read_code;
static struct tcm_dev *read_tcm;
static u8 *read_code_ptr;
static struct tcm_buffer *copy_dst;
static struct tcm_buffer *copy_src;
static unsigned int read_count;
static unsigned int copy_count;
static char logs[4][128];
static unsigned int log_count;

static int read_message_stub(struct tcm_dev *tcm, u8 *code)
{
  read_count++;
  read_tcm = tcm;
  read_code_ptr = code;
  *code = read_code;
  return read_result;
}

static int syna_tcm_buf_copy_2(struct tcm_buffer *dst,
                               struct tcm_buffer *src)
{
  copy_count++;
  copy_dst = dst;
  copy_src = src;
  return copy_result;
}

static int printk(const char *format, ...)
{
  va_list arguments;
  int result;

  if (log_count >= ARRAY_SIZE(logs))
    return -1;
  va_start(arguments, format);
  result = vsnprintf(logs[log_count], sizeof(logs[log_count]), format,
                     arguments);
  va_end(arguments);
  log_count++;
  return result;
}

#define SYNA_TCM_GET_EVENT_DATA_EXTERNAL_BUF_COPY
#include "../../../curated/zte_tpd/syna_tcm_get_event_data.c"

typedef int (*event_fn)(struct tcm_dev *tcm, u8 *code,
                        struct tcm_buffer *event_data);

_Static_assert(__builtin_types_compatible_p(
                 typeof(&syna_tcm_get_event_data), event_fn),
               "syna_tcm_get_event_data ABI");

#define REQUIRE(condition) do { \
  if (!(condition)) { \
    fprintf(stderr, "%s:%d: requirement failed: %s\n", \
            __func__, __LINE__, #condition); \
    return false; \
  } \
} while (0)

static u8 report_data[4];
static u8 response_data[4];
static u8 event_storage[4];
static struct tcm_buffer event_data = {
  .data = event_storage,
  .buf_size = sizeof(event_storage),
};
static struct tcm_dev tcm = {
  .report_buf = {
    .data = report_data,
    .buf_size = sizeof(report_data),
  },
  .resp_buf = {
    .data = response_data,
    .buf_size = sizeof(response_data),
  },
  .read_message = read_message_stub,
};

static void reset_fixture(void)
{
  read_result = 7;
  copy_result = 0;
  read_code = 0xff;
  read_tcm = NULL;
  read_code_ptr = NULL;
  copy_dst = NULL;
  copy_src = NULL;
  read_count = 0;
  copy_count = 0;
  log_count = 0;
  tcm.report_buf.data_length = 0;
  tcm.resp_buf.data_length = 0;
  memset(logs, 0, sizeof(logs));
}

static bool test_signature_contract(void)
{
  return true;
}

static bool test_null_tcm(void)
{
  u8 code = 0;

  reset_fixture();
  REQUIRE(syna_tcm_get_event_data(NULL, &code, &event_data) == -241);
  REQUIRE(read_count == 0 && copy_count == 0 && log_count == 1);
  REQUIRE(strcmp(logs[0],
                 "\0013[error] syna_tcm_get_event_data: Invalid tcm device handle\n") == 0);
  return true;
}

static bool test_null_code(void)
{
  reset_fixture();
  REQUIRE(syna_tcm_get_event_data(&tcm, NULL, &event_data) == -241);
  REQUIRE(read_count == 0 && copy_count == 0 && log_count == 1);
  REQUIRE(strcmp(logs[0],
                 "\0013[error] syna_tcm_get_event_data: Invalid parameter\n") == 0);
  return true;
}

static bool test_read_failure(void)
{
  u8 code = 0;

  reset_fixture();
  read_result = -5;
  REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == -5);
  REQUIRE(read_count == 1 && copy_count == 0 && log_count == 1);
  REQUIRE(read_tcm == &tcm && read_code_ptr == &code);
  REQUIRE(strcmp(logs[0],
                 "\0013[error] syna_tcm_get_event_data: Fail to read messages\n") == 0);
  return true;
}

static bool test_null_event_data(void)
{
  u8 code = 0;

  reset_fixture();
  read_code = 0x10;
  tcm.report_buf.data_length = 4;
  REQUIRE(syna_tcm_get_event_data(&tcm, &code, NULL) == 7);
  REQUIRE(code == 0x10 && read_count == 1 && copy_count == 0);
  return true;
}

static bool test_report_empty(void)
{
  u8 code = 0;

  reset_fixture();
  read_code = 0x10;
  REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == 7);
  REQUIRE(copy_count == 0 && log_count == 0);
  return true;
}

static bool test_report_success_boundaries(void)
{
  static const u8 codes[] = { 0x10, 0xfe };
  size_t index;

  for (index = 0; index < ARRAY_SIZE(codes); index++) {
    u8 code = 0;

    reset_fixture();
    read_code = codes[index];
    tcm.report_buf.data_length = 4;
    REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == 0);
    REQUIRE(copy_count == 1 && copy_dst == &event_data);
    REQUIRE(copy_src == &tcm.report_buf && log_count == 0);
  }
  return true;
}

static bool test_report_copy_failure(void)
{
  u8 code = 0;

  reset_fixture();
  read_code = 0x42;
  copy_result = -12;
  tcm.report_buf.data_length = 4;
  REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == -12);
  REQUIRE(copy_src == &tcm.report_buf && log_count == 1);
  REQUIRE(strcmp(logs[0],
                 "\0013[error] syna_tcm_get_event_data: Fail to copy data, report type: 42\n") == 0);
  return true;
}

static bool test_response_empty(void)
{
  u8 code = 0;

  reset_fixture();
  read_code = 1;
  REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == 7);
  REQUIRE(copy_count == 0 && log_count == 0);
  return true;
}

static bool test_response_success_boundaries(void)
{
  static const u8 codes[] = { 1, 15 };
  size_t index;

  for (index = 0; index < ARRAY_SIZE(codes); index++) {
    u8 code = 0;

    reset_fixture();
    read_code = codes[index];
    tcm.resp_buf.data_length = 4;
    REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == 0);
    REQUIRE(copy_count == 1 && copy_dst == &event_data);
    REQUIRE(copy_src == &tcm.resp_buf && log_count == 0);
  }
  return true;
}

static bool test_response_copy_failure(void)
{
  u8 code = 0;

  reset_fixture();
  read_code = 9;
  copy_result = -28;
  tcm.resp_buf.data_length = 4;
  REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == -28);
  REQUIRE(copy_src == &tcm.resp_buf && log_count == 1);
  REQUIRE(strcmp(logs[0],
                 "\0013[error] syna_tcm_get_event_data: Fail to copy data, status code: 9\n") == 0);
  return true;
}

static bool test_noncopy_codes(void)
{
  static const u8 codes[] = { 0, 0xff };
  size_t index;

  for (index = 0; index < ARRAY_SIZE(codes); index++) {
    u8 code = 0x7a;

    reset_fixture();
    read_code = codes[index];
    tcm.report_buf.data_length = 4;
    tcm.resp_buf.data_length = 4;
    REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == 7);
    REQUIRE(code == codes[index] && copy_count == 0 && log_count == 0);
  }
  return true;
}

static bool test_positive_read_result_preserved(void)
{
  u8 code = 0;

  reset_fixture();
  read_result = 1234;
  read_code = 0xff;
  REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == 1234);
  REQUIRE(read_count == 1 && copy_count == 0);
  return true;
}

static bool test_only_selected_buffer_is_copied(void)
{
  u8 code = 0;

  reset_fixture();
  read_code = 0x10;
  tcm.report_buf.data_length = 4;
  tcm.resp_buf.data_length = 4;
  REQUIRE(syna_tcm_get_event_data(&tcm, &code, &event_data) == 0);
  REQUIRE(copy_count == 1 && copy_src == &tcm.report_buf);
  return true;
}

struct test_case {
  const char *name;
  bool (*run)(void);
};

int main(void)
{
  static const struct test_case tests[] = {
    { "signature_contract", test_signature_contract },
    { "null_tcm", test_null_tcm },
    { "null_code", test_null_code },
    { "read_failure", test_read_failure },
    { "null_event_data", test_null_event_data },
    { "report_empty", test_report_empty },
    { "report_success_boundaries", test_report_success_boundaries },
    { "report_copy_failure", test_report_copy_failure },
    { "response_empty", test_response_empty },
    { "response_success_boundaries", test_response_success_boundaries },
    { "response_copy_failure", test_response_copy_failure },
    { "noncopy_codes", test_noncopy_codes },
    { "positive_read_result_preserved", test_positive_read_result_preserved },
    { "only_selected_buffer_is_copied", test_only_selected_buffer_is_copied },
  };
  unsigned int passed = 0;
  size_t index;

  for (index = 0; index < ARRAY_SIZE(tests); index++) {
    if (!tests[index].run()) {
      printf("FAIL %s\n", tests[index].name);
      continue;
    }
    printf("PASS %s\n", tests[index].name);
    passed++;
  }

  printf("SUMMARY %u/%zu passed\n", passed, ARRAY_SIZE(tests));
  return passed == ARRAY_SIZE(tests) ? 0 : 1;
}
