#include "defs.h"

#include <linux/spinlock.h>

static DEFINE_SPINLOCK(tpd_workqueue_lifecycle_lock);
static bool tpd_workqueue_accepting;

static struct workqueue_struct **tpd_main_workqueue_slot(void)
{
	if (!tpd_cdev)
		return NULL;
	return (struct workqueue_struct **)(tpd_cdev + 0x4b0);
}

static struct workqueue_struct **tpd_report_workqueue_slot(void)
{
	if (!tpd_cdev)
		return NULL;
	return (struct workqueue_struct **)(tpd_cdev + 0x4b8);
}

void tpd_workqueue_lifecycle_open(void)
{
	unsigned long flags;
	struct workqueue_struct **main_slot;
	struct workqueue_struct **report_slot;

	spin_lock_irqsave(&tpd_workqueue_lifecycle_lock, flags);
	main_slot = tpd_main_workqueue_slot();
	report_slot = tpd_report_workqueue_slot();
	tpd_workqueue_accepting = main_slot && *main_slot &&
				  report_slot && *report_slot;
	spin_unlock_irqrestore(&tpd_workqueue_lifecycle_lock, flags);
}

void tpd_workqueue_lifecycle_close(void)
{
	unsigned long flags;

	spin_lock_irqsave(&tpd_workqueue_lifecycle_lock, flags);
	tpd_workqueue_accepting = false;
	spin_unlock_irqrestore(&tpd_workqueue_lifecycle_lock, flags);
}

bool tpd_queue_main_work_on(int cpu, struct workqueue_struct *unused,
			    struct work_struct *work)
{
	unsigned long flags;
	struct workqueue_struct **slot;
	bool queued = false;

	(void)unused;
	spin_lock_irqsave(&tpd_workqueue_lifecycle_lock, flags);
	slot = tpd_main_workqueue_slot();
	if (tpd_workqueue_accepting && slot && *slot)
		queued = queue_work_on(cpu, *slot, work);
	spin_unlock_irqrestore(&tpd_workqueue_lifecycle_lock, flags);
	return queued;
}

bool tpd_queue_main_delayed_work_on(int cpu,
				    struct workqueue_struct *unused,
				    struct delayed_work *work,
				    unsigned long delay)
{
	unsigned long flags;
	struct workqueue_struct **slot;
	bool queued = false;

	(void)unused;
	spin_lock_irqsave(&tpd_workqueue_lifecycle_lock, flags);
	slot = tpd_main_workqueue_slot();
	if (tpd_workqueue_accepting && slot && *slot)
		queued = queue_delayed_work_on(cpu, *slot, work, delay);
	spin_unlock_irqrestore(&tpd_workqueue_lifecycle_lock, flags);
	return queued;
}

bool tpd_queue_report_delayed_work_on(int cpu,
				      struct workqueue_struct *unused,
				      struct delayed_work *work,
				      unsigned long delay)
{
	unsigned long flags;
	struct workqueue_struct **slot;
	bool queued = false;

	(void)unused;
	spin_lock_irqsave(&tpd_workqueue_lifecycle_lock, flags);
	slot = tpd_report_workqueue_slot();
	if (tpd_workqueue_accepting && slot && *slot)
		queued = queue_delayed_work_on(cpu, *slot, work, delay);
	spin_unlock_irqrestore(&tpd_workqueue_lifecycle_lock, flags);
	return queued;
}

bool tpd_mod_main_delayed_work_on(int cpu,
				  struct workqueue_struct *unused,
				  struct delayed_work *work,
				  unsigned long delay)
{
	unsigned long flags;
	struct workqueue_struct **slot;
	bool queued = false;

	(void)unused;
	spin_lock_irqsave(&tpd_workqueue_lifecycle_lock, flags);
	slot = tpd_main_workqueue_slot();
	if (tpd_workqueue_accepting && slot && *slot)
		queued = mod_delayed_work_on(cpu, *slot, work, delay);
	spin_unlock_irqrestore(&tpd_workqueue_lifecycle_lock, flags);
	return queued;
}

void tpd_workqueue_lifecycle_deinit(void)
{
	struct workqueue_struct **main_slot;
	struct workqueue_struct **report_slot;
	struct workqueue_struct *main_workqueue;
	struct workqueue_struct *report_workqueue;

	tpd_workqueue_lifecycle_close();
	main_slot = tpd_main_workqueue_slot();
	report_slot = tpd_report_workqueue_slot();
	main_workqueue = main_slot ? *main_slot : NULL;
	report_workqueue = report_slot ? *report_slot : NULL;

	if (report_workqueue)
		tpd_report_work_deinit();
	if (main_workqueue) {
		tpd_resume_work_deinit();
		cancel_delayed_work_sync((struct delayed_work *)(tpd_cdev + 0x8d0));
		cancel_delayed_work_sync((struct delayed_work *)(tpd_cdev + 0xa50));
		cancel_delayed_work_sync((struct delayed_work *)(tpd_cdev + 0x938));
	}

	if (main_slot)
		*main_slot = NULL;
	if (report_slot)
		*report_slot = NULL;
	if (main_workqueue)
		destroy_workqueue(main_workqueue);
	if (report_workqueue)
		destroy_workqueue(report_workqueue);
}
