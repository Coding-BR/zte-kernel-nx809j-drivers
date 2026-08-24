typedef long ssize_t;
typedef unsigned long size_t;
typedef long long loff_t;
struct file;
#define __user

extern long long tpd_cdev;
extern int snprintf(char *buffer, unsigned long size, const char *format, ...);
extern ssize_t simple_read_from_buffer(char *to, unsigned long count,
					      loff_t *position, const void *from,
					      unsigned long available);
extern int printk(const char *format, ...);

ssize_t tp_BBAT_test_read(struct file *file, char __user *buffer, size_t count,
				  loff_t *offset)
{
	char output[32] = {0};
	long long device = tpd_cdev;
	int result = 0;
	int (*callback)(void) = *(int (**)(void))(device + 3632);

	(void)file;
	if (*offset)
		return 0;
	if (callback) {
		result = callback();
		if (result)
			printk("BBAT callback returned %d", result);
	} else {
		result = 2 * (*(unsigned char *)(device + 20) == 0);
	}
	result = snprintf(output, 10, "%d\n", result);
	return simple_read_from_buffer(buffer, count, offset, output,
					      (unsigned long)result);
}
