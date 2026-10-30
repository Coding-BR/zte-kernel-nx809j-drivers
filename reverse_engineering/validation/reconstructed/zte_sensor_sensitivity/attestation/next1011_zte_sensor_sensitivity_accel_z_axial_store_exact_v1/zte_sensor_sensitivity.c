// SPDX-License-Identifier: GPL-2.0-only
/*
 * zte_sensor_sensitivity.c - ZTE Custom Sensors Sensitivity Calibration Driver
 *
 * Reconstructed from binary analysis of zte_sensor_sensitivity.ko
 * extracted from NX809J (Red Magic 11 Pro) production firmware.
 */

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#include "tests/host_stubs.h"
#else
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/mutex.h>
#include <linux/sysfs.h>
#include <linux/ctype.h>
#include <linux/string.h>
#endif

#define DRIVER_NAME "zte_sensor_sensitivity"
#define NUBIA_SENSORS_LOG_TAG "NUBIA_SENSORS_SENS"

/* Globals matching ROM binary */
int SENSORS_SENS_LOG_LEVEL = 3;
#define sensors_sens_log_level SENSORS_SENS_LOG_LEVEL

static struct class *sensors_sens_class;
static dev_t sensors_accel_dev_t;
static dev_t sensors_gyro_dev_t;

/* Private data structure matching Ghidra analysis (96 bytes) */
struct sensors_sens_data {
	struct device *accel_dev;     // 0
	struct device *gyro_dev;      // 8
	struct mutex lock;            // 16
	u8 accel_enable;              // 64
	s32 accel_x_axial;            // 68
	s32 accel_y_axial;            // 72
	s32 accel_z_axial;            // 76
	u8 gyro_enable;               // 80
	s32 gyro_x_axial;             // 84
	s32 gyro_y_axial;             // 88
	s32 gyro_z_axial;             // 92
};

static struct sensors_sens_data *sensors_sens_data_ptr __asm__("sensors_sens_data") = NULL;

/* ======================================================================
 * Accelerometer Sysfs Callbacks
 * ====================================================================== */

static __used ssize_t accel_enable_show_model(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 105);

	return sprintf(buf, "%d\n", data->accel_enable);
}

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#define accel_enable_show accel_enable_show_model
#else
extern ssize_t accel_enable_show(struct device *dev, struct device_attribute *attr, char *buf);
#include "accel_enable_show_exact.inc"
#endif

static __used ssize_t accel_enable_store_model(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);
	int val = 0;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 81, val);

	if (val != 0 && val != 1)
		return -EINVAL;

	mutex_lock(&data->lock);
	data->accel_enable = (u8)val;
	mutex_unlock(&data->lock);

	return count;
}

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#define accel_enable_store accel_enable_store_model
#else
extern ssize_t accel_enable_store(struct device *dev, struct device_attribute *attr,
					const char *buf, size_t count);
#include "accel_enable_store_exact.inc"
#endif

static __used ssize_t accel_x_axial_show_model(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	return sprintf(buf, "%d\n", data->accel_x_axial);
}

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#define accel_x_axial_show accel_x_axial_show_model
#else
extern ssize_t accel_x_axial_show(struct device *dev, struct device_attribute *attr, char *buf);
#include "accel_x_axial_show_exact.inc"
#endif

static __used ssize_t accel_x_axial_store_model(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);
	int val = 0;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if ((unsigned int)val >= 201) {
		pr_err("%s [%s]: line %d, out of range (%d >= 201)\n", NUBIA_SENSORS_LOG_TAG, __func__, 122, val);
		return -EINVAL;
	}

	data->accel_x_axial = val;

	return count;
}

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#define accel_x_axial_store accel_x_axial_store_model
#else
extern ssize_t accel_x_axial_store(struct device *dev, struct device_attribute *attr,
					const char *buf, size_t count);
#include "accel_x_axial_store_exact.inc"
#endif

static __used ssize_t accel_y_axial_show_model(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	return sprintf(buf, "%d\n", data->accel_y_axial);
}

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#define accel_y_axial_show accel_y_axial_show_model
#else
extern ssize_t accel_y_axial_show(struct device *dev, struct device_attribute *attr, char *buf);
#include "accel_y_axial_show_exact.inc"
#endif

static __used ssize_t accel_y_axial_store_model(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);
	int val = 0;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if ((unsigned int)val >= 201) {
		pr_err("[%s] [%s:%d] accel y sensitivity value illegal\n",
			NUBIA_SENSORS_LOG_TAG, __func__, 165);
		return -EINVAL;
	}

	data->accel_y_axial = val;

	return count;
}

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#define accel_y_axial_store accel_y_axial_store_model
#else
extern ssize_t accel_y_axial_store(struct device *dev, struct device_attribute *attr,
					const char *buf, size_t count);
#include "accel_y_axial_store_exact.inc"
#endif

static __used ssize_t accel_z_axial_show_model(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	return sprintf(buf, "%d\n", data->accel_z_axial);
}

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#define accel_z_axial_show accel_z_axial_show_model
#else
extern ssize_t accel_z_axial_show(struct device *dev, struct device_attribute *attr, char *buf);
#include "accel_z_axial_show_exact.inc"
#endif

static __used ssize_t accel_z_axial_store_model(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);
	int val = 0;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if ((unsigned int)val >= 201) {
		pr_err("[%s] [%s:%d] accel z sensitivity value illegal\n",
			NUBIA_SENSORS_LOG_TAG, __func__, 210);
		return -EINVAL;
	}

	data->accel_z_axial = val;

	return count;
}

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#define accel_z_axial_store accel_z_axial_store_model
#else
extern ssize_t accel_z_axial_store(struct device *dev, struct device_attribute *attr,
					const char *buf, size_t count);
#include "accel_z_axial_store_exact.inc"
#endif

/* ======================================================================
 * Gyroscope Sysfs Callbacks
 * ====================================================================== */

static ssize_t gyro_enable_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 105);

	return sprintf(buf, "%d\n", data->gyro_enable);
}

static ssize_t gyro_enable_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);
	int val = 0;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 81, val);

	if (val != 0 && val != 1)
		return -EINVAL;

	mutex_lock(&data->lock);
	data->gyro_enable = (u8)val;
	mutex_unlock(&data->lock);

	return count;
}

static ssize_t gyro_x_axial_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	return sprintf(buf, "%d\n", data->gyro_x_axial);
}

static ssize_t gyro_x_axial_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);
	int val = 0;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if ((unsigned int)val >= 201) {
		pr_err("[%s] [%s:%d] gyro x sensitivity value illegal\n",
			NUBIA_SENSORS_LOG_TAG, __func__, 268);
		return -EINVAL;
	}

	data->gyro_x_axial = val;

	return count;
}

static ssize_t gyro_y_axial_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	return sprintf(buf, "%d\n", data->gyro_y_axial);
}

static ssize_t gyro_y_axial_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);
	int val = 0;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if ((unsigned int)val >= 201) {
		pr_err("[%s] [%s:%d] gyro y sensitivity value illegal\n",
			NUBIA_SENSORS_LOG_TAG, __func__, 313);
		return -EINVAL;
	}

	data->gyro_y_axial = val;

	return count;
}

static ssize_t gyro_z_axial_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	return sprintf(buf, "%d\n", data->gyro_z_axial);
}

static ssize_t gyro_z_axial_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = dev_get_drvdata(dev);
	int val = 0;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if ((unsigned int)val >= 201) {
		pr_err("[%s] [%s:%d] gyro z sensitivity value illegal\n",
			NUBIA_SENSORS_LOG_TAG, __func__, 358);
		return -EINVAL;
	}

	data->gyro_z_axial = val;

	return count;
}

/* ======================================================================
 * Device Attributes Setup
 * ====================================================================== */

static struct device_attribute accel_attrs[] __asm__("attrs_sensors_sens_accel_device") = {
	__ATTR(enable, 0644, accel_enable_show, accel_enable_store),
	__ATTR(x_axial, 0644, accel_x_axial_show, accel_x_axial_store),
	__ATTR(y_axial, 0644, accel_y_axial_show, accel_y_axial_store),
	__ATTR(z_axial, 0644, accel_z_axial_show, accel_z_axial_store),
};

static struct device_attribute gyro_attrs[] __asm__("attrs_sensors_sens_gyro_device") = {
	__ATTR(enable, 0644, gyro_enable_show, gyro_enable_store),
	__ATTR(x_axial, 0644, gyro_x_axial_show, gyro_x_axial_store),
	__ATTR(y_axial, 0644, gyro_y_axial_show, gyro_y_axial_store),
	__ATTR(z_axial, 0644, gyro_z_axial_show, gyro_z_axial_store),
};

static int sensor_create_sysfs_interfaces(struct device *dev,
						  struct device_attribute *attrs)
		__asm__("sensor_create_sysfs_interfaces_model");

static int sensor_create_sysfs_interfaces(struct device *dev,
						  struct device_attribute *attrs)
{
	int i, ret;

	for (i = 0; i < 4; i++) {
		ret = device_create_file(dev, &attrs[i]);
		if (ret) {
			for (; i >= 0; i--)
				device_remove_file(dev, &attrs[i]);
			pr_err("[%s] [%s:%d] failed to create sysfs interface\n",
				NUBIA_SENSORS_LOG_TAG, __func__, 57);
			return -ENODEV;
		}
	}
	return 0;
}

static __always_inline void sensor_remove_sysfs_interfaces(struct device *dev,
						   struct device_attribute *attrs)
{
	int i;

	for (i = 0; i < 4; i++) {
		device_remove_file(dev, &attrs[i]);
	}
}

/* ======================================================================
 * Module Init / Exit Logic
 * ====================================================================== */

static __used int sensors_sensitivity_register_model(void)
{
	struct sensors_sens_data *data;
	int ret;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 343);

	data = kzalloc(sizeof(*data), GFP_KERNEL);
	if (!data) {
		pr_err("%s [%s]: line %d, failed memory allocation\n", NUBIA_SENSORS_LOG_TAG, __func__, 347);
		return -ENOMEM;
	}

	mutex_init(&data->lock);

	/* Default sensitivity calibration values matching ROM registers */
	data->accel_enable = 0;
	data->accel_x_axial = 100;
	data->accel_y_axial = 100;
	data->accel_z_axial = 100;

	data->gyro_enable = 0;
	data->gyro_x_axial = 100;
	data->gyro_y_axial = 100;
	data->gyro_z_axial = 100;

	sensors_sens_data_ptr = data;

	sensors_sens_class = class_create("sensors_sensitivity");

	/* Register Accelerometer device region and node */
	alloc_chrdev_region(&sensors_accel_dev_t, 0, 1, "accel");

	data->accel_dev = device_create(sensors_sens_class, NULL, sensors_accel_dev_t, NULL, "accel");
	if (IS_ERR(data->accel_dev)) {
		pr_err("%s [%s]: line %d, failed to create accel device\n", NUBIA_SENSORS_LOG_TAG, __func__, 368);
		ret = 0;
		goto err_destroy_accel_device;
	}
	dev_set_drvdata(data->accel_dev, data);

	/* Register Gyroscope device region and node */
	alloc_chrdev_region(&sensors_gyro_dev_t, 0, 1, "gyro");

	data->gyro_dev = device_create(sensors_sens_class, NULL, sensors_gyro_dev_t, NULL, "gyro");
	if (IS_ERR(data->gyro_dev)) {
		pr_err("%s [%s]: line %d, failed to create gyro device\n", NUBIA_SENSORS_LOG_TAG, __func__, 377);
		ret = 0;
		goto err_destroy_gyro_device;
	}
	dev_set_drvdata(data->gyro_dev, data);

	/* Create Sysfs Calibration Nodes */
	ret = sensor_create_sysfs_interfaces(data->accel_dev, accel_attrs);
	if (ret) {
		pr_err("%s [%s]: line %d, failed to create accel sysfs files\n", NUBIA_SENSORS_LOG_TAG, __func__, 384);
		sensor_remove_sysfs_interfaces(data->accel_dev, accel_attrs);
		goto err_destroy_gyro_device;
	}

	ret = sensor_create_sysfs_interfaces(data->gyro_dev, gyro_attrs);
	if (ret) {
		pr_err("%s [%s]: line %d, failed to create gyro sysfs files\n", NUBIA_SENSORS_LOG_TAG, __func__, 389);
		sensor_remove_sysfs_interfaces(data->gyro_dev, gyro_attrs);
		goto err_remove_accel_sysfs;
	}

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, initialization complete\n", NUBIA_SENSORS_LOG_TAG, __func__, 393);

	return 0;

err_remove_accel_sysfs:
	sensor_remove_sysfs_interfaces(data->accel_dev, accel_attrs);
err_destroy_gyro_device:
	data->gyro_dev = NULL;
	device_destroy(sensors_sens_class, sensors_gyro_dev_t);
	class_destroy(sensors_sens_class);
err_destroy_accel_device:
	data->accel_dev = NULL;
	device_destroy(sensors_sens_class, sensors_accel_dev_t);
	class_destroy(sensors_sens_class);
	return ret;
}

#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
#define sensors_sensitivity_register sensors_sensitivity_register_model
#else
extern int sensors_sensitivity_register(void);
#include "sensors_sensitivity_register_exact.inc"
#endif

void sensors_sensitivity_unregister(void)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	sensor_remove_sysfs_interfaces(data->accel_dev, accel_attrs);
	sensor_remove_sysfs_interfaces(data->gyro_dev, gyro_attrs);

	kfree(data);
}

static __used int __init sensors_sensitivity_init(void)
{
	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 424);

	sensors_sensitivity_register();
	return 0;
}

static __used void __exit sensors_sensitivity_exit(void)
{
	sensors_sensitivity_unregister();
}

/* Host mode keeps callable C models; production mode uses stock entrypoint bodies. */
#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
module_init(sensors_sensitivity_init);
#else
extern int init_module(void);
#include "init_module_exact.inc"
#endif
#ifdef ZTE_SENSOR_SENSITIVITY_HOST_TEST
module_exit(sensors_sensitivity_exit);
#else
extern void cleanup_module(void);
#include "cleanup_module_exact.inc"
#endif

MODULE_DESCRIPTION("Sensors sensitivity driver.");
MODULE_LICENSE("GPL v2");
MODULE_AUTHOR("Peripherial team, NUBIA");
MODULE_VERSION("1.0");
MODULE_INFO(built_with, "DDK");
