typedef long ssize_t;
typedef unsigned long size_t;
typedef long long loff_t;

struct file;
extern unsigned char *tpd_cdev;
extern int printk(const char *format, ...);
extern int snprintf(char *buffer, size_t size, const char *format, ...);
extern ssize_t simple_read_from_buffer(char *buffer, size_t count,
					       loff_t *offset, const char *source,
					       size_t available);

#define __user

ssize_t tp_frame_data_read(struct file *file, char __user *buffer,
				   size_t count, loff_t *offset)
{
	char text[32];
	int length;
	void (*callback)(unsigned long long);

	(void)file;
	if (*offset != 0)
		return 0;
	callback = *(void (**)(unsigned long long))(tpd_cdev + 0x1000);
	if (callback != (void (*)(unsigned long long))0)
		callback((unsigned long long)tpd_cdev);
	printk("tpd: %s val:%u", "tp_frame_data_read",
	       *(unsigned int *)(tpd_cdev + 0x460));
	length = snprintf(text, 10, "%u\n",
			  *(unsigned int *)(tpd_cdev + 0x460));
	return simple_read_from_buffer(buffer, count, offset, text,
				      (size_t)length);
}
