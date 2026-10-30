
undefined8 aw9620x_en_active(long param_1)

{
  int iVar1;
  
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","aw9620x_en_active",
              0xb85);
  iVar1 = aw9620x_i2c_write(param_1,0x4408,2);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x10) = 2;
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] addr: 0x%x data: 0x%x\n",
                "aw9620x_en_active",0xb8e,0x4408,1);
    iVar1 = aw9620x_i2c_write(param_1,0x4414,*(undefined4 *)(param_1 + 0x14));
    if (iVar1 == 0) {
      _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] addr: 0x%x data: 0x%x\n",
                  "aw9620x_en_active",0xb96,0x4414,*(undefined4 *)(param_1 + 0x14));
      if (*(char *)(param_1 + 5) != '\x01') {
        return 0;
      }
      _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enable_irq ok!!!\n",
                  "aw9620x_en_active",0xb99);
      enable_irq(*(undefined4 *)(param_1 + 0x1c));
      *(undefined1 *)(param_1 + 5) = 0;
      return 0;
    }
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] addr: 0x%x data: 0x%x\n",
                "aw9620x_en_active",0xb93,0x4414,*(undefined4 *)(param_1 + 0x14));
  }
  else {
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] write REG_CMD err\n",
                "aw9620x_en_active",0xb8a);
  }
  return 0xffffffff;
}

