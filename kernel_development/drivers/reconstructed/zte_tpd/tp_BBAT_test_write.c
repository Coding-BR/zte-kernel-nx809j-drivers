ssize_t tp_BBAT_test_write(struct file *file, const char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;

  (void)file;
  (void)offset;
  printk(unk_39D11, a2, a3);
  return a3;
}
