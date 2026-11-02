#include "defs.h"

bool syna_dev_queue_reflash_if_available(int cpu,
					 struct workqueue_struct *workqueue,
					 struct delayed_work *work,
					 unsigned long delay)
{
	if (!workqueue || !work)
		return false;

	return queue_delayed_work_on(cpu, workqueue, work, delay);
}
