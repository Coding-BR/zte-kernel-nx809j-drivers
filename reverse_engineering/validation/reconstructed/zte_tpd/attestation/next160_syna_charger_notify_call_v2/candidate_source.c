#include "defs.h"

int syna_charger_notify_call(struct notifier_block *notifier,
                             unsigned long event, void *data)
{
  const char *name;

  if (event)
    return 0;
  name = *(const char * const *)*(const void * const *)data;
  if (!strcmp(name, "usb") ||
      (name[0] == 'a' && name[1] == 'c' && name[2] == '\0'))
    queue_delayed_work_on(32,
                          *(struct workqueue_struct **)((char *)notifier - 8),
                          (struct delayed_work *)((char *)notifier - 112),
                          125);
  return 0;
}
