#include "defs.h"

#include <linux/mutex.h>

static DEFINE_MUTEX(ufp_mac_lifecycle_lock);
static bool ufp_mac_stopping = true;

void ufp_mac_lifecycle_publish(struct platform_device *pdev)
{
	mutex_lock(&ufp_mac_lifecycle_lock);
	WRITE_ONCE(ufp_tp_ops.pdev, pdev);
	ufp_mac_stopping = false;
	mutex_unlock(&ufp_mac_lifecycle_lock);
}

void ufp_report_gesture_uevent(char *event)
{
	char *envp[] = { event, NULL };
	struct platform_device *pdev;
	struct workqueue_struct *workqueue;
	unsigned long delay;

	if (!event)
		return;

	mutex_lock(&ufp_mac_lifecycle_lock);
	if (ufp_mac_stopping) {
		mutex_unlock(&ufp_mac_lifecycle_lock);
		return;
	}

	pdev = READ_ONCE(ufp_tp_ops.pdev);
	if (!pdev) {
		mutex_unlock(&ufp_mac_lifecycle_lock);
		return;
	}

	kobject_uevent_env(&pdev->dev.kobj, KOBJ_CHANGE, envp);
	pm_wakeup_ws_event(&tp_wakeup, 2000, false);

	if (!strcmp(event, "single_tap=true")) {
		delay = 150;
		workqueue = READ_ONCE(ufp_tp_ops.single_tap_work.wq);
		if (workqueue) {
			WRITE_ONCE(ufp_tp_ops.single_tap_pending, 1);
			mod_delayed_work_on(32, workqueue,
					    (struct delayed_work *)&ufp_tp_ops.single_tap_work,
					    delay);
		}
	} else if (!strcmp(event, "double_tap=true")) {
		delay = 0;
		workqueue = READ_ONCE(ufp_tp_ops.single_tap_work.wq);
		if (workqueue)
			mod_delayed_work_on(32, workqueue,
					    (struct delayed_work *)&ufp_tp_ops.single_tap_work,
					    delay);
	}
	mutex_unlock(&ufp_mac_lifecycle_lock);

	printk(KERN_INFO "tpd_ufp_info: %s\n", event);
}

void ufp_mac_exit(void)
{
	struct delayed_work *work =
		(struct delayed_work *)&ufp_tp_ops.single_tap_work;
	struct workqueue_struct *workqueue;

	mutex_lock(&ufp_mac_lifecycle_lock);
	if (ufp_mac_stopping) {
		mutex_unlock(&ufp_mac_lifecycle_lock);
		return;
	}
	ufp_mac_stopping = true;
	workqueue = READ_ONCE(ufp_tp_ops.single_tap_work.wq);
	WRITE_ONCE(ufp_tp_ops.single_tap_work.wq, NULL);
	mutex_unlock(&ufp_mac_lifecycle_lock);

	/* The admission gate prevents a new gesture from queuing after this drain. */
	cancel_delayed_work_sync(work);
	if (workqueue) {
		flush_workqueue(workqueue);
		destroy_workqueue(workqueue);
	}
	wakeup_source_remove(&tp_wakeup);
	WRITE_ONCE(ufp_tp_ops.single_tap_pending, 0);

	mutex_lock(&ufp_mac_lifecycle_lock);
	WRITE_ONCE(ufp_tp_ops.pdev, NULL);
	mutex_unlock(&ufp_mac_lifecycle_lock);
}
