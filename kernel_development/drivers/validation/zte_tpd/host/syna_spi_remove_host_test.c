#include <stdarg.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef long long __int64;
typedef uint8_t _BYTE;
typedef uint32_t _DWORD;
typedef uint64_t _QWORD;
#define __fastcall

struct spi_device {
    int unused;
};

int dword_C88;
int dword_CD0;
int dword_C80;
void *rx_buf;
void *p_device;
void *tx_buf;
void *xfer;
int dword_D08;
void *qword_D18;
int dword_D20;
int dword_CE0;
void *qword_CF0;
int dword_CF8;

static const char unk_3BE43[] = "\0013[error] %s: Invalid managed device\n";

static unsigned int gpio_free_calls;
static unsigned int devm_kfree_calls;
static unsigned int regulator_put_calls;
static unsigned int printk_calls;
static unsigned int last_gpio;
static void *last_kfree_memory[3];
static void *last_regulators[2];

static int gpio_free(unsigned int gpio, __int64 argument)
{
    (void)argument;
    gpio_free_calls++;
    last_gpio = gpio;
    return 0;
}

static int devm_kfree(__int64 device, void *memory)
{
    (void)device;
    if (devm_kfree_calls < 3)
        last_kfree_memory[devm_kfree_calls] = memory;
    devm_kfree_calls++;
    return 0;
}

static int devm_regulator_put(void *regulator, __int64 argument)
{
    (void)argument;
    if (regulator_put_calls < 2)
        last_regulators[regulator_put_calls] = regulator;
    regulator_put_calls++;
    return 0;
}

static int printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

#include "../../../reconstructed/zte_tpd/syna_spi_remove.c"

struct device_holder {
    max_align_t alignment;
    uint8_t storage[128];
};

static int failures;

static void fail(const char *name, const char *message)
{
    fprintf(stderr, "FAIL %s: %s\n", name, message);
    failures++;
}

static void expect(int condition, const char *name, const char *message)
{
    if (!condition)
        fail(name, message);
}

static void reset_state(void)
{
    dword_C88 = 0;
    dword_CD0 = 0;
    dword_C80 = 0;
    rx_buf = NULL;
    p_device = NULL;
    tx_buf = NULL;
    xfer = NULL;
    dword_D08 = 0;
    qword_D18 = NULL;
    dword_D20 = 0;
    dword_CE0 = 0;
    qword_CF0 = NULL;
    dword_CF8 = 0;
    gpio_free_calls = 0;
    devm_kfree_calls = 0;
    regulator_put_calls = 0;
    printk_calls = 0;
    last_gpio = 0;
    memset(last_kfree_memory, 0, sizeof(last_kfree_memory));
    memset(last_regulators, 0, sizeof(last_regulators));
}

static void set_managed_device(struct device_holder *holder, void *device)
{
    memset(holder, 0, sizeof(*holder));
    memcpy(holder->storage + 112, &device, sizeof(device));
    p_device = holder->storage;
}

static void test_all_resources(void)
{
    struct device_holder holder;
    struct spi_device spi;
    uint8_t rx[8], tx[8], transfer[8];
    void *device = &spi;

    reset_state();
    set_managed_device(&holder, device);
    dword_C88 = 11;
    dword_CD0 = 22;
    dword_C80 = 33;
    rx_buf = rx;
    tx_buf = tx;
    xfer = transfer;
    dword_D08 = 1;
    qword_D18 = (void *)0x1111;
    dword_CE0 = 1;
    qword_CF0 = (void *)0x2222;
    syna_spi_remove(&spi);
    expect(gpio_free_calls == 3, "all-resources", "three GPIOs must be freed");
    expect(devm_kfree_calls == 3, "all-resources", "three managed buffers must be freed");
    expect(regulator_put_calls == 2, "all-resources", "two regulators must be released");
    expect(printk_calls == 0, "all-resources", "valid managed device must not log");
    expect(rx_buf == NULL && tx_buf == NULL && xfer == NULL,
           "all-resources", "buffer globals must be cleared");
}

static void test_invalid_managed_device(void)
{
    uint8_t rx[8], tx[8], transfer[8];

    reset_state();
    rx_buf = rx;
    tx_buf = tx;
    xfer = transfer;
    syna_spi_remove(NULL);
    expect(printk_calls == 3, "invalid-device", "each buffer must report invalid device");
    expect(devm_kfree_calls == 0, "invalid-device", "invalid device must not be passed to kfree");
    expect(rx_buf == NULL && tx_buf == NULL && xfer == NULL,
           "invalid-device", "buffer globals must be cleared");
}

static void test_first_regulator_or_gpio_branch(void)
{
    reset_state();
    dword_D08 = 2;
    dword_D20 = 44;
    syna_spi_remove(NULL);
    expect(gpio_free_calls == 1 && last_gpio == 44,
           "first-gpio-branch", "alternate first resource must free D20");
}

static void test_second_gpio_branch(void)
{
    reset_state();
    dword_CE0 = 2;
    dword_CF8 = 55;
    syna_spi_remove(NULL);
    expect(gpio_free_calls == 1 && last_gpio == 55,
           "second-gpio-branch", "alternate second resource must free CF8");
}

static void test_null_regulators(void)
{
    reset_state();
    dword_D08 = 1;
    dword_CE0 = 1;
    syna_spi_remove(NULL);
    expect(gpio_free_calls == 0 && regulator_put_calls == 0 && printk_calls == 0,
           "null-regulators", "null regulators must be skipped");
}

static void test_no_resources(void)
{
    reset_state();
    syna_spi_remove(NULL);
    expect(gpio_free_calls == 0 && devm_kfree_calls == 0
               && regulator_put_calls == 0 && printk_calls == 0,
           "no-resources", "empty state must have no side effects");
}

int main(void)
{
    test_all_resources();
    test_invalid_managed_device();
    test_first_regulator_or_gpio_branch();
    test_second_gpio_branch();
    test_null_regulators();
    test_no_resources();
    if (failures != 0)
        return 1;
    puts("PASS syna_spi_remove host tests (6 cases)");
    return 0;
}
