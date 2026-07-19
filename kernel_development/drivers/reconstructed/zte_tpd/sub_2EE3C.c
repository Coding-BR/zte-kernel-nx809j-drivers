#include "defs.h"

extern char *syna_tcm_get_partition_id_string(enum flash_area partition_id);

char *sub_2EE3C(enum flash_area partition_id)
{
  return syna_tcm_get_partition_id_string(partition_id);
}
