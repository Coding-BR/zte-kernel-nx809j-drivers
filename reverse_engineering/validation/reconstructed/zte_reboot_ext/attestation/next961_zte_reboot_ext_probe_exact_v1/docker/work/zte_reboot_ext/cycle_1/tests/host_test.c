#define ZTE_REBOOT_EXT_HOST_TEST 1
#include "../zte_reboot_ext.c"
#include <stdarg.h>

struct fake_state {
	int failures, alloc_fail, kobject_result, sysfs_result;
	int register_probe_result, register_probe_calls, unregister_probe_calls;
	int notifier_register_calls, notifier_unregister_calls;
	int driver_register_result, driver_register_calls, driver_unregister_calls;
	int kobject_put_calls, kobject_del_calls, panic_calls;
	int get_error[4], read_error[4];
	size_t read_len[4];
	u8 read_value[4], write_value[4];
	int write_calls[4];
	u8 ss_panic;
	struct platform_driver *driver;
};

static struct fake_state fake;
static int total_failures;
static struct nvmem_cell cells[4] = {{0}, {1}, {2}, {3}};
static struct kobject root_kobject;
struct kobject *kernel_kobj = &root_kobject;
int panic_notifier_list;

#define EXPECT(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		fake.failures++; total_failures++; \
	} \
} while (0)

static void reset_fake(void)
{
	memset(&fake, 0, sizeof(fake));
	for (int i = 0; i < 4; i++) {
		fake.read_len[i] = 1;
		fake.read_value[i] = (u8)('A' + i);
	}
	memcpy(saved_nvmem_buf, "1234\0\0\0\0\0\0\0\0", 12);
	memcpy(read_nvmem_buf, "567856785678", 12);
	once_entry_panic_count = 0;
}

void fake_log(const char *format, ...) { (void)format; }
void fake_panic(const char *format, ...) { (void)format; fake.panic_calls++; }

void *devm_kzalloc(struct device *device, size_t size, int flags)
{ (void)device; (void)flags; return fake.alloc_fail ? NULL : calloc(1, size); }

int kobject_init_and_add(struct kobject *object, const struct kobj_type *type,
			 struct kobject *parent, const char *format, ...)
{ (void)object; (void)type; (void)parent; (void)format; return fake.kobject_result; }
void kobject_put(struct kobject *object) { (void)object; fake.kobject_put_calls++; }
void kobject_del(struct kobject *object) { (void)object; fake.kobject_del_calls++; }
int sysfs_create_group(struct kobject *object, const struct attribute_group *group)
{ (void)object; (void)group; return fake.sysfs_result; }

static int cell_id(const char *name)
{
	if (!strcmp(name, "vendor_zlog_ss")) return 0;
	if (!strcmp(name, "vendor_zlog_w")) return 1;
	if (!strcmp(name, "vendor_zlog_p")) return 2;
	return 3;
}

struct nvmem_cell *nvmem_cell_get(struct device *device, const char *name)
{
	int id = cell_id(name); (void)device;
	return fake.get_error[id] ? ERR_PTR(fake.get_error[id]) : &cells[id];
}
void *nvmem_cell_read(struct nvmem_cell *cell, size_t *length)
{
	u8 *value;
	if (fake.read_error[cell->id]) return ERR_PTR(fake.read_error[cell->id]);
	*length = fake.read_len[cell->id];
	value = malloc(1);
	*value = fake.read_value[cell->id];
	return value;
}
int nvmem_cell_write(struct nvmem_cell *cell, const void *data, size_t length)
{
	EXPECT(length == 1); fake.write_calls[cell->id]++;
	fake.write_value[cell->id] = *(const u8 *)data; return 0;
}
int register_kretprobe(struct kretprobe *probe)
{ EXPECT(probe == &panic_probe); fake.register_probe_calls++; return fake.register_probe_result; }
void unregister_kretprobe(struct kretprobe *probe)
{ EXPECT(probe == &panic_probe); fake.unregister_probe_calls++; }
int atomic_notifier_chain_register(void *head, struct notifier_block *block)
{ (void)head; EXPECT(block != NULL); fake.notifier_register_calls++; return 0; }
int atomic_notifier_chain_unregister(void *head, struct notifier_block *block)
{ (void)head; EXPECT(block != NULL); fake.notifier_unregister_calls++; return 0; }
int platform_driver_register(struct platform_driver *driver)
{ fake.driver = driver; fake.driver_register_calls++; return fake.driver_register_result; }
void platform_driver_unregister(struct platform_driver *driver)
{ EXPECT(driver == &zte_reboot_ext_driver); fake.driver_unregister_calls++; }
int scnprintf(char *buffer, size_t size, const char *format, ...)
{
	int result; va_list args; va_start(args, format);
	result = vsnprintf(buffer, size, format, args); va_end(args);
	return result < (int)size ? result : (int)size - 1;
}
u8 get_ss_panic_buf_byte(void) { return fake.ss_panic; }

static void test_fill_and_format(void)
{
	u8 out[8]; int string_index;
	memset(out, 0xaa, sizeof(out));
	fill_nvmem_buf("abcdef", "fmt", out, 2, 3);
	EXPECT(!memcmp(out + 2, "abc", 3));
	memset(out, 0xaa, sizeof(out));
	fill_nvmem_buf(NULL, "xy", out, 1, 4);
	EXPECT(out[1] == 'x' && out[2] == 'y' && out[3] == 0 && out[4] == 0);
	EXPECT(count_format_args("x %d %s %% %x", &string_index) == 3);
	EXPECT(string_index == 2);
	EXPECT(count_format_args("%*s", &string_index) == -1);
	EXPECT(count_format_args(NULL, &string_index) == 0);
	EXPECT(count_format_args("x", NULL) == -1);
}

static void test_sysfs(void)
{
	char output[64] = {0};
	reset_fake();
	read_nvmem_buf[0] = 'A'; read_nvmem_buf[1] = 1;
	EXPECT(boot_nvmem_show(NULL, &boot_nvmem_attr.attr, output) == 13);
	EXPECT(output[0] == 'A' && output[1] == '*' && output[12] == '\n');
	EXPECT(attr_show(NULL, &boot_nvmem_attr.attr, output) == 13);
	EXPECT(attr_store(NULL, &boot_nvmem_attr.attr, "x", 1) == -EINVAL);
	EXPECT(boot_nvmem_store(NULL, NULL, "x", 1) == -EINVAL);
}

static void test_panic_paths(void)
{
	struct pt_regs regs = {0};
	char format[] = "failure %s %d";
	char argument[] = "modem";
	reset_fake(); regs.regs[0] = (unsigned long)format;
	regs.regs[1] = (unsigned long)argument; regs.regs[2] = 7;
	EXPECT(entry_panic(NULL, &regs) == 0);
	EXPECT(saved_nvmem_buf[3] == 'P' && saved_nvmem_buf[4] == 'm');
	EXPECT(once_entry_panic_count == 1);
	EXPECT(entry_panic(NULL, &regs) == 0 && once_entry_panic_count == 2);
}

static void test_save_and_notifier(void)
{
	struct zte_reboot_ext_data data = {0};
	reset_fake(); data.zlog_ss_cell=&cells[0]; data.zlog_w_cell=&cells[1];
	data.zlog_p_cell=&cells[2]; data.zlog_panic_ext_cell=&cells[3];
	save_panic_buf_data_to_nvmem(NULL);
	save_panic_buf_data_to_nvmem(&data);
	for (int i=0;i<4;i++) EXPECT(fake.write_calls[i] == 1);
	fake.ss_panic = 0x5a;
	EXPECT(zte_reboot_ext_panic(&data.panic_nb, 0, NULL) == NOTIFY_OK);
	EXPECT(saved_nvmem_buf[0] == 0x5a && fake.write_calls[0] == 2);
	data.zlog_p_cell = ERR_PTR(-EIO);
	save_panic_buf_data_to_nvmem(&data);
}

static void test_probe_remove_lifecycle(void)
{
	struct platform_device pdev = {0};
	reset_fake(); fake.alloc_fail=1; EXPECT(zte_reboot_ext_probe(&pdev) == -ENOMEM);
	reset_fake(); fake.kobject_result=-EIO; EXPECT(zte_reboot_ext_probe(&pdev) == -EIO);
	EXPECT(fake.kobject_put_calls == 1);
	reset_fake(); fake.sysfs_result=-EIO; EXPECT(zte_reboot_ext_probe(&pdev) == -EIO);
	EXPECT(fake.kobject_del_calls == 1);
	reset_fake(); fake.read_len[0]=0; fake.read_error[1]=-EIO; fake.get_error[2]=-ENOENT;
	EXPECT(zte_reboot_ext_probe(&pdev) == 0);
	EXPECT(pdev.drvdata != NULL && fake.register_probe_calls == 1);
	EXPECT(fake.notifier_register_calls == 1);
	zte_reboot_ext_remove(&pdev);
	EXPECT(fake.notifier_unregister_calls == 1 && fake.unregister_probe_calls == 1);
	reset_fake(); EXPECT(init_module() == 0 && fake.driver_register_calls == 1);
	EXPECT(!strcmp(fake.driver->driver.name, "zte-reboot-ext"));
	cleanup_module(); EXPECT(fake.driver_unregister_calls == 1);
}

int main(void)
{
	reset_fake(); test_fill_and_format(); test_sysfs(); test_panic_paths();
	test_save_and_notifier(); test_probe_remove_lifecycle();
	if (total_failures) return 1;
	puts("PASS zte_reboot_ext host tests");
	return 0;
}
