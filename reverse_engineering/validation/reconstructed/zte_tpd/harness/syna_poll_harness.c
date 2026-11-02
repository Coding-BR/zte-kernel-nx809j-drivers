#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef unsigned int __poll_t;

struct file {
	uint8_t reserved[0x20];
	void *private_data;
};

struct poll_table_struct {
	void (*_qproc)(void);
};

struct wait_queue_head {
	uint8_t bytes[0x20];
};

struct syna_tcm {
	uint8_t reserved_0000[0x448];
	struct wait_queue_head frame_wait;
	uint8_t reserved_0468[0x00];
	uint32_t frame_available;
};

#define POLLIN 0x0001u
#define POLLRDNORM 0x0040u

static unsigned int poll_wait_calls;
static struct file *recorded_file;
static struct wait_queue_head *recorded_waitqueue;
static struct poll_table_struct *recorded_poll_table;

void poll_wait(struct file *file, struct wait_queue_head *waitqueue,
	       struct poll_table_struct *poll_table)
{
	poll_wait_calls++;
	recorded_file = file;
	recorded_waitqueue = waitqueue;
	recorded_poll_table = poll_table;
}

#include "../../../../../kernel_development/drivers/reconstructed/zte_tpd/syna_poll.c"

static void check(int condition, const char *name, unsigned int *failures)
{
	printf("%s %s\n", condition ? "PASS" : "FAIL", name);
	if (!condition)
		(*failures)++;
}

static void reset_trace(void)
{
	poll_wait_calls = 0;
	recorded_file = NULL;
	recorded_waitqueue = NULL;
	recorded_poll_table = NULL;
}

int main(void)
{
	struct syna_tcm tcm;
	struct file file;
	struct poll_table_struct table = { 0 };
	unsigned int failures = 0;

	memset(&tcm, 0, sizeof(tcm));
	memset(&file, 0, sizeof(file));
	file.private_data = &tcm;

	reset_trace();
	check(syna_poll(&file, NULL) == 0, "unavailable_without_poll_table", &failures);
	check(poll_wait_calls == 1, "poll_wait_called_with_null_table", &failures);
	check(recorded_file == &file && recorded_waitqueue == &tcm.frame_wait &&
	      recorded_poll_table == NULL, "poll_wait_offsets", &failures);

	reset_trace();
	tcm.frame_available = 1;
	check(syna_poll(&file, &table) == (POLLIN | POLLRDNORM), "available_returns_stock_mask", &failures);
	check(poll_wait_calls == 1, "poll_wait_called_with_table", &failures);
	check(recorded_poll_table == &table, "poll_table_forwarded", &failures);

	printf("SUMMARY tests=6 failures=%u\n", failures);
	return failures ? 1 : 0;
}
