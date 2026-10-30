typedef unsigned char u8;

struct device;

extern void syna_pal_mem_free(void *memory);

void syna_pal_mem_free_aarch64_probe(void *memory)
{
	syna_pal_mem_free(memory);
}
