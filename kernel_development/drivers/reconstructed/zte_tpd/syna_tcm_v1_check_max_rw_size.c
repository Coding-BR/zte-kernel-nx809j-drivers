int syna_tcm_v1_check_max_rw_size(struct tcm_dev *tcm)
{
  u32 identify_max_write_size;
  u32 host_max_read_size;
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
  if (!identify_max_write_size)
  {
    error = "\x01" "3[error] %s: Invalid max write size from identify report\n";
    goto error;
  }

  host_max_read_size = tcm->host_max_read_size;
  OPTIMIZER_HIDE_VAR(identify_max_write_size);
  OPTIMIZER_HIDE_VAR(host_max_read_size);
  selected_read_size = identify_max_write_size < host_max_read_size
                           ? identify_max_write_size
                           : host_max_read_size;
  if (host_max_read_size)
    identify_max_write_size = selected_read_size;
  if (tcm->max_read_size != identify_max_write_size)
    tcm->max_read_size = identify_max_write_size;

  if (host_max_read_size &&
      tcm->max_write_size > tcm->host_max_write_size)
    tcm->max_write_size = tcm->host_max_write_size;
  goto exit;

error:
  printk(error, "syna_tcm_v1_check_max_rw_size");
  retval = -241;
exit:
  barrier();
  return retval;
}
