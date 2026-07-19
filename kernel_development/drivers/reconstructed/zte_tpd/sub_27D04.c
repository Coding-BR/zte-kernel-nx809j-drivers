#include "defs.h"

__int64 sub_27D04(__int64 a1)
{
  char v1 = 0;
  *(_BYTE *)(a1 + 2456) = v1;
  return syna_tcm_get_features((struct tcm_dev *)a1, NULL, 0);
}
