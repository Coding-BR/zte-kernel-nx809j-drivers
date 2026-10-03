#include <stdint.h>
#include <stdio.h>
#include <string.h>

static uint32_t load_u32(const uint8_t *buffer, size_t offset)
{
	uint32_t value;

	memcpy(&value, buffer + offset, sizeof(value));
	return value;
}

static void store_u32(uint8_t *buffer, size_t offset, uint32_t value)
{
	memcpy(buffer + offset, &value, sizeof(value));
}

static void store_ptr(uint8_t *buffer, size_t offset, void *value)
{
	memcpy(buffer + offset, &value, sizeof(value));
}

static int tpd_enable_wakegesture_contract(uint8_t *device, int value)
{
	void *state;

	memcpy(&state, device + 0xdb8, sizeof(state));
	if (load_u32(state, 0x57c) == 1) {
		store_u32(state, 0x5c4, (uint32_t)value);
		return 0;
	}
	return 0;
}

int main(void)
{
	uint8_t device[0xdc0] = { 0 };
	uint8_t active_state[0x5c8] = { 0 };
	uint8_t inactive_state[0x5c8] = { 0 };
	void *active_ptr = active_state;
	void *inactive_ptr = inactive_state;

	store_u32(active_state, 0x57c, 1);
	store_ptr(device, 0xdb8, active_ptr);
	if (tpd_enable_wakegesture_contract(device, 7) != 0 ||
	    load_u32(active_state, 0x5c4) != 7) {
		fprintf(stderr, "active wakegesture branch mismatch\n");
		return 1;
	}

	store_u32(inactive_state, 0x57c, 0);
	store_u32(inactive_state, 0x5c4, 0xfeedface);
	store_ptr(device, 0xdb8, inactive_ptr);
	if (tpd_enable_wakegesture_contract(device, 9) != 0 ||
	    load_u32(inactive_state, 0x5c4) != 0xfeedface) {
		fprintf(stderr, "inactive wakegesture branch mismatch\n");
		return 1;
	}

	printf("PASS tpd_enable_wakegesture contract test (4 checks)\n");
	return 0;
}
