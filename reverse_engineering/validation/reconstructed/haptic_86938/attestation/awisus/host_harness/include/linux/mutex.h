/* SPDX-License-Identifier: GPL-2.0 */
#ifndef AW_I2C_SUSPEND_TEST_LINUX_MUTEX_H
#define AW_I2C_SUSPEND_TEST_LINUX_MUTEX_H
struct mutex {
	unsigned int marker;
};
void mutex_lock(struct mutex *lock);
void mutex_unlock(struct mutex *lock);
#endif
