#include "defs.h"

__attribute__((target("arch=armv8.5-a+mte")))
int sub_2BE10(struct tcm_dev *tcm, char *data, unsigned int length,
             unsigned int offset, unsigned int delay_mode)
{
  register __int64 x9 asm("x9");
  register char *x14 asm("x14");
  __asm__ __volatile__ ("stzg %0, [%1], #0x6a0" : "+r"(x9), "+r"(x14));
  return syna_tcm_update_mtp_data(tcm, data, length, offset, delay_mode);
}
