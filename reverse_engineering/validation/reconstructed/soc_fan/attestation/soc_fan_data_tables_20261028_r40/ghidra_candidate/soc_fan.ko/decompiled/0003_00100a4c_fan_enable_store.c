
undefined8 fan_enable_store(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  long lVar1;
  undefined1 *puVar2;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  sscanf(param_3,"%d",&local_2c);
  lVar1 = chip;
  if ((bool)*(char *)(*(long *)(chip + 8) + 0xc) == (local_2c != 0)) {
    _printk(&DAT_0010229c,"NB_FAN","fan_enable_store",0x13f);
  }
  else {
    *(bool *)(*(long *)(chip + 8) + 0xc) = local_2c != 0;
    _printk(&DAT_0010210b,"NB_FAN","fan_enable_store",0x143,
            *(undefined1 *)(*(long *)(lVar1 + 8) + 0xc));
    mutex_lock(chip + 0x18);
    puVar2 = *(undefined1 **)(chip + 8);
    if ((puVar2[0xc] & 1) == 0) {
      puVar2[1] = *puVar2;
      fan_level_set(*(undefined8 *)(chip + 8),0);
    }
    else if (puVar2[1] != '\0') {
      fan_level_set();
      _printk(&DAT_00101fda,"NB_FAN","fan_enable_store",0x14c,
              *(undefined1 *)(*(long *)(chip + 8) + 1));
      *(undefined1 *)(*(long *)(chip + 8) + 1) = 0;
    }
    mutex_unlock(chip + 0x18);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

