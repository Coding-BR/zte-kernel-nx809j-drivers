/* SPDX-License-Identifier: GPL-2.0-only */
/* Contract fixture for the stock dispatcher default path. */

#include <stdint.h>

#define SYNA_CDEV_IOCTL_DEFAULT_EINVAL (-22)

int32_t syna_cdev_ioctls_190_default_legacy(uint32_t opcode)
{
	(void)opcode;
	return SYNA_CDEV_IOCTL_DEFAULT_EINVAL;
}
