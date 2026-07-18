#include "defs.h"

extern int syna_release(struct inode *inode, struct file *filp);

__int64 sub_18BDC(__int64 a1, __int64 a2, __int64 a3)
{
  (void)a3;
  return syna_release((struct inode *)a1, (struct file *)a2);
}
