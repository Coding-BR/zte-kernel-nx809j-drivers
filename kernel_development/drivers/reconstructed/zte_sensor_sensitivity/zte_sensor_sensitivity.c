// SPDX-License-Identifier: GPL-2.0-only
/*
 * zte_sensor_sensitivity.c - ZTE Custom Sensors Sensitivity Calibration Driver
 *
 * Reconstructed from binary analysis of zte_sensor_sensitivity.ko
 * extracted from NX809J (Red Magic 11 Pro) production firmware.
 */

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

static struct sensors_sens_data *sensors_sens_data_ptr = NULL;

/* ======================================================================
 * Accelerometer Sysfs Callbacks
 * ====================================================================== */

static ssize_t accel_enable_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 105);

	if (!data)
		return -EINVAL;

	return sprintf(buf, "%d\n", data->accel_enable);
}

static ssize_t accel_enable_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;
	int val = 0;

	if (!data)
		return -EINVAL;

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

static ssize_t accel_x_axial_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	if (!data)
		return -EINVAL;

	return sprintf(buf, "%d\n", data->accel_x_axial);
}

static ssize_t accel_x_axial_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;
	int val = 0;

	if (!data)
		return -EINVAL;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if (val >= 201) {
		pr_err("%s [%s]: line %d, out of range (%d >= 201)\n", NUBIA_SENSORS_LOG_TAG, __func__, 122, val);
		return -EINVAL;
	}

	data->accel_x_axial = val;

	return count;
}

static ssize_t accel_y_axial_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	if (!data)
		return -EINVAL;

	return sprintf(buf, "%d\n", data->accel_y_axial);
}

static ssize_t accel_y_axial_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;
	int val = 0;

	if (!data)
		return -EINVAL;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if (val >= 201) {
		pr_err("[%s] [%s:%d] accel y sensitivity value illegal\n",
			NUBIA_SENSORS_LOG_TAG, __func__, 165);
		return -EINVAL;
	}

	data->accel_y_axial = val;

	return count;
}

static ssize_t accel_z_axial_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	if (!data)
		return -EINVAL;

	return sprintf(buf, "%d\n", data->accel_z_axial);
}

static ssize_t accel_z_axial_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;
	int val = 0;

	if (!data)
		return -EINVAL;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if (val >= 201) {
		pr_err("[%s] [%s:%d] accel z sensitivity value illegal\n",
			NUBIA_SENSORS_LOG_TAG, __func__, 210);
		return -EINVAL;
	}

	data->accel_z_axial = val;

	return count;
}

/* ======================================================================
 * Gyroscope Sysfs Callbacks
 * ====================================================================== */

static ssize_t gyro_enable_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 105);

	if (!data)
		return -EINVAL;

	return sprintf(buf, "%d\n", data->gyro_enable);
}

static ssize_t gyro_enable_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;
	int val = 0;

	if (!data)
		return -EINVAL;

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
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	if (!data)
		return -EINVAL;

	return sprintf(buf, "%d\n", data->gyro_x_axial);
}

static ssize_t gyro_x_axial_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;
	int val = 0;

	if (!data)
		return -EINVAL;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if (val >= 201) {
		pr_err("[%s] [%s:%d] gyro x sensitivity value illegal\n",
			NUBIA_SENSORS_LOG_TAG, __func__, 268);
		return -EINVAL;
	}

	data->gyro_x_axial = val;

	return count;
}

static ssize_t gyro_y_axial_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	if (!data)
		return -EINVAL;

	return sprintf(buf, "%d\n", data->gyro_y_axial);
}

static ssize_t gyro_y_axial_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;
	int val = 0;

	if (!data)
		return -EINVAL;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if (val >= 201) {
		pr_err("[%s] [%s:%d] gyro y sensitivity value illegal\n",
			NUBIA_SENSORS_LOG_TAG, __func__, 313);
		return -EINVAL;
	}

	data->gyro_y_axial = val;

	return count;
}

static ssize_t gyro_z_axial_show(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 134);

	if (!data)
		return -EINVAL;

	return sprintf(buf, "%d\n", data->gyro_z_axial);
}

static ssize_t gyro_z_axial_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;
	int val = 0;

	if (!data)
		return -EINVAL;

	if (kstrtoint(buf, 0, &val))
		return -EINVAL;

	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d, val=%d\n", NUBIA_SENSORS_LOG_TAG, __func__, 120, val);

	if (val >= 201) {
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

static struct device_attribute accel_attrs[] = {
	__ATTR(enable, 0644, accel_enable_show, accel_enable_store),
	__ATTR(x_axial, 0644, accel_x_axial_show, accel_x_axial_store),
	__ATTR(y_axial, 0644, accel_y_axial_show, accel_y_axial_store),
	__ATTR(z_axial, 0644, accel_z_axial_show, accel_z_axial_store),
};

static struct device_attribute gyro_attrs[] = {
	__ATTR(enable, 0644, gyro_enable_show, gyro_enable_store),
	__ATTR(x_axial, 0644, gyro_x_axial_show, gyro_x_axial_store),
	__ATTR(y_axial, 0644, gyro_y_axial_show, gyro_y_axial_store),
	__ATTR(z_axial, 0644, gyro_z_axial_show, gyro_z_axial_store),
};

static int sensor_create_sysfs_interfaces(struct device *dev, struct device_attribute *attrs)
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

int sensors_sensitivity_register(void)
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
	ret = alloc_chrdev_region(&sensors_accel_dev_t, 0, 1, "accel");
	if (ret)
		goto err_destroy_class;

	data->accel_dev = device_create(sensors_sens_class, NULL, sensors_accel_dev_t, NULL, "accel");
	if (IS_ERR(data->accel_dev)) {
		pr_err("%s [%s]: line %d, failed to create accel device\n", NUBIA_SENSORS_LOG_TAG, __func__, 368);
		ret = 0;
		goto err_unregister_accel_region;
	}
	dev_set_drvdata(data->accel_dev, data);

	/* Register Gyroscope device region and node */
	ret = alloc_chrdev_region(&sensors_gyro_dev_t, 0, 1, "gyro");
	if (ret)
		goto err_destroy_accel_device;

	data->gyro_dev = device_create(sensors_sens_class, NULL, sensors_gyro_dev_t, NULL, "gyro");
	if (IS_ERR(data->gyro_dev)) {
		pr_err("%s [%s]: line %d, failed to create gyro device\n", NUBIA_SENSORS_LOG_TAG, __func__, 377);
		ret = 0;
		goto err_unregister_gyro_region;
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
	device_destroy(sensors_sens_class, sensors_gyro_dev_t);
class_destroy(sensors_sens_class);
err_unregister_gyro_region:
err_destroy_accel_device:
	device_destroy(sensors_sens_class, sensors_accel_dev_t);
err_unregister_accel_region:
err_destroy_class:
	class_destroy(sensors_sens_class);
	return ret;
}

void sensors_sensitivity_unregister(void)
{
	struct sensors_sens_data *data = sensors_sens_data_ptr;

	if (data) {
		sensor_remove_sysfs_interfaces(data->accel_dev, accel_attrs);
		sensor_remove_sysfs_interfaces(data->gyro_dev, gyro_attrs);

		kfree(data);
	}
}

static int __init sensors_sensitivity_init(void)
{
	if (sensors_sens_log_level >= 2)
		pr_info("%s [%s]: line %d\n", NUBIA_SENSORS_LOG_TAG, __func__, 424);

	return sensors_sensitivity_register();
}

static void __exit sensors_sensitivity_exit(void)
{
	sensors_sensitivity_unregister();
}

module_init(sensors_sensitivity_init);
module_exit(sensors_sensitivity_exit);

MODULE_DESCRIPTION("Sensors sensitivity driver.");
MODULE_LICENSE("GPL v2");
MODULE_AUTHOR("Peripherial team, NUBIA");
MODULE_VERSION("1.0");
MODULE_INFO(built_with, "DDK");
