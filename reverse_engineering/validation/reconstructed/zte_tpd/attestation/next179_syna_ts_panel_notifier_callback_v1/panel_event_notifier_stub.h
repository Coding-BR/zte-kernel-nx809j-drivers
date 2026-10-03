#ifndef _LINUX_SOC_QCOM_PANEL_EVENT_NOTIFIER_H
#define _LINUX_SOC_QCOM_PANEL_EVENT_NOTIFIER_H

#include <stdbool.h>

enum panel_event_notifier_tag {
	PANEL_EVENT_NOTIFICATION_PRIMARY,
	PANEL_EVENT_NOTIFICATION_SECONDARY,
};

enum {
	DRM_PANEL_EVENT_NONE,
	DRM_PANEL_EVENT_BLANK,
	DRM_PANEL_EVENT_UNBLANK,
	DRM_PANEL_EVENT_BLANK_LP,
	DRM_PANEL_EVENT_FPS_CHANGE,
};

struct panel_event_notification {
	int notif_type;
	int reserved0;
	int reserved1;
	bool early_trigger;
};

#endif
