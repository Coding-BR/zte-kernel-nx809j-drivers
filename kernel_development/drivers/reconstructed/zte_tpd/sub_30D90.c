#include "defs.h"

extern int syna_charger_notify_call(struct notifier_block *notifier,
                                    unsigned long event, void *data);

__int64 sub_30D90(__int64 a1, __int64 a2, __int64 **a3)
{
  register unsigned __int64 v0 asm("x27") = 0;
  __asm__ __volatile__("msr s3_2_c7_c10_1, %0" : : "r"(v0));
  return syna_charger_notify_call((struct notifier_block *)a1,
                                  (unsigned long)a2, (void *)a3);
}
