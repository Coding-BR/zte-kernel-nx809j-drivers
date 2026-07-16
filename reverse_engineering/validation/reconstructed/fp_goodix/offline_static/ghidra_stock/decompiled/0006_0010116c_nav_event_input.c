
void nav_event_input(int param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  if (param_1 < 6) {
    if (param_1 < 3) {
      if (param_1 == 1) {
        puVar1 = &DAT_0010360b;
LAB_001012d8:
        _printk(puVar1,"nav_event_input");
        return;
      }
      if (param_1 == 2) {
        puVar1 = &DAT_00103e13;
        goto LAB_001012d8;
      }
    }
    else {
      if (param_1 == 3) {
        uVar2 = 0x67;
        goto LAB_001011b0;
      }
      if (param_1 == 4) {
        _printk(&DAT_00102ec1,"nav_event_input");
        uVar2 = 0x6c;
        goto LAB_001011b0;
      }
      if (param_1 == 5) {
        _printk(&DAT_001036fe,"nav_event_input");
        uVar2 = 0x69;
        goto LAB_001011b0;
      }
    }
  }
  else if (param_1 < 8) {
    if (param_1 == 7) {
      uVar2 = 0x72;
      goto LAB_001011b0;
    }
    if (param_1 == 6) {
      _printk(&DAT_0010373d,"nav_event_input");
      uVar2 = 0x6a;
      goto LAB_001011b0;
    }
  }
  else {
    if (param_1 == 8) {
      _printk(&DAT_00102ccc,"nav_event_input");
      uVar2 = 0xd8;
      goto LAB_001011b0;
    }
    if (param_1 == 9) {
      _printk(&DAT_0010323e,"nav_event_input");
      uVar2 = 0xd9;
      goto LAB_001011b0;
    }
    if (param_1 == 10) {
      _printk(&DAT_001037da,"nav_event_input");
      uVar2 = 0x73;
      goto LAB_001011b0;
    }
  }
  _printk(&DAT_001032de,"nav_event_input");
  uVar2 = 0;
LAB_001011b0:
  input_event(DAT_00104040,1,uVar2,1);
  input_event(DAT_00104040,0,0,0);
  input_event(DAT_00104040,1,uVar2,0);
  input_event(DAT_00104040,0,0,0);
  return;
}

