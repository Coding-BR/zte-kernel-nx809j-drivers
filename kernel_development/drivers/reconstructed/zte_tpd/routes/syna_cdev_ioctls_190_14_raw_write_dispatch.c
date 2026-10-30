/* SPDX-License-Identifier: GPL-2.0-only */
/* Isolated contract fixture for the stock syna_cdev_ioctls route 0x14. */

#include <stdint.h>

/* The callback signature mirrors syna_cdev_ioctl_raw_write's observed ABI. */
typedef int64_t (*syna_raw_write_fn)(int64_t tcm_hcd,
                                     uint64_t buffer,
                                     int64_t request,
                                     uint32_t length);

int64_t syna_cdev_ioctls_190_14_raw_write_dispatch(
	int64_t tcm_hcd, uint64_t buffer, int64_t request, uint32_t length,
	syna_raw_write_fn raw_write)
{
	return raw_write(tcm_hcd, buffer, request, length);
}
