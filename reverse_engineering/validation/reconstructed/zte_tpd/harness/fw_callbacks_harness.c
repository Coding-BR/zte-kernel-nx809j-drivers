#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef int64_t __int64;
typedef uint64_t _QWORD;
typedef uint32_t _DWORD;
typedef uint8_t _BYTE;
typedef int _BOOL4;

struct ztp_device {
	_Alignas(8) uint8_t storage[0x1008];
};

struct syna_tcm;

#define printk(...) ((void)0)

int is_fake_sleep_mode;
int is_screen_off_awake_mode;
static void *unk_36905;
static void *unk_3B5E0;

static unsigned int sensibility_calls;
static int sensibility_value;
static unsigned int sensibility_config_id;
static int sensibility_result;

static int syna_dev_set_sensibility_level(struct syna_tcm *device, int value,
					  unsigned int config_id)
{
	(void)device;
	sensibility_calls++;
	sensibility_value = value;
	sensibility_config_id = config_id;
	return sensibility_result;
}

#include "tpd_get_wakegesture.c"
#include "tpd_enable_wakegesture.c"
#include "tpd_get_singlegamegesture.c"
#include "tpd_set_singlegamegesture.c"
#include "tpd_get_singleaodgesture.c"
#include "tpd_set_singleaodgesture.c"
#include "tpd_get_singlefpgesture.c"
#include "tpd_set_singlefpgesture.c"
#include "tpd_get_one_key.c"
#include "tpd_set_one_key.c"
#include "tpd_get_tp_report_rate.c"
#include "tpd_get_sensibility_level.c"
#include "tpd_set_sensibility_level.c"
#include "tpd_test_cmd_show.c"
#include "tpd_set_game_partition.c"
#include "tpd_get_follow_hand_level.c"
#include "tpd_get_stability_level.c"
#include "tpd_get_rotation_limit_level.c"
#include "tpd_get_play_game.c"
#include "tpd_get_frame_data.c"
#include "tpd_get_palm_mode.c"
#include "tpd_set_palm_mode.c"
#include "tpd_get_fake_sleep.c"
#include "tpd_set_fake_sleep.c"
#include "tpd_get_screen_off_awake.c"
#include "tpd_set_screen_off_awake.c"

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

struct fixture {
	struct ztp_device cdev;
	_Alignas(8) uint8_t private_state[0x700];
	_Alignas(8) uint8_t controller_state[0x300];
	_Alignas(8) uint8_t transport_state[0x300];
};

static void store_u32(void *base, size_t offset, uint32_t value)
{
	memcpy((uint8_t *)base + offset, &value, sizeof(value));
}

static uint32_t load_u32(const void *base, size_t offset)
{
	uint32_t value;

	memcpy(&value, (const uint8_t *)base + offset, sizeof(value));
	return value;
}

static void reset_fixture(struct fixture *fixture)
{
	uintptr_t private_address;
	uintptr_t controller_address;
	uintptr_t transport_address;

	memset(fixture, 0, sizeof(*fixture));
	private_address = (uintptr_t)fixture->private_state;
	memcpy(fixture->cdev.storage + 3072, &private_address,
	       sizeof(private_address));
	controller_address = (uintptr_t)fixture->controller_state;
	transport_address = (uintptr_t)fixture->transport_state;
	memcpy(fixture->private_state, &controller_address,
	       sizeof(controller_address));
	memcpy(fixture->private_state + 624, &transport_address,
	       sizeof(transport_address));
	is_fake_sleep_mode = 0;
	is_screen_off_awake_mode = 0;
	sensibility_calls = 0;
	sensibility_value = 0;
	sensibility_config_id = 0;
	sensibility_result = 0;
}

static bool test_wakegesture_supported_and_disabled(void)
{
	struct fixture fixture;

	reset_fixture(&fixture);
	store_u32(fixture.private_state, 1404, 1);
	store_u32(fixture.private_state, 1476, 37);
	REQUIRE(tpd_get_wakegesture(&fixture.cdev) == 0);
	REQUIRE(load_u32(fixture.cdev.storage, 0) == 37);
	REQUIRE(tpd_enable_wakegesture(&fixture.cdev, 9) == 0);
	REQUIRE(load_u32(fixture.private_state, 1476) == 9);

	store_u32(fixture.private_state, 1404, 0);
	REQUIRE(tpd_enable_wakegesture(&fixture.cdev, 11) == 0);
	REQUIRE(load_u32(fixture.private_state, 1476) == 9);
	return true;
}

static bool test_single_gesture_active_paths(void)
{
	struct fixture fixture;

	reset_fixture(&fixture);
	store_u32(fixture.private_state, 1404, 1);
	REQUIRE(tpd_set_singlefpgesture(&fixture.cdev, 4) == 0);
	REQUIRE(load_u32(fixture.private_state, 1464) == 1);
	REQUIRE(load_u32(fixture.private_state, 1456) == 1);
	REQUIRE(tpd_set_singleaodgesture(&fixture.cdev, 2) == 0);
	REQUIRE(load_u32(fixture.private_state, 1460) == 1);
	REQUIRE(load_u32(fixture.private_state, 1456) == 1);
	REQUIRE(tpd_set_singlegamegesture(&fixture.cdev, 8) == 0);
	REQUIRE(load_u32(fixture.private_state, 1468) == 1);
	REQUIRE(load_u32(fixture.private_state, 1456) == 1);

	REQUIRE(tpd_get_singlefpgesture(&fixture.cdev) == 0);
	REQUIRE(tpd_get_singleaodgesture(&fixture.cdev) == 0);
	REQUIRE(tpd_get_singlegamegesture(&fixture.cdev) == 0);
	REQUIRE(load_u32(fixture.cdev.storage, 1100) == 1);
	REQUIRE(load_u32(fixture.cdev.storage, 1104) == 1);
	REQUIRE(load_u32(fixture.cdev.storage, 1108) == 1);

	REQUIRE(tpd_set_singlefpgesture(&fixture.cdev, 0) == 0);
	REQUIRE(tpd_set_singleaodgesture(&fixture.cdev, -1) == 0);
	REQUIRE(tpd_set_singlegamegesture(&fixture.cdev, 0) == 0);
	REQUIRE(load_u32(fixture.private_state, 1456) == 0);
	return true;
}

static bool test_single_gesture_unsupported_paths(void)
{
	struct fixture fixture;

	reset_fixture(&fixture);
	store_u32(fixture.private_state, 1404, 0);
	store_u32(fixture.private_state, 1456, 0x55);
	store_u32(fixture.private_state, 1460, 3);
	store_u32(fixture.private_state, 1464, 4);
	store_u32(fixture.private_state, 1468, 5);
	REQUIRE(tpd_set_singlefpgesture(&fixture.cdev, 1) == 0);
	REQUIRE(tpd_set_singleaodgesture(&fixture.cdev, 1) == 0);
	REQUIRE(tpd_set_singlegamegesture(&fixture.cdev, 1) == 0);
	REQUIRE(load_u32(fixture.private_state, 1456) == 0x55);
	REQUIRE(load_u32(fixture.private_state, 1460) == 3);
	REQUIRE(load_u32(fixture.private_state, 1464) == 4);
	REQUIRE(load_u32(fixture.private_state, 1468) == 5);
	return true;
}

static bool test_one_key_paths(void)
{
	struct fixture fixture;
	uintptr_t null_address = 0;

	reset_fixture(&fixture);
	REQUIRE(tpd_set_one_key(&fixture.cdev, 7) == 0);
	REQUIRE(load_u32(fixture.private_state, 1492) == 7);
	REQUIRE(load_u32(fixture.cdev.storage, 1112) == 7);
	store_u32(fixture.private_state, 1492, 12);
	REQUIRE(tpd_get_one_key(&fixture.cdev) == 0);
	REQUIRE(load_u32(fixture.cdev.storage, 1112) == 12);

	memcpy(fixture.cdev.storage + 3072, &null_address,
	       sizeof(null_address));
	REQUIRE(tpd_set_one_key(&fixture.cdev, 1) == -22);
	return true;
}

static bool test_passive_getters(void)
{
	struct fixture fixture;

	reset_fixture(&fixture);
	store_u32(fixture.private_state, 1528, 120);
	store_u32(fixture.private_state, 1532, 0x1234ab);
	store_u32(fixture.private_state, 1536, 4);
	store_u32(fixture.private_state, 1540, 5);
	store_u32(fixture.private_state, 1548, 6);
	store_u32(fixture.private_state, 1500, 7);
	store_u32(fixture.private_state, 1504, 8);
	REQUIRE(tpd_get_tp_report_rate(&fixture.cdev) == 0);
	REQUIRE(tpd_get_sensibility_level(&fixture.cdev) == 0);
	REQUIRE(tpd_get_follow_hand_level(&fixture.cdev) == 0);
	REQUIRE(tpd_get_stability_level(&fixture.cdev) == 0);
	REQUIRE(tpd_get_rotation_limit_level(&fixture.cdev) == 0);
	REQUIRE(tpd_get_play_game(&fixture.cdev) == 0);
	REQUIRE(tpd_get_frame_data(&fixture.cdev) == 0);
	REQUIRE(load_u32(fixture.cdev.storage, 1124) == 120);
	REQUIRE(fixture.cdev.storage[64] == 0xab);
	REQUIRE(load_u32(fixture.cdev.storage, 1128) == 4);
	REQUIRE(load_u32(fixture.cdev.storage, 1132) == 5);
	REQUIRE(load_u32(fixture.cdev.storage, 12) == 6);
	REQUIRE(load_u32(fixture.cdev.storage, 1116) == 7);
	REQUIRE(load_u32(fixture.cdev.storage, 1120) == 8);
	return true;
}

static bool test_sensibility_setter_paths(void)
{
	struct fixture fixture;
	uintptr_t null_address = 0;

	reset_fixture(&fixture);
	store_u32(fixture.private_state, 1404, 1);
	store_u32(fixture.transport_state, 184, 1);
	fixture.transport_state[188] = 1;
	REQUIRE(tpd_set_sensibility_level(&fixture.cdev, 2) == 0);
	REQUIRE(load_u32(fixture.private_state, 1532) == 2);
	REQUIRE(sensibility_calls == 1);
	REQUIRE(sensibility_value == 2);
	REQUIRE(sensibility_config_id == 0);

	store_u32(fixture.transport_state, 184, 0);
	store_u32(fixture.controller_state, 524, 77);
	sensibility_result = -5;
	REQUIRE(tpd_set_sensibility_level(&fixture.cdev, 255) == 0);
	REQUIRE(load_u32(fixture.private_state, 1532) == 4);
	REQUIRE(sensibility_calls == 2);
	REQUIRE(sensibility_value == 4);
	REQUIRE(sensibility_config_id == 77);

	store_u32(fixture.private_state, 1404, 0);
	REQUIRE(tpd_set_sensibility_level(&fixture.cdev, 3) == 0);
	REQUIRE(load_u32(fixture.private_state, 1532) == 3);
	REQUIRE(sensibility_calls == 2);

	memcpy(fixture.cdev.storage + 3072, &null_address,
	       sizeof(null_address));
	REQUIRE(tpd_set_sensibility_level(&fixture.cdev, 1) == -22);
	return true;
}

static bool test_text_callbacks(void)
{
	struct fixture fixture;
	char buffer[64] = { 0 };
	int length;

	reset_fixture(&fixture);
	length = tpd_test_cmd_show(&fixture.cdev, buffer);
	REQUIRE(length == (int)strlen("0,16,37,0"));
	REQUIRE(strcmp(buffer, "0,16,37,0") == 0);
	REQUIRE(tpd_set_game_partition(&fixture.cdev, buffer) == 0);
	return true;
}

static bool test_palm_mode_paths(void)
{
	struct fixture fixture;

	reset_fixture(&fixture);
	REQUIRE(tpd_set_palm_mode(&fixture.cdev, 3) == 0);
	REQUIRE(load_u32(fixture.private_state, 1508) == 3);
	REQUIRE(tpd_get_palm_mode(&fixture.cdev) == 0);
	REQUIRE(load_u32(fixture.cdev.storage, 1144) == 3);
	return true;
}

static bool test_fake_sleep_paths(void)
{
	struct fixture fixture;

	reset_fixture(&fixture);
	store_u32(fixture.private_state, 1404, 1);
	REQUIRE(tpd_set_fake_sleep(&fixture.cdev, 5) == 0);
	REQUIRE(load_u32(fixture.private_state, 1512) == 5);
	REQUIRE(load_u32(fixture.private_state, 1516) == 5);
	REQUIRE(is_fake_sleep_mode == 5);
	REQUIRE(tpd_get_fake_sleep(&fixture.cdev) == 0);
	REQUIRE(load_u32(fixture.cdev.storage, 1152) == 5);

	reset_fixture(&fixture);
	store_u32(fixture.private_state, 1404, 0);
	store_u32(fixture.private_state, 1512, 8);
	REQUIRE(tpd_set_fake_sleep(&fixture.cdev, 9) == 0);
	REQUIRE(load_u32(fixture.private_state, 1512) == 8);
	REQUIRE(load_u32(fixture.private_state, 1516) == 9);
	REQUIRE(is_fake_sleep_mode == 0);
	return true;
}

static bool test_screen_off_awake_paths(void)
{
	struct fixture fixture;

	reset_fixture(&fixture);
	store_u32(fixture.private_state, 1404, 1);
	REQUIRE(tpd_set_screen_off_awake(&fixture.cdev, 6) == 0);
	REQUIRE(load_u32(fixture.private_state, 1520) == 6);
	REQUIRE(load_u32(fixture.private_state, 1524) == 6);
	REQUIRE(is_screen_off_awake_mode == 6);
	REQUIRE(tpd_get_screen_off_awake(&fixture.cdev) == 0);
	REQUIRE(load_u32(fixture.cdev.storage, 1156) == 6);

	reset_fixture(&fixture);
	store_u32(fixture.private_state, 1404, 0);
	store_u32(fixture.private_state, 1520, 10);
	REQUIRE(tpd_set_screen_off_awake(&fixture.cdev, 11) == 0);
	REQUIRE(load_u32(fixture.private_state, 1520) == 10);
	REQUIRE(load_u32(fixture.private_state, 1524) == 11);
	REQUIRE(is_screen_off_awake_mode == 0);
	return true;
}

static int run_test(const char *name, bool (*test)(void))
{
	if (!test()) {
		printf("FAIL %s\n", name);
		return 1;
	}
	printf("PASS %s\n", name);
	return 0;
}

int main(void)
{
	int failures = 0;
	int total = 0;

#define RUN(test) do { total++; failures += run_test(#test, test); } while (0)
	RUN(test_wakegesture_supported_and_disabled);
	RUN(test_single_gesture_active_paths);
	RUN(test_single_gesture_unsupported_paths);
	RUN(test_one_key_paths);
	RUN(test_passive_getters);
	RUN(test_sensibility_setter_paths);
	RUN(test_text_callbacks);
	RUN(test_palm_mode_paths);
	RUN(test_fake_sleep_paths);
	RUN(test_screen_off_awake_paths);
#undef RUN

	printf("SUMMARY total=%d passed=%d failed=%d\n",
	       total, total - failures, failures);
	return failures ? EXIT_FAILURE : EXIT_SUCCESS;
}
