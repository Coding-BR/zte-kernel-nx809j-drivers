#include <assert.h>
#include <stdarg.h>
#include <stdio.h>

struct device {
    int marker;
};

struct platform_device {
    char private_prefix[16];
    struct device dev;
};

static int suspend_result;
static int suspend_calls;
static int error_calls;
static struct device *last_suspended;
static struct device *last_error_device;

static int gpio_keys_suspend(struct device *dev)
{
    suspend_calls++;
    last_suspended = dev;
    return suspend_result;
}

static void dev_err(struct device *dev, const char *format, ...)
{
    va_list args;

    (void)format;
    va_start(args, format);
    va_end(args);
    error_calls++;
    last_error_device = dev;
}

static void gpio_keys_shutdown_model(struct platform_device *pdev)
{
    int ret = gpio_keys_suspend(&pdev->dev);

    if (ret)
        dev_err(&pdev->dev, "failed to shutdown\n");
}

static void reset_state(void)
{
    suspend_calls = 0;
    error_calls = 0;
    last_suspended = NULL;
    last_error_device = NULL;
}

static void test_success_path(void)
{
    struct platform_device pdev = {0};

    reset_state();
    suspend_result = 0;
    gpio_keys_shutdown_model(&pdev);
    assert(suspend_calls == 1);
    assert(last_suspended == &pdev.dev);
    assert(error_calls == 0);
    assert(last_error_device == NULL);
}

static void test_error_path(void)
{
    struct platform_device pdev = {0};

    reset_state();
    suspend_result = -5;
    gpio_keys_shutdown_model(&pdev);
    assert(suspend_calls == 1);
    assert(last_suspended == &pdev.dev);
    assert(error_calls == 1);
    assert(last_error_device == &pdev.dev);
}

int main(void)
{
    test_success_path();
    test_error_path();
    puts("PASS gpio_keys shutdown host tests (2 scenarios)");
    return 0;
}
