
void nav_event_input(int param_1)

{
  undefined8 uVar1;
  
  if (param_1 < 6) {
    if (param_1 < 4) {
      if (param_1 == 3) {
        uVar1 = 0x67;
        goto LAB_001015a8;
      }
      if (param_1 - 1U < 2) {
        _printk(&DAT_001032ce,"nav_event_input");
        return;
      }
    }
    else {
      if (param_1 == 4) {
        _printk(&DAT_00102d85,"nav_event_input");
        uVar1 = 0x6c;
        goto LAB_001015a8;
      }
      if (param_1 == 5) {
        _printk(&DAT_001038ee,"nav_event_input");
        uVar1 = 0x69;
        goto LAB_001015a8;
      }
    }
  }
  else if (param_1 < 8) {
    if (param_1 == 7) {
      uVar1 = 0x72;
      goto LAB_001015a8;
    }
    if (param_1 == 6) {
      _printk(&DAT_00102d55,"nav_event_input");
      uVar1 = 0x6a;
      goto LAB_001015a8;
    }
  }
  else {
    if (param_1 == 8) {
      _printk(&DAT_00103501,"nav_event_input");
      uVar1 = 0xd8;
      goto LAB_001015a8;
    }
    if (param_1 == 9) {
      _printk(&DAT_0010335f,"nav_event_input");
      uVar1 = 0x247;
      goto LAB_001015a8;
    }
    if (param_1 == 10) {
      _printk(&DAT_001030c8,"nav_event_input");
      uVar1 = 0x73;
      goto LAB_001015a8;
    }
  }
  _printk(&DAT_001030e4,"nav_event_input");
  uVar1 = 0;
LAB_001015a8:
  input_event(DAT_00103d08,1,uVar1,1);
  input_event(DAT_00103d08,0,0,0);
  input_event(DAT_00103d08,1,uVar1,0);
  input_event(DAT_00103d08,0,0,0);
  return;
}

