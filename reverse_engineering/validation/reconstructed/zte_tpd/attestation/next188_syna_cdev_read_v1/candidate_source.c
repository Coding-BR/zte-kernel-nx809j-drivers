#ifndef __user
#define __user
#endif

ssize_t syna_cdev_read(struct file *file, char __user *buffer, size_t count, loff_t *offset)
{
  __int64 tcm_hcd;
  __int64 result;
  int status;
  unsigned int request;

  (void)file;
  (void)offset;
  if (!count)
    return 0;
  request = (unsigned int)count;
  tcm_hcd = *(_QWORD *)(g_cdev_data + 168);
  mutex_lock(&qword_316A0);
  status = (int)syna_cdev_ioctl_raw_read(tcm_hcd, (__int64)buffer, request, request);
  result = status;
  if (result != (__int64)count)
    printk("\0013[error] %s: Invalid read operation, request:%d, return:%d\n",
           "syna_cdev_read", request, status);
  mutex_unlock(&qword_316A0);
  return result;
}
