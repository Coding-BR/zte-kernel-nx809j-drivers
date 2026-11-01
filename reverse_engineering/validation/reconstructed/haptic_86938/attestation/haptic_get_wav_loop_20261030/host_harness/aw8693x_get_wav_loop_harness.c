#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <errno.h>
#include <linux/types.h>

struct aw_haptic { u8 bytes[0x400]; };
unsigned long aw8693x_get_wav_loop(struct aw_haptic *haptic, char *buf);

static int helper_result;
static u8 helper_data[4];
static u32 helper_write_count;
static int helper_calls;
static u8 helper_reg;
static u32 helper_length;
static int event_kinds[9];
static int event_values[9];
static int event_count;
static int snprintf_calls;
static int snprintf_sequences[8];
static int snprintf_values[8];

int i2c_r_bytes(struct aw_haptic *haptic, u8 reg, u8 *data, u32 length)
{
    if (!haptic || !data || helper_calls != 0 || event_count >= 9)
        return -99;
    ++helper_calls;
    helper_reg = reg;
    helper_length = length;
    event_kinds[event_count] = 0;
    event_values[event_count++] = (int)length;
    if (helper_write_count > length)
        return -98;
    memcpy(data, helper_data, helper_write_count);
    return helper_result;
}

int __wrap_snprintf(char *buffer, size_t size, const char *format, ...)
{
    va_list args, output_args;
    int sequence, value, written;
    if (snprintf_calls >= 8 || event_count >= 9 ||
        strcmp(format, "seq%d loop: 0x%02x\n") != 0)
        return -99;
    va_start(args, format);
    va_copy(output_args, args);
    sequence = va_arg(args, int);
    value = va_arg(args, int);
    va_end(args);
    snprintf_sequences[snprintf_calls] = sequence;
    snprintf_values[snprintf_calls] = value;
    ++snprintf_calls;
    event_kinds[event_count] = 1;
    event_values[event_count++] = sequence;
    written = vsnprintf(buffer, size, format, output_args);
    va_end(output_args);
    return written;
}

static void reset_case(int result, const u8 *bytes, u32 write_count)
{
    helper_result = result;
    memset(helper_data, 0, sizeof(helper_data));
    if (bytes)
        memcpy(helper_data, bytes, sizeof(helper_data));
    helper_write_count = write_count;
    helper_calls = helper_reg = 0;
    helper_length = 0;
    event_count = snprintf_calls = 0;
    memset(event_kinds, 0xff, sizeof(event_kinds));
    memset(event_values, 0xff, sizeof(event_values));
    memset(snprintf_sequences, 0, sizeof(snprintf_sequences));
    memset(snprintf_values, 0, sizeof(snprintf_values));
}

static int run_case(const char *name, int result, const u8 *bytes,
                    u32 write_count, const char *expected,
                    const u8 expected_fields[8], const int expected_values[8])
{
    static const int expected_sequences[8] = {1,2,3,4,5,6,7,8};
    static const u8 source[4] = {0xa5,0x3c,0xe0,0x1f};
    static const u8 zero_fields[8] = {0,0,0,0,0,0,0,0};
    struct aw_haptic haptic;
    struct { u8 before[16]; char data[4096]; u8 after[16]; } output;
    const u8 *fields = expected_fields ? expected_fields : zero_fields;
    unsigned long result_length;
    int i;

    memset(&haptic, 0xcc, sizeof(haptic));
    memset(&output, 0xa5, sizeof(output));
    reset_case(result, bytes, write_count);
    result_length = aw8693x_get_wav_loop(&haptic, output.data);

    if (result_length != 128 || strcmp(output.data, expected) != 0 ||
        memcmp(output.data, expected, 129) != 0 || output.data[128] != '\0') {
        fprintf(stderr, "FAIL %s: output/return mismatch (len=%lu)\n",
                name, result_length);
        return 1;
    }
    for (i=129; i<4096; ++i) {
        if ((u8)output.data[i] != 0xa5) {
            fprintf(stderr, "FAIL %s: write beyond buf[128] at %d\n",name,i);
            return 1;
        }
    }
    for (i=0; i<16; ++i) {
        if (output.before[i] != 0xa5 || output.after[i] != 0xa5) {
            fprintf(stderr, "FAIL %s: output guard changed\n",name);
            return 1;
        }
    }
    for (i=0; i<8; ++i) {
        if (haptic.bytes[0x26+i] != fields[i]) {
            fprintf(stderr, "FAIL %s: haptic offset +0x%x got %02x want %02x\n",
                    name, 0x26+i, haptic.bytes[0x26+i], fields[i]);
            return 1;
        }
    }
    for (i=0; i<(int)sizeof(haptic.bytes); ++i) {
        if ((i<0x26 || i>0x2d) && haptic.bytes[i] != 0xcc) {
            fprintf(stderr, "FAIL %s: unexpected haptic write at 0x%x\n",name,i);
            return 1;
        }
    }
    if (helper_calls != 1 || helper_reg != 0x12 || helper_length != 4 ||
        event_count != 9 || event_kinds[0] != 0 || event_values[0] != 4 ||
        snprintf_calls != 8) {
        fprintf(stderr, "FAIL %s: helper=%d reg=%u len=%u events=%d first=%d/%d snprintf=%d\n", name, helper_calls, helper_reg, helper_length, event_count, event_kinds[0], event_values[0], snprintf_calls);
        return 1;
    }
    for (i=0; i<8; ++i) {
        if (event_kinds[i+1] != 1 || event_values[i+1] != expected_sequences[i] ||
            snprintf_sequences[i] != expected_sequences[i] ||
            snprintf_values[i] != expected_values[i]) {
            fprintf(stderr, "FAIL %s: snprintf call %d args/order mismatch\n",name,i);
            return 1;
        }
    }
    printf("PASS %s\n", name);
    (void)source;
    return 0;
}

int main(void)
{
    static const u8 bytes[4] = {0xa5,0x3c,0xe0,0x1f};
    static const u8 fields[8] = {0x0a,0x05,0x03,0x0c,0x0e,0x00,0x01,0x0f};
    static const int values[8] = {10,5,3,12,14,0,1,15};
    static const int zeros[8] = {0,0,0,0,0,0,0,0};
    static const char normal[] =
        "seq1 loop: 0x0a\nseq2 loop: 0x05\nseq3 loop: 0x03\nseq4 loop: 0x0c\n"
        "seq5 loop: 0x0e\nseq6 loop: 0x00\nseq7 loop: 0x01\nseq8 loop: 0x0f\n";
    static const char all_zero[] =
        "seq1 loop: 0x00\nseq2 loop: 0x00\nseq3 loop: 0x00\nseq4 loop: 0x00\n"
        "seq5 loop: 0x00\nseq6 loop: 0x00\nseq7 loop: 0x00\nseq8 loop: 0x00\n";
    static const char partial[] =
        "seq1 loop: 0x0a\nseq2 loop: 0x05\nseq3 loop: 0x03\nseq4 loop: 0x0c\n"
        "seq5 loop: 0x00\nseq6 loop: 0x00\nseq7 loop: 0x00\nseq8 loop: 0x00\n";
    static const u8 first_two[4] = {0xa5,0x3c,0,0};
    int failed=0;

    failed |= run_case("patterned_bytes_and_output_order",2,bytes,4,normal,fields,values);
    failed |= run_case("negative_helper_result_zero_local",-EREMOTEIO,NULL,0,all_zero,NULL,zeros);
    failed |= run_case("short_transfer_helper_returns_minus_6",-6,NULL,0,all_zero,NULL,zeros);
    failed |= run_case("negative_result_with_partial_writes",-EREMOTEIO,first_two,2,partial,
                       (const u8[8]){0x0a,0x05,0x03,0x0c,0,0,0,0},
                       (const int[8]){10,5,3,12,0,0,0,0});
    if (failed) return 1;
    puts("PASS all aw8693x_get_wav_loop host checks");
    return 0;
}
