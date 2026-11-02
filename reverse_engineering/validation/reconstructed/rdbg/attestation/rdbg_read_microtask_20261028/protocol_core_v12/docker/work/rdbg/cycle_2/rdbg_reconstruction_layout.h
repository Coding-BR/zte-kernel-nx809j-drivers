#ifndef RDBG_RECONSTRUCTION_LAYOUT_H
#define RDBG_RECONSTRUCTION_LAYOUT_H

#include <linux/build_bug.h>
#include <linux/cdev.h>
#include <linux/completion.h>
#include <linux/device/class.h>
#include <linux/interrupt.h>
#include <linux/mutex.h>
#include <linux/stddef.h>
#include <linux/types.h>

struct rdbg_module_storage {
	struct cdev cdev;
	struct class *class;
	dev_t devt;
	int count;
	void *clients;
};

extern struct rdbg_module_storage g_rdbg_instance;

struct rdbg_proc_info_layout {
	const char *name;
	u32 smem_buffer_addr;
	u32 reserved;
	size_t smem_buffer_size;
};

extern const struct rdbg_proc_info_layout proc_info[16];

struct rdbg_gpio_info_layout {
	int gpio_base_id;
	int irq_base_id;
	unsigned int smem_bit;
	void *smem_state;
};

struct rdbg_smq_block_map_layout {
	u32 index_read;
	u32 num_blocks;
	u8 *map;
};

struct rdbg_smq_out_state_layout {
	u32 init;
	u32 index_check_queue_for_reset;
	u32 index_sent_write;
	u32 index_free_read;
} __packed;

struct rdbg_smq_in_state_layout {
	u32 init;
	u32 index_check_queue_for_reset_ack;
	u32 index_sent_read;
	u32 index_free_write;
} __packed;

struct rdbg_smq_header_layout {
	u8 producer_version;
	u8 consumer_version;
} __packed;

struct rdbg_smq_node_layout {
	u16 index_block;
	u16 num_blocks;
} __packed;

struct rdbg_smq_out_layout {
	struct rdbg_smq_out_state_layout s;
	struct rdbg_smq_node_layout sent[];
};

struct rdbg_smq_in_layout {
	struct rdbg_smq_in_state_layout s;
	struct rdbg_smq_node_layout free[];
};

enum rdbg_smq_type_layout {
	RDBG_SMQ_PRODUCER = 1,
	RDBG_SMQ_CONSUMER = 2,
	RDBG_SMQ_INVALID = 3,
};

struct rdbg_smq_layout {
	struct rdbg_smq_header_layout *hdr;
	struct rdbg_smq_out_layout *out;
	struct rdbg_smq_in_layout *in;
	u8 *blocks;
	u32 num_blocks;
	struct mutex *lock;
	u32 initialized;
	struct rdbg_smq_block_map_layout block_map;
	enum rdbg_smq_type_layout type;
};

struct rdbg_data_layout {
	struct device *device;
	struct completion work;
	struct rdbg_gpio_info_layout in;
	struct rdbg_gpio_info_layout out;
	bool device_initialized;
	int gpio_out_offset;
	bool device_opened;
	void *smem_addr;
	size_t smem_size;
	struct rdbg_smq_layout producer_smrb;
	struct rdbg_smq_layout consumer_smrb;
	struct mutex write_mutex;
	u8 unmodeled_tail[0x1c8 - 0x118 - sizeof(struct mutex)];
};

struct rdbg_device_layout {
	struct cdev cdev;
	struct class *class;
	dev_t dev_no;
	int num_devices;
	struct rdbg_data_layout *rdbg_data;
};

static_assert(sizeof(struct cdev) == 0x88);
static_assert(sizeof(dev_t) == 4);
static_assert(offsetof(struct rdbg_module_storage, cdev) == 0x0);
static_assert(offsetof(struct rdbg_module_storage, class) == 0x88);
static_assert(offsetof(struct rdbg_module_storage, devt) == 0x90);
static_assert(offsetof(struct rdbg_module_storage, count) == 0x94);
static_assert(offsetof(struct rdbg_module_storage, clients) == 0x98);
static_assert(sizeof(struct rdbg_module_storage) == 0xa0);
static_assert(offsetof(struct rdbg_module_storage, count) == 0x94);
static_assert(offsetof(struct rdbg_module_storage, clients) == 0x98);
static_assert(sizeof(struct rdbg_proc_info_layout) == 0x18);
static_assert(offsetof(struct rdbg_proc_info_layout, name) == 0x0);
static_assert(offsetof(struct rdbg_proc_info_layout, smem_buffer_addr) == 0x8);
static_assert(offsetof(struct rdbg_proc_info_layout, smem_buffer_size) == 0x10);
static_assert(sizeof(struct rdbg_smq_layout) == 0x50);
static_assert(sizeof(struct rdbg_smq_header_layout) == 2);
static_assert(sizeof(struct rdbg_smq_node_layout) == 4);
static_assert(sizeof(struct rdbg_gpio_info_layout) == 0x18);
static_assert(offsetof(struct rdbg_gpio_info_layout, smem_bit) == 0x8);
static_assert(offsetof(struct rdbg_gpio_info_layout, smem_state) == 0x10);
static_assert(offsetof(struct rdbg_data_layout, in) == 0x28);
static_assert(offsetof(struct rdbg_data_layout, out) == 0x40);
static_assert(offsetof(struct rdbg_data_layout, device_opened) == 0x60);
static_assert(offsetof(struct rdbg_data_layout, producer_smrb) == 0x78);
static_assert(offsetof(struct rdbg_data_layout, consumer_smrb) == 0xc8);
static_assert(offsetof(struct rdbg_data_layout, write_mutex) == 0x118);
static_assert(sizeof(struct rdbg_data_layout) == 0x1c8);
static_assert(offsetof(struct rdbg_device_layout, rdbg_data) == 0x98);
static_assert(offsetof(struct rdbg_device_layout, num_devices) == 0x94);

#endif
