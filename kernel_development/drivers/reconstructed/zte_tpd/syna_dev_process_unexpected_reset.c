#include "defs.h"
#include <linux/spinlock.h>

#define SYNA_TCM_HELPER_WQ_OFFSET 1352
#define SYNA_TCM_REFLASH_WQ_OFFSET 1072
#define SYNA_TCM_REFLASH_WORK_OFFSET 968
#define SYNA_TCM_HELPER_PENDING_OFFSET 1312
#define SYNA_TCM_HELPER_WORK_OFFSET 1320

static DEFINE_SPINLOCK(syna_dev_helper_work_lock);

struct workqueue_struct *syna_dev_helper_workqueue_stop(struct syna_tcm *tcm)
{
    struct workqueue_struct **field;
    struct workqueue_struct *workqueue;
    unsigned long flags;

    if (!tcm)
        return NULL;

    field = (struct workqueue_struct **)((char *)tcm +
                                         SYNA_TCM_HELPER_WQ_OFFSET);
    spin_lock_irqsave(&syna_dev_helper_work_lock, flags);
    workqueue = READ_ONCE(*field);
    WRITE_ONCE(*field, NULL);
    spin_unlock_irqrestore(&syna_dev_helper_work_lock, flags);
    return workqueue;
}

bool syna_dev_helper_schedule_reflash(struct syna_tcm *tcm,
                                     unsigned long delay)
{
    struct workqueue_struct **helper_field;
    struct workqueue_struct **reflash_field;
    struct workqueue_struct *helper_workqueue;
    struct workqueue_struct *reflash_workqueue;
    struct delayed_work *reflash_work;
    unsigned long flags;
    bool queued = false;

    if (!tcm)
        return false;

    helper_field = (struct workqueue_struct **)((char *)tcm +
                                                SYNA_TCM_HELPER_WQ_OFFSET);
    reflash_field = (struct workqueue_struct **)((char *)tcm +
                                                 SYNA_TCM_REFLASH_WQ_OFFSET);
    reflash_work = (struct delayed_work *)((char *)tcm +
                                          SYNA_TCM_REFLASH_WORK_OFFSET);

    spin_lock_irqsave(&syna_dev_helper_work_lock, flags);
    helper_workqueue = READ_ONCE(*helper_field);
    reflash_workqueue = READ_ONCE(*reflash_field);
    if (helper_workqueue && reflash_workqueue)
        queued = queue_delayed_work_on(32, reflash_workqueue, reflash_work,
                                       delay);
    spin_unlock_irqrestore(&syna_dev_helper_work_lock, flags);
    return queued;
}

void syna_dev_helper_work_complete(struct syna_tcm *tcm)
{
    unsigned int *pending;
    unsigned long flags;

    if (!tcm)
        return;

    pending = (unsigned int *)((char *)tcm +
                               SYNA_TCM_HELPER_PENDING_OFFSET);
    spin_lock_irqsave(&syna_dev_helper_work_lock, flags);
    WRITE_ONCE(*pending, 0);
    spin_unlock_irqrestore(&syna_dev_helper_work_lock, flags);
}

int syna_dev_process_unexpected_reset(unsigned char report_code,
                                      const unsigned char *payload,
                                      unsigned int length, void *context)
{
    struct syna_tcm *tcm = context;
    struct workqueue_struct **workqueue_field;
    struct workqueue_struct *workqueue;
    struct work_struct *work;
    unsigned int *state;
    unsigned int *pending;
    unsigned long flags;
    bool queued = false;

    (void)report_code;
    (void)payload;
    (void)length;

    if (!tcm) {
        printk(unk_38D56, "syna_dev_process_unexpected_reset");
        return -22;
    }

    state = (unsigned int *)((char *)tcm + 1404);
    pending = (unsigned int *)((char *)tcm +
                               SYNA_TCM_HELPER_PENDING_OFFSET);
    workqueue_field = (struct workqueue_struct **)((char *)tcm +
                                                   SYNA_TCM_HELPER_WQ_OFFSET);
    work = (struct work_struct *)((char *)tcm + SYNA_TCM_HELPER_WORK_OFFSET);

    spin_lock_irqsave(&syna_dev_helper_work_lock, flags);
    if (READ_ONCE(*state) == 1) {
        workqueue = READ_ONCE(*workqueue_field);
        if (workqueue) {
            if (!READ_ONCE(*pending)) {
                WRITE_ONCE(*pending, 1);
                queue_work_on(32, workqueue, work);
            }
            queued = true;
        }
    }
    spin_unlock_irqrestore(&syna_dev_helper_work_lock, flags);

    if (queued)
        printk(unk_32499, "syna_dev_process_unexpected_reset");
    return 0;
}
