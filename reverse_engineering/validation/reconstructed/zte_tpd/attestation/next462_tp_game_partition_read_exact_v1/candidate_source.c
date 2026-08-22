#ifndef __user
#define __user
#endif

ssize_t tp_game_partition_read(struct file *file, char __user *buffer, size_t count, loff_t *offset)
{
  __int64 a2 = (__int64)buffer;
  __int64 a3 = (__int64)count;
  __int64 *a4 = (__int64 *)offset;

  (void)file;
  __int64 result; // x0
  __int64 v8; // x22
  int v9; // w0
  char s[1024]; // [xsp+8h] [xbp-408h] BYREF
  memset(s, 0, sizeof(s));
  if ( *a4 )
  {
    result = 0;
  }
  else
  {
    v8 = tpd_cdev;
    printk("\x01\x35tpd: %s:game_partition:val %s.\n", "tp_game_partition_read", (const char *)(v8 + 65));
    v9 = snprintf(s, 0x400u, "%s\n", (const char *)(v8 + 65));
    result = simple_read_from_buffer(a2, a3, a4, s, v9);
  }
  return result;
}
