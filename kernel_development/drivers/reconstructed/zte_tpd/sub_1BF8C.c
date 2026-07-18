#include "defs.h"

int sub_1BF8C(unsigned char report_code, const unsigned char *payload,
             unsigned int length, void *context)
{
  return syna_cdev_process_reports(report_code, payload, length, context);
}
