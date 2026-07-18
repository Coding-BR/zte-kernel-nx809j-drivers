#include "defs.h"

int sub_17D98(unsigned char report_code, const unsigned char *payload,
              unsigned int length, void *context)
{
  return syna_dev_process_unexpected_reset(report_code, payload, length, context);
}
