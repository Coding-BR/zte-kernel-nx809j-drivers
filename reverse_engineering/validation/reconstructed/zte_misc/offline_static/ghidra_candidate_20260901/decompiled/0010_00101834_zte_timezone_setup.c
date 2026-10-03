
void zte_timezone_setup(undefined8 param_1)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 local_20;
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_20 = 0;
  uVar2 = kstrtoll(param_1,0,&local_20);
  if ((int)uVar2 == 0) {
    uVar2 = 1;
    zte_timezone = (undefined4)local_20;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

