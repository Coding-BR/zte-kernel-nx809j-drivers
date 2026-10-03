#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static unsigned int callback_count;
static unsigned int callback_value;

static void fake_callback(unsigned int value)
{
    callback_count++;
    callback_value = value;
}

static long set_play_game_contract(const char *buffer, size_t count,
                                   void (*callback)(unsigned int))
{
    char input[64];
    char *end;
    unsigned long value;

    if (count == 0 || count >= sizeof(input))
        return -EINVAL;
    memcpy(input, buffer, count);
    input[count] = '\0';
    errno = 0;
    value = strtoul(input, &end, 10);
    if (errno != 0 || end == input || (*end != '\0' && *end != '\n') ||
        value > UINT32_MAX)
        return -EINVAL;
    if (callback != NULL)
        callback((unsigned int)value);
    return (long)count;
}

static int check(int condition, const char *message)
{
    if (!condition) {
        fprintf(stderr, "FAIL: %s\n", message);
        return 1;
    }
    return 0;
}

int main(void)
{
    long result;

    callback_count = 0;
    callback_value = 0;
    result = set_play_game_contract("0", 1, fake_callback);
    if (check(result == 1 && callback_count == 1 && callback_value == 0,
              "zero is forwarded"))
        return 1;

    result = set_play_game_contract("7\n", 2, fake_callback);
    if (check(result == 2 && callback_count == 2 && callback_value == 7,
              "nonzero value is forwarded unchanged"))
        return 1;

    result = set_play_game_contract("invalid", 7, fake_callback);
    if (check(result == -EINVAL && callback_count == 2,
              "invalid input returns EINVAL without callback"))
        return 1;

    result = set_play_game_contract("4294967296", 10, NULL);
    if (check(result == -EINVAL && callback_count == 2,
              "out of range input returns EINVAL"))
        return 1;

    puts("PASS set_play_game host tests (4 cases)");
    return 0;
}
