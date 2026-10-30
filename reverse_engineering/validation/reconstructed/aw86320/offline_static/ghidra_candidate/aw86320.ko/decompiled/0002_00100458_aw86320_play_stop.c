
void aw86320_play_stop(undefined8 param_1)

{
  long lVar1;
  bool bVar2;
  undefined1 *puVar3;
  undefined8 uVar4;
  int iVar5;
  ushort local_2c [2];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  aw86320_play_mode(param_1,0);
  iVar5 = -100;
  do {
    local_2c[0] = 0;
    haptic_i2c_read(param_1,0x14,local_2c);
    if ((local_2c[0] & 0xf00) == 0) {
      puVar3 = &DAT_00104404;
      uVar4 = 0x220;
      goto LAB_001004fc;
    }
    usleep_range_state(2000,0x9c4,2);
    bVar2 = iVar5 != -1;
    iVar5 = iVar5 + 1;
  } while (bVar2);
  puVar3 = &aw86320_rodata_str_base;
  uVar4 = 0x226;
LAB_001004fc:
  _printk(puVar3,"aw86320",uVar4,"aw86320_wait_enter_standby");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

