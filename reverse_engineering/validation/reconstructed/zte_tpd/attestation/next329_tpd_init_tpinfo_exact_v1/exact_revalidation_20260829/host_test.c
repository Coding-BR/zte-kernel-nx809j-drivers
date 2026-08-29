#include <stdint.h>
#include <stdio.h>
#include <string.h>

static uint32_t load_u32(const uint8_t *buffer, size_t offset)
{
	uint32_t value;

	memcpy(&value, buffer + offset, sizeof(value));
	return value;
}

static uint16_t load_u16(const uint8_t *buffer, size_t offset)
{
	uint16_t value;

	memcpy(&value, buffer + offset, sizeof(value));
	return value;
}

static void store_u32(uint8_t *buffer, size_t offset, uint32_t value)
{
	memcpy(buffer + offset, &value, sizeof(value));
}

static int tpd_init_tpinfo_contract(uint8_t *device)
{
	void *id_info;
	uint32_t chip_id;
	uint16_t revision;

	memcpy(&id_info, device + 0xdb8, sizeof(id_info));
	store_u32(device, 0xcf0, 1);
	memcpy(device + 0xd18, "synaptics_3910V", 16);
	chip_id = load_u32(id_info, 0xc);
	store_u32(device, 0xd14, 4);
	store_u32(device, 0xd00, chip_id);
	revision = load_u16(id_info, 0xc6);
	store_u32(device, 0xd04,
		  (uint32_t)((revision >> 8) | ((revision & 0xff) << 8)));
	return 0;
}

int main(void)
{
	uint8_t device[0xe00] = { 0 };
	uint8_t id_payload[0xc8] = { 0 };
	void *id_info = id_payload;
	uint32_t chip_id = 0x12345678;
	uint16_t revision = 0x1234;

	memcpy(device + 0xdb8, &id_info, sizeof(id_info));
	memcpy(id_payload + 0xc, &chip_id, sizeof(chip_id));
	memcpy(id_payload + 0xc6, &revision, sizeof(revision));
	if (tpd_init_tpinfo_contract(device) != 0 ||
	    load_u32(device, 0xcf0) != 1 ||
	    memcmp(device + 0xd18, "synaptics_3910V", 16) != 0 ||
	    load_u32(device, 0xd14) != 4 ||
	    load_u32(device, 0xd00) != chip_id ||
	    load_u32(device, 0xd04) != 0x3412) {
		fprintf(stderr, "tpd_init_tpinfo contract mismatch\n");
		return 1;
	}

	printf("PASS tpd_init_tpinfo contract test (6 checks)\n");
	return 0;
}
