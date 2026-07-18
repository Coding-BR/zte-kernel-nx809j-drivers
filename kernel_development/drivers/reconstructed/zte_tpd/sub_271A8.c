#include "defs.h"

int sub_271A8(struct tcm_dev *tcm, char *config, unsigned int length,
             unsigned int delay_ms)
{
  return syna_tcm_get_static_config(tcm, config, length, delay_ms);
}
