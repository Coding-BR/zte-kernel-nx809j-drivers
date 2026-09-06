int syna_pal_mem_cpy_1(void *destination, unsigned int destination_size,
                       const void *source, unsigned int source_size,
                       unsigned int copy_size)
{
  if (!destination)
    return -22;

  if (copy_size > destination_size || copy_size > source_size) {
    printk("\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n",
           "syna_pal_mem_cpy", source_size, destination_size, copy_size);
    return -22;
  }

  memcpy(destination, source, copy_size);
  return 0;
}
