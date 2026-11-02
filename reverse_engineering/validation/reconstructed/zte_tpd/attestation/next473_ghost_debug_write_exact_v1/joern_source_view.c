typedef long ssize_t;
typedef unsigned long size_t;
typedef long long loff_t;
struct file;
#define __user

extern long long tpd_cdev;
extern unsigned long zte_inline_copy_from_user(void *to, const void __user *from,
						       unsigned long size);
extern char *strsep(char **stringp, const char *delimiter);
extern int kstrtouint(const char *text, unsigned int base,
				     unsigned int *value);
extern int printk(const char *format, ...);

ssize_t ghost_debug_write(struct file *file, const char __user *buffer,
				  size_t count, loff_t *offset)
{
	unsigned char device_fields[1240] = {0};
	char local[100] = {0};
	char *cursor = local;
	char *token;
	unsigned int parsed[10] = {0};
	unsigned int value = 0;
	unsigned int index = 0;

	(void)file;
	(void)offset;
	(void)tpd_cdev;
	if (count > 100)
		count = 100;
	if (buffer && zte_inline_copy_from_user(local, buffer, count)) {
		printk("tpd: Failed to copy data from user space\n");
		return -22;
	}
	token = strsep(&cursor, ",");
	while (token && index < 10) {
		if (!kstrtouint(token, 10, &value))
			parsed[index++] = value;
		token = strsep(&cursor, ",");
	}
	device_fields[1169] = (unsigned char)parsed[0];
	device_fields[1170] = (unsigned char)parsed[1];
	device_fields[1171] = (unsigned char)parsed[2];
	device_fields[1172] = (unsigned char)parsed[3];
	device_fields[1173] = (unsigned char)parsed[4];
	return (ssize_t)count;
}
