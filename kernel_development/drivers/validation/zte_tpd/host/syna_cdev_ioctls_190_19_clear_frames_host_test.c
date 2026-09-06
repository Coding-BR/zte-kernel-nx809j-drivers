#include <stdint.h>
#include <stdio.h>
#include <string.h>

static unsigned int lock_calls;
static unsigned int unlock_calls;
static unsigned int free_calls;
static unsigned int restore_calls;
static unsigned int freed_payloads;
static unsigned int freed_frames;
static int restore_value;

#include "../../../reconstructed/zte_tpd/routes/syna_cdev_ioctls_190_19_clear_frames.c"

static struct syna_clear_frames_190_19_frame *frames[4];
static struct syna_clear_frames_190_19_frame frame_storage[4];
static uint8_t payload_storage[4][4];
static struct syna_clear_frames_190_19_context context;

static void lock_spy(void) { lock_calls++; }
static void unlock_spy(void) { unlock_calls++; }

static void free_spy(void *object)
{
	unsigned int index;

	free_calls++;
	for (index = 0; index < 4; index++) {
		if (object == payload_storage[index])
			freed_payloads++;
		if (object == &frame_storage[index])
			freed_frames++;
	}
}

static void restore_spy(int enable)
{
	restore_calls++;
	restore_value = enable;
}

static void reset_environment(void)
{
	unsigned int index;

	memset(frames, 0, sizeof(frames));
	memset(frame_storage, 0, sizeof(frame_storage));
	memset(payload_storage, 0xa5, sizeof(payload_storage));
	lock_calls = 0;
	unlock_calls = 0;
	free_calls = 0;
	restore_calls = 0;
	freed_payloads = 0;
	freed_frames = 0;
	restore_value = 0;
	context.frames = frames;
	context.frame_count = 0;
	context.frame_capacity = 4;
	context.restore_threshold = 1;
	context.restore_blocked = 0;
	context.lock = lock_spy;
	context.unlock = unlock_spy;
	context.free_object = free_spy;
	context.restore = restore_spy;
	for (index = 0; index < 4; index++)
		frame_storage[index].payload = payload_storage[index];
}

static int expect(int condition, const char *message)
{
	if (condition)
		return 0;
	fprintf(stderr, "%s\n", message);
	return 1;
}

static int test_empty_queue_and_lock_order(void)
{
	reset_environment();
	if (expect(syna_cdev_ioctls_190_19_clear_frames(&context) == 0 &&
			lock_calls == 1 && unlock_calls == 1 && free_calls == 0 &&
			restore_calls == 1 && restore_value == 1,
			"empty queue cleanup")) return 1;
	return 0;
}

static int test_multiple_frames_are_freed(void)
{
	reset_environment();
	frames[0] = &frame_storage[0];
	frames[1] = &frame_storage[1];
	frames[2] = &frame_storage[2];
	context.frame_count = 3;
	if (expect(syna_cdev_ioctls_190_19_clear_frames(&context) == 0 &&
			context.frame_count == 0 && frames[0] == NULL && frames[1] == NULL &&
			frames[2] == NULL && freed_payloads == 3 && freed_frames == 3 &&
			free_calls == 6 && lock_calls == 1 && unlock_calls == 1,
			"multiple frame cleanup")) return 1;
	return 0;
}

static int test_restore_threshold_and_block(void)
{
	reset_environment();
	frames[0] = &frame_storage[0];
	context.frame_count = 1;
	context.restore_threshold = 2;
	if (expect(syna_cdev_ioctls_190_19_clear_frames(&context) == 0 &&
			restore_calls == 1 && restore_value == 1,
			"restore threshold")) return 1;
	reset_environment();
	frames[0] = &frame_storage[0];
	context.frame_count = 1;
	context.restore_threshold = 2;
	context.restore_blocked = 1;
	if (expect(syna_cdev_ioctls_190_19_clear_frames(&context) == 0 &&
			restore_calls == 0,
			"restore block")) return 1;
	return 0;
}

static int test_null_payload_and_saturated_count(void)
{
	reset_environment();
	frame_storage[0].payload = NULL;
	frames[0] = &frame_storage[0];
	context.frame_count = 1;
	if (expect(syna_cdev_ioctls_190_19_clear_frames(&context) == 0 &&
			free_calls == 1 && freed_frames == 1 && context.frame_count == 0,
			"null payload cleanup")) return 1;
	reset_environment();
	frames[0] = &frame_storage[0];
	frames[1] = &frame_storage[1];
	frames[2] = &frame_storage[2];
	frames[3] = &frame_storage[3];
	context.frame_count = 9;
	if (expect(syna_cdev_ioctls_190_19_clear_frames(&context) == 0 &&
			context.frame_count == 5 && free_calls == 8 &&
			freed_payloads == 4 && freed_frames == 4,
			"capacity-bounded cleanup")) return 1;
	return 0;
}

int main(void)
{
	if (test_empty_queue_and_lock_order() || test_multiple_frames_are_freed() ||
	    test_restore_threshold_and_block() || test_null_payload_and_saturated_count())
		return 1;
	puts("PASS syna_cdev_ioctls_190_19_clear_frames: 6 cases");
	return 0;
}
