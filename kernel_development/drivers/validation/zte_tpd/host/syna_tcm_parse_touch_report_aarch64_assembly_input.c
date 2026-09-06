typedef unsigned char u8;
typedef unsigned int u32;

struct tcm_dev;

extern int syna_tcm_parse_touch_report(struct tcm_dev *tcm,
						const u8 *report,
						u32 report_size,
						void *output);

int syna_tcm_parse_touch_report_aarch64_probe(struct tcm_dev *tcm,
							      const u8 *report,
							      void *output)
{
	return syna_tcm_parse_touch_report(tcm, report, 8U, output);
}
