
void nav_event_input(int param_1)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  if (param_1 < 6) {
    if (param_1 < 3) {
      if (param_1 == 1) {
        puVar1 = &DAT_00102ca8;
LAB_001012d8:
        _printk(puVar1,"nav_event_input");
        return;
      }
      if (param_1 == 2) {
        puVar1 = &DAT_00103e4f;
        goto LAB_001012d8;
      }
    }
    else {
      if (param_1 == 3) {
        uVar2 = 0x67;
        goto LAB_001011b0;
      }
      if (param_1 == 4) {
        _printk(&DAT_001031ac,"nav_event_input");
        uVar2 = 0x6c;
        goto LAB_001011b0;
      }
      if (param_1 == 5) {
        _printk(&DAT_0010345b,"nav_event_input");
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
      _printk(&DAT_001039bf,"nav_event_input");
      uVar2 = 0x6a;
      goto LAB_001011b0;
    }
  }
  else {
    if (param_1 == 8) {
      _printk(&DAT_00103c5b,"nav_event_input");
      uVar2 = 0xd8;
      goto LAB_001011b0;
    }
    if (param_1 == 9) {
      _printk(&DAT_00103e76,"nav_event_input");
      uVar2 = 0xd9;
      goto LAB_001011b0;
    }
    if (param_1 == 10) {
      _printk(&DAT_001037b2,"nav_event_input");
      uVar2 = 0x73;
      goto LAB_001011b0;
    }
  }
  _printk(&DAT_00102b52,"nav_event_input");
  uVar2 = 0;
LAB_001011b0:
  input_event(DAT_00104208,1,uVar2,1);
  input_event(DAT_00104208,0,0,0);
  input_event(DAT_00104208,1,uVar2,0);
  input_event(DAT_00104208,0,0,0);
  return;
}

