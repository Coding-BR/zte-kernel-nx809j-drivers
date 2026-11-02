#include <stdint.h>
#include <stdio.h>
#include <string.h>

static int copy_failure;
static int register_failure_type = -1;
static unsigned int copy_calls;
static unsigned int register_calls;
static uint32_t registered_types[256];

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_17_set_queued_types.c"

static struct syna_set_queued_types_190_17_context context;
static uint8_t input_bitmap[256];

static int copy_from_spy(uint8_t *destination, const void *source, size_t length)
{
	copy_calls++;
	if (copy_failure)
		return 1;
	memcpy(destination, source, length);
	return 0;
}

static int register_spy(uint32_t report_type)
{
	registered_types[register_calls++] = report_type;
	return (int)report_type == register_failure_type ? -7 : 0;
}

static void reset_environment(void)
{
	memset(&context, 0xa5, sizeof(context));
	memset(input_bitmap, 0, sizeof(input_bitmap));
	copy_failure = 0;
	register_failure_type = -1;
	copy_calls = 0;
	register_calls = 0;
	memset(registered_types, 0, sizeof(registered_types));
	context.lifecycle_state = 0;
	context.declared_capacity = 256;
	context.copy_from_user = copy_from_spy;
	context.register_type = register_spy;
}

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

static int test_guards(void)
{
	reset_environment();
	context.lifecycle_state = 3;
	if (expect(syna_cdev_ioctls_190_17_set_queued_types(&context,
						input_bitmap, 0) == 0 && copy_calls == 0,
				"lifecycle guard")) return 1;
	reset_environment();
	context.declared_capacity = 255;
	if (expect(syna_cdev_ioctls_190_17_set_queued_types(&context,
						input_bitmap, 1) == -22,
				"declared-capacity guard")) return 1;
	reset_environment();
	if (expect(syna_cdev_ioctls_190_17_set_queued_types(&context,
						input_bitmap, 0) == -22,
				"empty bitmap guard")) return 1;
	reset_environment();
	if (expect(syna_cdev_ioctls_190_17_set_queued_types(&context,
						input_bitmap, 257) == -22,
				"bitmap upper bound")) return 1;
	return 0;
}

static int test_copy_and_callback_matrix(void)
{
	reset_environment();
	copy_failure = 1;
	if (expect(syna_cdev_ioctls_190_17_set_queued_types(&context,
						input_bitmap, 4) == -52 && copy_calls == 1,
				"copy failure")) return 1;
	reset_environment();
	input_bitmap[0] = 1;
	input_bitmap[3] = 1;
	input_bitmap[255] = 1;
	if (expect(syna_cdev_ioctls_190_17_set_queued_types(&context,
						input_bitmap, 4) == 0 && register_calls == 2 &&
						registered_types[0] == 0 && registered_types[1] == 3,
				"active report types")) return 1;
	reset_environment();
	input_bitmap[2] = 1;
	register_failure_type = 2;
	if (expect(syna_cdev_ioctls_190_17_set_queued_types(&context,
						input_bitmap, 4) == -7 && register_calls == 1,
				"callback failure propagation")) return 1;
	return 0;
}

static int test_bitmap_zero_fill(void)
{
	uint32_t index;

	reset_environment();
	input_bitmap[1] = 1;
	if (expect(syna_cdev_ioctls_190_17_set_queued_types(&context,
						input_bitmap, 2) == 0 && register_calls == 1 &&
						registered_types[0] == 1,
				"short bitmap registration")) return 1;
	for (index = 2; index < 256; index++)
		if (context.report_types[index] != 0)
			return fprintf(stderr, "bitmap tail not zero at %u\n", index), 1;
	return 0;
}

int main(void)
{
	if (test_guards() || test_copy_and_callback_matrix() || test_bitmap_zero_fill())
		return 1;
	puts("PASS syna_cdev_ioctls_190_17_set_queued_types: 8 cases");
	return 0;
}
