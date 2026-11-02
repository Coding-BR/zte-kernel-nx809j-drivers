
void nav_event_input(int param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  if (param_1 < 6) {
    if (param_1 < 3) {
      if (param_1 == 1) {
        puVar1 = &DAT_00103507;
LAB_0010092c:
        _printk(puVar1,"nav_event_input");
        return;
      }
      if (param_1 == 2) {
        puVar1 = &DAT_00103ce1;
        goto LAB_0010092c;
      }
    }
    else {
      if (param_1 == 3) {
        uVar2 = 0x67;
        goto LAB_00100804;
      }
      if (param_1 == 4) {
        _printk(&DAT_00102d98,"nav_event_input");
        uVar2 = 0x6c;
        goto LAB_00100804;
      }
      if (param_1 == 5) {
        _printk(&DAT_001035d6,"nav_event_input");
        uVar2 = 0x69;
        goto LAB_00100804;
      }
    }
  }
  else if (param_1 < 8) {
    if (param_1 == 7) {
      uVar2 = 0x72;
      goto LAB_00100804;
    }
    if (param_1 == 6) {
      _printk(&DAT_00103639,"nav_event_input");
      uVar2 = 0x6a;
      goto LAB_00100804;
    }
  }
  else {
    if (param_1 == 8) {
      _printk(&DAT_00102b4d,"nav_event_input");
      uVar2 = 0xd8;
      goto LAB_00100804;
    }
    if (param_1 == 9) {
      _printk(&DAT_001030f9,"nav_event_input");
      uVar2 = 0xd9;
      goto LAB_00100804;
    }
    if (param_1 == 10) {
      _printk(&DAT_001036b3,"nav_event_input");
      uVar2 = 0x73;
      goto LAB_00100804;
    }
  }
  _printk(&DAT_001031da,"nav_event_input");
  uVar2 = 0;
LAB_00100804:
  input_event(DAT_00103df0,1,uVar2,1);
  input_event(DAT_00103df0,0,0,0);
  input_event(DAT_00103df0,1,uVar2,0);
  input_event(DAT_00103df0,0,0,0);
  return;
}

