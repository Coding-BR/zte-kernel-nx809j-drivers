#include "defs.h"

__int64 sub_2829C(__int64 a1, __int64 a2, __int64 a3, unsigned __int8 a4, unsigned char *a5)
{
  if (a5)
  {
    *a5 |= a4;
  }
  return syna_tcm_enable_predict_reading(
      (struct tcm_dev *)a1, (bool)a2);
}
