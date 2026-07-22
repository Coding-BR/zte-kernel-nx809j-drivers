int syna_dev_do_reflash(struct syna_tcm *tcm, bool force)
{
  const struct firmware *firmware = NULL;
  struct tcm_dev *tcm_dev;
  int retval;

  if (!tcm)
    return -EINVAL;

  tcm_dev = tcm->tcm_dev;
  retval = request_firmware(&firmware, "syna_firmware.img",
                            tcm->pdev->dev.parent);
  if (retval < 0) {
    printk("\0013[error] %s: Fail to request %s\n", __func__,
           "syna_firmware.img");
    return retval;
  }

  retval = syna_tcm_do_fw_update(tcm_dev, firmware->data,
                                 firmware->size, 0, force);
  if (retval < 0)
    printk("\0013[error] %s: Fail to do reflash\n", __func__);

  printk("\0016[info ] %s: Firmware mode %02X after reflash\n", __func__,
         tcm_dev->firmware_mode);
  release_firmware(firmware);

  return retval;
}
