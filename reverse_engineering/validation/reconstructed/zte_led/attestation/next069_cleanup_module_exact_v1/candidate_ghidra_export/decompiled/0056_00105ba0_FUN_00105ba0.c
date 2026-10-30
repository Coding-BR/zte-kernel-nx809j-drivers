
void FUN_00105ba0(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  uint uVar1;
  
  uVar1 = (uint)param_3;
  if (((uint)param_3 & 0xfffffffe) != 2) {
    param_3 = (ulong)fan_effect;
    uVar1 = fan_effect;
  }
  fan_effect = uVar1;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00106e47,"aw22xxx_cfg_recover_update_wait",param_3);
}

