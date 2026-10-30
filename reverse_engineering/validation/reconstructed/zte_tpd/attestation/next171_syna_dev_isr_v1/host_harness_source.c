#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef unsigned char u8;

typedef int irqreturn_t;
#define IRQ_HANDLED 1

struct completion { unsigned char bytes[8]; };
struct gpio_desc { int value; };
struct syna_hw_interface { int irq_gpio; int irq_on_state; };
struct tcm_buffer { unsigned char bytes[32]; };
struct syna_tcm {
    struct syna_hw_interface *hw_if;
    int pm_resume_wait_bypass;
    int pm_resume_wait_enabled;
    struct completion pm_resume_completion;
    int isr_pid;
    void *tcm_dev;
    struct tcm_buffer event_data;
};
struct task_struct { int pid; };

static struct gpio_desc test_gpio;
static struct task_struct test_current;
static struct task_struct *current = &test_current;
static unsigned char status_page[4096];
static unsigned long wait_result;
static int event_result;
static unsigned int wait_calls;
static unsigned int gpio_desc_calls;
static unsigned int gpio_value_calls;
static unsigned int event_calls;
static unsigned int printk_calls;
static int gpio_desc_input;
static int event_value;

static unsigned long test_wait_for_completion_timeout(struct completion *completion,
                                                      unsigned long timeout)
{
    (void)completion;
    (void)timeout;
    wait_calls++;
    return wait_result;
}

static struct gpio_desc *test_gpio_to_desc(int gpio)
{
    gpio_desc_calls++;
    gpio_desc_input = gpio;
    return &test_gpio;
}

static int test_gpiod_get_raw_value(struct gpio_desc *desc)
{
    gpio_value_calls++;
    return desc->value;
}

static int test_get_event_data(void *dev, unsigned char *event,
                               struct tcm_buffer *buffer)
{
    (void)dev;
    (void)buffer;
    event_calls++;
    *event = (unsigned char)event_value;
    return event_result;
}

static int test_printk(const char *format, ...)
{
    (void)format;
    printk_calls++;
    return 0;
}

#define printk test_printk
#define wait_for_completion_timeout test_wait_for_completion_timeout
#define gpio_to_desc test_gpio_to_desc
#define gpiod_get_raw_value test_gpiod_get_raw_value
#define syna_tcm_get_event_data test_get_event_data
#define _ReadStatusReg(value) ((intptr_t)(status_page + 1808))
#define SP_EL0 0
#include "../../../reconstructed/zte_tpd/syna_dev_isr.c"
#undef SP_EL0
#undef _ReadStatusReg
#undef syna_tcm_get_event_data
#undef gpiod_get_raw_value
#undef gpio_to_desc
#undef wait_for_completion_timeout
#undef printk

static void reset_state(struct syna_tcm *tcm, struct syna_hw_interface *hw)
{
    memset(tcm, 0, sizeof(*tcm));
    memset(hw, 0, sizeof(*hw));
    test_current.pid = 4321;
    test_gpio.value = 1;
    hw->irq_gpio = 17;
    hw->irq_on_state = 1;
    tcm->hw_if = hw;
    tcm->pm_resume_wait_bypass = 0;
    tcm->pm_resume_wait_enabled = 0;
    tcm->tcm_dev = tcm;
    wait_result = 1;
    event_result = 0;
    event_value = 7;
    wait_calls = gpio_desc_calls = gpio_value_calls = 0;
    event_calls = printk_calls = 0;
    gpio_desc_input = -1;
}

static int expect_pm_timeout(void)
{
    struct syna_tcm tcm;
    struct syna_hw_interface hw;
    reset_state(&tcm, &hw);
    tcm.pm_resume_wait_enabled = 1;
    wait_result = 0;
    return syna_dev_isr(9, &tcm) == IRQ_HANDLED && wait_calls == 1 &&
           gpio_desc_calls == 0 && event_calls == 0 && printk_calls == 1;
}

static int expect_bypass_gpio_mismatch(void)
{
    struct syna_tcm tcm;
    struct syna_hw_interface hw;
    reset_state(&tcm, &hw);
    tcm.pm_resume_wait_bypass = 1;
    test_gpio.value = 0;
    return syna_dev_isr(9, &tcm) == IRQ_HANDLED && wait_calls == 0 &&
           gpio_desc_calls == 1 && gpio_desc_input == 17 &&
           gpio_value_calls == 1 && event_calls == 0 && printk_calls == 0;
}

static int expect_event_success(void)
{
    struct syna_tcm tcm;
    struct syna_hw_interface hw;
    reset_state(&tcm, &hw);
    tcm.pm_resume_wait_enabled = 1;
    return syna_dev_isr(9, &tcm) == IRQ_HANDLED && wait_calls == 1 &&
           gpio_value_calls == 1 && event_calls == 1 && printk_calls == 0 &&
           tcm.isr_pid == 4321;
}

static int expect_event_failure(void)
{
    struct syna_tcm tcm;
    struct syna_hw_interface hw;
    reset_state(&tcm, &hw);
    event_result = -5;
    return syna_dev_isr(9, &tcm) == IRQ_HANDLED && event_calls == 1 &&
           printk_calls == 1 && tcm.isr_pid == 4321;
}

static int expect_resume_disabled(void)
{
    struct syna_tcm tcm;
    struct syna_hw_interface hw;
    reset_state(&tcm, &hw);
    test_gpio.value = 0;
    return syna_dev_isr(9, &tcm) == IRQ_HANDLED && wait_calls == 0 &&
           event_calls == 0 && printk_calls == 0;
}

int main(void)
{
    if (!expect_pm_timeout() || !expect_bypass_gpio_mismatch() ||
        !expect_event_success() || !expect_event_failure() ||
        !expect_resume_disabled()) {
        fprintf(stderr, "syna_dev_isr contract mismatch\n");
        return 1;
    }
    puts("PASS syna_dev_isr host tests (5 cases)");
    return 0;
}
