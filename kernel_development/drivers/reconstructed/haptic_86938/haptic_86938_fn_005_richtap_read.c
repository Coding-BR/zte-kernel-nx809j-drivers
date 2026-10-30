// SPDX-License-Identifier: GPL-2.0
#include <linux/fs.h>

ssize_t richtap_read(struct file *file, char __user *buf,
                     size_t count, loff_t *pos)
{
    (void)file;
    (void)buf;
    (void)count;
    (void)pos;
    return 0;
}
