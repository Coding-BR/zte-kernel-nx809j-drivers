#include <assert.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct device {
  unsigned char padding[744];
  void *of_node;
};

static const char node_format[] = "\0016[info ] %s: %s: node = %s\n";
static const char no_device_format[] = "\0016[info ] %s: %s: no device!\n";
static const char not_probed_format[] =
    "\0016[info ] %s: %s: device has not been probed yet\n";

static char device_node_name[100];
static unsigned long long active_panel;
static unsigned int phandle_count;
static int parse_results[8];
static unsigned long long panel_results[8];
static const char *node_names[8];
struct fake_node {
  const char *name;
};
static struct fake_node fake_nodes[8];
static unsigned int find_calls;

static unsigned int printk_calls;
static const char *last_format;
static const char *last_function;
static const char *last_component;
static const char *last_node;
static unsigned char host_status_register[1824];

static unsigned long long host_read_status_reg(unsigned long long reg)
{
  (void)reg;
  return (unsigned long long)(uintptr_t)host_status_register;
}

static int test_printk(const char *format, ...)
{
  va_list args;

  va_start(args, format);
  printk_calls++;
  last_format = format;
  last_function = va_arg(args, const char *);
  last_component = va_arg(args, const char *);
  last_node = NULL;
  if (strcmp(format, node_format) == 0)
    last_node = va_arg(args, const char *);
  va_end(args);
  return 0;
}

static int of_count_phandle_with_args(long long node, const char *name, int cells)
{
  (void)node;
  (void)name;
  (void)cells;
  return (int)phandle_count;
}

static int _of_parse_phandle_with_args(long long node, const char *name,
                                       int index, int flags,
                                       unsigned int phandle_index, void *out)
{
  (void)node;
  (void)name;
  (void)index;
  (void)flags;
  assert(phandle_index < 8);
  if (parse_results[phandle_index] == 0) {
    fake_nodes[phandle_index].name = node_names[phandle_index];
    *(const char **)out = (const char *)(void *)&fake_nodes[phandle_index];
  }
  return parse_results[phandle_index];
}

static unsigned long long of_drm_find_panel(const char **node)
{
  (void)node;
  assert(find_calls < 8);
  return panel_results[find_calls++];
}

#define __int64 long long
#define __fastcall
#define _QWORD unsigned long long
#define nullptr 0
#define SP_EL0 0
#define _ReadStatusReg(reg) host_read_status_reg((unsigned long long)(reg))
#define printk test_printk
#define of_count_phandle_with_args of_count_phandle_with_args
#define _of_parse_phandle_with_args _of_parse_phandle_with_args
#define of_drm_find_panel of_drm_find_panel
#define DEVICE_NODE_NAME device_node_name
#define unk_31E60 "\0016[info ] %s: %s: node = %s\n"
#define unk_33BEE "\0016[info ] %s: %s: no device!\n"
#define unk_3351C "\0016[info ] %s: %s: device has not been probed yet\n"
#include "../../../reconstructed/zte_tpd/syna_ts_check_dt.c"
#undef unk_3351C
#undef unk_33BEE
#undef unk_31E60
#undef DEVICE_NODE_NAME
#undef of_drm_find_panel
#undef _of_parse_phandle_with_args
#undef of_count_phandle_with_args
#undef printk
#undef _ReadStatusReg
#undef SP_EL0
#undef nullptr
#undef _QWORD
#undef __fastcall
#undef __int64

static void reset_observations(void)
{
  unsigned int i;

  memset(device_node_name, 0, sizeof(device_node_name));
  active_panel = 0;
  phandle_count = 0;
  find_calls = 0;
  printk_calls = 0;
  last_format = NULL;
  last_function = NULL;
  last_component = NULL;
  last_node = NULL;
  for (i = 0; i < 8; ++i) {
    parse_results[i] = 0;
    panel_results[i] = 0;
    node_names[i] = NULL;
  }
}

static void assert_no_log(void)
{
  assert(printk_calls == 0);
  assert(last_format == NULL);
  assert(last_function == NULL);
  assert(last_component == NULL);
  assert(last_node == NULL);
}

static void assert_log(const char *format, const char *node)
{
  assert(printk_calls >= 1);
  assert(last_format != NULL);
  assert(strcmp(last_format, format) == 0);
  assert(last_function != NULL);
  assert(strcmp(last_function, "syna_ts_check_dt") == 0);
  assert(last_component != NULL);
  assert(strcmp(last_component, "syna_ts_check_dt") == 0);
  if (node != NULL) {
    assert(last_node == node);
  } else {
    assert(last_node == NULL);
  }
}

static void set_entry(unsigned int index, int parse_result,
                      unsigned long long panel, const char *name)
{
  parse_results[index] = parse_result;
  panel_results[index] = panel;
  node_names[index] = name;
}

int main(void)
{
  struct device dev;
  const char *panel_name = "panel0";
  const char *panel_name_second = "panel1";

  memset(&dev, 0, sizeof(dev));
  dev.of_node = (void *)(uintptr_t)0x1111;

  reset_observations();
  assert(syna_ts_check_dt(&dev) == -19);
  assert_no_log();
  assert(find_calls == 0);

  reset_observations();
  phandle_count = 1;
  set_entry(0, 0, 0x12345000ULL, panel_name);
  assert(syna_ts_check_dt(&dev) == 0);
  assert(find_calls == 1);
  assert(active_panel == 0x12345000ULL);
  assert(strcmp(device_node_name, panel_name) == 0);
  assert_log(node_format, panel_name);

  reset_observations();
  phandle_count = 2;
  set_entry(0, 0, (unsigned long long)-19, panel_name);
  set_entry(1, 0, 0x12346000ULL, panel_name_second);
  assert(syna_ts_check_dt(&dev) == 0);
  assert(find_calls == 2);
  assert(active_panel == 0x12346000ULL);
  assert(strcmp(device_node_name, panel_name_second) == 0);
  assert(printk_calls == 3);
  assert(strcmp(last_format, node_format) == 0);
  assert(last_node == panel_name_second);

  reset_observations();
  phandle_count = 1;
  set_entry(0, 0, (unsigned long long)-517, panel_name);
  assert(syna_ts_check_dt(&dev) == -517);
  assert(find_calls == 1);
  assert(printk_calls == 2);
  assert_log(not_probed_format, NULL);

  reset_observations();
  phandle_count = 1;
  set_entry(0, 0, (unsigned long long)-5, panel_name);
  assert(syna_ts_check_dt(&dev) == -1);
  assert(find_calls == 1);
  assert_log(node_format, panel_name);

  reset_observations();
  phandle_count = 1;
  set_entry(0, -2, (unsigned long long)-19, panel_name);
  assert(syna_ts_check_dt(&dev) == -19);
  assert(find_calls == 1);
  assert_log(no_device_format, NULL);

  reset_observations();
  phandle_count = 2;
  set_entry(0, -2, (unsigned long long)-19, panel_name);
  set_entry(1, 0, 0x12347000ULL, panel_name_second);
  assert(syna_ts_check_dt(&dev) == 0);
  assert(find_calls == 2);
  assert(active_panel == 0x12347000ULL);
  assert(strcmp(device_node_name, panel_name_second) == 0);
  assert(printk_calls == 2);
  assert(strcmp(last_format, node_format) == 0);
  assert(last_node == panel_name_second);

  puts("syna_ts_check_dt host oracle: PASS");
  return 0;
}
