#include "defs.h"

extern int syna_open(struct inode *inode, struct file *filp);

__int64 sub_18B9C(__int64 a1, __int64 a2, __int64 a3)
{
  (void)a3;
  return syna_open((struct inode *)a1, (struct file *)a2);
}
