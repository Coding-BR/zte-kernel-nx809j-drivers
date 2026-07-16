#include "defs.h"

__int64 sub_2FF00(__int64 a1, int a2, __int64 a3)
{
  (void)a3;
  return tpd_set_singlegamegesture((struct ztp_device *)(unsigned long)a1, a2);
}
