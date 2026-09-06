
void tp_free_tp_firmware_data(void)

{
  long lVar1;
  long lVar2;
  
  lVar1 = tpd_cdev;
  lVar2 = *(long *)(tpd_cdev + 0xc58);
  if (lVar2 != 0) {
    if (*(long *)(lVar2 + 8) != 0) {
      vfree(*(long *)(lVar2 + 8));
      *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
      **(undefined8 **)(lVar1 + 0xc58) = 0;
      lVar2 = *(long *)(lVar1 + 0xc58);
    }
    kfree(lVar2);
    *(undefined8 *)(lVar1 + 0xc58) = 0;
  }
  *(undefined4 *)(lVar1 + 0x448) = 0;
  return;
}

