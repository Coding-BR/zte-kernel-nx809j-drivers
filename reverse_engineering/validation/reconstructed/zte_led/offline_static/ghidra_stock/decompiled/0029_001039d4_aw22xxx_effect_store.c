
undefined8 aw22xxx_effect_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  uint uVar2;
  long lVar3;
  long lVar4;
  uint local_54;
  byte local_50 [4];
  byte local_4c [4];
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_54 = 0;
  iVar1 = sscanf(param_3,"%x",&local_54);
  if (iVar1 == 1) {
    lVar3 = lVar4 + -0x10;
    mutex_lock(lVar4 + 0x2a0);
    if ((local_54 - 8 < 3) && (init_flag == 1)) {
      _printk(&DAT_0010d374,"aw22xxx_effect_store",0x857);
      *(undefined4 *)(lVar4 + 0x2f0) = 4;
      aw22xxx_get_fwname(4);
      aw22xxx_cfg_update_wait_from_dyn_name(lVar3);
      aw22xxx_set_cfg_run_state(*(undefined4 *)(lVar4 + 0x2f0));
      _printk(&DAT_0010dce4,"aw22xxx_effect_store",0x85c,g_cfg_cur_state);
      if (g_cfg_cur_state == 0) {
        _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
        local_50[0] = 0;
        aw22xxx_i2c_read(lVar3,2,local_50);
        local_50[0] = local_50[0] & 0xfe;
        aw22xxx_i2c_write(lVar3,2);
        usleep_range_state(2000,3000,2);
        g_init_flg = 0;
      }
      init_flag = 0;
      _printk(&DAT_0010e453,"aw22xxx_effect_store",0x862,*(undefined4 *)(lVar4 + 0x2f0));
    }
    *(uint *)(lVar4 + 0x2f0) = local_54;
    uVar2 = local_54;
    if (((local_54 < 4) && (local_54 != 1)) && ((init_flag & 1) == 0)) {
      init_flag = 1;
      _printk(&DAT_0010dde4,"aw22xxx_effect_store",0x869);
      uVar2 = *(uint *)(lVar4 + 0x2f0);
    }
    _printk(&DAT_0010e6e6,"aw22xxx_effect_store",0x86c,uVar2);
    aw22xxx_get_fwname(*(undefined4 *)(lVar4 + 0x2f0));
    local_54 = 1;
    aw22xxx_cfg_update_wait_from_dyn_name(lVar3);
    iVar1 = *(int *)(lVar4 + 0x2f0);
    if (iVar1 == 0) {
      msleep(100);
      iVar1 = *(int *)(lVar4 + 0x2f0);
    }
    aw22xxx_set_cfg_run_state(iVar1);
    _printk(&DAT_0010dce4,"aw22xxx_effect_store",0x889,g_cfg_cur_state);
    if (g_cfg_cur_state == 0) {
      _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
      local_4c[0] = 0;
      aw22xxx_i2c_read(lVar3,2,local_4c);
      local_4c[0] = local_4c[0] & 0xfe;
      aw22xxx_i2c_write(lVar3,2);
      usleep_range_state(2000,3000,2);
      g_init_flg = 0;
    }
    mutex_unlock(lVar4 + 0x2a0);
  }
  else {
    _printk(&DAT_0010d2ac,"aw22xxx_effect_store",0x850);
    param_4 = 0xffffffffffffffea;
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

