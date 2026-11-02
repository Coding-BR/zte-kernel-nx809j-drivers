#ifndef RICHTAP_HOST_LINUX_DELAY_H
#define RICHTAP_HOST_LINUX_DELAY_H
void usleep_range_state(unsigned long minimum, unsigned long maximum,
		unsigned int state);
#endif
