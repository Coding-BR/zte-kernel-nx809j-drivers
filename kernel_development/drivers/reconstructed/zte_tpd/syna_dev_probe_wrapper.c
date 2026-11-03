#include "defs.h"

#define SYNA_TCM_HELPER_WORKQUEUE_OFFSET 0x548
#define SYNA_TCM_INPUT_BUFFER_OFFSET 0x460

int syna_dev_probe(struct platform_device *pdev)
{
	struct workqueue_struct *helper_workqueue;
	void *input_buffer;
	struct syna_tcm *tcm;
	int ret;

	if (!pdev)
		return -EINVAL;

	ret = syna_dev_probe_stock_exact(pdev);
	if (ret)
		return ret;

	tcm = platform_get_drvdata(pdev);
	if (!tcm)
		return -ENODEV;

	helper_workqueue = READ_ONCE(*(struct workqueue_struct **)
		((char *)tcm + SYNA_TCM_HELPER_WORKQUEUE_OFFSET));
	input_buffer = READ_ONCE(*(void **)((char *)tcm +
					    SYNA_TCM_INPUT_BUFFER_OFFSET));
	if (helper_workqueue && input_buffer)
		return 0;

	/* Required probe resources are missing; unwind the initialized probe. */
	syna_dev_remove(pdev);
	platform_set_drvdata(pdev, NULL);
	return -ENOMEM;
}
