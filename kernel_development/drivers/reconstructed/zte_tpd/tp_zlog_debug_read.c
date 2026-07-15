/* SPDX-License-Identifier: GPL-2.0-only */

ssize_t tp_zlog_debug_read(struct file *file, char __user *buffer,
			   size_t count, loff_t *offset)
{
	char data[50] = { 0 };
	ssize_t length;

	(void)file;
	if (*offset)
		return 0;

	length = snprintf(data, sizeof(data), "this no use");
	return simple_read_from_buffer(buffer, count, offset, data, length);
}
