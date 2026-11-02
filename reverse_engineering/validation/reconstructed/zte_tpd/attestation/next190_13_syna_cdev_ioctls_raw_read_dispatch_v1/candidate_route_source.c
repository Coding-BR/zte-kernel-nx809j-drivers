/* SPDX-License-Identifier: GPL-2.0-only */
/* Isolated contract fixture for the stock syna_cdev_ioctls route 0x13. */

#include <stdint.h>

/* The callback signature mirrors syna_cdev_ioctl_raw_read's observed ABI. */
typedef int64_t (*syna_raw_read_fn)(int64_t tcm_hcd,
                                    uint64_t buffer,
                                    int64_t request,
                                    uint32_t length);

int64_t syna_cdev_ioctls_190_13_raw_read_dispatch(
	int64_t tcm_hcd, uint64_t buffer, int64_t request, uint32_t length,
	syna_raw_read_fn raw_read)
{
	return raw_read(tcm_hcd, buffer, request, length);
}
