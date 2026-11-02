#include <linux/module.h>

#include "zlog_common.h"

extern int zlog_client_record(struct zlog_client *client,
			      const char *format, ...);
extern struct zlog_client *zlog_register_client(struct zlog_mod_info *module);
extern void zlog_unregister_client(struct zlog_client *client);

EXPORT_SYMBOL(zlog_client_record);
EXPORT_SYMBOL(zlog_register_client);
EXPORT_SYMBOL(zlog_unregister_client);
