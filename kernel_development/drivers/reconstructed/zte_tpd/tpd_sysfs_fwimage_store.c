ssize_t tpd_sysfs_fwimage_store(struct file *file, struct kobject *kobj,
                                struct bin_attribute *attr, char *buffer,
                                loff_t offset, size_t count)
{
  __int64 cdev;
  struct tpd_firmware_data *fw_data;
  u32 position;
  size_t copied;

  cdev = tpd_cdev;
  mutex_lock(&tp_firmware_data_mutex);
  mutex_lock((struct mutex *)(cdev + 0xc60));
  fw_data = *(struct tpd_firmware_data **)(cdev + 0xc58);
  if ( !fw_data || !fw_data->data )
  {
    printk("\001" "3Need set fw image size first");
    mutex_unlock((struct mutex *)(cdev + 0xc60));
    mutex_unlock(&tp_firmware_data_mutex);
    return -ENOMEM;
  }
  if ( !fw_data->size )
  {
    printk("\001" "3Invalid firmware size");
    mutex_unlock((struct mutex *)(cdev + 0xc60));
    mutex_unlock(&tp_firmware_data_mutex);
    return -EINVAL;
  }

  position = *(u32 *)(cdev + 0x448);
  if ( fw_data->size <= position )
  {
    *(u32 *)(cdev + 0x448) = 0;
    mutex_unlock((struct mutex *)(cdev + 0xc60));
    mutex_unlock(&tp_firmware_data_mutex);
    return -EINVAL;
  }
  if ( position + count <= fw_data->size )
    copied = count;
  else
    copied = fw_data->size - position;

  printk("\001" "6tpd: cdev->fw_data_pos: %d, count:%zu\n", position, copied);
  memcpy((u8 *)fw_data->data + *(u32 *)(cdev + 0x448), buffer, copied);
  *(u32 *)(cdev + 0x448) += copied;
  mutex_unlock((struct mutex *)(cdev + 0xc60));
  mutex_unlock(&tp_firmware_data_mutex);

  return copied;
}
