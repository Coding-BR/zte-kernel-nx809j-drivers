#include <assert.h>
#include <errno.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <linux/device.h>
#include <linux/kstrtox.h>
#include <linux/types.h>

struct aw_haptic {
	unsigned int marker;
};

typedef void (*haptic_op_fn)(struct aw_haptic *haptic);
typedef void (*haptic_mode_fn)(struct aw_haptic *haptic,
			       unsigned int mode);

extern ssize_t cont_store(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count);

_Static_assert(offsetof(struct device, driver_data) == 0x98,
	       "host device layout must match the stock field offset");
_Static_assert(sizeof(void *) == sizeof(haptic_op_fn),
	       "host callback pointer representation must match");
_Static_assert(sizeof(void *) == sizeof(haptic_mode_fn),
	       "host mode callback pointer representation must match");

enum {
	EVENT_STOP = 1,
	EVENT_UPLOAD = 2,
	EVENT_CONT = 3,
	TABLE_SLOTS = 50,
	BACKING_BYTES = 0xa8 + 0x520 + sizeof(void *),
};

struct fixture {
	union {
		max_align_t alignment;
		unsigned char bytes[BACKING_BYTES];
	} backing;
	struct device dev;
	struct device_attribute attr;
	void *table_a[TABLE_SLOTS];
	void *table_b[TABLE_SLOTS];
	void *table_c[TABLE_SLOTS];
	int events[4];
	size_t event_count;
	unsigned int uploaded_mode;
	struct aw_haptic *expected_haptic;
	void **table_pointer;
};

static struct fixture *active;

static void record_event(int event, struct aw_haptic *haptic)
{
	assert(active != NULL);
	assert(haptic == active->expected_haptic);
	assert(active->event_count < sizeof(active->events) /
					 sizeof(active->events[0]));
	active->events[active->event_count++] = event;
}

static void unexpected_upload(struct aw_haptic *haptic, unsigned int mode)
{
	(void)haptic;
	(void)mode;
	abort();
}

static void unexpected_cont(struct aw_haptic *haptic)
{
	(void)haptic;
	abort();
}

static void stop_and_replace_table(struct aw_haptic *haptic)
{
	record_event(EVENT_STOP, haptic);
	*active->table_pointer = active->table_b;
}

static void upload_and_replace_table(struct aw_haptic *haptic,
				     unsigned int mode)
{
	record_event(EVENT_UPLOAD, haptic);
	active->uploaded_mode = mode;
	*active->table_pointer = active->table_c;
}

static void cont_config(struct aw_haptic *haptic)
{
	record_event(EVENT_CONT, haptic);
}

static void set_op(void **slot, haptic_op_fn callback)
{
	memcpy(slot, &callback, sizeof(callback));
}

static void set_mode_op(void **slot, haptic_mode_fn callback)
{
	memcpy(slot, &callback, sizeof(callback));
}

int kstrtouint(const char *buf, unsigned int base, unsigned int *value)
{
	char *end;
	unsigned long parsed;

	if (buf == NULL || value == NULL || *buf == '\0' || *buf == '-')
		return -EINVAL;
	errno = 0;
	parsed = strtoul(buf, &end, (int)base);
	if (end == buf)
		return -EINVAL;
	while (*end == '\n')
		++end;
	if (*end != '\0')
		return -EINVAL;
	if (errno == ERANGE || parsed > UINT32_MAX)
		return -ERANGE;
	*value = (unsigned int)parsed;
	return 0;
}

static void fixture_init(struct fixture *f)
{
	memset(f, 0, sizeof(*f));
	active = f;
	f->expected_haptic = (struct aw_haptic *)f->backing.bytes;
	f->dev.driver_data = f->backing.bytes + 0xa8;
	f->table_pointer = (void **)((unsigned char *)f->dev.driver_data + 0x520);
	*f->table_pointer = f->table_a;
	set_op(&f->table_a[0x38 / sizeof(void *)], stop_and_replace_table);
	set_mode_op(&f->table_a[0x118 / sizeof(void *)], unexpected_upload);
	set_op(&f->table_a[0x48 / sizeof(void *)], unexpected_cont);
	set_mode_op(&f->table_b[0x118 / sizeof(void *)],
		    upload_and_replace_table);
	set_op(&f->table_b[0x48 / sizeof(void *)], unexpected_cont);
	set_op(&f->table_c[0x48 / sizeof(void *)], cont_config);
}

static void test_parse_error_has_no_callback(void)
{
	struct fixture f;
	ssize_t ret;

	fixture_init(&f);
	ret = cont_store(&f.dev, &f.attr, "bad-input", 9);
	assert(ret == -EINVAL);
	assert(f.event_count == 0);
	puts("PASS parse_error_no_callbacks");
}

static void test_zero_stops_only(void)
{
	struct fixture f;
	ssize_t ret;

	fixture_init(&f);
	ret = cont_store(&f.dev, &f.attr, "0\n", 2);
	assert(ret == 2);
	assert(f.event_count == 1);
	assert(f.events[0] == EVENT_STOP);
	puts("PASS zero_value_stops_only");
}

static void test_nonzero_order_and_table_reload(void)
{
	struct fixture f;
	ssize_t ret;

	fixture_init(&f);
	ret = cont_store(&f.dev, &f.attr, "7\n", 2);
	assert(ret == 2);
	assert(f.event_count == 3);
	assert(f.events[0] == EVENT_STOP);
	assert(f.events[1] == EVENT_UPLOAD);
	assert(f.events[2] == EVENT_CONT);
	assert(f.uploaded_mode == 1);
	assert(*f.table_pointer == f.table_c);
	puts("PASS nonzero_callback_order_mode_and_table_reload");
}

int main(void)
{
	test_parse_error_has_no_callback();
	test_zero_stops_only();
	test_nonzero_order_and_table_reload();
	puts("PASS all cont_store host checks");
	return 0;
}
