#ifndef AUDIO_OFF_HOST_LINUX_MUTEX_H
#define AUDIO_OFF_HOST_LINUX_MUTEX_H

struct mutex {
	int held;
};

void mutex_lock(struct mutex *mutex);
void mutex_unlock(struct mutex *mutex);

#endif
