
undefined8 syna_dev_suspend(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  undefined *puVar3;
  undefined4 uVar4;
  code *pcVar5;
  long *plVar6;
  long lVar7;
  
  plVar6 = *(long **)(param_1 + 0x98);
  if (*(int *)((long)plVar6 + 0x57c) == 1) {
    lVar7 = plVar6[0x4e];
    _printk(&DAT_0013cdaf,"syna_dev_suspend");
    *(bool *)((long)plVar6 + 0x581) = (int)plVar6[0xb6] != 0 || *(int *)((long)plVar6 + 0x5c4) != 0;
    _printk(&DAT_0013520e,"syna_dev_suspend");
    if (plVar6 != (long *)0x0) {
      if ((*(int *)(plVar6[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar6[0x4e] + 0xbc) & 1) == 0)) {
        uVar4 = *(undefined4 *)(*plVar6 + 0x20c);
      }
      else {
        uVar4 = 0;
      }
      if (*(char *)((long)plVar6 + 0x581) == '\x01') {
        iVar1 = syna_dev_enable_lowpwr_gesture(plVar6,1);
        if (-1 < iVar1) {
LAB_00113490:
          msleep(100);
LAB_00113498:
          *(undefined4 *)((long)plVar6 + 0x57c) = 2;
          syna_dev_free_input_events(plVar6);
          syna_tcm_clear_command_processing(*plVar6);
          if (((*(byte *)((long)plVar6 + 0x581) & 1) == 0) &&
             (pcVar5 = *(code **)(lVar7 + 0x40), pcVar5 != (code *)0x0)) {
            if (*(int *)(pcVar5 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
              pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x1134e0);
              (*pcVar5)();
            }
            (*pcVar5)(lVar7 + 8,0);
          }
          *(undefined4 *)(plVar6 + 0xbc) = 0;
          _printk(&DAT_00136bd9,"syna_dev_suspend",*(undefined4 *)((long)plVar6 + 0x57c));
          goto LAB_001133a0;
        }
        puVar3 = &DAT_0013820a;
      }
      else {
        if ((*(byte *)(plVar6 + 0xb0) & 1) != 0) goto LAB_00113498;
        iVar1 = syna_tcm_sleep(*plVar6,1,uVar4);
        if (-1 < iVar1) goto LAB_00113490;
        puVar3 = &DAT_00138240;
      }
      _printk(puVar3,"syna_dev_enter_lowpwr_sensing");
    }
    _printk(&DAT_0013e068,"syna_dev_suspend");
    uVar2 = 0xfffffffb;
  }
  else {
LAB_001133a0:
    uVar2 = 0;
  }
  return uVar2;
}

