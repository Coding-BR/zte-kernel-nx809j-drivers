#define ZTE_RAMDISK_REBOOT_HOST_TEST 1
#include "../zte_ramdisk_reboot.c"

struct fake_state {
	bool allocation_failure;
	int kobject_result;
	int group_result;
	int nvmem_get_error;
	int nvmem_read_error;
	size_t nvmem_read_length;
	unsigned char nvmem_read_value;
	int nvmem_write_result;
	int parse_error;
	bool reserved_mem_missing;
	bool map_failure;
	void *mapped_address;
	struct reserved_mem reserved;
	struct nvmem_cell cell;
	int kobject_put_calls;
	int kobject_del_calls;
	int group_calls;
	int nvmem_write_calls;
	int unmap_calls;
	int platform_register_result;
	int platform_register_calls;
	int platform_unregister_calls;
	struct platform_driver *registered_driver;
	unsigned char last_write;
};

static struct fake_state fake;
static struct kobject root_kobject;
struct kobject *kernel_kobj = &root_kobject;
static int failures;

#define EXPECT(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		failures++; \
	} \
} while (0)

static void reset_fake(void)
{
	memset(&fake, 0, sizeof(fake));
	fake.nvmem_read_length = 1;
	fake.nvmem_read_value = 0x5a;
	fake.reserved.base = 0x12340000;
	fake.reserved.size = 0x3000;
	ramdisk_rb = NULL;
	saved_ramdisk_buf = 0;
	read_ramdisk_buf = 0;
	memset(extract_buffer, 0, sizeof(extract_buffer));
}

void fake_log(const char *format, ...)
{
	(void)format;
}

void *devm_kzalloc(struct device *dev, size_t size, unsigned int flags)
{
	(void)dev;
	(void)flags;
	return fake.allocation_failure ? NULL : calloc(1, size);
}

void kfree(const void *pointer) { free((void *)pointer); }

int kobject_init_and_add(struct kobject *kobj, struct kobj_type *type,
			 struct kobject *parent, const char *format, ...)
{
	(void)kobj;
	(void)type;
	(void)parent;
	(void)format;
	return fake.kobject_result;
}

void kobject_put(struct kobject *kobj) { (void)kobj; fake.kobject_put_calls++; }
void kobject_del(struct kobject *kobj) { (void)kobj; fake.kobject_del_calls++; }

int sysfs_create_group(struct kobject *kobj, const struct attribute_group *group)
{
	(void)kobj;
	(void)group;
	fake.group_calls++;
	return fake.group_result;
}

struct nvmem_cell *nvmem_cell_get(struct device *dev, const char *name)
{
	(void)dev;
	EXPECT(strcmp(name, "vendor_ramdisk_zlog") == 0);
	return fake.nvmem_get_error ? ERR_PTR(fake.nvmem_get_error) : &fake.cell;
}

void *nvmem_cell_read(struct nvmem_cell *cell, size_t *length)
{
	unsigned char *result;
	(void)cell;
	if (fake.nvmem_read_error)
		return ERR_PTR(fake.nvmem_read_error);
	*length = fake.nvmem_read_length;
	result = calloc(fake.nvmem_read_length ? fake.nvmem_read_length : 1, 1);
	if (fake.nvmem_read_length)
		result[0] = fake.nvmem_read_value;
	return result;
}

int nvmem_cell_write(struct nvmem_cell *cell, const void *buffer, size_t length)
{
	(void)cell;
	EXPECT(length == 1);
	fake.nvmem_write_calls++;
	fake.last_write = *(const unsigned char *)buffer;
	return fake.nvmem_write_result;
}

int of_parse_phandle_with_args(const struct device_node *np, const char *list_name,
			       const char *cells_name, int index,
			       struct of_phandle_args *out_args)
{
	(void)np;
	(void)cells_name;
	(void)index;
	EXPECT(strcmp(list_name, "memory-region") == 0);
	if (fake.parse_error)
		return fake.parse_error;
	out_args->np = (struct device_node *)&root_kobject;
	return 0;
}

struct reserved_mem *of_reserved_mem_lookup(struct device_node *np)
{
	(void)np;
	return fake.reserved_mem_missing ? NULL : &fake.reserved;
}

void *devm_ioremap_wc(struct device *dev, phys_addr_t offset, size_t size)
{
	(void)dev;
	EXPECT(offset == fake.reserved.base);
	EXPECT(size == fake.reserved.size);
	return fake.map_failure ? NULL : fake.mapped_address;
}

void devm_iounmap(struct device *dev, void *address)
{
	(void)dev;
	EXPECT(address == fake.mapped_address);
	fake.unmap_calls++;
}

void platform_set_drvdata(struct platform_device *pdev, void *data)
{
	pdev->driver_data = data;
}

int platform_driver_register(struct platform_driver *driver)
{
	fake.platform_register_calls++;
	fake.registered_driver = driver;
	return fake.platform_register_result;
}

void platform_driver_unregister(struct platform_driver *driver)
{
	EXPECT(driver == fake.registered_driver);
	fake.platform_unregister_calls++;
}

int scnprintf(char *buffer, size_t size, const char *format, ...)
{
	int written;
	va_list arguments;
	va_start(arguments, format);
	written = vsnprintf(buffer, size, format, arguments);
	va_end(arguments);
	if (written < 0)
		return written;
	return written >= (int)size ? (int)size - 1 : written;
}

char *strnstr(const char *haystack, const char *needle, size_t length)
{
	size_t needle_length = strlen(needle);
	size_t index;
	if (!needle_length)
		return (char *)haystack;
	for (index = 0; index + needle_length <= length && haystack[index]; index++)
		if (!memcmp(haystack + index, needle, needle_length))
			return (char *)haystack + index;
	return NULL;
}

static void test_extractors(void)
{
	struct device device = { 0 };
	struct zte_ramdisk_reboot_data data = { .dev = &device };
	char output[64] = { 0 };

	EXPECT(extract_ocp_info(&data, "OCP Occured: railStatus: fault", output,
				sizeof(output)) == 0);
	EXPECT(strcmp(output, "rail") == 0);
	memset(output, 0, sizeof(output));
	EXPECT(extract_sn_info(&data, "Serial Number = ABC123", output,
			       sizeof(output)) == 0);
	EXPECT(strcmp(output, "ABC123") == 0);
	EXPECT(extract_ocp_info(&data, "invalid", output, sizeof(output)) == -1);
	EXPECT(extract_sn_info(&data, "invalid", output, sizeof(output)) == -1);
}

static void test_scanner(void)
{
	char log[] = "OCP Occured: railStatus: fault\r\nSerial Number = ABC123\r\n";
	const char *patterns[] = { "OCP Occured: ", "Serial Number" };
	int limits[] = { 1, 1 };
	char output[2][128] = { { 0 } };
	struct device device = { 0 };
	struct zte_ramdisk_reboot_data data = {
		.dev = &device,
		.size = sizeof(log) - 1,
		.vaddr = log,
	};

	EXPECT(zte_check_xbl_log_lines(&data, patterns, ARRAY_SIZE(patterns),
				       limits, output) == 0);
	EXPECT(limits[0] == 0 && limits[1] == 0);
	EXPECT(strcmp(output[0], "OCP Occured: railStatus: fault") == 0);
	EXPECT(strcmp(output[1], "Serial Number = ABC123") == 0);
}

static void test_write_api(void)
{
	struct zte_ramdisk_reboot_data data = { .cell = &fake.cell };
	unsigned char value = 0xa5;

	reset_fake();
	EXPECT(zte_ramdisk_reboot_write(&value, 1) == -1);
	ramdisk_rb = &data;
	fake.nvmem_write_result = -EIO;
	EXPECT(zte_ramdisk_reboot_write(&value, 1) == 0);
	EXPECT(fake.nvmem_write_calls == 1 && fake.last_write == value);
	data.cell = ERR_PTR(-ENOENT);
	EXPECT(zte_ramdisk_reboot_write(&value, 1) == 0);
	EXPECT(fake.nvmem_write_calls == 1);
}

static void test_memory_region(void)
{
	char mapped[32];
	struct device_node node = { 0 };
	struct device device = { .of_node = &node };
	struct zte_ramdisk_reboot_data data = { .dev = &device };

	reset_fake();
	fake.mapped_address = mapped;
	EXPECT(zte_get_xbl_log_memory_region(&data) == 0);
	EXPECT(data.base == fake.reserved.base && data.size == fake.reserved.size);
	EXPECT(data.vaddr == mapped);
	fake.parse_error = -ENOENT;
	EXPECT(zte_get_xbl_log_memory_region(&data) == -EINVAL);
	fake.parse_error = 0;
	fake.reserved_mem_missing = true;
	EXPECT(zte_get_xbl_log_memory_region(&data) == -EINVAL);
	fake.reserved_mem_missing = false;
	fake.map_failure = true;
	EXPECT(zte_get_xbl_log_memory_region(&data) == -EBUSY);
}

static void test_sysfs_callbacks(void)
{
	char output[PAGE_SIZE];
	struct ramdisk_reboot_attribute empty = { 0 };

	reset_fake();
	strcpy(extract_buffer, "rail");
	EXPECT(ramdisk_nvmem_show(NULL, NULL, output) == 5);
	EXPECT(strcmp(output, "rail\n") == 0);
	EXPECT(ramdisk_nvmem_store(NULL, NULL, "x", 1) == -EINVAL);
	EXPECT(attr_show(NULL, &ramdisk_nvmem_attr.attr, output) == 5);
	EXPECT(attr_store(NULL, &ramdisk_nvmem_attr.attr, "x", 1) == -EINVAL);
	EXPECT(attr_show(NULL, &empty.attr, output) == -EIO);
	EXPECT(attr_store(NULL, &empty.attr, "x", 1) == -EIO);
}

static void test_probe_and_remove(void)
{
	char log[] = "OCP Occured: railStatus: fault\r\nSerial Number = ABC123\r\n";
	struct device_node node = { 0 };
	struct platform_device pdev = { .dev = { .of_node = &node } };
	struct zte_ramdisk_reboot_data *data;

	reset_fake();
	fake.mapped_address = log;
	fake.reserved.size = sizeof(log) - 1;
	EXPECT(zte_ramdisk_reboot_probe(&pdev) == 0);
	data = pdev.driver_data;
	EXPECT(data != NULL && ramdisk_rb == data);
	EXPECT(read_ramdisk_buf == 0x5a);
	EXPECT(strcmp(extract_buffer, "rail") == 0);
	EXPECT(fake.unmap_calls == 1 && data->vaddr == NULL);
	zte_ramdisk_reboot_remove(&pdev);
	EXPECT(ramdisk_rb == data);
	free(data);

	reset_fake();
	fake.allocation_failure = true;
	EXPECT(zte_ramdisk_reboot_probe(&pdev) == -ENOMEM);
	reset_fake();
	fake.kobject_result = -EIO;
	EXPECT(zte_ramdisk_reboot_probe(&pdev) == -EIO);
	EXPECT(fake.kobject_put_calls == 1);
	reset_fake();
	fake.group_result = -EIO;
	EXPECT(zte_ramdisk_reboot_probe(&pdev) == -EIO);
	EXPECT(fake.kobject_del_calls == 1);
}

static void test_module_lifecycle(void)
{
	reset_fake();
	EXPECT(init_module() == 0);
	EXPECT(fake.platform_register_calls == 1);
	EXPECT(fake.registered_driver == &zte_ramdisk_reboot_driver);
	cleanup_module();
	EXPECT(fake.platform_unregister_calls == 1);

	reset_fake();
	fake.platform_register_result = -EIO;
	EXPECT(init_module() == -EIO);
	EXPECT(fake.platform_register_calls == 1);
}

int main(void)
{
	test_extractors();
	test_scanner();
	test_write_api();
	test_memory_region();
	test_sysfs_callbacks();
	test_probe_and_remove();
	test_module_lifecycle();
	if (failures)
		return 1;
	puts("PASS zte_ramdisk_reboot host tests");
	return 0;
}
