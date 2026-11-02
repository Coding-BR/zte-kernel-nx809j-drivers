typedef unsigned char u8;
typedef unsigned int u32;

struct tcm_dev;

extern int syna_tcm_erase_mtp_data(struct tcm_dev *tcm,
					   unsigned int delay_mode);

int syna_tcm_erase_mtp_data_aarch64_probe(struct tcm_dev *tcm)
{
	return syna_tcm_erase_mtp_data(tcm, 1U);
}
