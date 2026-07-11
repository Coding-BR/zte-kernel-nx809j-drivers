/* SPDX-License-Identifier: GPL-2.0-only */
/*
 * Minimal ABI probes for the callback types used by the stock zte_ir module.
 * Keep this file independent from kernel headers so it can be compiled with
 * the exact Android Clang revision that produced the captured module.
 */

typedef long ssize_t;
typedef unsigned long size_t;
typedef long long loff_t;

struct file;
struct inode;
struct spi_device;

#define KCFI_PROBE __attribute__((noinline, used))

KCFI_PROBE ssize_t kcfi_file_write(struct file *file,
				   const char *buffer,
				   size_t count,
				   loff_t *position)
{
	return 0;
}

KCFI_PROBE long kcfi_file_ioctl(struct file *file,
				unsigned int command,
				unsigned long argument)
{
	return 0;
}

KCFI_PROBE int kcfi_file_open(struct inode *inode, struct file *file)
{
	return 0;
}

KCFI_PROBE int kcfi_file_release(struct inode *inode, struct file *file)
{
	return 0;
}

KCFI_PROBE int kcfi_spi_probe(struct spi_device *spi)
{
	return 0;
}

KCFI_PROBE void kcfi_spi_remove(struct spi_device *spi)
{
}

KCFI_PROBE int kcfi_module_init(void)
{
	return 0;
}

KCFI_PROBE void kcfi_module_exit(void)
{
}
