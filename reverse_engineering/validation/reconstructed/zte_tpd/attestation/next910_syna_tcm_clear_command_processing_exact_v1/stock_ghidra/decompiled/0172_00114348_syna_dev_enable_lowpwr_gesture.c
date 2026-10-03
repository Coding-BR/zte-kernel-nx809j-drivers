
int syna_dev_enable_lowpwr_gesture(undefined8 *param_1,ulong param_2,undefined4 param_3)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 uVar4;
  undefined *puVar5;
  
  if (*(char *)((long)param_1 + 0x581) != '\x01') {
    return 0;
  }
  if ((param_2 & 1) == 0) {
    if (*(byte *)((long)param_1 + 0x2f4) == 0) {
      uVar3 = 0;
      goto LAB_001143ec;
    }
    uVar4 = 0;
    uVar3 = 0;
    puVar5 = &UNK_00136512;
  }
  else {
    uVar3 = 1;
    if ((*(byte *)((long)param_1 + 0x2f4) & 1) != 0) goto LAB_001143ec;
    puVar5 = &DAT_001375f3;
    uVar4 = 1;
  }
  irq_set_irq_wake(*(undefined4 *)(param_1[0x4e] + 0xb8),uVar4);
  _printk(puVar5,"syna_dev_enable_lowpwr_gesture");
  *(undefined1 *)((long)param_1 + 0x2f4) = uVar4;
LAB_001143ec:
  iVar2 = syna_tcm_set_dynamic_config(*param_1,9,uVar3,param_3);
  if (iVar2 < 0) {
    pcVar1 = "enable";
    if ((param_2 & 1) == 0) {
      pcVar1 = "disable";
    }
    _printk(&DAT_00133f56,"syna_dev_enable_lowpwr_gesture",pcVar1);
  }
  else {
    iVar2 = syna_tcm_set_dynamic_config
                      (*param_1,0xfe,
                       *(uint *)((long)param_1 + 0x5c4) | *(int *)(param_1 + 0xb6) << 0xd,param_3);
    if (iVar2 < 0) {
      _printk(&DAT_0013be12,"syna_dev_enable_lowpwr_gesture");
    }
    else {
      _printk(&DAT_0013329f,"syna_dev_enable_lowpwr_gesture",*(undefined4 *)(param_1 + 0xb6),
              *(undefined4 *)((long)param_1 + 0x5c4));
      uVar3 = 0;
      if (*(int *)(param_1 + 0xb7) != 0) {
        uVar3 = 3;
      }
      iVar2 = syna_tcm_set_dynamic_config(*param_1,0xd4,uVar3,param_3);
      if (iVar2 < 0) {
        _printk(&DAT_0013be12,"syna_dev_enable_lowpwr_gesture");
      }
      else {
        _printk(&DAT_0013e036,"syna_dev_enable_lowpwr_gesture",*(undefined4 *)(param_1 + 0xb6));
      }
    }
  }
  return iVar2;
}

