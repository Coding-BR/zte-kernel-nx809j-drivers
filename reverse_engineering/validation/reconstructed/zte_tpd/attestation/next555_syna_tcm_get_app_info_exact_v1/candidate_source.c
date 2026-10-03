int syna_tcm_get_app_info(struct tcm_dev *tcm,
                          struct tcm_application_info *app_info,
                          unsigned int timeout_ms)
{
  unsigned int copy_length;
  unsigned int status;
  int retval;

  if (!tcm)
  {
    printk("\x01" "3[error] %s: Invalid tcm device handle\n",
           "syna_tcm_get_app_info");
    return -241;
  }
  if (tcm->firmware_mode != 0x01)
  {
    printk("\x01" "3[error] %s: Device is not in application fw mode, mode: %x\n",
           "syna_tcm_get_app_info", tcm->firmware_mode);
    return -241;
  }

  if (!timeout_ms)
  {
    if (!(tcm->transport->flags & 0x01))
    {
      timeout_ms = tcm->command_delay_ms;
      printk("\x01" "5[info ] %s: No support of IRQ control, use polling mode instead\n",
             "syna_tcm_get_app_info");
    }
    else
    {
      timeout_ms = 0;
    }
  }

  retval = tcm->write_message(tcm, 0x20, NULL, 0, NULL, timeout_ms);
  if (retval < 0)
  {
    printk("\x01" "3[error] %s: Fail to send command 0x%02x\n",
           "syna_tcm_get_app_info", 0x20);
    return retval;
  }

  copy_length = tcm->response.data_length < sizeof(tcm->application_info)
                    ? tcm->response.data_length
                    : sizeof(tcm->application_info);
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
           (unsigned int)sizeof(tcm->application_info), copy_length);
    goto copy_error;
  }
  memcpy(&tcm->application_info, tcm->response.data, copy_length);

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

  if (app_info)
    memcpy(app_info, &tcm->application_info, copy_length);

  status = *(u16 *)tcm->application_info.status;
  if (!status)
  {
    tcm->max_x = *(u16 *)tcm->application_info.max_x;
    tcm->max_y = *(u16 *)tcm->application_info.max_y;
    tcm->num_of_image_cols =
        *(u16 *)tcm->application_info.num_of_image_cols;
    tcm->max_objects = *(u16 *)tcm->application_info.max_objects;
    tcm->num_of_image_rows =
        *(u16 *)tcm->application_info.num_of_image_rows;
    *(tcm_unaligned_u64 *)&tcm->customer_config_id[8] =
        *(tcm_unaligned_u64 *)&tcm->application_info.customer_config_id[8];
    *(tcm_unaligned_u64 *)&tcm->customer_config_id[0] =
        *(tcm_unaligned_u64 *)&tcm->application_info.customer_config_id[0];
    return 0;
  }

  if (status == 0xff)
    printk("\x01" "3[error] %s: Bad application firmware, status: 0x%x\n",
           "syna_tcm_get_app_info", status);
  else
    printk("\x01" "3[error] %s: Incorrect application status, 0x%x\n",
           "syna_tcm_get_app_info", status);
  return -242;

copy_error:
  printk("\x01" "3[error] %s: Fail to copy application info\n",
         "syna_tcm_get_app_info");
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
