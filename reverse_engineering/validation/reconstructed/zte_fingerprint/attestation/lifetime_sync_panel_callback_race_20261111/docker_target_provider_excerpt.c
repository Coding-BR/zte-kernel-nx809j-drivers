struct panel_event_client {
	enum panel_event_notifier_tag tag;
	enum panel_event_notifier_client client_type;
	void *panel;
	void (*callback_func)(enum panel_event_notifier_tag tag,
			      struct panel_event_notification *notification,
			      void *client_data);
	void *client_data;
	struct list_head list;
};

static LIST_HEAD(panel_client_list);
static DEFINE_MUTEX(panel_client_mutex);

void panel_event_notification_trigger(enum panel_event_notifier_tag tag, struct panel_event_notification *notif)
{
	struct panel_event_client *client;

	mutex_lock(&panel_client_mutex);
	list_for_each_entry(client, &panel_client_list, list) {
		if (client->tag == tag && client->callback_func) {
			client->callback_func(tag, notif, client->client_data);
		}
	}
	mutex_unlock(&panel_client_mutex);
}
EXPORT_SYMBOL(panel_event_notification_trigger);

void *panel_event_notifier_register(enum panel_event_notifier_tag tag,
				     enum panel_event_notifier_client client_type,
				     void *panel,
				     void (*callback_func)(enum panel_event_notifier_tag tag,
							   struct panel_event_notification *notification,
							   void *client_data),
				     void *client_data)
{
	struct panel_event_client *client;

	client = kzalloc(sizeof(*client), GFP_KERNEL);
	if (!client)
		return ERR_PTR(-ENOMEM);

	client->tag = tag;
	client->client_type = client_type;
	client->panel = panel;
	client->callback_func = callback_func;
	client->client_data = client_data;

	mutex_lock(&panel_client_mutex);
	list_add_tail(&client->list, &panel_client_list);
	mutex_unlock(&panel_client_mutex);

	return client;
}
EXPORT_SYMBOL(panel_event_notifier_register);

int panel_event_notifier_unregister(void *cookie)
{
	struct panel_event_client *client = cookie;

	if (!client || IS_ERR(client))
		return -EINVAL;

	mutex_lock(&panel_client_mutex);
	list_del(&client->list);
	mutex_unlock(&panel_client_mutex);

	kfree(client);
	return 0;
}
EXPORT_SYMBOL(panel_event_notifier_unregister);

