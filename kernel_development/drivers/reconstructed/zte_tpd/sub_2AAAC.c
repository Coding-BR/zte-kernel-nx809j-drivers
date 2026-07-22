#include "defs.h"

__int64 sub_2AAAC(__int64 a1, __int64 a2, __int64 a3, __int64 a4)
{
  return syna_tcm_do_fw_update((struct tcm_dev *)a1,
                               (const unsigned char *)a2,
                               (unsigned int)a3, (unsigned int)a4,
                               *(char *)(a3 + 836));
}
