#if defined(ZTE_TPD_AARCH64_INPUT)
typedef __SIZE_TYPE__ size_t;
typedef unsigned char u8;
typedef unsigned int u32;

extern void *memset(void *destination, int value, size_t length);
extern size_t strnlen(const char *string, size_t maximum);
extern int strncmp(const char *left, const char *right, size_t length);
extern u32 crc32_le(u32 crc, const void *data, size_t length);
extern int zte_tpd_aarch64_printk(const char *format, ...);

#define KERN_ERR ""
#define KERN_WARNING ""
#define KERN_INFO ""
#define printk zte_tpd_aarch64_printk
#elif defined(ZTE_TPD_HOST_TEST)
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>

typedef uint32_t u32;
typedef uint8_t u8;

static u32 zte_tpd_host_crc32_le(u32 crc, const void *data, size_t length)
{
    const unsigned char *bytes = data;

    while (length--) {
        unsigned int bit;

        crc ^= *bytes++;
        for (bit = 0; bit < 8; bit++)
            crc = (crc >> 1) ^ (0xedb88320U & -(crc & 1U));
    }
    return crc;
}

#define crc32_le zte_tpd_host_crc32_le
#define KERN_ERR ""
#define KERN_WARNING ""
#define KERN_INFO ""
static int zte_tpd_host_printk(const char *format, ...)
{
    va_list args;

    va_start(args, format);
    va_end(args);
    return 0;
}

#define printk zte_tpd_host_printk
#else
#include <linux/crc32.h>
#include <linux/errno.h>
#include <linux/kernel.h>
#include <linux/string.h>
#endif

struct syna_tcm_partition {
    unsigned char enabled;
    unsigned char reserved[7];
    unsigned char *data_ptr;
    unsigned int size;
    unsigned int addr;
    unsigned char id;
    unsigned char reserved_id[3];
    unsigned int checksum;
};

struct partition_info {
    unsigned int image_size;
    unsigned char reserved[4];
    unsigned char *image_data;
    struct syna_tcm_partition partitions[24];
};

static const unsigned char partition_name_lengths[23] = {
    9, 15, 11, 8, 10, 12, 14, 13, 6, 6, 17, 4,
    7, 4, 11, 4, 5, 17, 17, 17, 15, 21, 16,
};

static const char *const partition_names[23] = {
    "APP_CODE",
    "APP_CODE_COPRO",
    "APP_CONFIG",
    "DISPLAY",
    "BOOT_CODE",
    "BOOT_CONFIG",
    "APP_PROD_TEST",
    "F35_APP_CODE",
    "FORCE",
    "GAMMA",
    "TEMPERATURE_GAMM",
    "LCM",
    "LOOKUP",
    "OEM",
    "OPEN_SHORT",
    "OTP",
    "PPDT",
    "ROMBOOT_APP_CODE",
    "TOOL_BOOT_CONFIG",
    "JSON_CONFIG_AREA",
    "CUSTOM_CS_AREA",
    "CUSTOM_LOCKDOWN_AREA",
    "CUSTOM_MTP_AREA",
};

static const char *const partition_log_names[23] = {
    "APP_CODE",
    "APP_CODE_COPRO",
    "APP_CONFIG",
    "DISPLAY",
    "BOOT_CODE",
    "BOOT_CONFIG",
    "APP_PROD_TEST",
    "F35_APP_CODE",
    "FORCE",
    "GAMMA",
    "TEMPERATURE_GAMM",
    "LCM",
    "LOOKUP",
    "OEM",
    "OPEN_SHORT",
    "OTP",
    "PPDT",
    "ROMBOOT_APP_CODE",
    "TOOL_BOOT_CONFIG",
    " ",
    "CUSTOM_CS_AREA",
    "CUSTOM_LOCKDOWN_AREA",
    "CUSTOM_MTP_AREA",
};

int syna_tcm_parse_fw_image(const u8 *image, u32 image_size,
                            void *parsed_image)
{
    unsigned int partition_count;
    unsigned int partition_index;
    struct partition_info *parsed = parsed_image;

    if (!image) {
        printk(KERN_ERR "%s: Invalid given data\n", "syna_tcm_parse_fw_image");
        return -241;
    }
    if (!parsed_image) {
        printk(KERN_ERR "%s: Invalid image blob to store the parsed data\n",
               "syna_tcm_parse_fw_image");
        return -241;
    }
    if (!image_size) {
        printk(KERN_ERR "%s: Invalid image data\n", "syna_tcm_parse_fw_image");
        return -241;
    }

    memset((unsigned char *)parsed + sizeof(parsed->image_size), 0, 0x30c);
    parsed->image_data = (unsigned char *)image;
    parsed->image_size = image_size;

    if (*(const u32 *)image != 0x4818472bU) {
        printk(KERN_ERR "%s: Invalid image file magic value\n",
               "syna_tcm_parse_fw_image");
        return -241;
    }

    partition_count = *(const u32 *)(image + 4);
    for (partition_index = 0; partition_index < partition_count;
         partition_index++) {
        unsigned int offset = *(const u32 *)(image + 8 + partition_index * 4);
        const unsigned char *partition = image + offset;
        u32 magic = *(const u32 *)partition;
        unsigned int partition_id;
        unsigned int size_offset;
        unsigned int data_offset;
        unsigned int size;
        unsigned char *data;
        struct syna_tcm_partition *out;
        int name_index;

        if (magic == 0x7c05e516U) {
            partition_id = 0;
            for (name_index = 22; name_index >= -1; name_index--) {
                const char *expected = name_index >= 0 ?
                                       partition_names[name_index] : " ";
                size_t limit = name_index >= 0 ?
                               partition_name_lengths[name_index] : 2;
                size_t length = strnlen(expected, limit);

                if (strncmp((const char *)partition + 4, expected, length) == 0) {
                    if (name_index >= 0)
                        partition_id = (unsigned int)name_index + 1U;
                    break;
                }
            }
            if (name_index == -2) {
                printk(KERN_WARNING "%s: Un-defined area string, %s\n",
                       "syna_tcm_get_partition_id", partition + 4);
                continue;
            }
            size_offset = 0x1c;
            data_offset = 0x24;
        } else if (magic == 0xc1fbc1d8U) {
            partition_id = 20;
            size_offset = 4;
            data_offset = 8;
        } else {
            continue;
        }

        out = &parsed->partitions[partition_id];
        size = *(const u32 *)(partition + size_offset);
        data = (unsigned char *)partition + data_offset;

        if (partition_id == 20) {
            out->enabled = 1;
            out->data_ptr = data;
            out->size = size;
            out->addr = 0;
            out->id = 20;
            printk(KERN_INFO "%s: AREA_TOOL_JSON area - size:%d\n",
                   "syna_tcm_save_flash_partition_data", size);
        } else {
            u32 file_checksum = *(const u32 *)(partition + 0x20);
            u32 calculated_checksum = ~crc32_le(~0U, data, size);
            unsigned int name_index = partition_id - 1;
            const char *log_name = name_index < 23 ?
                                   partition_log_names[name_index] : " ";

            if (file_checksum != calculated_checksum) {
                printk(KERN_ERR "%s: partition %s checksum error, image file: 0x%x (0x%x)\n",
                       "syna_tcm_save_flash_partition_data", log_name,
                       file_checksum, calculated_checksum);
                continue;
            }

            out->enabled = 1;
            out->data_ptr = data;
            out->size = size;
            out->addr = *(const u32 *)(partition + 0x18) << 1;
            out->id = (unsigned char)partition_id;
            out->checksum = file_checksum;
            printk(KERN_INFO "%s: %s area - address:0x%08x (%d), size:%d\n",
                   "syna_tcm_save_flash_partition_data", log_name,
                   out->addr, out->addr, size);
        }

        printk(KERN_INFO "%s: debug area:%d, address:%px size:%d\n",
               "syna_tcm_parse_fw_image", partition_id, out->data_ptr,
               out->size);
    }

    return 0;
}
