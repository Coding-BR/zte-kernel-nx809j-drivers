#include "defs.h"

int syna_dev_process_touch_report(unsigned char report_type,
				  const unsigned char *report,
				  unsigned int report_size,
				  void *context)
{
	int ret = syna_dev_process_touch_report_stock_exact(report_type, report,
							    report_size, context);

	/* Epoll registrations must not retain a waitqueue embedded in the tcm. */
	syna_input_agent_wake_pollers();
	return ret;
}