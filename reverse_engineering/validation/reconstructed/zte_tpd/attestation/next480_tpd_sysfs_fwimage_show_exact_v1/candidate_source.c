ssize_t tpd_sysfs_fwimage_show(struct file *file, struct kobject *kobj,
                               struct bin_attribute *attr, char *buffer,
                               loff_t offset, size_t count)
{
  __int64 cdev;
  struct tpd_firmware_data *fw_data;
  u32 position;
  size_t fw_size;

  cdev = tpd_cdev;
  fw_data = *(struct tpd_firmware_data **)(tpd_cdev + 0xc58);
  if ( !fw_data || !fw_data->data )
  {
    printk("\001" "3Need set fw image size first");
    return -ENOMEM;
  }
  if ( !fw_data->size )
  {
    printk("\001" "3Invalid firmware size");
    return -EINVAL;
  }

  mutex_lock((struct mutex *)(tpd_cdev + 0xc60));
  fw_data = *(struct tpd_firmware_data **)(cdev + 0xc58);
  position = *(u32 *)(cdev + 0x448);
  fw_size = fw_data->size;
  if ( fw_size <= position )
  {
    *(u32 *)(cdev + 0x448) = 0;
    vfree(fw_data->data);
    (*(struct tpd_firmware_data **)(cdev + 0xc58))->data = NULL;
    kfree(*(struct tpd_firmware_data **)(cdev + 0xc58));
    *(struct tpd_firmware_data **)(cdev + 0xc58) = NULL;
    printk("\001" "6tpd, tp_firmware free.\n");
    mutex_unlock((struct mutex *)(cdev + 0xc60));
    return 0;
  }

  fw_data = READ_ONCE(*(struct tpd_firmware_data **)(cdev + 0xc58));
  if ( position + count > fw_size )
    count = fw_size - position;
  memcpy(buffer, (u8 *)fw_data->data + *(u32 *)(cdev + 0x448), count);
  *(u32 *)(cdev + 0x448) += count;
  mutex_unlock((struct mutex *)(cdev + 0xc60));

  return count;
}
