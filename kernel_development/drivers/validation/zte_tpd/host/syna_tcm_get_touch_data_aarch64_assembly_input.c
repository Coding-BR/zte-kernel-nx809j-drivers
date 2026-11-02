struct tcm_dev;

extern int syna_tcm_get_touch_data(const unsigned char *report_data,
					   unsigned int report_size,
					   unsigned int bit_offset,
					   unsigned int bit_count,
					   unsigned int *value);

int syna_tcm_get_touch_data_aarch64_probe(const unsigned char *data,
							 unsigned int *value)
{
	return syna_tcm_get_touch_data(data, 8U, 3U, 13U, value);
}
