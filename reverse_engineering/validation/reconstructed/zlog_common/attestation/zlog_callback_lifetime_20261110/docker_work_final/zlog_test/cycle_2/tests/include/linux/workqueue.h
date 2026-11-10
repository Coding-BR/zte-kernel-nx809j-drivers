#ifndef _ZLOG_TEST_HOST_WORKQUEUE_H
#define _ZLOG_TEST_HOST_WORKQUEUE_H

#include "../../host_stubs.h"

static inline bool disable_delayed_work_sync(struct delayed_work *work)
{
	if (zlog_host_disable_count < 5)
		zlog_host_disabled_works[zlog_host_disable_count++] = work;
	return true;
}

#endif /* _ZLOG_TEST_HOST_WORKQUEUE_H */
