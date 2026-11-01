#ifndef HAPTIC_HOST_LINUX_DELAY_H
#define HAPTIC_HOST_LINUX_DELAY_H
#include <linux/types.h>
void usleep_range_state(unsigned long min, unsigned long max, u32 state);
#endif
