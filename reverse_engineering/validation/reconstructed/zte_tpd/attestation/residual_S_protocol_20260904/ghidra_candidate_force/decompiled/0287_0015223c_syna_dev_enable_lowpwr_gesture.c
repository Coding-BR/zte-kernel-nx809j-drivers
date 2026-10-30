
undefined8 syna_dev_enable_lowpwr_gesture(undefined8 *param_1,ulong param_2,undefined4 param_3)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  undefined *puVar4;
  
  if (*(char *)((long)param_1 + 0x581) != '\x01') {
    return 0;
  }
  if ((param_2 & 1) == 0) {
    if (*(byte *)((long)param_1 + 0x2f4) == 0) {
      uVar3 = 0;
      goto LAB_001522e0;
    }
    uVar3 = 0;
    puVar4 = &UNK_0017fc6d;
  }
  else {
    uVar3 = 1;
    if ((*(byte *)((long)param_1 + 0x2f4) & 1) != 0) {
LAB_001522e0:
      iVar2 = syna_tcm_set_dynamic_config(*param_1,9,uVar3,param_3);
      if (iVar2 < 0) {
        pcVar1 = "enable";
        if ((param_2 & 1) == 0) {
          pcVar1 = "disable";
        }
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017ec4b,"syna_dev_enable_lowpwr_gesture",pcVar1);
      }
      iVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xfe,
                         *(uint *)((long)param_1 + 0x5c4) | *(int *)(param_1 + 0xb6) << 0xd,param_3)
      ;
      if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001822e5,"syna_dev_enable_lowpwr_gesture");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e6a7,"syna_dev_enable_lowpwr_gesture",*(undefined4 *)(param_1 + 0xb6),
              *(undefined4 *)((long)param_1 + 0x5c4));
    }
    puVar4 = &DAT_0018041e;
    uVar3 = 1;
  }
  irq_set_irq_wake(*(undefined4 *)(param_1[0x4e] + 0xb8),uVar3);
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_dev_enable_lowpwr_gesture");
}

