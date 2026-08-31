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

static int tpd_set_singlegamegesture_contract(uint8_t *device, int value)
{
	uint8_t *state;
	uint32_t mask;
	uint32_t existing;
	uint32_t flag;

	memcpy(&state, device + 0xdb8, sizeof(state));
	if (load_u32(state, 0x57c) == 1) {
		existing = load_u32(state, 0x5b4);
		mask = load_u32(state, 0x5b8);
		flag = value > 0;
		store_u32(state, 0x5bc, flag);
		store_u32(state, 0x5b0, existing | mask | flag);
	} else {
		mask = load_u32(state, 0x5b8);
	}
	(void)mask;
	return 0;
}

int main(void)
{
	uint8_t device[0xdc0] = { 0 };
	uint8_t state[0x5c0] = { 0 };
	void *state_ptr = state;

	store_u32(state, 0x57c, 1);
	store_u32(state, 0x5b4, 0x10);
	store_u32(state, 0x5b8, 0x20);
	store_ptr(device, 0xdb8, state_ptr);
	if (tpd_set_singlegamegesture_contract(device, 7) != 0 ||
	    load_u32(state, 0x5bc) != 1 || load_u32(state, 0x5b0) != 0x31) {
		fprintf(stderr, "positive active branch mismatch\n");
		return 1;
	}

	if (tpd_set_singlegamegesture_contract(device, 0) != 0 ||
	    load_u32(state, 0x5bc) != 0 || load_u32(state, 0x5b0) != 0x30) {
		fprintf(stderr, "zero active branch mismatch\n");
		return 1;
	}

	if (tpd_set_singlegamegesture_contract(device, -1) != 0 ||
	    load_u32(state, 0x5bc) != 0 || load_u32(state, 0x5b0) != 0x30) {
		fprintf(stderr, "negative active branch mismatch\n");
		return 1;
	}

	store_u32(state, 0x57c, 0);
	store_u32(state, 0x5bc, 0xfeedface);
	store_u32(state, 0x5b0, 0xcafebabe);
	if (tpd_set_singlegamegesture_contract(device, 9) != 0 ||
	    load_u32(state, 0x5bc) != 0xfeedface ||
	    load_u32(state, 0x5b0) != 0xcafebabe) {
		fprintf(stderr, "inactive branch mismatch\n");
		return 1;
	}

	printf("PASS tpd_set_singlegamegesture contract test (8 checks)\n");
	return 0;
}
