typedef long ssize_t;
typedef unsigned long size_t;
typedef long long loff_t;

struct file;
extern unsigned char *tpd_cdev;
extern int printk(const char *format, ...);
extern int kstrtouint_from_user(const char *buffer, size_t count,
					unsigned int base, int *value);

#define __user

ssize_t tp_frame_data_write(struct file *file, const char __user *buffer,
				    size_t count, loff_t *offset)
{
	int parsed = 0;
	int normalized;
	void (*callback)(long long, int);

	(void)file;
	(void)offset;
	if (kstrtouint_from_user(buffer, count, 10U, &parsed) != 0)
		return -22;
	normalized = parsed != 0;
	printk("tpd: %s val:%d", "tp_frame_data_write", normalized);
	callback = *(void (**)(long long, int))(tpd_cdev + 0xff8);
	if (callback != (void (*)(long long, int))0)
		callback((long long)tpd_cdev, normalized);
	return (ssize_t)count;
}
