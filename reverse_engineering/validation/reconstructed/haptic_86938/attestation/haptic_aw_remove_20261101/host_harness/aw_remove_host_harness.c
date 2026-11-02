#include "aw_remove_host_api.h"

void aw_remove(struct i2c_client *client);

struct miscdevice richtap_misc = { .marker = 0x86938 };

enum event_code {
	EV_LOG,
	EV_CANCEL_DELAYED,
	EV_CANCEL_WORK,
	EV_HRTIMER_CANCEL,
	EV_GPIO_TO_DESC,
	EV_GPIOD_TO_IRQ,
	EV_DEVM_FREE_IRQ,
	EV_GPIO_FREE,
	EV_KFREE,
	EV_CLEAR_BIT,
	EV_FREE_PAGES,
	EV_MISC_DEREGISTER,
};

struct event {
	enum event_code code;
	uintptr_t a;
	uintptr_t b;
	uintptr_t c;
};

static struct event events[32];
static size_t event_count;
static struct gpio_desc reset_desc;
static struct page test_page;
static int failures;

static void record(enum event_code code, uintptr_t a, uintptr_t b, uintptr_t c)
{
	if (event_count < sizeof(events) / sizeof(events[0])) {
		events[event_count++] = (struct event) { code, a, b, c };
	} else {
		failures++;
	}
}

u8 *i2c_get_clientdata(const struct i2c_client *client)
{
	return client->driver_data;
}

int printk(const char *format, ...)
{
	va_list arguments;
	char message[128];

	va_start(arguments, format);
	(void)vsnprintf(message, sizeof(message), format, arguments);
	va_end(arguments);
	if (strcmp(message, "\0016[haptic_hv][4569]aw_remove: enter\n") != 0)
		failures++;
	record(EV_LOG, 0, 0, 0);
	return 0;
}

int cancel_delayed_work_sync(struct delayed_work *work)
{
	record(EV_CANCEL_DELAYED, (uintptr_t)work, 0, 0);
	return 1;
}

int cancel_work_sync(struct work_struct *work)
{
	record(EV_CANCEL_WORK, (uintptr_t)work, 0, 0);
	return 1;
}

int hrtimer_cancel(struct hrtimer *timer)
{
	record(EV_HRTIMER_CANCEL, (uintptr_t)timer, 0, 0);
	return 1;
}

struct gpio_desc *gpio_to_desc(int gpio)
{
	record(EV_GPIO_TO_DESC, (uintptr_t)(intptr_t)gpio, 0, 0);
	return &reset_desc;
}

int gpiod_to_irq(const struct gpio_desc *desc)
{
	if (desc != &reset_desc)
		failures++;
	record(EV_GPIOD_TO_IRQ, (uintptr_t)desc, 0, 0);
	return 77;
}

int devm_free_irq(struct device *device, int irq, void *dev_id)
{
	record(EV_DEVM_FREE_IRQ, (uintptr_t)device, (uintptr_t)(intptr_t)irq,
	       (uintptr_t)dev_id);
	return 0;
}

void gpio_free(unsigned int gpio)
{
	record(EV_GPIO_FREE, gpio, 0, 0);
}

void kfree(const void *pointer)
{
	record(EV_KFREE, (uintptr_t)pointer, 0, 0);
}

struct page *virt_to_page(const void *address)
{
	if ((uintptr_t)address != UINT64_C(0x12345000))
		failures++;
	return &test_page;
}

void clear_bit(unsigned int bit, volatile unsigned long *address)
{
	record(EV_CLEAR_BIT, bit, (uintptr_t)address, 0);
	*address &= ~(1UL << bit);
}

void free_pages(unsigned long address, unsigned int order)
{
	record(EV_FREE_PAGES, address, order, 0);
}

int misc_deregister(struct miscdevice *misc)
{
	record(EV_MISC_DEREGISTER, (uintptr_t)misc, 0, 0);
	return 0;
}

static int expect_event(size_t index, enum event_code code,
			uintptr_t a, uintptr_t b, uintptr_t c)
{
	if (index >= event_count || events[index].code != code ||
	    events[index].a != a || events[index].b != b || events[index].c != c) {
		fprintf(stderr, "event %zu mismatch\n", index);
		return 1;
	}
	return 0;
}

static int run_case(const char *name, int reset_gpio, int second_gpio)
{
	_Alignas(16) u8 haptic[0x700] = { 0 };
	struct i2c_client client = { 0 };
	uintptr_t freed_buffer = UINT64_C(0xabcdef00);
	uintptr_t page_address = UINT64_C(0x12345000);
	enum event_code expected[17];
	size_t expected_count = 0;
	size_t cursor = 0;
	int local_failures = 0;

#define EXPECT_EVENT(code) expected[expected_count++] = (code)
	EXPECT_EVENT(EV_LOG);
	EXPECT_EVENT(EV_CANCEL_DELAYED);
	EXPECT_EVENT(EV_CANCEL_WORK);
	EXPECT_EVENT(EV_HRTIMER_CANCEL);
	EXPECT_EVENT(EV_CANCEL_WORK);
	EXPECT_EVENT(EV_CANCEL_WORK);
	EXPECT_EVENT(EV_HRTIMER_CANCEL);
	EXPECT_EVENT(EV_GPIO_TO_DESC);
	EXPECT_EVENT(EV_GPIOD_TO_IRQ);
	EXPECT_EVENT(EV_DEVM_FREE_IRQ);
	if (reset_gpio >= 0)
		EXPECT_EVENT(EV_GPIO_FREE);
	EXPECT_EVENT(EV_CANCEL_WORK);
	EXPECT_EVENT(EV_KFREE);
	EXPECT_EVENT(EV_CLEAR_BIT);
	EXPECT_EVENT(EV_FREE_PAGES);
	EXPECT_EVENT(EV_MISC_DEREGISTER);
	if (second_gpio >= 0)
		EXPECT_EVENT(EV_GPIO_FREE);
#undef EXPECT_EVENT

	event_count = 0;
	failures = 0;
	test_page.flags = ~0UL;
	memcpy(haptic + 0x50, &reset_gpio, sizeof(reset_gpio));
	memcpy(haptic + 0x5c, &second_gpio, sizeof(second_gpio));
	memcpy(haptic + 0x608, &freed_buffer, sizeof(freed_buffer));
	memcpy(haptic + 0x610, &page_address, sizeof(page_address));
	client.driver_data = haptic;

	aw_remove(&client);
	if (failures)
		local_failures++;
	if (event_count != expected_count) {
		fprintf(stderr, "%s: expected %zu events, got %zu\n", name,
			expected_count, event_count);
		return 1;
	}
	for (size_t i = 0; i < expected_count; i++) {
		if (events[i].code != expected[i]) {
			fprintf(stderr, "%s: event order mismatch at %zu\n", name, i);
			local_failures++;
		}
	}
	local_failures += expect_event(cursor++, EV_LOG, 0, 0, 0);
	local_failures += expect_event(cursor++, EV_CANCEL_DELAYED,
				       (uintptr_t)(haptic + 0x3c0), 0, 0);
	local_failures += expect_event(cursor++, EV_CANCEL_WORK,
				       (uintptr_t)(haptic + 0x560), 0, 0);
	local_failures += expect_event(cursor++, EV_HRTIMER_CANCEL,
				       (uintptr_t)(haptic + 0x520), 0, 0);
	local_failures += expect_event(cursor++, EV_CANCEL_WORK,
				       (uintptr_t)(haptic + 0x3a0), 0, 0);
	local_failures += expect_event(cursor++, EV_CANCEL_WORK,
				       (uintptr_t)(haptic + 0x428), 0, 0);
	local_failures += expect_event(cursor++, EV_HRTIMER_CANCEL,
				       (uintptr_t)(haptic + 0x330), 0, 0);
	local_failures += expect_event(cursor++, EV_GPIO_TO_DESC,
				       (uintptr_t)(intptr_t)reset_gpio, 0, 0);
	local_failures += expect_event(cursor++, EV_GPIOD_TO_IRQ,
				       (uintptr_t)&reset_desc, 0, 0);
	local_failures += expect_event(cursor++, EV_DEVM_FREE_IRQ,
				       (uintptr_t)&client.dev, 77, (uintptr_t)haptic);
	if (reset_gpio >= 0)
		local_failures += expect_event(cursor++, EV_GPIO_FREE,
					       (uintptr_t)reset_gpio, 0, 0);
	local_failures += expect_event(cursor++, EV_CANCEL_WORK,
				       (uintptr_t)(haptic + 0x648), 0, 0);
	local_failures += expect_event(cursor++, EV_KFREE, freed_buffer, 0, 0);
	local_failures += expect_event(cursor++, EV_CLEAR_BIT, 14,
				       (uintptr_t)&test_page.flags, 0);
	local_failures += expect_event(cursor++, EV_FREE_PAGES, page_address, 2, 0);
	local_failures += expect_event(cursor++, EV_MISC_DEREGISTER,
				       (uintptr_t)&richtap_misc, 0, 0);
	if (second_gpio >= 0)
		local_failures += expect_event(cursor++, EV_GPIO_FREE,
					       (uintptr_t)second_gpio, 0, 0);
	if (test_page.flags != (~0UL & ~(1UL << 14))) {
		fprintf(stderr, "%s: page bit 14 clear changed unrelated bits\n", name);
		local_failures++;
	}
	if (cursor != expected_count)
		local_failures++;
	if (local_failures) {
		fprintf(stderr, "%s: FAIL (%d discrepancies)\n", name,
			local_failures);
		return 1;
	}
	printf("%s: PASS (%zu ordered teardown events)\n", name, event_count);
	return 0;
}

int main(void)
{
	int failed = 0;

	failed += run_case("both_gpios_valid", 23, 26);
	failed += run_case("reset_gpio_negative", -1, 26);
	failed += run_case("both_gpios_negative", -1, -1);
	if (failed)
		return 1;
	puts("3/3 aw_remove teardown cases passed");
	return 0;
}
