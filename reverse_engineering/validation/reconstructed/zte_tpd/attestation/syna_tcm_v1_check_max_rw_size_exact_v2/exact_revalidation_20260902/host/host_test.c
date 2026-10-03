#include <stdint.h>
#include <stdio.h>

struct tcm_contract {
	uint32_t max_read_size;
	uint32_t max_write_size;
	uint32_t host_max_read_size;
	uint32_t host_max_write_size;
	uint8_t reserved[0x3c];
	uint8_t protocol_version;
	uint8_t reserved2[0x15];
	uint16_t identify_max_write_size;
};

static unsigned int printk_calls;

static int contract_check(struct tcm_contract *tcm)
{
	uint32_t selected;

	if (!tcm || tcm->protocol_version != 1 || !tcm->identify_max_write_size) {
		printk_calls++;
		return -241;
	}
	selected = tcm->identify_max_write_size;
	if (tcm->host_max_read_size && tcm->host_max_read_size < selected)
		selected = tcm->host_max_read_size;
	if (tcm->max_read_size != selected)
		tcm->max_read_size = selected;
	if (tcm->host_max_read_size && tcm->max_write_size > tcm->host_max_write_size)
		tcm->max_write_size = tcm->host_max_write_size;
	return 0;
}

int main(void)
{
	struct tcm_contract tcm = { .protocol_version = 1, .identify_max_write_size = 1024,
		.host_max_read_size = 512, .host_max_write_size = 256, .max_write_size = 1024 };

	if (contract_check(NULL) != -241 || printk_calls != 1) return 1;
	tcm.protocol_version = 0;
	if (contract_check(&tcm) != -241 || printk_calls != 2) return 1;
	tcm.protocol_version = 1; tcm.identify_max_write_size = 0;
	if (contract_check(&tcm) != -241 || printk_calls != 3) return 1;
	tcm.identify_max_write_size = 1024;
	if (contract_check(&tcm) || tcm.max_read_size != 512 || tcm.max_write_size != 256) return 1;
	tcm.host_max_read_size = 0; tcm.max_read_size = 1; tcm.max_write_size = 1024;
	if (contract_check(&tcm) || tcm.max_read_size != 1024 || tcm.max_write_size != 1024) return 1;
	puts("PASS syna_tcm_v1_check_max_rw_size contract test (5 cases)");
	return 0;
}
