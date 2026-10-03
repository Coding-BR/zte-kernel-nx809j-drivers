#define ZTE_TPD_AARCH64_INPUT 1
struct notifier_block { unsigned char unused; };
struct workqueue_struct { unsigned char unused; };
struct delayed_work { unsigned char unused; };
extern int queue_delayed_work_on(int cpu, struct workqueue_struct *wq,
                                 struct delayed_work *work,
                                 unsigned long delay);
extern int strcmp(const char *left, const char *right);
#include "syna_charger_notify_call_under_test.c"
