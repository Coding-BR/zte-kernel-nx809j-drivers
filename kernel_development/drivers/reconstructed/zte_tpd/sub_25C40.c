#include "defs.h"

__attribute__((target("arch=armv8.2-a+bf16")))
__int64 sub_25C40(__int64 a1, __int64 a2, __int64 a3)
{
  __asm__ __volatile__ ("bfmlalb v26.4s, v25.8h, v22.8h");
  return syna_tcm_detect_device((struct tcm_dev *)a1,
				 (unsigned int)a2, (bool)a3);
}
