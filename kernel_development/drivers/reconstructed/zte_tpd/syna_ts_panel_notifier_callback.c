#include <linux/soc/qcom/panel_event_notifier.h>

struct syna_stock_panel_notification {
  int notif_type;
  unsigned int reserved0;
  unsigned int reserved1;
  unsigned char early_trigger;
};

void syna_ts_panel_notifier_callback(enum panel_event_notifier_tag tag, struct panel_event_notification *notification, void *client_data)
{
  const struct syna_stock_panel_notification *stock_notification;
  int event;

  (void)tag;
  (void)client_data;

  if ( !notification )
  {
    printk(unk_31F2D);
    return;
  }

  stock_notification = (const struct syna_stock_panel_notification *)notification;
  event = stock_notification->notif_type;

  if ( event > 2 )
  {
    if ( event != DRM_PANEL_EVENT_BLANK_LP )
    {
      if ( event != DRM_PANEL_EVENT_FPS_CHANGE )
        printk(unk_3C4D0, event);
      return;
    }
    panel_enter_low_power = 1;
    ufp_notifier_cb(1);
    ufp_report_lcd_state();
    return;
  }

  if ( event != DRM_PANEL_EVENT_BLANK )
  {
    if ( event != DRM_PANEL_EVENT_UNBLANK )
    {
      printk(unk_3C4D0, event);
      return;
    }
    if ( panel_enter_low_power == 1 )
    {
      panel_enter_low_power = 0;
      ufp_notifier_cb(0);
    }
    if ( stock_notification->early_trigger != 1 )
    {
      change_tp_state(2);
      return;
    }
    printk(unk_347E1);
    return;
  }

  if ( panel_enter_low_power == 1 )
  {
    panel_enter_low_power = 0;
    ufp_notifier_cb(0);
    printk(unk_35A7D);
  }
  if ( stock_notification->early_trigger == 1 )
  {
    change_tp_state(3);
    return;
  }
  printk(unk_32F7F);
  return;
}
