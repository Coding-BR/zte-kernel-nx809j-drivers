#include "defs.h"

int zte_touch_probe_dispatch(struct platform_device *pdev)
{
	char *cdev;

	/* The synthetic uevent child has no target touch DT node. */
	if (!pdev || !pdev->dev.of_node ||
	    !of_device_is_compatible(pdev->dev.of_node, "zte_tp"))
		return -ENODEV;

	cdev = (char *)(unsigned long)READ_ONCE(tpd_cdev);
	if (cdev &&
	    READ_ONCE(*(struct platform_device **)(cdev + 0xdd0)) == pdev)
		return -ENODEV;

	return zte_touch_probe(pdev);
}
