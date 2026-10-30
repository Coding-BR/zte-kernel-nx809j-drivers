typedef long ssize_t;
typedef unsigned long size_t;
typedef long long loff_t;

struct file;
struct kobject;
struct bin_attribute;
struct mutex;
struct firmware_data {
	size_t size;
	char *data;
};

extern unsigned char *tpd_cdev;
extern int printk(const char *format, ...);
extern void mutex_lock(struct mutex *lock);
extern void mutex_unlock(struct mutex *lock);
extern void vfree(void *pointer);
extern void kfree(void *pointer);
extern void *memcpy(void *destination, const void *source, size_t count);

ssize_t tpd_sysfs_fwimage_show(struct file *file, struct kobject *kobj,
				       struct bin_attribute *attr, char *buffer,
				       loff_t offset, size_t count)
{
	struct firmware_data *firmware;
	unsigned int position;
	size_t available;

	(void)file;
	(void)kobj;
	(void)attr;
	(void)offset;
	firmware = *(struct firmware_data **)(tpd_cdev + 0xc58);
	if (firmware == (struct firmware_data *)0 || firmware->data == 0) {
		printk("Need set fw image size first");
		return -12;
	}
	if (firmware->size == 0) {
		printk("Invalid firmware size");
		return -22;
	}
	mutex_lock((struct mutex *)(tpd_cdev + 0xc60));
	firmware = *(struct firmware_data **)(tpd_cdev + 0xc58);
	position = *(unsigned int *)(tpd_cdev + 0x448);
	available = firmware->size;
	if (available <= position) {
		*(unsigned int *)(tpd_cdev + 0x448) = 0;
		vfree(firmware->data);
		firmware->data = 0;
		kfree(firmware);
		*(struct firmware_data **)(tpd_cdev + 0xc58) = 0;
		printk("tpd, tp_firmware free.\n");
		mutex_unlock((struct mutex *)(tpd_cdev + 0xc60));
		return 0;
	}
	if (position + count > available)
		count = available - position;
	memcpy(buffer, firmware->data + position, count);
	*(unsigned int *)(tpd_cdev + 0x448) = position + (unsigned int)count;
	mutex_unlock((struct mutex *)(tpd_cdev + 0xc60));
	return (ssize_t)count;
}
