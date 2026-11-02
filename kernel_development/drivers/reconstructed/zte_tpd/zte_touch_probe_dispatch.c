#include "defs.h"

int zte_touch_probe_dispatch(struct platform_device *pdev)
{
	char *cdev;

	if (!pdev)
		return -ENODEV;

	cdev = (char *)(unsigned long)READ_ONCE(tpd_cdev);
	if (cdev &&
	    READ_ONCE(*(struct platform_device **)(cdev + 0xdd0)) == pdev)
		return -ENODEV;

	return zte_touch_probe(pdev);
}
