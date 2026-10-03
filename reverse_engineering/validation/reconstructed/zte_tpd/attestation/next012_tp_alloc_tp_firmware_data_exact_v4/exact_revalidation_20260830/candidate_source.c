int tp_alloc_tp_firmware_data(int size)
{
  __int64 cdev;
  struct tpd_firmware_data *fw_data;

  cdev = tpd_cdev;
  fw_data = *(struct tpd_firmware_data **)(tpd_cdev + 0xc58);
  if ( fw_data )
  {
    if ( fw_data->data )
    {
      vfree(fw_data->data);
      (*(struct tpd_firmware_data **)(cdev + 0xc58))->data = NULL;
      (*(struct tpd_firmware_data **)(cdev + 0xc58))->size = 0;
      fw_data = *(struct tpd_firmware_data **)(cdev + 0xc58);
    }
    kfree(fw_data);
    *(struct tpd_firmware_data **)(cdev + 0xc58) = NULL;
  }
  *(u32 *)(cdev + 0x448) = 0;

  fw_data = kmalloc(sizeof(*fw_data), (gfp_t)3520);
  *(struct tpd_firmware_data **)(cdev + 0xc58) = fw_data;
  if ( !fw_data )
  {
    printk("\001" "3tpd:alloc struct firmware failed");
    return -ENOMEM;
  }

  (*(struct tpd_firmware_data **)(cdev + 0xc58))->data =
    vmalloc((long)size + sizeof(*fw_data));
  fw_data = READ_ONCE(*(struct tpd_firmware_data **)(cdev + 0xc58));
  if ( !fw_data->data )
  {
    printk("\001" "3tpd: alloc tp_firmware->data failed");
    kfree(*(struct tpd_firmware_data **)(cdev + 0xc58));
    return -ENOMEM;
  }

  fw_data->size = (long)size;
  memset((*(struct tpd_firmware_data **)(cdev + 0xc58))->data,
         0, (long)size + sizeof(*fw_data));
  return 0;
}
