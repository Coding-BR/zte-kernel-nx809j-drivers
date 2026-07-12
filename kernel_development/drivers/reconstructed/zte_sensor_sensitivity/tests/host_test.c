#define ZTE_SENSOR_SENSITIVITY_HOST_TEST
#include "../zte_sensor_sensitivity.c"

struct fake_state {
	int fail_kzalloc;
	int alloc_result;
	int fail_device_call;
	int fail_create_file_call;
	int kzalloc_calls;
	int kfree_calls;
	int mutex_init_calls;
	int mutex_lock_calls;
	int mutex_unlock_calls;
	int class_create_calls;
	int class_destroy_calls;
	int alloc_calls;
	int device_create_calls;
	int device_destroy_calls;
	int create_file_calls;
	int remove_file_calls;
	void *allocation;
};

static struct fake_state fake;
static struct class fake_class;
static struct device fake_accel_device;
static struct device fake_gyro_device;
static int failures;

#define CHECK(expression) do { \
	if (!(expression)) { \
		fprintf(stderr, "FAIL %s:%d: %s\n", __func__, __LINE__, #expression); \
		failures++; \
	} \
} while (0)

void fake_log(const char *format, ...)
{
	(void)format;
}

void *kzalloc(size_t size, unsigned int flags)
{
	(void)flags;
	fake.kzalloc_calls++;
	if (fake.fail_kzalloc)
		return NULL;
	fake.allocation = calloc(1, size);
	return fake.allocation;
}

void kfree(const void *pointer)
{
	CHECK(pointer == fake.allocation);
	fake.kfree_calls++;
}

void mutex_init(struct mutex *lock)
{
	memset(lock, 0, sizeof(*lock));
	fake.mutex_init_calls++;
}

void mutex_lock(struct mutex *lock)
{
	(void)lock;
	fake.mutex_lock_calls++;
}

void mutex_unlock(struct mutex *lock)
{
	(void)lock;
	fake.mutex_unlock_calls++;
}

struct class *class_create(const char *name)
{
	CHECK(strcmp(name, "sensors_sensitivity") == 0);
	fake.class_create_calls++;
	return &fake_class;
}

void class_destroy(const struct class *class_pointer)
{
	CHECK(class_pointer == &fake_class);
	fake.class_destroy_calls++;
}

int alloc_chrdev_region(dev_t *dev, unsigned int first_minor,
			unsigned int count, const char *name)
{
	CHECK(first_minor == 0 && count == 1);
	*dev = strcmp(name, "accel") == 0 ? 0x101u : 0x202u;
	fake.alloc_calls++;
	return fake.alloc_result;
}

struct device *device_create(const struct class *class_pointer,
			     struct device *parent, dev_t dev, void *drvdata,
			     const char *format, ...)
{
	struct device *result;

	CHECK(class_pointer == &fake_class && parent == NULL && drvdata == NULL);
	fake.device_create_calls++;
	if (fake.fail_device_call == fake.device_create_calls)
		return ERR_PTR(-ENODEV);
	result = strcmp(format, "accel") == 0 ? &fake_accel_device : &fake_gyro_device;
	result->name = format;
	CHECK(dev == (result == &fake_accel_device ? 0x101u : 0x202u));
	return result;
}

void device_destroy(const struct class *class_pointer, dev_t dev)
{
	CHECK(class_pointer == &fake_class);
	CHECK(dev == 0x101u || dev == 0x202u);
	fake.device_destroy_calls++;
}

void dev_set_drvdata(struct device *dev, void *data)
{
	dev->drvdata = data;
}

void *dev_get_drvdata(const struct device *dev)
{
	return dev->drvdata;
}

int device_create_file(struct device *dev, const struct device_attribute *attr)
{
	CHECK(dev == &fake_accel_device || dev == &fake_gyro_device);
	CHECK(attr != NULL);
	fake.create_file_calls++;
	return fake.fail_create_file_call == fake.create_file_calls ? -EIO : 0;
}

void device_remove_file(struct device *dev, const struct device_attribute *attr)
{
	CHECK(dev == &fake_accel_device || dev == &fake_gyro_device);
	CHECK(attr != NULL);
	fake.remove_file_calls++;
}

int kstrtoint(const char *text, unsigned int base, int *result)
{
	char *end;
	long value;

	errno = 0;
	value = strtol(text, &end, base);
	if (errno || end == text)
		return -EINVAL;
	while (*end == '\n' || *end == '\r' || *end == ' ' || *end == '\t')
		end++;
	if (*end != '\0' || value < INT32_MIN || value > INT32_MAX)
		return -EINVAL;
	*result = (int)value;
	return 0;
}

static void reset_fake(void)
{
	free(fake.allocation);
	memset(&fake, 0, sizeof(fake));
	memset(&fake_accel_device, 0, sizeof(fake_accel_device));
	memset(&fake_gyro_device, 0, sizeof(fake_gyro_device));
	sensors_sens_data_ptr = NULL;
	sensors_sens_class = NULL;
	sensors_accel_dev_t = 0;
	sensors_gyro_dev_t = 0;
}

static void test_layout_and_registration(void)
{
	struct sensors_sens_data *data;

	reset_fake();
	CHECK(sizeof(struct sensors_sens_data) == 96);
	CHECK(offsetof(struct sensors_sens_data, accel_enable) == 64);
	CHECK(offsetof(struct sensors_sens_data, gyro_enable) == 80);
	CHECK(sensors_sensitivity_register() == 0);
	data = sensors_sens_data_ptr;
	CHECK(data != NULL);
	CHECK(fake.kzalloc_calls == 1 && fake.mutex_init_calls == 1);
	CHECK(fake.alloc_calls == 2 && fake.device_create_calls == 2);
	CHECK(fake.create_file_calls == 8);
	CHECK(data->accel_enable == 0 && data->gyro_enable == 0);
	CHECK(data->accel_x_axial == 100 && data->accel_y_axial == 100);
	CHECK(data->accel_z_axial == 100 && data->gyro_x_axial == 100);
	CHECK(data->gyro_y_axial == 100 && data->gyro_z_axial == 100);
	CHECK(fake_accel_device.drvdata == data && fake_gyro_device.drvdata == data);
	sensors_sensitivity_unregister();
	CHECK(fake.remove_file_calls == 8 && fake.kfree_calls == 1);
}

static void test_show_and_store_callbacks(void)
{
	struct sensors_sens_data data = { 0 };
	char output[32];
	ssize_t result;
	int index;
	ssize_t (*shows[])(struct device *, struct device_attribute *, char *) = {
		accel_enable_show, accel_x_axial_show, accel_y_axial_show, accel_z_axial_show,
		gyro_enable_show, gyro_x_axial_show, gyro_y_axial_show, gyro_z_axial_show,
	};
	ssize_t (*stores[])(struct device *, struct device_attribute *, const char *, size_t) = {
		accel_x_axial_store, accel_y_axial_store, accel_z_axial_store,
		gyro_x_axial_store, gyro_y_axial_store, gyro_z_axial_store,
	};
	s32 *values[] = {
		&data.accel_x_axial, &data.accel_y_axial, &data.accel_z_axial,
		&data.gyro_x_axial, &data.gyro_y_axial, &data.gyro_z_axial,
	};

	reset_fake();
	fake_accel_device.drvdata = &data;
	fake_gyro_device.drvdata = &data;
	data.accel_enable = 1;
	data.accel_x_axial = 11;
	data.accel_y_axial = 12;
	data.accel_z_axial = 13;
	data.gyro_enable = 0;
	data.gyro_x_axial = 21;
	data.gyro_y_axial = 22;
	data.gyro_z_axial = 23;
	for (index = 0; index < 8; index++) {
		memset(output, 0, sizeof(output));
		result = shows[index](index < 4 ? &fake_accel_device : &fake_gyro_device,
				      NULL, output);
		CHECK(result == (ssize_t)strlen(output));
	}
	CHECK(strcmp(output, "23\n") == 0);

	CHECK(accel_enable_store(&fake_accel_device, NULL, "0", 1) == 1);
	CHECK(data.accel_enable == 0);
	CHECK(gyro_enable_store(&fake_gyro_device, NULL, "1", 1) == 1);
	CHECK(data.gyro_enable == 1);
	CHECK(fake.mutex_lock_calls == 2 && fake.mutex_unlock_calls == 2);
	CHECK(accel_enable_store(&fake_accel_device, NULL, "2", 1) == -EINVAL);
	CHECK(gyro_enable_store(&fake_gyro_device, NULL, "bad", 3) == -EINVAL);
	CHECK(fake.mutex_lock_calls == 2 && fake.mutex_unlock_calls == 2);

	for (index = 0; index < 6; index++) {
		struct device *dev = index < 3 ? &fake_accel_device : &fake_gyro_device;
		*values[index] = 99;
		CHECK(stores[index](dev, NULL, "200", 3) == 3);
		CHECK(*values[index] == 200);
		CHECK(stores[index](dev, NULL, "201", 3) == -EINVAL);
		CHECK(*values[index] == 200);
		CHECK(stores[index](dev, NULL, "-1", 2) == -EINVAL);
		CHECK(stores[index](dev, NULL, "bad", 3) == -EINVAL);
	}
	CHECK(fake.mutex_lock_calls == 2 && fake.mutex_unlock_calls == 2);
}

static void test_sysfs_helper_failures(void)
{
	int failure_index;

	for (failure_index = 1; failure_index <= 4; failure_index++) {
		reset_fake();
		fake.fail_create_file_call = failure_index;
		CHECK(sensor_create_sysfs_interfaces(&fake_accel_device, accel_attrs) == -ENODEV);
		CHECK(fake.create_file_calls == failure_index);
		CHECK(fake.remove_file_calls == failure_index);
	}
	reset_fake();
	CHECK(sensor_create_sysfs_interfaces(&fake_accel_device, accel_attrs) == 0);
	CHECK(fake.create_file_calls == 4 && fake.remove_file_calls == 0);
}

static void test_registration_failures(void)
{
	reset_fake();
	fake.fail_kzalloc = 1;
	CHECK(sensors_sensitivity_register() == -ENOMEM);
	CHECK(fake.class_create_calls == 0);

	reset_fake();
	fake.alloc_result = -EBUSY;
	CHECK(sensors_sensitivity_register() == 0);
	CHECK(fake.alloc_calls == 2 && fake.create_file_calls == 8);

	reset_fake();
	fake.fail_device_call = 1;
	CHECK(sensors_sensitivity_register() == 0);
	CHECK(fake.device_destroy_calls == 1 && fake.class_destroy_calls == 1);
	CHECK(sensors_sens_data_ptr->accel_dev == NULL);

	reset_fake();
	fake.fail_device_call = 2;
	CHECK(sensors_sensitivity_register() == 0);
	CHECK(fake.device_destroy_calls == 2 && fake.class_destroy_calls == 2);
	CHECK(sensors_sens_data_ptr->accel_dev == NULL);
	CHECK(sensors_sens_data_ptr->gyro_dev == NULL);

	reset_fake();
	fake.fail_create_file_call = 2;
	CHECK(sensors_sensitivity_register() == -ENODEV);
	CHECK(fake.remove_file_calls == 6);
	CHECK(fake.device_destroy_calls == 2 && fake.class_destroy_calls == 2);

	reset_fake();
	fake.fail_create_file_call = 6;
	CHECK(sensors_sensitivity_register() == -ENODEV);
	CHECK(fake.remove_file_calls == 10);
	CHECK(fake.device_destroy_calls == 2 && fake.class_destroy_calls == 2);
}

static void test_module_entrypoints(void)
{
	reset_fake();
	fake.fail_kzalloc = 1;
	CHECK(init_module() == 0);

	reset_fake();
	CHECK(init_module() == 0);
	cleanup_module();
	CHECK(fake.remove_file_calls == 8 && fake.kfree_calls == 1);
}

int main(void)
{
	test_layout_and_registration();
	test_show_and_store_callbacks();
	test_sysfs_helper_failures();
	test_registration_failures();
	test_module_entrypoints();
	reset_fake();
	if (failures)
		return 1;
	puts("PASS zte_sensor_sensitivity host tests (21/21 functions covered)");
	return 0;
}
