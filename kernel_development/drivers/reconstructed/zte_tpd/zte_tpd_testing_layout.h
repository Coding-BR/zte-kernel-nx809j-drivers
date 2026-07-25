/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef _ZTE_TPD_TESTING_LAYOUT_H
#define _ZTE_TPD_TESTING_LAYOUT_H

struct testing_item;

struct testing_limit {
	const void *data;
	u32 size;
	u32 data_length;
};

typedef int (*testing_run_fn)(struct tcm_dev *tcm,
			      struct testing_item *item,
			      bool dual_firmware);

/* Partial overlay containing only offsets proven by the NX809J stock ELF. */
struct testing_item {
	u32 version;
	u32 id;
	const char *name;
	bool result;
	u8 reserved_0011[0x07];
	testing_run_fn run;
	u32 image_rows;
	u32 image_cols;
	u8 reserved_0028[0x10];
	struct testing_limit *limit_primary;
	struct testing_limit *limit_secondary;
	u8 reserved_0048[0x90];
	struct tcm_buffer *result_data;
	void *result_aux;
	u8 reserved_00e8[0x90];
};

static_assert(sizeof(struct testing_item) == 0x178);
static_assert(sizeof(struct testing_limit) == 0x10);
static_assert(offsetof(struct testing_limit, data) == 0x00);
static_assert(offsetof(struct testing_limit, size) == 0x08);
static_assert(offsetof(struct testing_limit, data_length) == 0x0c);
static_assert(offsetof(struct testing_item, version) == 0x00);
static_assert(offsetof(struct testing_item, id) == 0x04);
static_assert(offsetof(struct testing_item, name) == 0x08);
static_assert(offsetof(struct testing_item, result) == 0x10);
static_assert(offsetof(struct testing_item, run) == 0x18);
static_assert(offsetof(struct testing_item, image_rows) == 0x20);
static_assert(offsetof(struct testing_item, image_cols) == 0x24);
static_assert(offsetof(struct testing_item, limit_primary) == 0x38);
static_assert(offsetof(struct testing_item, limit_secondary) == 0x40);
static_assert(offsetof(struct testing_item, result_data) == 0xd8);
static_assert(offsetof(struct testing_item, result_aux) == 0xe0);

int syna_tcm_testing_build_id(struct tcm_dev *tcm,
			      struct testing_item *item,
			      bool dual_firmware);
int syna_tcm_testing_config_id(struct tcm_dev *tcm,
			       struct testing_item *item,
			       bool dual_firmware);
int syna_tcm_testing_trx_trx_short(struct tcm_dev *tcm,
				   struct testing_item *item,
				   bool dual_firmware);
int syna_tcm_testing_full_raw(struct tcm_dev *tcm,
			      struct testing_item *item,
			      bool dual_firmware);
int syna_tcm_testing_noise(struct tcm_dev *tcm,
			   struct testing_item *item,
			   bool dual_firmware);

extern struct testing_item test_0001;
extern struct testing_item test_0002;
extern struct testing_item test_0100;
extern struct testing_item test_0500;
extern struct testing_item test_0A00;

struct testing_item *syna_tcm_get_testing_0001(void);
struct testing_item *syna_tcm_get_testing_0002(void);
struct testing_item *syna_tcm_get_testing_0100(void);
struct testing_item *syna_tcm_get_testing_0500(void);
struct testing_item *syna_tcm_get_testing_0A00(void);

#endif
