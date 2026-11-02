#ifndef TEST_MUTEX_H
#define TEST_MUTEX_H
struct mutex { int depth, locks, unlocks; };
void mutex_lock(struct mutex *); void mutex_unlock(struct mutex *);
#endif
