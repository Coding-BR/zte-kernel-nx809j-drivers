#include <stdint.h>
#include <stdio.h>
#include <string.h>

struct tcm_dev;
typedef void (*tcm_lifecycle_fn)(struct tcm_dev *tcm);

struct tcm_dev {
	unsigned char reserved[0x3a0];
	tcm_lifecycle_fn terminate;
};

typedef int32_t _DWORD;

#define __break(value) do { (void)(value); } while (0)
#include "../../../reconstructed/zte_tpd/syna_tcm_clear_command_processing.c"
#undef __break

static unsigned int callback_calls;
static struct tcm_dev *callback_argument;

static void terminate_callback(struct tcm_dev *tcm)
{
	callback_calls++;
	callback_argument = tcm;
}

static int test_null_tcm(void)
{
	callback_calls = 0;
	callback_argument = NULL;
	syna_tcm_clear_command_processing(NULL);
	return callback_calls == 0 && callback_argument == NULL ? 0 : 1;
}

static int test_null_terminate(void)
{
	struct tcm_dev tcm;

	memset(&tcm, 0, sizeof(tcm));
	callback_calls = 0;
	callback_argument = NULL;
	syna_tcm_clear_command_processing(&tcm);
	return callback_calls == 0 && callback_argument == NULL ? 0 : 1;
}

static int test_terminate_callback(void)
{
	struct tcm_dev tcm;

	memset(&tcm, 0, sizeof(tcm));
	tcm.terminate = terminate_callback;
	callback_calls = 0;
	callback_argument = NULL;
	syna_tcm_clear_command_processing(&tcm);
	return callback_calls == 1 && callback_argument == &tcm ? 0 : 1;
}

int main(void)
{
	if (test_null_tcm() || test_null_terminate() || test_terminate_callback())
		return 1;

	printf("PASS syna_tcm_clear_command_processing host tests (3 cases)\n");
	return 0;
}
