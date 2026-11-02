#include "defs.h"

#define SYNA_TCM_REFLASH_WORKQUEUE_OFFSET 0x430

int syna_dev_connect(struct syna_tcm *tcm)
{
	struct workqueue_struct *reflash_workqueue;
	int ret;

	syna_tpd_charger_lifecycle_begin(tcm);
	ret = syna_dev_connect_stock_exact(tcm);
	if (!ret && tcm) {
		reflash_workqueue = READ_ONCE(*(struct workqueue_struct **)
			((char *)tcm + SYNA_TCM_REFLASH_WORKQUEUE_OFFSET));
		if (!reflash_workqueue) {
			/* The exact body has already requested the IRQ and input device. */
			syna_dev_disconnect(tcm);
			ret = -ENOMEM;
		}
	}

	if (ret < 0)
		syna_input_agent_deregister_misc(tcm);

	return ret;
}
