#include <stdint.h>
#include <stddef.h>
#include <stdio.h>

struct device {
    int marker;
};

struct managed_frame {
    uint8_t reserved[0x70];
    struct device *device;
};

_Static_assert(offsetof(struct managed_frame, device) == 0x70,
               "stock device offset must stay at 0x70");

int64_t p_device;

#include "../../../reconstructed/zte_tpd/syna_request_managed_device.c"

static int failures;

static void expect_device(const char *name, struct device *expected)
{
    struct device *actual = syna_request_managed_device();

    if (actual != expected) {
        fprintf(stderr, "%s: wrong managed device\n", name);
        failures++;
    }
}

int main(void)
{
    struct device first = { .marker = 1 };
    struct device second = { .marker = 2 };
    struct managed_frame frame = { .device = &first };

    p_device = 0;
    expect_device("null_context", NULL);
    p_device = (int64_t)(intptr_t)&frame;
    expect_device("first_device", &first);
    frame.device = &second;
    expect_device("updated_device", &second);

    if (failures != 0)
        return 1;
    puts("PASS syna_request_managed_device host tests (3 cases)");
    return 0;
}
