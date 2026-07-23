#include "defs.h"

long syna_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
  __int64 a1 = (__int64)file;
  unsigned int a2 = cmd;
  unsigned long a3 = arg;
  _DWORD *v4; // x20
  __int64 v15; // x0
  __int64 result; // x0
  int v29; // [xsp+34h] [xbp-Ch] BYREF

  v4 = *(_DWORD **)(a1 + 32);
  v29 = 0;
  if ( a2 == -1073451005U )
    goto LABEL_COPY_REPORT_RATE;
  if ( a2 == -1073451006U )
    goto LABEL_COPY_SIGNAL;
  if ( a2 != -1073451007U )
  {
    result = -25;
    goto LABEL_RETURN;
  }

  if ( v4[376] )
  {
    if ( !v4[282] )
    {
      struct wait_queue_entry v28; // [xsp+8h] [xbp-38h] BYREF

      memset(&v28, 0, sizeof(v28));
      init_wait_entry(&v28, 0);
      while ( 1 )
      {
        v15 = prepare_to_wait_event((struct wait_queue_head *)(v4 + 274), &v28, 1);
        if ( v4[282] )
          break;
        if ( v15 )
          goto LABEL_WAIT_DONE;
        schedule();
      }
      finish_wait((struct wait_queue_head *)(v4 + 274), &v28);
    }
LABEL_WAIT_DONE:
    result = 0;
    v4[282] = 0;
  }
  else
  {
    result = -11;
  }
  goto LABEL_RETURN;

LABEL_COPY_SIGNAL:
  v29 = v4[376];
  mutex_lock((struct mutex *)(v4 + 284));
  v15 = copy_to_user((void __user *)a3, &v29, 4);
  goto LABEL_COPY_DONE;

LABEL_COPY_REPORT_RATE:
  v29 = v4[270];
  mutex_lock((struct mutex *)(v4 + 284));
  v15 = copy_to_user((void __user *)a3, &v29, 4);

LABEL_COPY_DONE:
  if ( !v15 )
  {
    mutex_unlock((struct mutex *)(v4 + 284));
    result = 0;
    goto LABEL_RETURN;
  }
  mutex_unlock((struct mutex *)(v4 + 284));
  result = -14;

LABEL_RETURN:
  return result;
}
