#ifndef RDBG_RECONSTRUCTION_LAYOUT_H
#define RDBG_RECONSTRUCTION_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/cdev.h>
#include <linux/device/class.h>
#include <linux/interrupt.h>
#include <linux/stddef.h>
#include <linux/types.h>

struct rdbg_module_storage {
	struct cdev cdev;
	struct class *class;
	dev_t devt;
	int count;
	void *clients;
	irq_handler_t callback_test_anchor;
};

extern struct rdbg_module_storage g_rdbg_instance;

static_assert(sizeof(struct cdev) == 0x88);
static_assert(sizeof(dev_t) == 4);
static_assert(offsetof(struct rdbg_module_storage, cdev) == 0x0);
static_assert(offsetof(struct rdbg_module_storage, class) == 0x88);
static_assert(offsetof(struct rdbg_module_storage, devt) == 0x90);
static_assert(offsetof(struct rdbg_module_storage, count) == 0x94);
static_assert(offsetof(struct rdbg_module_storage, clients) == 0x98);
static_assert(offsetof(struct rdbg_module_storage, callback_test_anchor) == 0xa0);

#endif
