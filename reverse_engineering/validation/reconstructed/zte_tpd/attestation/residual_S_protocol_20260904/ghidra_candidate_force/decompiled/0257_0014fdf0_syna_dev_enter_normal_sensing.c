
undefined8 syna_dev_enter_normal_sensing(long *param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined4 uVar3;
  
  if ((*(int *)(param_1[0x4e] + 0xb8) == 0) || ((*(byte *)(param_1[0x4e] + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*param_1 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  iVar1 = syna_tcm_sleep(*param_1,0,uVar3);
  if (-1 < iVar1) {
    if (*(char *)((long)param_1 + 0x581) == '\x01') {
      iVar1 = syna_dev_enable_lowpwr_gesture(param_1,0,uVar3);
      if (iVar1 < 0) {
        puVar2 = &DAT_0016cdd8;
        goto LAB_0014fe88;
      }
      msleep(100);
    }
    return 0;
  }
  puVar2 = &DAT_0016d572;
LAB_0014fe88:
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_dev_enter_normal_sensing");
}

