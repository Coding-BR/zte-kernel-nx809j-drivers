#include "defs.h"

int sub_2E560(struct tcm_dev *tcm, char *config, unsigned int length,
             unsigned int delay_ms)
{
  return syna_tcm_set_touch_report_config(tcm, config, length, delay_ms);
}
