/* SPDX-License-Identifier: GPL-2.0-only */
/*
 * Isolated reconstruction of the 0x11 route in syna_cdev_ioctls.
 *
 * Ghidra evidence shows that the stock route only emits the
 * syna_cdev_ioctl_store_pid log and then enters the shared 16-byte reply
 * path. The route does not write a PID into driver state. This fixture
 * keeps that contract small enough for an independent host harness; it is
 * not promoted into the kernel dispatcher until the parent basic-block
 * comparison is complete.
 */

#include <stddef.h>
#include <stdint.h>

#define SYNA_CDEV_IOCTL_ROUTE_OK 0
#define SYNA_CDEV_IOCTL_ROUTE_EFAULT (-52)

typedef size_t (*syna_copy_to_user_fn)(uint64_t destination,
                                       const void *source,
                                       size_t length,
                                       void *cookie);
typedef void (*syna_route_log_fn)(const char *route_name, void *cookie);

struct syna_cdev_ioctls_190_11_context {
	uint8_t status_byte;
	uint64_t status_word;
	uint64_t user_address_mask;
	syna_copy_to_user_fn copy_to_user;
	syna_route_log_fn log;
	void *copy_cookie;
	void *log_cookie;
};

struct syna_cdev_ioctls_190_11_reply {
	uint64_t low;
	uint64_t high;
};

int32_t syna_cdev_ioctls_190_11_store_pid(
	struct syna_cdev_ioctls_190_11_context *context,
	const struct syna_cdev_ioctls_190_11_reply *reply,
	uint64_t user_address)
{
	uint64_t destination = user_address;

	context->log("syna_cdev_ioctl_store_pid", context->log_cookie);

	/* This is the same tagged-address decision used by the shared stock path. */
	if ((context->status_byte & 0x20U) != 0U ||
	    (context->status_word & UINT64_C(0x4000000)) != 0U)
		destination &= context->user_address_mask;

	if (destination > UINT64_C(0x7ffffffff0))
		return SYNA_CDEV_IOCTL_ROUTE_EFAULT;

	if (context->copy_to_user(destination, reply, 16U, context->copy_cookie) != 0U)
		return SYNA_CDEV_IOCTL_ROUTE_EFAULT;

	return SYNA_CDEV_IOCTL_ROUTE_OK;
}
