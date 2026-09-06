
void FUN_0010087c(void)

{
  bool in_ZR;
  undefined8 uVar1;
  
  if (in_ZR) {
    _printk(&DAT_001036b3,"nav_event_input");
    uVar1 = 0x73;
  }
  else {
    _printk(&DAT_001031da,"nav_event_input");
    uVar1 = 0;
  }
  input_event(DAT_00103df0,1,uVar1,1);
  input_event(DAT_00103df0,0,0,0);
  input_event(DAT_00103df0,1,uVar1,0);
  input_event(DAT_00103df0,0,0,0);
  return;
}

