
undefined8 zte_ramdisk_reboot_write(undefined1 *param_1,int param_2)

{
  long lVar1;
  undefined8 uVar2;
  
  lVar1 = ramdisk_rb;
  uVar2 = 0xffffffff;
  if (((param_1 != (undefined1 *)0x0) && (param_2 == 1)) && (ramdisk_rb != 0)) {
    saved_ramdisk_buf = *param_1;
    if (*(ulong *)(ramdisk_rb + 0x68) < 0xfffffffffffff001) {
      _printk(&DAT_001011cb,saved_ramdisk_buf);
      nvmem_cell_write(*(undefined8 *)(lVar1 + 0x68),&saved_ramdisk_buf,1);
    }
    else {
      _printk(&DAT_00100e17);
    }
    uVar2 = 0;
  }
  return uVar2;
}

