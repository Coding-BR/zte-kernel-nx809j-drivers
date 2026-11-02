typedef long ssize_t;
typedef unsigned long size_t;
typedef long long loff_t;
struct file;
#define __user

extern long long tpd_cdev;
extern long long init_timer_key;
extern void *_kmalloc_cache_noprof(long long key, unsigned long size,
					  unsigned long flags);
extern int printk(const char *format, ...);
extern int snprintf(char *buffer, unsigned long size, const char *format, ...);
extern ssize_t simple_read_from_buffer(char *to, unsigned long count,
					      loff_t *position, const void *from,
					      unsigned long available);
extern void kfree(void *pointer);

ssize_t ghost_debug_read(struct file *file, char __user *buffer, size_t count,
				 loff_t *offset)
{
	char *data;
	long long device;
	ssize_t length;

	(void)file;
	if (*offset)
		return 0;
	device = tpd_cdev;
	data = _kmalloc_cache_noprof(init_timer_key, 3520, 4096);
	if (!data) {
		printk("tpd: alloc data_buf failed");
		return -12;
	}
	printk("tpd: ghost_check_single_time is %d", *(unsigned char *)(device + 1169));
	printk("tpd: ghost_check_multi_time is %d", *(unsigned char *)(device + 1170));
	printk("tpd: ghost_check_single_count is %d", *(unsigned char *)(device + 1171));
	printk("tpd: ghost_check_multi_count is %d", *(unsigned char *)(device + 1172));
	printk("tpd: ghost_check_start_time is %d", *(unsigned char *)(device + 1173));
	printk("tpd: ghost_check_ignore_id is %d", *(unsigned int *)(device + 1176));
	printk("tpd: ghost_check_ignore_edge_area is %d", *(unsigned int *)(device + 1180));
	printk("tpd: ghost_check_ignore_corner_x is %d", *(unsigned int *)(device + 1184));
	printk("tpd: ghost_check_ignore_corner_y is %d", *(unsigned int *)(device + 1188));
	length = snprintf(data, 3520, "ghost_check_single_time is %d\n",
			  *(unsigned char *)(device + 1169));
	length += snprintf(data + length, 3520 - (unsigned long)length,
			   "ghost_check_multi_time is %d\n", *(unsigned char *)(device + 1170));
	simple_read_from_buffer(buffer, count, offset, data, (unsigned long)length);
	kfree(data);
	return length;
}
