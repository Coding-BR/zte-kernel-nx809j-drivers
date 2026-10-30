/* MP4 T01-T22: direct inclusion of the candidate; assertions from stock contracts. */
#include "shim.h"
#include "candidate/ftmmod.c"
#undef snprintf
#undef sscanf

enum event_kind { LOG, REGISTER, PROBE_API, FIND_NODE, MAP_NODE, MAP_FUSE,
 GROUP, SECBOOT, QSEE, FORMAT, PARSE, BARRIER, UNREG_DRIVER, UNREG_DEVICE };
struct event { enum event_kind kind; uintptr_t a, b, c; char text[200]; };
static struct event events[64];
static unsigned nevents, cases;
static const char *case_name;
#define CHECK(x) do { if (!(x)) { fprintf(stderr, "FAIL %s line %d: %s\n", case_name, __LINE__, #x); exit(2); } } while (0)
static struct event *event(enum event_kind kind)
{
 CHECK(nevents < 64);
 struct event *e = &events[nevents++];
 memset(e, 0, sizeof(*e)); e->kind = kind; return e;
}
static void sequence(const enum event_kind *expected, size_t n)
{
 CHECK(nevents == n);
 for (size_t i = 0; i < n; ++i) CHECK(events[i].kind == expected[i]);
}
#define SEQUENCE(...) do { const enum event_kind e[] = {__VA_ARGS__}; sequence(e, sizeof(e)/sizeof(e[0])); } while (0)
static void log_is(unsigned i, int level, const char *text)
{ CHECK(i < nevents && events[i].kind == LOG && events[i].a == (uintptr_t)level); CHECK(!strcmp(events[i].text, text)); }

bool arm64_use_ng_mappings;
unsigned char test_module;
static struct device_node node;
static struct device caller;
static struct platform_device pdev;
static u32 memory_words[4];
static u64 fuse_memory;
static int reg_ret, api_ret, group_ret, sec_ret, qsee_ret;
static bool node_found, node_mapped, fuse_mapped, integrate_core, device_live, driver_live;
static u64 qsee_returns[3];
static unsigned expected_flag;
static u32 expected_store;
static void *efs_base(void) { return &memory_words[1]; }

static void begin(const char *name)
{
 case_name = name; ++cases; nevents = 0; memset(events, 0, sizeof(events));
 reg_ret = api_ret = group_ret = sec_ret = qsee_ret = 0;
 node_found = node_mapped = fuse_mapped = true;
 integrate_core = device_live = driver_live = false;
 memset(qsee_returns, 0, sizeof(qsee_returns)); arm64_use_ng_mappings = false;
 expected_flag = expected_store = 0;
 memory_words[0] = 0x12345678; memory_words[1] = 0x87654321;
 memory_words[2] = 0xabcdef01; memory_words[3] = 0x55aa55aa;
 ftm_sysdev_priv_data_0 = 0; ftm_sysdev_priv_data_1 = NULL; ftm_sysdev_priv_data_2 = NULL;
}
void test_log(int level, const char *fmt, ...)
{
 struct event *e = event(LOG); e->a = level;
 va_list ap; va_start(ap, fmt); vsnprintf(e->text, sizeof(e->text), fmt, ap); va_end(ap);
}
int test_snprintf(char *buf, size_t n, const char *fmt, ...)
{
 struct event *e = event(FORMAT); e->a = n;
 CHECK(buf != NULL && n == 4096 && !strcmp(fmt, "%d\n"));
 va_list ap; va_start(ap, fmt); int result = vsnprintf(buf, n, fmt, ap); va_end(ap);
 return result;
}
int test_sscanf(const char *buf, const char *fmt, ...)
{
 event(PARSE); CHECK(buf != NULL && !strcmp(fmt, "%d"));
 va_list ap; va_start(ap, fmt); int result = vsscanf(buf, fmt, ap); va_end(ap);
 return result;
}
void test_barrier(const char *scope)
{
 event(BARRIER); CHECK(!strcmp(scope, "sy"));
 CHECK(memory_words[2] == expected_store);
 CHECK(memory_words[0] == 0x12345678 && memory_words[1] == 0x87654321 && memory_words[3] == 0x55aa55aa);
}
int platform_device_register(struct platform_device *dev)
{
 event(REGISTER); CHECK(dev == &ftm_dev); CHECK(!strcmp(dev->name, "zte_ftm") && dev->id == -1);
 if (!reg_ret) device_live = true;
 return reg_ret;
}
int __platform_driver_probe(struct platform_driver *drv, int (*probe)(struct platform_device *), void *owner)
{
 event(PROBE_API); CHECK(drv == &ftm_driver && probe == ftm_probe && owner == THIS_MODULE);
 CHECK(!strcmp(drv->driver.name, "zte_ftm") && drv->remove == ftm_remove);
 if (!integrate_core) return api_ret;
 /* Bounded model of platform.c: no successful binding => -ENODEV and unregister. */
 driver_live = true;
 if (probe(&pdev)) { platform_driver_unregister(drv); return -ENODEV; }
 return 0;
}
void platform_driver_unregister(struct platform_driver *drv)
{ event(UNREG_DRIVER); CHECK(drv == &ftm_driver); driver_live = false; }
void platform_device_unregister(struct platform_device *dev)
{ event(UNREG_DEVICE); CHECK(dev == &ftm_dev); device_live = false; }
struct device_node *of_find_compatible_node(struct device_node *from, const char *type, const char *compatible)
{
 event(FIND_NODE); CHECK(from == NULL && type == NULL);
 CHECK(!strcmp(compatible, "qcom,msm-imem-efs-golden-copy")); return node_found ? &node : NULL;
}
void *of_iomap(struct device_node *np, int index)
{ event(MAP_NODE); CHECK(np == &node && index == 0); return node_mapped ? efs_base() : NULL; }
void *ioremap_prot(unsigned long addr, size_t size, unsigned long prot)
{
 event(MAP_FUSE);
 CHECK(addr == 0x58000 && size == 0x1000);
 CHECK(prot == (arm64_use_ng_mappings ? 0x0068000000000f13UL : 0x0068000000000713UL));
 CHECK(ftm_sysdev_priv_data_0 == 1);
 if (node_found) CHECK(ftm_sysdev_priv_data_2 == (node_mapped ? efs_base() : NULL));
 return fuse_mapped ? &fuse_memory : NULL;
}
int sysfs_create_group(struct kobject *obj, const struct attribute_group *group)
{
 event(GROUP); CHECK(obj == &pdev.dev.kobj && group == &ftm_attr_grp);
 CHECK(ftm_sysdev_priv_data_1 == &fuse_memory);
 CHECK(!strcmp(group->name, "zte_ftm") && group->attrs == ftm_attrs);
 CHECK(group->attrs[0] == &dev_attr_secboot_status.attr && group->attrs[1] == &dev_attr_simlock_status.attr);
 CHECK(group->attrs[2] == &dev_attr_perm_status.attr && group->attrs[3] == &dev_attr_efs_recovery.attr && group->attrs[4] == NULL);
 return group_ret;
}
int is_secboot_device(struct device *dev)
{ event(SECBOOT); CHECK(dev == &caller); return sec_ret; }
int qcom_scm_qseecom_call(u32 id, struct qseecom_scm_desc *d, bool atomic)
{
 event(QSEE); CHECK(id == 0x02000807 && atomic && d->arginfo == 2);
 CHECK(d->args[0] == (expected_flag ? 0x58030 : 0x30));
 for (unsigned i = 1; i < 10; ++i) CHECK(d->args[i] == 0);
 for (unsigned i = 0; i < 3; ++i) { CHECK(d->ret[i] == 0); d->ret[i] = qsee_returns[i]; }
 return qsee_ret;
}

static void test_init(void)
{
 const int errors[] = {-5, -12, 1, 0};
 for (unsigned a = 0; a < 4; ++a) for (unsigned b = 0; b < 4; ++b) {
  begin("T01-T03 init API propagation"); reg_ret = errors[a]; api_ret = errors[b];
  int result = ftm_init();
  if (reg_ret) { CHECK(result == -ENODEV && !device_live); SEQUENCE(LOG, REGISTER, LOG); }
  else { CHECK(result == api_ret && device_live); SEQUENCE(LOG, REGISTER, PROBE_API, LOG); }
  log_is(0, 6, "ftm_init: e\n");
 }
}
static void test_probe(void)
{
 const int errors[] = {0, -5, -22};
 for (unsigned found = 0; found < 2; ++found)
 for (unsigned mapped = 0; mapped < 2; ++mapped)
 for (unsigned fuse = 0; fuse < 2; ++fuse)
 for (unsigned ng = 0; ng < 2; ++ng)
 for (unsigned err = 0; err < 3; ++err) {
  begin("T04-T08,T20 probe effects"); node_found = found; node_mapped = mapped;
  fuse_mapped = fuse; arm64_use_ng_mappings = ng; group_ret = errors[err];
  /* Prior state is retained if no node is found; mapping NULL must overwrite it. */
  ftm_sysdev_priv_data_2 = efs_base();
  int result = ftm_probe(&pdev);
  CHECK(result == (fuse ? group_ret : -ENOMEM));
  CHECK(ftm_sysdev_priv_data_0 == 1 && ftm_sysdev_priv_data_1 == (fuse ? &fuse_memory : NULL));
  CHECK(ftm_sysdev_priv_data_2 == ((!found || mapped) ? efs_base() : NULL));
  enum event_kind expected[10]; size_t n = 0;
  expected[n++] = LOG; expected[n++] = FIND_NODE;
  if (found) expected[n++] = MAP_NODE;
  if (!found || !mapped) expected[n++] = LOG;
  expected[n++] = MAP_FUSE;
  if (fuse) expected[n++] = GROUP;
  expected[n++] = LOG; sequence(expected, n);
  log_is(0, 6, "ftm_probe: e\n");
  if (!fuse) log_is(n-1, 3, "ftm_probe: failed to map memory\n");
  if (fuse && !group_ret) log_is(n-1, 6, "ftm_probe: x\n");
 }
 for (unsigned fail = 0; fail < 2; ++fail) {
  begin("T18 bounded platform binding failure"); integrate_core = true;
  fuse_mapped = fail != 0; group_ret = -5;
  CHECK(ftm_init() == -ENODEV); CHECK(device_live && !driver_live);
  CHECK(events[nevents-2].kind == UNREG_DRIVER && events[nevents-1].kind == LOG);
  unsigned removals = 0; for (unsigned i = 0; i < nevents; ++i) removals += events[i].kind == UNREG_DEVICE;
  CHECK(removals == 0);
 }
}
static void test_show(void)
{
 const u32 values[] = {0, 1, 0x7fffffff, 0x80000000, 0xffffffff};
 char out[4096], expected[64];
 begin("T09 null EFS mapping"); CHECK(show_efs_recovery(&caller, &dev_attr_efs_recovery, out) == -EFAULT); SEQUENCE(LOG);
 for (unsigned i = 0; i < 5; ++i) {
  begin("T10,T21 EFS signed output"); ftm_sysdev_priv_data_2 = efs_base(); memory_words[2] = values[i];
  int n = snprintf(expected, sizeof(expected), "%d\n", (int32_t)values[i]);
  CHECK(show_efs_recovery(&caller, &dev_attr_efs_recovery, out) == n && !strcmp(out, expected)); SEQUENCE(LOG, FORMAT);
  CHECK(memory_words[2] == values[i]);
  begin("T14,T21 secboot argument and output"); sec_ret = (int32_t)values[i];
  CHECK(show_secboot_status(&caller, &dev_attr_secboot_status, out) == n && !strcmp(out, expected)); SEQUENCE(SECBOOT, FORMAT);
 }
 begin("T17 permission"); CHECK(show_permission_status(&caller, &dev_attr_perm_status, out) == 2 && !strcmp(out, "0\n")); SEQUENCE(LOG, FORMAT);
}
static void test_store_case(const char *input, size_t count, int parsed)
{
 char buffer[4097]; CHECK(count <= 4096);
 memset(buffer, ' ', count); size_t length = strlen(input); CHECK(length <= count);
 memcpy(buffer, input, length); buffer[count] = '\0';
 ftm_sysdev_priv_data_2 = efs_base(); expected_store = parsed != 0;
 CHECK(store_efs_recovery(&caller, &dev_attr_efs_recovery, buffer, count) == (ssize_t)count);
 CHECK(memory_words[2] == expected_store); SEQUENCE(LOG, PARSE, LOG, BARRIER, LOG);
 log_is(0, 6, "store_efs_recovery: e\n"); log_is(4, 6, "store_efs_recovery: x\n");
 char expected[100]; snprintf(expected, sizeof(expected), "store_efs_recovery: efs_recovery_enable: %d\n", parsed); log_is(2, 6, expected);
}
static void test_store(void)
{
 begin("T11 null EFS mapping"); CHECK(store_efs_recovery(&caller, &dev_attr_efs_recovery, "1", 1) == -EFAULT); SEQUENCE(LOG);
 const char *inputs[] = {"", "0", "1", "-1", "x", "2147483647", "-2147483648", "  +2trailing"};
 const int values[] = {0, 0, 1, -1, 0, 2147483647, (-2147483647-1), 2};
 for (unsigned i = 0; i < 8; ++i) for (unsigned large = 0; large < 2; ++large) {
  begin("T12-T13,T22 store bounds, parse, barrier"); test_store_case(inputs[i], large ? 4096 : strlen(inputs[i]), values[i]);
 }
}
static void test_simlock(void)
{
 const u64 low[] = {0, 0x40000000, 0x80000000, 0xc0000000, 0xffffffffffffffffULL, 0x12345678c0000000ULL};
 const u64 high[] = {0, 1, 0xffffffff00000000ULL, 0xabcdef0198765432ULL};
 const int errors[] = {0, -5, 1}; char out[4096], expected[200];
 for (unsigned flag = 0; flag < 2; ++flag) for (unsigned l = 0; l < 6; ++l)
 for (unsigned h = 0; h < 4; ++h) for (unsigned e = 0; e < 3; ++e) {
  begin("T15-T16,T19,T21 QSEE contract"); expected_flag = flag; ftm_sysdev_priv_data_0 = flag;
  qsee_returns[0] = low[l]; qsee_returns[1] = high[h]; qsee_returns[2] = 0xabcdef;
  qsee_ret = errors[e];
  CHECK(show_simlock_status(&caller, &dev_attr_simlock_status, out) == 2);
  bool status = !qsee_ret && ((u32)low[l] >> 30) == 3;
  CHECK(!strcmp(out, status ? "1\n" : "0\n"));
  if (qsee_ret) { SEQUENCE(QSEE, LOG, LOG, FORMAT); }
  else { SEQUENCE(QSEE, LOG, FORMAT); }
  u64 composite = qsee_ret ? 0 : (u64)(u32)low[l] + ((u64)(u32)high[h] * 0x100000000ULL);
  snprintf(expected, sizeof(expected), "show_simlock_status: simlock_fuse_status = %16llx\n", (unsigned long long)composite);
  log_is(qsee_ret ? 2 : 1, 6, expected);
 }
}
static void test_tables_cleanup(void)
{
 begin("callback tables and remove/exit");
 const char *names[] = {"secboot_status", "simlock_status", "perm_status", "efs_recovery"};
 const struct device_attribute *attrs[] = {&dev_attr_secboot_status, &dev_attr_simlock_status, &dev_attr_perm_status, &dev_attr_efs_recovery};
 for (unsigned i = 0; i < 4; ++i) { CHECK(!strcmp(attrs[i]->attr.name, names[i])); CHECK(attrs[i]->attr.mode == (i == 3 ? 0644U : 0444U)); }
 CHECK(attrs[0]->show == show_secboot_status && attrs[1]->show == show_simlock_status);
 CHECK(attrs[2]->show == show_permission_status && attrs[3]->show == show_efs_recovery);
 CHECK(!attrs[0]->store && !attrs[1]->store && !attrs[2]->store && attrs[3]->store == store_efs_recovery);
 ftm_remove(&pdev); SEQUENCE(LOG, LOG); log_is(0, 6, "ftm_remove: e\n"); log_is(1, 6, "ftm_remove: x\n");
 begin("T17 cleanup order"); device_live = driver_live = true; ftm_exit(); SEQUENCE(UNREG_DRIVER, UNREG_DEVICE); CHECK(!device_live && !driver_live);
}
int main(void)
{
 test_init(); test_probe(); test_show(); test_store(); test_simlock(); test_tables_cleanup();
 printf("{\"passed\":true,\"cases\":%u,\"contract_tests\":22,\"hardware\":\"NOT_TESTED\"}\n", cases);
 return 0;
}
