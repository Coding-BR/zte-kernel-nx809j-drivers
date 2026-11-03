#ifndef HAPTIC_HOST_LINUX_DELAY_H
#define HAPTIC_HOST_LINUX_DELAY_H
void usleep_range_state(unsigned long minimum, unsigned long maximum,
                        unsigned int state);
#endif

