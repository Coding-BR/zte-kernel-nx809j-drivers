
undefined8 gpio_keys_open(long param_1)

{
  undefined8 uVar1;
  long lVar2;
  code *pcVar3;
  long lVar4;
  long *plVar5;
  long *plVar6;
  long lVar7;
  
  plVar6 = *(long **)(param_1 + 0x2c8);
  lVar2 = *plVar6;
  pcVar3 = *(code **)(lVar2 + 0x18);
  if (pcVar3 != (code *)0x0) {
    if (*(int *)(pcVar3 + -4) != 0x2a703c0b) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x1015b8);
      (*pcVar3)();
    }
    uVar1 = (*pcVar3)(*(undefined8 *)(param_1 + 0x290));
    if ((int)uVar1 != 0) {
      return uVar1;
    }
    lVar2 = *plVar6;
  }
  lVar4 = plVar6[1];
  if (0 < *(int *)(lVar2 + 8)) {
    lVar7 = 0;
    plVar5 = plVar6 + 9;
    do {
      if (plVar5[2] != 0) {
        gpio_keys_gpio_report_event(plVar5);
        lVar2 = *plVar6;
      }
      lVar7 = lVar7 + 1;
      plVar5 = plVar5 + 0x22;
    } while (lVar7 < *(int *)(lVar2 + 8));
  }
  input_event(lVar4,0,0,0);
  return 0;
}

