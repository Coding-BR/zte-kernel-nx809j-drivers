#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define __fastcall
#define __int8 char
#define _DWORD uint32_t
typedef int64_t __int64;

struct tcm_dev {
	unsigned char bytes[0x240];
};

const char *unk_3365A = "null";
const char *unk_3B33C = "terminate";
static int printk_calls;
static int completion_done_calls;
static int complete_calls;
static unsigned char logged_mode;
static uintptr_t completed_address;
static bool completion_state;

int printk(const char *format, ...)
{
	va_list args;
	const char *function;

	printk_calls++;
	va_start(args, format);
	function = va_arg(args, const char *);
	if (strcmp(function, "syna_tcm_v1_terminate") == 0 && format == unk_3B33C)
		logged_mode = (unsigned char)va_arg(args, int);
	va_end(args);
	return 0;
}

bool completion_done(uintptr_t address)
{
	completion_done_calls++;
	(void)address;
	return completion_state;
}

void complete(uintptr_t address)
{
	complete_calls++;
	completed_address = address;
}

#include "../../../reconstructed/zte_tpd/syna_tcm_v1_terminate.c"

static void expect(bool condition, const char *message)
{
	if (condition)
		return;
	fprintf(stderr, "FAIL syna_tcm_v1_terminate: %s\n", message);
	exit(EXIT_FAILURE);
}

static void reset_observations(void)
{
	printk_calls = 0;
	completion_done_calls = 0;
	complete_calls = 0;
	logged_mode = 0;
	completed_address = 0;
	completion_state = false;
}

static void set_state(struct tcm_dev *device, uint32_t state, uint8_t mode)
{
	memset(device, 0, sizeof(*device));
	memcpy(device->bytes + 0x1f8, &state, sizeof(state));
	device->bytes[0x1fc] = mode;
}

static uint32_t get_state(const struct tcm_dev *device)
{
	uint32_t state;

	memcpy(&state, device->bytes + 0x1f8, sizeof(state));
	return state;
}

int main(void)
{
	struct tcm_dev device;

	reset_observations();
	syna_tcm_v1_terminate(NULL);
	expect(printk_calls == 1, "NULL input must log once");
	expect(completion_done_calls == 0 && complete_calls == 0,
	       "NULL input must not touch completion");

	reset_observations();
	set_state(&device, 0, 0x11);
	syna_tcm_v1_terminate(&device);
	expect(printk_calls == 0, "inactive state must not log");
	expect(get_state(&device) == 0, "inactive state must remain unchanged");
	expect(completion_done_calls == 0 && complete_calls == 0,
	       "inactive state must not touch completion");

	reset_observations();
	set_state(&device, 1, 0xa5);
	completion_state = false;
	syna_tcm_v1_terminate(&device);
	expect(printk_calls == 1 && logged_mode == 0xa5,
	       "active state must log the mode");
	expect(get_state(&device) == 2, "active state must transition to 2");
	expect(completion_done_calls == 1 && complete_calls == 1,
	       "unfinished completion must be completed");
	expect(completed_address == (uintptr_t)(device.bytes + 0x220),
	       "complete address must use the stock offset");

	reset_observations();
	set_state(&device, 1, 0x5a);
	completion_state = true;
	syna_tcm_v1_terminate(&device);
	expect(printk_calls == 1 && logged_mode == 0x5a,
	       "already-completed path must still log the mode");
	expect(get_state(&device) == 2, "already-completed path must transition to 2");
	expect(completion_done_calls == 1 && complete_calls == 0,
	       "already-completed path must not call complete");

	puts("PASS syna_tcm_v1_terminate host tests (4 cases)");
	return EXIT_SUCCESS;
}
