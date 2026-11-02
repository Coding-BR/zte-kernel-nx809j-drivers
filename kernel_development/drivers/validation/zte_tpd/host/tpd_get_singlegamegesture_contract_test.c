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

static int tpd_get_singlegamegesture_contract(uint8_t *device)
{
	void *state;
	uint32_t first;
	uint32_t second;

	memcpy(&state, device + 0xdb8, sizeof(state));
	first = load_u32(state, 0x5b8);
	second = load_u32(state, 0x5bc);
	store_u32(device, 0x454, first);
	(void)second;
	return 0;
}

int main(void)
{
	uint8_t device[0x500] = { 0 };
	uint8_t state[0x5c0] = { 0 };
	void *state_ptr = state;

	store_u32(state, 0x5b8, 0x11223344);
	store_u32(state, 0x5bc, 0x55667788);
	store_ptr(device, 0xdb8, state_ptr);
	if (tpd_get_singlegamegesture_contract(device) != 0 ||
	    load_u32(device, 0x454) != 0x11223344 ||
	    load_u32(state, 0x5bc) != 0x55667788) {
		fprintf(stderr, "tpd_get_singlegamegesture contract mismatch\n");
		return 1;
	}

	printf("PASS tpd_get_singlegamegesture contract test (3 checks)\n");
	return 0;
}
