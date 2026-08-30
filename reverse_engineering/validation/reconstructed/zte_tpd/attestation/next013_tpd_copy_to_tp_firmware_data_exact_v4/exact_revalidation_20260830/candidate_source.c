int tpd_copy_to_tp_firmware_data(char *data)
{
  __int64 cdev;
  struct tpd_firmware_data *fw_data;
  size_t fw_size;
  u32 position;
  int length;
  int copied;

  cdev = tpd_cdev;
  fw_data = *(struct tpd_firmware_data **)(tpd_cdev + 0xc58);
  if ( !fw_data || !fw_data->data )
  {
    printk("\001" "3Need set fw image size first");
    return -ENOMEM;
  }
  fw_size = fw_data->size;
  if ( !fw_size )
  {
    printk("\001" "3Invalid firmware size");
    return -EINVAL;
  }

  position = *(u32 *)(tpd_cdev + 0x448);
  if ( fw_size <= position )
    return 0;

  length = strlen(data);
  if ( fw_size < position + length )
    copied = (int)fw_size - position;
  else
    copied = length;
  fw_data = READ_ONCE(*(struct tpd_firmware_data **)(cdev + 0xc58));
  memcpy((u8 *)fw_data->data + *(u32 *)(cdev + 0x448), data, (long)copied);
  *(u32 *)(cdev + 0x448) += copied;

  return copied;
}
