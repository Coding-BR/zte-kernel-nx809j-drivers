#define ZTE_IR_HOST_TEST 1
#include "../zte_ir.c"
#include <stdarg.h>

struct fake_state {
	int failures;
	int alloc_fail;
	int memdup_fail;
	int get_user_fail;
	int nonseek_result;
	int sync_result;
	int device_create_result;
	int register_chrdev_result;
	int class_create_result;
	int spi_register_result;
	int allocation_calls;
	int free_calls;
	int mutex_lock_calls;
	int mutex_unlock_calls;
	int spin_lock_calls;
	int spin_unlock_calls;
	int lock_failures;
	int sync_calls;
	int device_create_calls;
	int device_destroy_calls;
	int register_chrdev_calls;
	int unregister_chrdev_calls;
	unsigned int unregister_count;
	int class_create_calls;
	int class_destroy_calls;
	int spi_register_calls;
	int spi_unregister_calls;
	struct spi_transfer transfer;
	u16 transmitted_words[4];
	struct spi_driver *registered_driver;
};

static struct fake_state fake;
static int total_failures;
static struct class fake_class;
static struct device fake_created_device;

#define EXPECT(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #condition); \
		fake.failures++; \
		total_failures++; \
	} \
} while (0)

static void reset_fake(void)
{
	memset(&fake, 0, sizeof(fake));
	fake.register_chrdev_result = 240;
	INIT_LIST_HEAD(&device_list);
	memset(&device_list_lock, 0, sizeof(device_list_lock));
	spidev_major = 0;
	zte_ir_class = &fake_class;
	minors = 0;
}

static void init_runtime(struct zte_ir_runtime *runtime, struct spi_device *spi)
{
	memset(runtime, 0, sizeof(*runtime));
	spin_lock_init(&runtime->stock.spi_lock);
	INIT_LIST_HEAD(&runtime->stock.device_entry);
	runtime->stock.pattern_high = 0x001f;
	runtime->stock.pattern_low = 0;
	runtime->stock.speed_hz = ZTE_IR_DEFAULT_SPI_SPEED_HZ;
	runtime->stock.spi = spi;
}

void fake_log(const char *format, ...)
{
	(void)format;
}

void *fake_kzalloc(size_t size)
{
	fake.allocation_calls++;
	return fake.alloc_fail ? NULL : calloc(1, size);
}

void fake_kfree(void *pointer)
{
	if (pointer) {
		fake.free_calls++;
		free(pointer);
	}
}

void *fake_memdup_user(const void *source, size_t size)
{
	void *copy;

	if (fake.memdup_fail)
		return ERR_PTR(-EFAULT);
	copy = malloc(size);
	if (!copy)
		return ERR_PTR(-ENOMEM);
	memcpy(copy, source, size);
	return copy;
}

int fake_get_user(int *value, const int *source)
{
	if (fake.get_user_fail || !source)
		return -EFAULT;
	*value = *source;
	return 0;
}

void fake_mutex_lock(struct mutex *lock)
{
	fake.mutex_lock_calls++;
	if (lock->held)
		fake.lock_failures++;
	lock->held = 1;
}

void fake_mutex_unlock(struct mutex *lock)
{
	fake.mutex_unlock_calls++;
	if (!lock->held)
		fake.lock_failures++;
	lock->held = 0;
}

void fake_spin_lock_irq(spinlock_t *lock)
{
	fake.spin_lock_calls++;
	if (lock->held)
		fake.lock_failures++;
	lock->held = 1;
}

void fake_spin_unlock_irq(spinlock_t *lock)
{
	fake.spin_unlock_calls++;
	if (!lock->held)
		fake.lock_failures++;
	lock->held = 0;
}

void fake_list_add(struct list_head *entry, struct list_head *head)
{
	entry->next = head->next;
	entry->prev = head;
	head->next->prev = entry;
	head->next = entry;
}

void fake_list_del(struct list_head *entry)
{
	entry->prev->next = entry->next;
	entry->next->prev = entry->prev;
	INIT_LIST_HEAD(entry);
}

int fake_nonseekable_open(struct inode *inode, struct file *file)
{
	(void)inode;
	(void)file;
	return fake.nonseek_result;
}

loff_t fake_noop_llseek(struct file *file, loff_t offset, int whence)
{
	(void)file;
	(void)offset;
	(void)whence;
	return 0;
}

int fake_spi_sync(struct spi_device *spi, struct spi_message *message)
{
	const u16 *words;

	(void)spi;
	fake.sync_calls++;
	if (message && message->transfer) {
		fake.transfer = *message->transfer;
		words = message->transfer->tx_buf;
		for (size_t index = 0; index < ARRAY_SIZE(fake.transmitted_words); index++)
			fake.transmitted_words[index] = words[index];
	}
	return fake.sync_result;
}

struct device *fake_device_create(struct class *class_value, struct device *parent,
				  dev_t devt, void *data, const char *name)
{
	(void)class_value;
	(void)parent;
	(void)devt;
	(void)data;
	(void)name;
	fake.device_create_calls++;
	return fake.device_create_result ? ERR_PTR(fake.device_create_result) :
		&fake_created_device;
}

void fake_device_destroy(struct class *class_value, dev_t devt)
{
	(void)class_value;
	(void)devt;
	fake.device_destroy_calls++;
}

int fake_register_chrdev(unsigned int major, unsigned int first_minor,
			unsigned int count, const char *name,
			const struct file_operations *operations)
{
	(void)major;
	(void)first_minor;
	(void)count;
	(void)name;
	EXPECT(operations == &zte_ir_fops);
	fake.register_chrdev_calls++;
	return fake.register_chrdev_result;
}

void fake_unregister_chrdev(unsigned int major, unsigned int first_minor,
			   unsigned int count, const char *name)
{
	(void)major;
	(void)first_minor;
	(void)name;
	fake.unregister_chrdev_calls++;
	fake.unregister_count = count;
}

struct class *fake_class_create(const char *name)
{
	(void)name;
	fake.class_create_calls++;
	return fake.class_create_result ? ERR_PTR(fake.class_create_result) : &fake_class;
}

void fake_class_destroy(struct class *class_value)
{
	EXPECT(class_value == &fake_class);
	fake.class_destroy_calls++;
}

int fake_spi_register_driver(struct spi_driver *driver)
{
	fake.spi_register_calls++;
	fake.registered_driver = driver;
	return fake.spi_register_result;
}

void fake_spi_unregister_driver(struct spi_driver *driver)
{
	EXPECT(driver == &zte_ir_spi_driver);
	fake.spi_unregister_calls++;
}

static void test_encode_pulses(void)
{
	struct zte_ir_runtime runtime;
	struct spi_device spi = { 0 };
	u32 pulses[] = { 1000, 1000 };
	u32 too_large[] = { 2000000 };
	size_t words = 99;
	int result;

	reset_fake();
	init_runtime(&runtime, &spi);
	mutex_lock(&runtime.stock.buf_lock);
	result = zte_ir_encode_pulses(&runtime, pulses, ARRAY_SIZE(pulses),
				      runtime.stock.speed_hz, &words);
	EXPECT(result == 0);
	EXPECT(words == 76);
	EXPECT(runtime.stock.tx_buf[0] == 0x001f);
	EXPECT(runtime.stock.tx_buf[37] == 0x001f);
	EXPECT(runtime.stock.tx_buf[38] == 0);
	EXPECT(runtime.stock.tx_buf[75] == 0);
	result = zte_ir_encode_pulses(&runtime, too_large, 1,
				      runtime.stock.speed_hz, &words);
	EXPECT(result == -E2BIG);
	result = zte_ir_encode_pulses(&runtime, pulses, 2, 0, &words);
	EXPECT(result == -EINVAL);
	mutex_unlock(&runtime.stock.buf_lock);
	EXPECT(fake.lock_failures == 0);
}

static void test_write(void)
{
	struct zte_ir_runtime runtime;
	struct spi_device spi = { 0 };
	struct file file = { 0 };
	u32 pulses[] = { 1000, 1000 };
	loff_t position = 0;
	ssize_t result;

	reset_fake();
	init_runtime(&runtime, &spi);
	file.private_data = &runtime;
	result = zte_ir_write(&file, (const char *)pulses, sizeof(pulses), &position);
	EXPECT(result == (ssize_t)sizeof(pulses));
	EXPECT(fake.sync_calls == 1);
	EXPECT(fake.transfer.len == 76 * sizeof(u16));
	EXPECT(fake.transfer.speed_hz == ZTE_IR_DEFAULT_SPI_SPEED_HZ);
	EXPECT(fake.transmitted_words[0] == 0x001f);

	fake.sync_result = -EIO;
	result = zte_ir_write(&file, (const char *)pulses, sizeof(pulses), &position);
	EXPECT(result == -EIO);
	fake.sync_result = 0;
	runtime.removed = true;
	result = zte_ir_write(&file, (const char *)pulses, sizeof(pulses), &position);
	EXPECT(result == -ESHUTDOWN);
	runtime.removed = false;
	runtime.stock.spi = NULL;
	result = zte_ir_write(&file, (const char *)pulses, sizeof(pulses), &position);
	EXPECT(result == -ENODEV);
	runtime.stock.spi = &spi;
	result = zte_ir_write(&file, (const char *)pulses, 3, &position);
	EXPECT(result == -EINVAL);
	fake.memdup_fail = 1;
	result = zte_ir_write(&file, (const char *)pulses, sizeof(pulses), &position);
	EXPECT(result == -EFAULT);
	EXPECT(fake.lock_failures == 0);
}

static void test_ioctl(void)
{
	struct zte_ir_runtime runtime;
	struct spi_device spi = { 0 };
	struct file file = { 0 };
	int carrier = 38000;
	long result;

	reset_fake();
	init_runtime(&runtime, &spi);
	file.private_data = &runtime;
	result = zte_ir_ioctl(&file, ZTE_IR_IOC_SET_CARRIER,
			      (unsigned long)(uintptr_t)&carrier);
	EXPECT(result == 0);
	EXPECT(runtime.stock.speed_hz == 608000);
	result = zte_ir_ioctl(&file, 0, (unsigned long)(uintptr_t)&carrier);
	EXPECT(result == -ENOTTY);
	carrier = 0;
	result = zte_ir_ioctl(&file, ZTE_IR_IOC_SET_CARRIER,
			      (unsigned long)(uintptr_t)&carrier);
	EXPECT(result == -EINVAL);
	carrier = 400000;
	result = zte_ir_ioctl(&file, ZTE_IR_IOC_SET_CARRIER,
			      (unsigned long)(uintptr_t)&carrier);
	EXPECT(result == -EINVAL);
	carrier = 38000;
	fake.get_user_fail = 1;
	result = zte_ir_ioctl(&file, ZTE_IR_IOC_SET_CARRIER,
			      (unsigned long)(uintptr_t)&carrier);
	EXPECT(result == -EFAULT);
	fake.get_user_fail = 0;
	runtime.removed = true;
	result = zte_ir_ioctl(&file, ZTE_IR_IOC_SET_CARRIER,
			      (unsigned long)(uintptr_t)&carrier);
	EXPECT(result == -ESHUTDOWN);
	EXPECT(fake.lock_failures == 0);
}

static void test_open_release(void)
{
	struct zte_ir_runtime runtime;
	struct spi_device spi = { 0 };
	struct inode inode = { .i_rdev = MKDEV(240, 0) };
	struct file file = { 0 };
	struct zte_ir_runtime *allocated;
	int result;

	reset_fake();
	init_runtime(&runtime, &spi);
	runtime.stock.devt = inode.i_rdev;
	list_add(&runtime.stock.device_entry, &device_list);
	result = zte_ir_open(&inode, &file);
	EXPECT(result == 0);
	EXPECT(file.private_data == &runtime);
	EXPECT(runtime.users == 1);
	result = zte_ir_release(&inode, &file);
	EXPECT(result == 0);
	EXPECT(file.private_data == NULL);
	EXPECT(runtime.users == 0);
	list_del(&runtime.stock.device_entry);

	result = zte_ir_open(&inode, &file);
	EXPECT(result == -ENXIO);
	list_add(&runtime.stock.device_entry, &device_list);
	runtime.removed = true;
	result = zte_ir_open(&inode, &file);
	EXPECT(result == -ENXIO);
	runtime.removed = false;
	fake.nonseek_result = -EIO;
	result = zte_ir_open(&inode, &file);
	EXPECT(result == -EIO);
	EXPECT(runtime.users == 0);
	EXPECT(file.private_data == NULL);
	list_del(&runtime.stock.device_entry);

	allocated = fake_kzalloc(sizeof(*allocated));
	EXPECT(allocated != NULL);
	allocated->users = 1;
	allocated->removed = true;
	file.private_data = allocated;
	result = zte_ir_release(&inode, &file);
	EXPECT(result == 0);
	EXPECT(fake.free_calls == 1);
	EXPECT(fake.lock_failures == 0);
}

static void test_probe_remove(void)
{
	struct spi_device spi = { 0 };
	struct zte_ir_runtime *runtime;
	struct file file = { 0 };
	struct inode inode = { 0 };
	int result;

	reset_fake();
	spidev_major = 240;
	result = zte_ir_probe(&spi);
	EXPECT(result == 0);
	runtime = spi.driver_data;
	EXPECT(runtime != NULL);
	EXPECT(runtime->stock.speed_hz == ZTE_IR_DEFAULT_SPI_SPEED_HZ);
	EXPECT(runtime->stock.pattern_high == 0x001f);
	EXPECT(test_bit(0, &minors));
	zte_ir_remove(&spi);
	EXPECT(spi.driver_data == NULL);
	EXPECT(!test_bit(0, &minors));
	EXPECT(fake.device_destroy_calls == 1);
	EXPECT(fake.free_calls == 1);

	reset_fake();
	spidev_major = 240;
	set_bit(0, &minors);
	result = zte_ir_probe(&spi);
	EXPECT(result == -ENODEV);
	EXPECT(fake.free_calls == 1);

	reset_fake();
	spidev_major = 240;
	fake.device_create_result = -EIO;
	result = zte_ir_probe(&spi);
	EXPECT(result == -EIO);
	EXPECT(!test_bit(0, &minors));
	EXPECT(fake.free_calls == 1);

	reset_fake();
	fake.alloc_fail = 1;
	result = zte_ir_probe(&spi);
	EXPECT(result == -ENOMEM);

	reset_fake();
	spidev_major = 240;
	result = zte_ir_probe(&spi);
	EXPECT(result == 0);
	runtime = spi.driver_data;
	runtime->users = 1;
	zte_ir_remove(&spi);
	EXPECT(fake.free_calls == 0);
	file.private_data = runtime;
	result = zte_ir_release(&inode, &file);
	EXPECT(result == 0);
	EXPECT(fake.free_calls == 1);
	EXPECT(fake.lock_failures == 0);
}

static void test_module_lifecycle(void)
{
	int result;

	reset_fake();
	result = init_module();
	EXPECT(result == 0);
	EXPECT(spidev_major == 240);
	EXPECT(fake.register_chrdev_calls == 1);
	EXPECT(fake.class_create_calls == 1);
	EXPECT(fake.spi_register_calls == 1);
	EXPECT(fake.registered_driver == &zte_ir_spi_driver);
	cleanup_module();
	EXPECT(fake.spi_unregister_calls == 1);
	EXPECT(fake.class_destroy_calls == 1);
	EXPECT(fake.unregister_chrdev_calls == 1);
	EXPECT(fake.unregister_count == ZTE_IR_UNREGISTER_MINOR_COUNT);

	reset_fake();
	fake.register_chrdev_result = -EBUSY;
	result = init_module();
	EXPECT(result == -EBUSY);
	EXPECT(fake.class_create_calls == 0);

	reset_fake();
	fake.class_create_result = -ENOMEM;
	result = init_module();
	EXPECT(result == -ENOMEM);
	EXPECT(fake.unregister_chrdev_calls == 1);
	EXPECT(fake.unregister_count == ZTE_IR_UNREGISTER_MINOR_COUNT);

	reset_fake();
	fake.spi_register_result = -EIO;
	result = init_module();
	EXPECT(result == -EIO);
	EXPECT(fake.class_destroy_calls == 1);
	EXPECT(fake.unregister_chrdev_calls == 1);
	EXPECT(fake.unregister_count == ZTE_IR_UNREGISTER_MINOR_COUNT);
}

int main(void)
{
	test_encode_pulses();
	test_write();
	test_ioctl();
	test_open_release();
	test_probe_remove();
	test_module_lifecycle();
	if (total_failures) {
		fprintf(stderr, "FAIL zte_ir host tests: %d failures\n", total_failures);
		return 1;
	}
	printf("PASS zte_ir host tests (8/8 stock functions + 2 helpers covered)\n");
	return 0;
}
