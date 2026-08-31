#include <stdint.h>
#include <stdio.h>
#include <string.h>

static uint32_t load_u32(const uint8_t *buffer, size_t offset)
{
	uint32_t value;

	memcpy(&value, buffer + offset, sizeof(value));
	return value;
}

static void store_ptr(uint8_t *buffer, size_t offset, void *value)
{
	memcpy(buffer + offset, &value, sizeof(value));
}

static int tpd_get_wakegesture_contract(uint8_t *device)
{
	void *state;
	uint32_t value;

	memcpy(&state, device + 0xdb8, sizeof(state));
	memcpy(&value, (const uint8_t *)state + 0x5c4, sizeof(value));
	memcpy(device, &value, sizeof(value));
	return 0;
}

int main(void)
{
	uint8_t device[0xdc0] = { 0 };
	uint8_t state[0x5c8] = { 0 };
	void *state_ptr = state;
	uint32_t wakegesture = 0xa5a55a5a;

	memcpy(state + 0x5c4, &wakegesture, sizeof(wakegesture));
	store_ptr(device, 0xdb8, state_ptr);
	if (tpd_get_wakegesture_contract(device) != 0 ||
	    load_u32(device, 0) != wakegesture) {
		fprintf(stderr, "tpd_get_wakegesture contract mismatch\n");
		return 1;
	}

	printf("PASS tpd_get_wakegesture contract test (2 checks)\n");
	return 0;
}
