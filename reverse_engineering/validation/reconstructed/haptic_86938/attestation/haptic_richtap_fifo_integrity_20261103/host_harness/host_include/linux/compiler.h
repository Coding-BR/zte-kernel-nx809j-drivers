#ifndef HAPTIC_HOST_LINUX_COMPILER_H
#define HAPTIC_HOST_LINUX_COMPILER_H
#define READ_ONCE(x) (*(volatile typeof(x) *)&(x))
#define WRITE_ONCE(x, value) do { (*(volatile typeof(x) *)&(x)) = (value); } while (0)
#endif

