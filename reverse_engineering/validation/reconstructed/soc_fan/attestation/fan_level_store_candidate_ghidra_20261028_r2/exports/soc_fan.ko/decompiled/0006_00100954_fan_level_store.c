
long fan_level_store(undefined8 param_1,undefined8 param_2,char *param_3,long param_4)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  sscanf(param_3,"%d",&local_2c);
  if (local_2c < 6) {
    if ((*(byte *)(*(long *)(chip + 8) + 0xc) & 1) == 0) {
      *(char *)(*(long *)(chip + 8) + 1) = (char)local_2c;
      _printk(&DAT_00100ef8,"NB_FAN","fan_level_store",0x16b,local_2c);
    }
    else {
      mutex_lock(chip + 0x18);
      iVar2 = fan_level_set(*(undefined8 *)(chip + 8),local_2c);
      mutex_unlock(chip + 0x18);
      if (iVar2 == 0) {
        _printk(&DAT_0010119a,"NB_FAN","fan_level_store",0x175,local_2c,0);
      }
      else {
        param_4 = (long)iVar2;
      }
    }
  }
  else {
    _printk(&DAT_00100dcc,"NB_FAN","fan_level_store",0x165,local_2c,0,5);
    param_4 = -0x16;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

