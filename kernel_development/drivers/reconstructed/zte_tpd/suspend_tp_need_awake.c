#include "defs.h"

int suspend_tp_need_awake(void)
{
  int (*v0)(void); // x8

  v0 = *(int (**)(void))(tpd_cdev + 3248);
  if ( !v0 )
    return 0;
  if ( *((_DWORD *)v0 - 1) != -2139014615 )
    __break(0x8228u);
  return v0() & 1;
}
