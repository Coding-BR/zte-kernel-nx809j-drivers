#include "defs.h"

extern void syna_spi_remove(struct spi_device *spi);

__int64 sub_1D96C(__int64 a1, __int64 a2, __int64 a3)
{
  syna_spi_remove((struct spi_device *)a1);
  return 0;
}
