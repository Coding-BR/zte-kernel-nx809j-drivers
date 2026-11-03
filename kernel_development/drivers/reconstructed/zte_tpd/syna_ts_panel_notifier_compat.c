#include "defs.h"

/*
 * The NX809J stock TPD callback uses the legacy notification layout:
 * notif_type at +0 and early_trigger at +12. The Docker kernel's built-in
 * provider passes the current layout, where panel is at +8 and early_trigger
 * is at +24. Filter the panel and adapt those fields while keeping the stock
 * callback body unchanged.
 */
struct syna_legacy_panel_notification {
	int notif_type;
	u32 reserved0;
	u32 reserved1;
	bool early_trigger;
};

void *syna_ts_panel_notifier_compat_register(void *panel, void *client_data)
{
	return panel_event_notifier_register(
		PANEL_EVENT_NOTIFICATION_PRIMARY,
		PANEL_EVENT_NOTIFIER_CLIENT_PRIMARY_TOUCH,
		panel,
		syna_ts_panel_notifier_compat_callback,
		client_data);
}

void syna_ts_panel_notifier_compat_callback(
	enum panel_event_notifier_tag tag,
	struct panel_event_notification *notification,
	void *client_data)
{
	struct syna_legacy_panel_notification legacy = { };

	if (!notification) {
		syna_ts_panel_notifier_callback(tag, NULL, client_data);
		return;
	}
	if (notification->panel != active_panel)
		return;

	legacy.notif_type = notification->notif_type;
	legacy.early_trigger = notification->notif_data.early_trigger;
	syna_ts_panel_notifier_callback(
		tag, (struct panel_event_notification *)&legacy, client_data);
}
