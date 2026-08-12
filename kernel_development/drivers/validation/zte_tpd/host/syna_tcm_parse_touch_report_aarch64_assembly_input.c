typedef unsigned char u8;
typedef unsigned int u32;

extern long long syna_tcm_parse_touch_report(long long tcm,
						 long long report,
						 unsigned int report_size,
						 long long output);

long long syna_tcm_parse_touch_report_aarch64_probe(long long tcm,
							    long long report,
							    long long output)
{
	return syna_tcm_parse_touch_report(tcm, report, 8U, output);
}
