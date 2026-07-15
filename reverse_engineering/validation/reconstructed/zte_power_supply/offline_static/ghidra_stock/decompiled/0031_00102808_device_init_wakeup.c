
undefined8 device_init_wakeup(undefined8 param_1,ulong param_2)

{
  undefined8 uVar1;
  
  if ((param_2 & 1) == 0) {
    device_wakeup_disable();
    device_set_wakeup_capable(param_1,0);
    uVar1 = 0;
  }
  else {
    device_set_wakeup_capable(param_1,1);
    uVar1 = device_wakeup_enable(param_1);
  }
  return uVar1;
}

