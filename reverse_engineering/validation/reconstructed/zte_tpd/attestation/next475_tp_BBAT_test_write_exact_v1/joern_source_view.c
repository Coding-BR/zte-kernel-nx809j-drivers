typedef long ssize_t;
typedef unsigned long size_t;
typedef long long loff_t;

struct file;

#define __user

extern int printk(const char *format, ...);

ssize_t tp_BBAT_test_write(struct file *file, const char __user *buffer,
			   size_t count, loff_t *offset)
{
	(void)file;
	(void)offset;
	printk("tpd: reserved no use", buffer, count);
	return (ssize_t)count;
}
