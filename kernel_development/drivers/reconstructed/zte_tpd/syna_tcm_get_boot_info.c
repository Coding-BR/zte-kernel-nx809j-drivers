int syna_tcm_get_boot_info(struct tcm_dev *tcm,
                           struct tcm_boot_info *boot_info,
                           unsigned int timeout_ms)
{
  unsigned int copy_length;
  int retval;

  if (!tcm)
  {
    printk("\x01" "3[error] %s: Invalid tcm device handle\n",
           "syna_tcm_get_boot_info");
    return -241;
  }
  if (tcm->firmware_mode != 0x0b)
  {
    printk("\x01" "3[error] %s: Device is not in bootloader mode, mode: %x\n",
           "syna_tcm_get_boot_info", tcm->firmware_mode);
    return -241;
  }

  if (!timeout_ms)
  {
    if (!(tcm->transport->flags & 0x01))
    {
      timeout_ms = tcm->command_delay_ms;
      printk("\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n",
             "syna_tcm_get_boot_info");
    }
    else
    {
      timeout_ms = 0;
    }
  }

  retval = tcm->write_message(tcm, 0x10, NULL, 0, NULL, timeout_ms);
  if (retval < 0)
  {
    printk("\x01" "3[error] %s: Fail to send command 0x%02x\n",
           "syna_tcm_get_boot_info", 0x10);
    return retval;
  }

  copy_length = tcm->response.data_length < sizeof(tcm->boot_info)
                    ? tcm->response.data_length
                    : sizeof(tcm->boot_info);
  if (tcm->response.lock_depth)
    printk("\x01" "3[error] %s: Buffer access out-of balance, %d\n",
           "syna_tcm_buf_lock", tcm->response.lock_depth);
  mutex_lock((struct mutex *)tcm->response.mutex);
  ++tcm->response.lock_depth;

  if (!tcm->response.data)
    goto copy_error;
  if (copy_length > tcm->response.buf_size)
  {
    printk("\x01" "3[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n",
           "syna_pal_mem_cpy", tcm->response.buf_size,
           (unsigned int)sizeof(tcm->boot_info), copy_length);
    goto copy_error;
  }
  memcpy(&tcm->boot_info, tcm->response.data, copy_length);

  if (tcm->response.lock_depth == 1)
  {
    tcm->response.lock_depth = 0;
  }
  else
  {
    printk("\x01" "3[error] %s: Buffer access out-of balance, %d\n",
           "syna_tcm_buf_unlock", tcm->response.lock_depth);
    --tcm->response.lock_depth;
  }
  mutex_unlock((struct mutex *)tcm->response.mutex);

  if (boot_info)
    memcpy(boot_info, &tcm->boot_info, copy_length);
  return 0;

copy_error:
  printk("\x01" "3[error] %s: Fail to copy boot info\n",
         "syna_tcm_get_boot_info");
  if (tcm->response.lock_depth == 1)
  {
    tcm->response.lock_depth = 0;
  }
  else
  {
    printk("\x01" "3[error] %s: Buffer access out-of balance, %d\n",
           "syna_tcm_buf_unlock", tcm->response.lock_depth);
    --tcm->response.lock_depth;
  }
  mutex_unlock((struct mutex *)tcm->response.mutex);
  return -22;
}
