#include <linux/err.h>

#ifdef ZTE_TPD_HOST_TEST
#define SYNA_PANEL_REGISTER_FAILED_FORMAT unk_3A3A7
#define SYNA_PANEL_REGISTERED_FORMAT unk_3A96E
#else
#define SYNA_PANEL_REGISTER_FAILED_FORMAT "\0013[error] %s: Failed to register for panel events\n"
#define SYNA_PANEL_REGISTERED_FORMAT "\0016[info ] %s: registered for panel notifications panel: 0x%p\n"
#endif

void syna_ts_register_for_panel_events(__int64 a1)
{
  void *cookie;

  cookie = syna_ts_panel_notifier_compat_register(active_panel, (void *)a1);
  if (IS_ERR_OR_NULL(cookie))
  {
    printk(SYNA_PANEL_REGISTER_FAILED_FORMAT,
           "syna_ts_register_for_panel_events");
    return;
  }
  printk(SYNA_PANEL_REGISTERED_FORMAT,
         "syna_ts_register_for_panel_events", active_panel);
  *(_QWORD *)(a1 + 1360) = (_QWORD)cookie;
}
