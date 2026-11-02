#include "defs.h"

#include <linux/mutex.h>
#include <linux/power_supply.h>

/* The recovered TCM layout has no source-level fields for these stock slots. */
#define SYNA_TCM_STARTUP_WORK_OFFSET       0x3c8
#define SYNA_TCM_REFLASH_WORKQUEUE_OFFSET  0x430
#define SYNA_TCM_CHARGER_WORK_OFFSET       0x620
#define SYNA_TCM_CHARGER_WORKQUEUE_OFFSET  0x688
#define SYNA_TCM_CHARGER_NOTIFIER_OFFSET   0x690

static DEFINE_MUTEX(syna_tpd_charger_lifecycle_lock);
static struct syna_tcm *syna_tpd_charger_owner;
static bool syna_tpd_charger_stopping;
static bool syna_tpd_charger_registered;

void syna_tpd_charger_lifecycle_begin(struct syna_tcm *tcm)
{
	if (!tcm)
		return;

	mutex_lock(&syna_tpd_charger_lifecycle_lock);
	syna_tpd_charger_owner = tcm;
	syna_tpd_charger_stopping = false;
	syna_tpd_charger_registered = false;
	mutex_unlock(&syna_tpd_charger_lifecycle_lock);
}

void syna_tpd_register_fw_class(struct syna_tcm *tcm)
{
	struct workqueue_struct **charger_workqueue;

	if (!tcm)
		return;

	charger_workqueue = (struct workqueue_struct **)
		((char *)tcm + SYNA_TCM_CHARGER_WORKQUEUE_OFFSET);

	mutex_lock(&syna_tpd_charger_lifecycle_lock);
	if (!syna_tpd_charger_owner) {
		syna_tpd_charger_owner = tcm;
		syna_tpd_charger_stopping = false;
	}
	if (syna_tpd_charger_owner == tcm && !syna_tpd_charger_stopping &&
	    !syna_tpd_charger_registered) {
		/* Serialize registration with disconnect; notifier callbacks do not
		 * take this mutex, so registration cannot deadlock on callback entry.
		 */
		syna_tpd_register_fw_class_stock_exact(tcm);
		syna_tpd_charger_registered = READ_ONCE(*charger_workqueue) != NULL;
	}
	mutex_unlock(&syna_tpd_charger_lifecycle_lock);
}

void syna_tpd_charger_lifecycle_stop(struct syna_tcm *tcm)
{
	struct delayed_work *startup_work;
	struct delayed_work *charger_work;
	struct workqueue_struct **reflash_workqueue;
	struct workqueue_struct **charger_workqueue;
	struct notifier_block *charger_notifier;
	struct workqueue_struct *workqueue;
	struct power_supply *battery;
	bool registered;

	if (!tcm)
		return;

	mutex_lock(&syna_tpd_charger_lifecycle_lock);
	if (!syna_tpd_charger_owner)
		syna_tpd_charger_owner = tcm;
	if (syna_tpd_charger_owner != tcm) {
		mutex_unlock(&syna_tpd_charger_lifecycle_lock);
		return;
	}
	syna_tpd_charger_stopping = true;
	registered = syna_tpd_charger_registered;
	syna_tpd_charger_registered = false;
	mutex_unlock(&syna_tpd_charger_lifecycle_lock);

	startup_work = (struct delayed_work *)
		((char *)tcm + SYNA_TCM_STARTUP_WORK_OFFSET);
	reflash_workqueue = (struct workqueue_struct **)
		((char *)tcm + SYNA_TCM_REFLASH_WORKQUEUE_OFFSET);
	charger_work = (struct delayed_work *)
		((char *)tcm + SYNA_TCM_CHARGER_WORK_OFFSET);
	charger_workqueue = (struct workqueue_struct **)
		((char *)tcm + SYNA_TCM_CHARGER_WORKQUEUE_OFFSET);
	charger_notifier = (struct notifier_block *)
		((char *)tcm + SYNA_TCM_CHARGER_NOTIFIER_OFFSET);

	/* Stop startup first so it cannot register the notifier during teardown. */
	if (READ_ONCE(*reflash_workqueue))
		cancel_delayed_work_sync(startup_work);

	/* Unregister waits for notifier callbacks before their queue is destroyed. */
	if (registered)
		power_supply_unreg_notifier(charger_notifier);

	workqueue = READ_ONCE(*charger_workqueue);
	if (workqueue) {
		cancel_delayed_work_sync(charger_work);
		WRITE_ONCE(*charger_workqueue, NULL);
		destroy_workqueue(workqueue);
	}

	/* get_by_name() holds a device reference until power_supply_put(). */
	battery = (struct power_supply *)
		READ_ONCE(syna_get_charger_status_batt_psy);
	if (battery) {
		WRITE_ONCE(syna_get_charger_status_batt_psy, 0);
		power_supply_put(battery);
	}
}

int syna_dev_disconnect(struct syna_tcm *tcm)
{
	syna_tpd_charger_lifecycle_stop(tcm);
	return syna_dev_disconnect_stock_exact(tcm);
}
