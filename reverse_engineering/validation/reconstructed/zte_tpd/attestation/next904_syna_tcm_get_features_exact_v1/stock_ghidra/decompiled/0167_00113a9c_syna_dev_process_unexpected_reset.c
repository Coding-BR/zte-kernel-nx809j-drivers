
undefined8 syna_dev_process_unexpected_reset(void)

{
  undefined8 uVar1;
  undefined *puVar2;
  long in_x3;
  
  if (in_x3 == 0) {
    puVar2 = &DAT_00139a47;
LAB_00113ad8:
    _printk(puVar2,"syna_dev_process_unexpected_reset");
    uVar1 = 0xffffffea;
  }
  else {
    if (*(int *)(in_x3 + 0x57c) == 1) {
      _printk(&DAT_00132d01,"syna_dev_process_unexpected_reset");
      if (*(long *)(in_x3 + 0x548) == 0) {
        puVar2 = &DAT_0013cd2c;
        goto LAB_00113ad8;
      }
      if (*(int *)(in_x3 + 0x520) == 0) {
        *(undefined4 *)(in_x3 + 0x520) = 1;
        queue_work_on(0x20,*(long *)(in_x3 + 0x548),in_x3 + 0x528);
      }
    }
    uVar1 = 0;
  }
  return uVar1;
}

