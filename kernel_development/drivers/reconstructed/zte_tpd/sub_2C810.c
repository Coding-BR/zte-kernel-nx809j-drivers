#include "defs.h"

extern int syna_tcm_get_touch_data(const unsigned char *report_data,
                                   unsigned int report_size,
                                   unsigned int bit_offset,
                                   unsigned int bit_count,
                                   unsigned int *value);

int sub_2C810(const unsigned char *report_data, unsigned int report_size,
              unsigned int bit_offset, unsigned int bit_count,
              unsigned int *value)
{
  return syna_tcm_get_touch_data(report_data, report_size, bit_offset,
                                 bit_count, value);
}
