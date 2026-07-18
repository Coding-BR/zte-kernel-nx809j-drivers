#include "defs.h"

int sub_17F70(unsigned char report_code, const unsigned char *payload,
              unsigned int length, void *context)
{
  return syna_dev_process_touch_report(report_code, payload, length, context);
}
