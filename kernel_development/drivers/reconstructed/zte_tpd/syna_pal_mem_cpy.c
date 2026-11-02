void syna_pal_mem_cpy(void *destination, unsigned int source_size,
		      void *source, unsigned int destination_size,
		      unsigned int copy_size)
{
  if (!destination || !source)
    return;

	if (copy_size > source_size || copy_size > destination_size) {
		printk("\0013[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n",
		       "syna_pal_mem_cpy", destination_size, source_size, copy_size);
		return;
	}

  memcpy(destination, source, copy_size);
}
