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

ssize_t tp_test_read(struct file *file, char __user *buffer, size_t count,
			     loff_t *offset)
{
	char state_text[32];
	int state = 0;
	int length;

	(void)file;
	if (*offset == 0) {
		const unsigned char fw_ready = tpd_cdev[0xc00];

		if (fw_ready == 0xffU) {
			printk("tpd: TP probe success,chip_id = 0x%02x",
			       tpd_cdev[0x446]);
			if ((tpd_cdev[0x1d] & 1U) != 0U) {
				printk("tpd: cdev->fw_ready is true");
				state = 0;
			} else {
				printk("tpd: err:cdev->fw_ready is false");
				state = 2;
			}
		} else {
			printk("tpd: TP probe failed,chip_id = 0x%02x",
			       tpd_cdev[0x446]);
			state = 1;
		}
		length = snprintf(state_text, 10, "%d\n", state);
		return simple_read_from_buffer(buffer, count, offset, state_text,
					      (size_t)length);
	}
	return 0;
}
