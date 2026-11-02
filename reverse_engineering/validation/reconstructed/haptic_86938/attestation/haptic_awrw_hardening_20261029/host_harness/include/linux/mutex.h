#ifndef AWRW_HOST_LINUX_MUTEX_H
#define AWRW_HOST_LINUX_MUTEX_H

#include <pthread.h>

struct mutex { unsigned char opaque; };
extern pthread_mutex_t awrw_host_mutex;

static inline void mutex_lock(struct mutex *mutex)
{
	(void)mutex;
	pthread_mutex_lock(&awrw_host_mutex);
}

static inline void mutex_unlock(struct mutex *mutex)
{
	(void)mutex;
	pthread_mutex_unlock(&awrw_host_mutex);
}

#endif
