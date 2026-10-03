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

static int tpd_get_singleaodgesture_contract(uint8_t *device)
{
	void *state;
	uint32_t value;

	memcpy(&state, device + 0xdb8, sizeof(state));
	memcpy(&value, (const uint8_t *)state + 0x5b4, sizeof(value));
	memcpy(device + 0x450, &value, sizeof(value));
	return 0;
}

int main(void)
{
	uint8_t device[0xdc0] = { 0 };
	uint8_t state[0x5b8] = { 0 };
	void *state_ptr = state;
	uint32_t value = 0x89abcdef;

	memcpy(state + 0x5b4, &value, sizeof(value));
	store_ptr(device, 0xdb8, state_ptr);
	if (tpd_get_singleaodgesture_contract(device) != 0 ||
	    load_u32(device, 0x450) != value ||
	    load_u32(state, 0x5b4) != value) {
		fprintf(stderr, "tpd_get_singleaodgesture contract mismatch\n");
		return 1;
	}

	printf("PASS tpd_get_singleaodgesture contract test (3 checks)\n");
	return 0;
}
