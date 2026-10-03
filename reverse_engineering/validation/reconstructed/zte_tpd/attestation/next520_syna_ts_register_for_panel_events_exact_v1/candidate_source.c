#ifdef ZTE_TPD_HOST_TEST
#define SYNA_PANEL_REGISTER_FAILED_FORMAT unk_3A3A7
#define SYNA_PANEL_REGISTERED_FORMAT unk_3A96E
#else
#define SYNA_PANEL_REGISTER_FAILED_FORMAT "\0013[error] %s: Failed to register for panel events\n"
#define SYNA_PANEL_REGISTERED_FORMAT "\0016[info ] %s: registered for panel notifications panel: 0x%p\n"
#endif

void syna_ts_register_for_panel_events(__int64 a1)
{
  __int64 v2; // x0
  __int64 v5; // x20

  v2 = panel_event_notifier_register(1, 0, active_panel, syna_ts_panel_notifier_callback, a1);
  if ( !v2 )
  {
    printk(SYNA_PANEL_REGISTER_FAILED_FORMAT,
           "syna_ts_register_for_panel_events");
    return;
  }
  v5 = v2;
  printk(SYNA_PANEL_REGISTERED_FORMAT,
         "syna_ts_register_for_panel_events", active_panel);
  *(_QWORD *)(a1 + 1360) = v5;
}
