#include "defs.h"

int sub_156F8(struct syna_tcm *tcm, bool force)
{
  return syna_dev_do_reflash(tcm, force);
}
