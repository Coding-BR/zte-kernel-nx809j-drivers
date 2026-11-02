#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define static_assert(condition) _Static_assert(condition, #condition)

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef long long __int64;
#define __fastcall

#include "../../../reconstructed/zte_tpd/zte_tpd_tcm_layout.h"

static int parse_result;
static int parse_calls;
static int update_calls;
static int update_return;
static u32 update_flags;
static u32 update_offset;
static u32 update_length;
static u32 update_delay;
static u8 update_optimize;
static const u8 *parse_partition_data;
static u32 parse_partition_length;

int printk(const char *format, ...)
{
	(void)format;
	return 0;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_do_fw_update.c"

int syna_tcm_parse_fw_image(const u8 *image, u32 image_size,
				    void *parsed_image)
{
	struct syna_tcm_parsed_image *parsed = parsed_image;

	++parse_calls;
	(void)image;
	(void)image_size;
	if (parse_result < 0)
		return parse_result;
	parsed->partitions[3].data = (u8 *)parse_partition_data;
	parsed->partitions[3].data_length = parse_partition_length;
	parsed->partitions[3].data_offset = 0x40;
	parsed->partitions[3].partition_id = 3;
	return 0;
}

int syna_tcm_do_fw_update_ex(struct tcm_dev *tcm, void *parsed_image,
				     u32 flags, u32 offset, u32 length,
				     u32 delay_ms, u8 optimize)
{
	(void)tcm;
	(void)parsed_image;
	++update_calls;
	update_flags = flags;
	update_offset = offset;
	update_length = length;
	update_delay = delay_ms;
	update_optimize = optimize;
	return update_return;
}

static void expect_true(bool condition, const char *label)
{
	if (!condition) {
		fprintf(stderr, "FAIL: %s\n", label);
		exit(1);
	}
}

static void reset_fixture(struct tcm_dev *tcm)
{
	memset(tcm, 0, sizeof(*tcm));
	parse_result = 0;
	parse_calls = 0;
	update_calls = 0;
	update_return = 0;
	update_flags = 0;
	update_offset = 0;
	update_length = 0;
	update_delay = 0;
	update_optimize = 0;
	parse_partition_data = NULL;
	parse_partition_length = 0;
	tcm->timing_01e8 = 55;
}

static void set_device_id(struct tcm_dev *tcm, const u8 *id)
{
	memcpy((u8 *)tcm + 0xc0, id, 16);
}

static void put_le32(u8 *bytes, u32 value)
{
	bytes[0] = (u8)value;
	bytes[1] = (u8)(value >> 8);
	bytes[2] = (u8)(value >> 16);
	bytes[3] = (u8)(value >> 24);
}

static void set_protocol_and_build(struct tcm_dev *tcm, u8 protocol,
					   u32 build_id)
{
	*(u8 *)((u8 *)tcm + 0x08) = protocol;
	*(u32 *)((u8 *)tcm + 0x0c) = build_id;
}

static void test_validation_and_parse_error(void)
{
	struct tcm_dev tcm;
	u8 image[8] = {};

	reset_fixture(&tcm);
	expect_true(syna_tcm_do_fw_update(NULL, image, sizeof(image), 0, false) ==
			    -241, "null tcm returns -241");
	expect_true(syna_tcm_do_fw_update(&tcm, NULL, sizeof(image), 0, false) ==
			    -241, "null image returns -241");
	expect_true(syna_tcm_do_fw_update(&tcm, image, 0, 0, false) == -241,
			    "zero image size returns -241");
	expect_true(parse_calls == 0, "invalid input does not parse");

	reset_fixture(&tcm);
	parse_result = -19;
	expect_true(syna_tcm_do_fw_update(&tcm, image, sizeof(image), 0, false) ==
			    -19, "parse error is propagated");
	expect_true(parse_calls == 1 && update_calls == 0,
			    "parse error stops before update");
}

static void test_force_and_flash_area(void)
{
	struct tcm_dev tcm;
	u8 image[8] = {};
	u8 partition_data[0x40] = {};

	reset_fixture(&tcm);
	parse_partition_data = partition_data;
	parse_partition_length = 0x30;
	expect_true(syna_tcm_do_fw_update(&tcm, image, sizeof(image),
						  0x12340056, true) == 0,
				    "forced update succeeds");
	expect_true(update_calls == 1 && update_flags == 9 &&
				    update_offset == 0x1234 && update_length == 0x56 &&
				    update_delay == 55 && update_optimize == 1,
				    "forced update forwards split flash area and delay");

	reset_fixture(&tcm);
	parse_partition_data = partition_data;
	parse_partition_length = 0x30;
	expect_true(syna_tcm_do_fw_update(&tcm, image, sizeof(image), 0, true) ==
			    0, "forced zero-area update succeeds");
	expect_true(update_flags == 9 && update_offset == 0 &&
			    update_length == 0 && update_delay == 0,
			    "zero flash area forwards zero timing parameters");
}

static void test_identification_gate(void)
{
	struct tcm_dev tcm;
	u8 image[8] = {};
	u8 partition_data[0x40] = {};
	u8 id[16];
	u32 build_id = 0x11223344;
	u32 i;

	for (i = 0; i < sizeof(id); ++i)
		id[i] = (u8)(0xa0 + i);

	reset_fixture(&tcm);
	set_protocol_and_build(&tcm, 1, build_id);
	set_device_id(&tcm, id);
	parse_partition_data = partition_data;
	parse_partition_length = 0x21;
	expect_true(syna_tcm_do_fw_update(&tcm, image, sizeof(image), 0, false) ==
			    0, "short identification returns success");
	expect_true(update_calls == 0, "short identification skips update");

	reset_fixture(&tcm);
	set_protocol_and_build(&tcm, 1, build_id);
	memcpy(partition_data + 0x0e, id, sizeof(id));
	put_le32(partition_data + 0x0e, build_id);
	set_device_id(&tcm, partition_data + 0x0e);
	parse_partition_data = partition_data;
	parse_partition_length = 0x22;
	expect_true(syna_tcm_do_fw_update(&tcm, image, sizeof(image), 0, false) ==
			    0, "matching identification returns success");
	expect_true(update_calls == 0, "matching identification skips update");

	reset_fixture(&tcm);
	set_protocol_and_build(&tcm, 1, build_id + 1);
	memcpy(partition_data + 0x0e, id, sizeof(id));
	put_le32(partition_data + 0x0e, build_id);
	set_device_id(&tcm, partition_data + 0x0e);
	parse_partition_data = partition_data;
	parse_partition_length = 0x22;
	expect_true(syna_tcm_do_fw_update(&tcm, image, sizeof(image), 0, false) ==
			    0, "build mismatch update succeeds");
	expect_true(update_calls == 1 && update_flags == 9,
			    "build mismatch selects flag nine");

	reset_fixture(&tcm);
	set_protocol_and_build(&tcm, 1, build_id);
	memcpy(partition_data + 0x0e, id, sizeof(id));
	put_le32(partition_data + 0x0e, build_id);
	partition_data[0x17] ^= 0x01;
	set_device_id(&tcm, id);
	parse_partition_data = partition_data;
	parse_partition_length = 0x22;
	expect_true(syna_tcm_do_fw_update(&tcm, image, sizeof(image), 0, false) ==
			    0, "image id mismatch update succeeds");
	expect_true(update_calls == 1 && update_flags == 1,
			    "image id mismatch selects flag one");
}

static void test_protocol_two_offset(void)
{
	struct tcm_dev tcm;
	u8 image[8] = {};
	u8 partition_data[0x40] = {};
	u8 id[16];
	u32 i;

	for (i = 0; i < sizeof(id); ++i)
		id[i] = (u8)(0x40 + i);
	reset_fixture(&tcm);
	set_protocol_and_build(&tcm, 2, 0x55667788);
	memcpy(partition_data + 0x10, id, sizeof(id));
	put_le32(partition_data + 0x10, 0x55667788);
	set_device_id(&tcm, partition_data + 0x10);
	parse_partition_data = partition_data;
	parse_partition_length = 0x22;
	expect_true(syna_tcm_do_fw_update(&tcm, image, sizeof(image), 0, false) ==
			    0, "protocol two matching identification returns success");
	expect_true(update_calls == 0, "protocol two uses offset 0x10");
}

int main(void)
{
	test_validation_and_parse_error();
	test_force_and_flash_area();
	test_identification_gate();
	test_protocol_two_offset();
	puts("PASS: syna_tcm_do_fw_update host contract");
	return 0;
}
