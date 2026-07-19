int syna_tcm_identify(struct tcm_dev *tcm,
                      struct tcm_identification_info *identify_info,
                      unsigned int timeout_ms)
{
  const u8 *response_data;
  unsigned int copy_length;
  int retval;

  if (!tcm)
  {
    printk("\x01" "3[error] %s: Invalid tcm device handle\n",
           "syna_tcm_identify");
    return -241;
  }

  if (!timeout_ms)
  {
    if (__builtin_expect_with_probability(tcm->transport->flags & 0x01,
                                          1, 0.51))
    {
      timeout_ms = 0;
    }
    else
    {
      timeout_ms = tcm->command_delay_ms;
      printk("\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n",
             "syna_tcm_identify");
    }
  }

  retval = tcm->write_message(tcm, 0x02, NULL, 0, NULL, timeout_ms);
  if (retval < 0)
  {
    printk("\x01" "3[error] %s: Fail to send command 0x%02x\n",
           "syna_tcm_identify", 0x02);
    return retval;
  }

  tcm->firmware_mode = tcm->identification_info.mode;
  printk("\x01" "6[info ] %s: TCM Fw mode: 0x%02x, TCM ver.: %d\n",
         "syna_tcm_identify", tcm->identification_info.mode,
         tcm->identification_info.version);
  if (!identify_info)
    return retval;

  if (tcm->response.lock_depth)
    printk("\x01" "3[error] %s: Buffer access out-of balance, %d\n",
           "syna_tcm_buf_lock", tcm->response.lock_depth);
  mutex_lock((struct mutex *)tcm->response.mutex);
  ++tcm->response.lock_depth;
  copy_length = tcm->response.data_length < sizeof(*identify_info)
                    ? tcm->response.data_length
                    : sizeof(*identify_info);
  response_data = tcm->response.data;

  if (!response_data)
    goto copy_error;
  if (copy_length > tcm->response.buf_size)
  {
    printk("\x01" "3[error] %s: Invalid size. src:%d, dest:%d, size to copy:%d\n",
           "syna_pal_mem_cpy", tcm->response.buf_size,
           (unsigned int)sizeof(*identify_info), copy_length);
    goto copy_error;
  }
  memcpy(identify_info, response_data, copy_length);

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
  return 0;

copy_error:
  printk("\x01" "3[error] %s: Fail to copy identify info to caller\n",
         "syna_tcm_identify");
  syna_tcm_buf_unlock((__int64)&tcm->response);
  return -22;
}
