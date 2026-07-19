int syna_tcm_v1_set_up_max_rw_size(
    struct tcm_dev *tcm, u32 max_read_size, u32 max_write_size)
{
  u32 identify_max_write_size;
  u32 host_max_read_size;
  u32 current_max_read_size;
  u32 selected_read_size;
  const char *error;
  int retval = 0;

  if (!tcm)
  {
    error = "\x01" "3[error] %s: Invalid tcm device handle\n";
    goto error;
  }
  if (tcm->protocol_version != 1)
  {
    error = "\x01" "3[error] %s: Invalid identify report stored\n";
    goto error;
  }

  identify_max_write_size = tcm->identify_max_write_size;
  host_max_read_size = tcm->host_max_read_size;
  if (identify_max_write_size >= max_read_size)
  {
#ifdef __aarch64__
    selected_read_size = identify_max_write_size;
    asm volatile(
        "cmp %w[selected], %w[host]\n\t"
        "ldr %w[current_value], [%[device], #%c[max_read_offset]]\n\t"
        "csel %w[selected], %w[selected], %w[host], lo"
        : [selected] "+r"(selected_read_size),
          [current_value] "=r"(current_max_read_size)
        : [host] "r"(host_max_read_size), [device] "r"(tcm),
          [max_read_offset] "i"(__builtin_offsetof(
              struct tcm_dev, max_read_size))
        : "cc", "memory");
#else
    current_max_read_size = tcm->max_read_size;
    selected_read_size = identify_max_write_size < host_max_read_size
                           ? identify_max_write_size
                           : host_max_read_size;
#endif
    if (selected_read_size >= max_read_size)
      selected_read_size = max_read_size;
    if (!host_max_read_size)
      selected_read_size = max_read_size;
    if (current_max_read_size != selected_read_size)
      tcm->max_read_size = selected_read_size;
  }

  if (host_max_read_size && tcm->host_max_write_size < max_write_size)
    max_write_size = tcm->host_max_write_size;
  if (tcm->max_write_size != max_write_size)
    tcm->max_write_size = max_write_size;
  goto exit;

error:
  printk(error, "syna_tcm_v1_set_up_max_rw_size");
  retval = -241;
exit:
  barrier();
  return retval;
}
