#include "defs.h"

int sub_25330(struct tcm_dev *tcm, struct tcm_timings *timings,
              u32 default_value, u32 fields)
{
  return syna_tcm_config_timings(tcm, timings, default_value, fields);
}
