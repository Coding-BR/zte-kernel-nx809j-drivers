#include <linux/export.h>

/*
 * Keep the module's public symbol surface aligned with the stock zte_tpd.ko.
 * The implementations are supplied by the selected C/Assembly translation
 * units; this file only restores their kernel export records.
 */
extern void tpd_clean_all_event(void);
extern __int64 tpd_touch_press(__int64, ...);
extern __int64 tpd_touch_release(__int64, unsigned short, int);
extern int ufp_notifier_cb(int);
extern void ufp_report_lcd_state(void);

EXPORT_SYMBOL(tpd_clean_all_event);
EXPORT_SYMBOL(tpd_touch_press);
EXPORT_SYMBOL(tpd_touch_release);
EXPORT_SYMBOL(ufp_notifier_cb);
EXPORT_SYMBOL(ufp_report_lcd_state);
