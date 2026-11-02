struct syna_pal_mem_pair {
  unsigned long long low;
  unsigned long long high;
};

void syna_pal_mem_cpy_0(unsigned long long *destination, unsigned int size,
                        unsigned long long *source)
{
  if (!destination || !source)
    return;

  if (size < 16) {
    printk("\x01" "3[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n",
           "syna_pal_mem_cpy", 16, size, 16);
    return;
  }

  *(struct syna_pal_mem_pair *)destination =
      *(const struct syna_pal_mem_pair *)source;
}
