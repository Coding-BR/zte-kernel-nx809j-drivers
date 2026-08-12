#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ZTE_TPD_HOST_TEST
#include "../../../reconstructed/zte_tpd/syna_tcm_parse_fw_image.c"

static int failures;

static void put_u32(unsigned char *where, uint32_t value)
{
    memcpy(where, &value, sizeof(value));
}

static void make_header(unsigned char *image, unsigned int partition_magic,
                        const char *name, unsigned int size)
{
    put_u32(image, partition_magic);
    if (name)
        memcpy(image + 4, name, strlen(name) + 1);
    put_u32(image + 24, 7);
    put_u32(image + 28, size);
}

static void expect_true(int condition, const char *label)
{
    if (!condition) {
        fprintf(stderr, "FAIL: %s\n", label);
        failures++;
    }
}

static void expect_invalid_inputs(void)
{
    struct partition_info parsed;
    unsigned char image[16] = { 0 };

    expect_true(syna_tcm_parse_fw_image(NULL, sizeof(image), &parsed) == -241,
                "null image");
    expect_true(syna_tcm_parse_fw_image(image, sizeof(image), NULL) == -241,
                "null output");
    expect_true(syna_tcm_parse_fw_image(image, 0, &parsed) == -241,
                "zero image size");
    expect_true(syna_tcm_parse_fw_image(image, sizeof(image), &parsed) == -241,
                "bad image magic");
}

static void expect_empty_image(void)
{
    unsigned char image[16] = { 0 };
    struct partition_info parsed;

    put_u32(image, 0x4818472bU);
    put_u32(image + 4, 0);
    memset(&parsed, 0xa5, sizeof(parsed));
    expect_true(syna_tcm_parse_fw_image(image, sizeof(image), &parsed) == 0,
                "zero partitions returns success");
    expect_true(parsed.image_size == sizeof(image), "image size is stored");
    expect_true(parsed.image_data == image, "image pointer is stored");
    expect_true(parsed.partitions[0].enabled == 0, "partition table is cleared");
}

static void expect_valid_standard_partition(void)
{
    unsigned char image[160] = { 0 };
    unsigned char *partition = image + 64;
    unsigned char *data = partition + 36;
    struct partition_info parsed;

    put_u32(image, 0x4818472bU);
    put_u32(image + 4, 1);
    put_u32(image + 8, 64);
    make_header(partition, 0x7c05e516U, "APP_CODE", 4);
    memcpy(data, "ABCD", 4);
    put_u32(partition + 32, ~zte_tpd_host_crc32_le(~0U, data, 4));

    memset(&parsed, 0, sizeof(parsed));
    expect_true(syna_tcm_parse_fw_image(image, sizeof(image), &parsed) == 0,
                "valid standard partition returns success");
    expect_true(parsed.partitions[1].enabled == 1, "standard partition enabled");
    expect_true(parsed.partitions[1].data_ptr == data, "standard data pointer stored");
    expect_true(parsed.partitions[1].size == 4, "standard size stored");
    expect_true(parsed.partitions[1].addr == 14, "standard address is doubled");
    expect_true(parsed.partitions[1].id == 1, "standard id stored");
    expect_true(parsed.partitions[1].checksum != 0, "standard checksum stored");
}

static void expect_bad_checksum_and_unknown_name(void)
{
    unsigned char image[256] = { 0 };
    unsigned char *partition = image + 64;
    struct partition_info parsed;

    put_u32(image, 0x4818472bU);
    put_u32(image + 4, 1);
    put_u32(image + 8, 64);
    make_header(partition, 0x7c05e516U, "APP_CODE", 4);
    memcpy(partition + 36, "ABCD", 4);
    put_u32(partition + 32, 0x12345678U);
    memset(&parsed, 0, sizeof(parsed));
    expect_true(syna_tcm_parse_fw_image(image, sizeof(image), &parsed) == 0,
                "bad checksum is nonfatal");
    expect_true(parsed.partitions[1].enabled == 0, "bad checksum is rejected");

    memset(image, 0, sizeof(image));
    put_u32(image, 0x4818472bU);
    put_u32(image + 4, 1);
    put_u32(image + 8, 64);
    make_header(partition, 0x7c05e516U, "NOT_A_PARTITION", 4);
    memset(&parsed, 0, sizeof(parsed));
    expect_true(syna_tcm_parse_fw_image(image, sizeof(image), &parsed) == 0,
                "unknown partition is nonfatal");
    expect_true(parsed.partitions[0].enabled == 0, "unknown partition is rejected");
}

static void expect_json_partition(void)
{
    unsigned char image[128] = { 0 };
    unsigned char *partition = image + 64;
    struct partition_info parsed;

    put_u32(image, 0x4818472bU);
    put_u32(image + 4, 1);
    put_u32(image + 8, 64);
    make_header(partition, 0xc1fbc1d8U, NULL, 6);
    put_u32(partition + 4, 6);
    memcpy(partition + 8, "JSON!!", 6);
    memset(&parsed, 0, sizeof(parsed));
    expect_true(syna_tcm_parse_fw_image(image, sizeof(image), &parsed) == 0,
                "JSON partition returns success");
    expect_true(parsed.partitions[20].enabled == 1, "JSON partition enabled");
    expect_true(parsed.partitions[20].data_ptr == partition + 8,
                "JSON data pointer stored");
    expect_true(parsed.partitions[20].size == 6, "JSON size stored");
    expect_true(parsed.partitions[20].id == 20, "JSON id stored");
}

int main(void)
{
    expect_invalid_inputs();
    expect_empty_image();
    expect_valid_standard_partition();
    expect_bad_checksum_and_unknown_name();
    expect_json_partition();

    if (failures != 0)
        return 1;
    puts("PASS syna_tcm_parse_fw_image host tests (24 assertions)");
    return 0;
}
