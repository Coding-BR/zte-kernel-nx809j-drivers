/* 00100b04 aw8693x_set_bst_peak_cur */

void aw8693x_set_bst_peak_cur(void)

{
  return;
}



/* 00100b0c state_store */

undefined8 state_store(void)

{
  undefined8 in_x3;
  
  return in_x3;
}



/* 00100b18 brightness_get */

undefined4 brightness_get(long param_1)

{
  return *(undefined4 *)(param_1 + -0x50);
}



/* 00100b24 aw_i2c_resume */

undefined8 aw_i2c_resume(void)

{
  return 0;
}



/* 00100b30 richtap_write */

undefined8 richtap_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  return param_3;
}



/* 00100b3c richtap_read */

undefined8 richtap_read(void)

{
  return 0;
}



/* 00100b48 state_show */

long state_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"state = %d\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68)
                  );
  return (long)iVar1;
}



/* 00100b84 activate_show */

long activate_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68));
  return (long)iVar1;
}



/* 00100bc0 activate_mode_show */

long activate_mode_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate_mode = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x8d));
  return (long)iVar1;
}



/* 00100bfc vmax_show */

long vmax_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"vmax = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x78));
  return (long)iVar1;
}



/* 00100c38 gain_show */

long gain_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"gain = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x74));
  return (long)iVar1;
}



/* 00100c74 gun_type_show */

long gun_type_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"0x%02x\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x2c));
  return (long)iVar1;
}



/* 00100cb0 bullet_nr_show */

long bullet_nr_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"0x%02x\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x28));
  return (long)iVar1;
}



/* 00100cec cont_brk_time_show */

long cont_brk_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_brk_time = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f5));
  return (long)iVar1;
}



/* 00100d28 rtp_auto_sin_show */

long rtp_auto_sin_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"rtp_cnt = %u\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x34));
  return (long)iVar1;
}



/* 00100d64 auto_boost_show */

long auto_boost_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"auto_boost = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x90));
  return (long)iVar1;
}



/* 00100da0 cont_save_show */

long cont_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_f0 = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x38));
  return (long)iVar1;
}



/* 00100ddc f0_save_show */

long f0_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"f0_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x20));
  return (long)iVar1;
}



/* 00100e18 haptic_audio_show */

long haptic_audio_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"%d\n",(ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x4f8));
  return (long)iVar1;
}



/* 00100e54 activate_aw_show */

long activate_aw_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68));
  return (long)iVar1;
}



/* 00100e90 osc_cali_show */

long osc_cali_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"osc_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x10));
  return (long)iVar1;
}



/* 00100ecc osc_save_show */

long osc_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"osc_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x10));
  return (long)iVar1;
}



/* 00100f08 ram_vbat_comp_show */

long ram_vbat_comp_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"ram_vbat_comp = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x8c));
  return (long)iVar1;
}



/* 00100f44 pre_f0_show */

long pre_f0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"pre_f0 = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x3c0));
  return (long)iVar1;
}



/* 00100f80 rtp_show */

long rtp_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"rtp_cnt = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x34));
  return (long)iVar1;
}



/* 00100fbc cont_drv_lvl_show */

long cont_drv_lvl_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_drv1_lvl = 0x%02X, cont_drv2_lvl = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f2),
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f3));
  return (long)iVar1;
}



/* 00100ffc cont_drv_time_show */

long cont_drv_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_drv1_time = 0x%02X, cont_drv2_time = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f8),
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f9));
  return (long)iVar1;
}



/* 0010103c haptic_audio_time_show */

long haptic_audio_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  lVar2 = *(long *)(param_1 + 0x98);
  iVar1 = snprintf(param_3,0x1000,"haptic_audio.delay_val=%dus\n",(ulong)*(uint *)(lVar2 + 0x430));
  lVar3 = (long)iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"haptic_audio.timer_val=%dus\n",
                   (ulong)*(uint *)(lVar2 + 0x434));
  return lVar3 + iVar1;
}



/* 001010ac loop_show */

void loop_show(long param_1,undefined8 param_2,undefined8 param_3)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(*(long *)(*(long *)(param_1 + 0x98) + 0x520) + 0x138);
  if (*(int *)(pcVar1 + -4) != -0x2005be67) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x1010e4);
    (*pcVar1)();
  }
  (*pcVar1)(*(long *)(param_1 + 0x98) + -0xa8,param_3);
  return;
}



/* 001010f8 reg_show */

void reg_show(long param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(*(long *)(*(long *)(param_1 + 0x98) + 0x520) + 0x148);
  if (*(int *)(pcVar1 + -4) != -0x20795a12) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x101130);
    (*pcVar1)();
  }
  (*pcVar1)(*(long *)(param_1 + 0x98) + -0xa8,0);
  return;
}



/* 00101144 trig_show */

long trig_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  lVar2 = *(long *)(param_1 + 0x98);
  iVar1 = snprintf(param_3,0x1000,
                   "trig%d: trig_level=%d, trig_polar=%d, pos_enable=%d, pos_sequence=%d, neg_enable=%d, neg_sequence=%d trig_brk=%d, trig_bst=%d\n"
                   ,1,(ulong)*(byte *)(lVar2 + 0x53f),(ulong)*(byte *)(lVar2 + 0x540),
                   (ulong)*(byte *)(lVar2 + 0x541),(ulong)*(byte *)(lVar2 + 0x543),
                   (uint)*(byte *)(lVar2 + 0x542),(uint)*(byte *)(lVar2 + 0x544),
                   (uint)*(byte *)(lVar2 + 0x53d),(uint)*(byte *)(lVar2 + 0x53e));
  lVar3 = (long)iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,
                   "trig%d: trig_level=%d, trig_polar=%d, pos_enable=%d, pos_sequence=%d, neg_enable=%d, neg_sequence=%d trig_brk=%d, trig_bst=%d\n"
                   ,2,(ulong)*(byte *)(lVar2 + 0x54c),(ulong)*(byte *)(lVar2 + 0x54d),
                   (ulong)*(byte *)(lVar2 + 0x54e),(ulong)*(byte *)(lVar2 + 0x550),
                   (uint)*(byte *)(lVar2 + 0x54f),(uint)*(byte *)(lVar2 + 0x551),
                   (uint)*(byte *)(lVar2 + 0x54a),(uint)*(byte *)(lVar2 + 0x54b));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,
                   "trig%d: trig_level=%d, trig_polar=%d, pos_enable=%d, pos_sequence=%d, neg_enable=%d, neg_sequence=%d trig_brk=%d, trig_bst=%d\n"
                   ,3,(ulong)*(byte *)(lVar2 + 0x559),(ulong)*(byte *)(lVar2 + 0x55a),
                   (ulong)*(byte *)(lVar2 + 0x55b),(ulong)*(byte *)(lVar2 + 0x55d),
                   (uint)*(byte *)(lVar2 + 0x55c),(uint)*(byte *)(lVar2 + 0x55e),
                   (uint)*(byte *)(lVar2 + 0x557),(uint)*(byte *)(lVar2 + 0x558));
  return lVar3 + iVar1;
}



/* 0010126c i2c_r_bytes */

void i2c_r_bytes(long param_1,undefined1 param_2,undefined8 param_3,undefined2 param_4)

{
  long lVar1;
  ulong uVar2;
  undefined1 local_4c [4];
  undefined2 local_48;
  undefined4 local_46;
  undefined2 local_42;
  undefined1 *local_40;
  undefined2 local_38;
  undefined2 local_36;
  undefined2 local_34;
  undefined2 local_32;
  undefined8 local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_48 = *(undefined2 *)(*(long *)(param_1 + 0x328) + 2);
  local_46 = 0x10000;
  local_40 = local_4c;
  local_42 = 0;
  local_36 = 1;
  local_32 = 0;
  local_4c[0] = param_2;
  local_38 = local_48;
  local_34 = param_4;
  local_30 = param_3;
  uVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x328) + 0x18),&local_48,2);
  if ((int)uVar2 < 0) {
    uVar2 = uVar2 & 0xffffffff;
    _printk(&DAT_00101bd9,"haptic_hv",0x65,"i2c_r_bytes");
  }
  else if ((int)uVar2 != 2) {
    _printk(&DAT_00101cb3,"haptic_hv",0x68,"i2c_r_bytes");
    uVar2 = 0xfffffffa;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 0010136c i2c_w_bytes */

int i2c_w_bytes(long param_1,undefined1 param_2,void *param_3,uint param_4)

{
  ulong uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined1 *puVar5;
  ulong uVar6;
  undefined8 uVar7;
  
  uVar6 = (ulong)(param_4 + 1);
  puVar5 = (undefined1 *)__kmalloc_noprof(uVar6,0xcc0);
  while( true ) {
    if (uVar6 == 0) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(1,0x101480);
      (*pcVar3)();
    }
    *puVar5 = param_2;
    uVar1 = 0;
    if (uVar6 != 0) {
      uVar1 = uVar6 - 1;
    }
    if (param_4 <= uVar1) break;
    __fortify_panic(0x11);
    uVar6 = (ulong)(param_4 + 1);
    lVar2 = sp_el0;
    uVar7 = *(undefined8 *)(lVar2 + 0x50);
    *(undefined1 **)(lVar2 + 0x50) = &i2c_w_bytes__alloc_tag;
    puVar5 = (undefined1 *)__kmalloc_noprof(uVar6,0xcc0);
    *(undefined8 *)(lVar2 + 0x50) = uVar7;
  }
  memcpy(puVar5 + 1,param_3,(ulong)param_4);
  iVar4 = i2c_transfer_buffer_flags(*(undefined8 *)(param_1 + 0x328),puVar5,param_4 + 1,0);
  if (iVar4 < 0) {
    _printk(&DAT_00101ce1,"haptic_hv",0x7a,"i2c_w_bytes",param_2);
  }
  kfree(puVar5);
  return iVar4;
}



/* 00101484 cont_drv_time_store */

undefined8 cont_drv_time_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined1 local_44;
  undefined1 local_43;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_40 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_40,(ulong)&local_40 | 4);
  if (iVar1 == 2) {
    *(undefined1 *)(lVar2 + 0x3f8) = (undefined1)local_40;
    *(undefined1 *)(lVar2 + 0x3f9) = local_40._4_1_;
    local_44 = (undefined1)local_40;
    local_43 = local_40._4_1_;
    mutex_lock(lVar2 + 0x248);
    i2c_w_bytes(lVar2 + -0xa8,0x1f,&local_44,2);
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101554 richtap_file_release */

undefined8 richtap_file_release(void)

{
  module_put(&__this_module);
  return 0;
}



/* 00101580 richtap_file_open */

undefined8 richtap_file_open(undefined8 param_1,long param_2)

{
  ulong uVar1;
  undefined8 uVar2;
  
  uVar1 = try_module_get(&__this_module);
  if ((uVar1 & 1) == 0) {
    uVar2 = 0xffffffed;
  }
  else {
    uVar2 = 0;
    *(undefined8 *)(param_2 + 0x20) = g_aw_haptic;
  }
  return uVar2;
}



/* 001015d0 richtap_clean_buf */

void richtap_clean_buf(long param_1)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  
  puVar1 = *(undefined1 **)(param_1 + 0x610);
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  puVar1 = *(undefined1 **)(puVar2 + 8);
  *puVar2 = 0xff;
  memset(puVar1 + 0x18,0,1000);
  puVar2 = *(undefined1 **)(puVar1 + 8);
  *puVar1 = 0xff;
  memset(puVar2 + 0x18,0,1000);
  *puVar2 = 0xff;
  return;
}



/* 00101780 aw_i2c_suspend */

undefined8 aw_i2c_suspend(long param_1)

{
  code *pcVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar2 + 0x2f0);
  pcVar1 = *(code **)(*(long *)(lVar2 + 0x5c8) + 0x38);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1017c0);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2);
  mutex_unlock(lVar2 + 0x2f0);
  return 0;
}



/* 001017e4 aw8693x_set_rtp_data */

void aw8693x_set_rtp_data(undefined8 param_1,undefined8 param_2,undefined4 param_3)

{
  i2c_w_bytes(param_1,0x32,param_2,param_3);
  return;
}



/* 00101810 i2c_w_bits */

void i2c_w_bits(long param_1,undefined4 param_2,byte param_3,byte param_4)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  byte local_60 [4];
  undefined1 local_5c [4];
  undefined2 local_58;
  undefined4 local_56;
  undefined2 local_52;
  undefined1 *local_50;
  undefined2 local_48;
  undefined4 local_46;
  undefined2 local_42;
  undefined1 *local_40;
  long local_38;
  
  local_40 = local_60;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_5c[0] = (undefined1)param_2;
  local_60[0] = 0;
  local_58 = *(undefined2 *)(*(long *)(param_1 + 0x328) + 2);
  local_56 = 0x10000;
  local_50 = local_5c;
  local_52 = 0;
  local_46 = 0x10001;
  local_42 = 0;
  local_48 = local_58;
  iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x328) + 0x18),&local_58,2);
  if (iVar2 < 0) {
    _printk(&DAT_00101bd9,"haptic_hv",0x65,"i2c_r_bytes");
LAB_00101948:
    puVar3 = &DAT_00101d74;
    uVar4 = 0x87;
  }
  else {
    if (iVar2 != 2) {
      _printk(&DAT_00101cb3,"haptic_hv",0x68,"i2c_r_bytes");
      iVar2 = -6;
      goto LAB_00101948;
    }
    local_60[0] = local_60[0] & param_3 | param_4 & (param_3 ^ 0xff);
    iVar2 = i2c_w_bytes(param_1,param_2,local_60,1);
    if (-1 < iVar2) {
      iVar2 = 0;
      goto LAB_001018d0;
    }
    puVar3 = &DAT_00101e46;
    uVar4 = 0x8e;
  }
  _printk(puVar3,"haptic_hv",uVar4,"i2c_w_bits",iVar2);
LAB_001018d0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}



/* 001019a4 aw8693x_set_rtp_aei */

void aw8693x_set_rtp_aei(undefined8 param_1,ulong param_2)

{
  undefined4 uVar1;
  
  uVar1 = 0;
  if ((param_2 & 1) == 0) {
    uVar1 = 0x10;
  }
  i2c_w_bits(param_1,3,0xffffffef,uVar1);
  return;
}



/* 001019d8 aw8693x_auto_bst_enable */

void aw8693x_auto_bst_enable(long param_1,char param_2)

{
  *(char *)(param_1 + 0x18) = param_2;
  i2c_w_bits(param_1,8,0xffffffef,(ulong)(param_2 != '\0') << 4);
  return;
}



/* 00101a10 aw8693x_vbat_mode_config */

void aw8693x_vbat_mode_config(undefined8 param_1,char param_2)

{
  i2c_w_bits(param_1,0x4c,0xffffffbf,(ulong)(param_2 == '\x01') << 6);
  return;
}



/* 00101a48 aw8693x_set_wav_loop */

void aw8693x_set_wav_loop(undefined8 param_1,uint param_2,int param_3)

{
  undefined8 uVar1;
  
  if ((param_2 & 1) == 0) {
    param_3 = param_3 << 4;
    uVar1 = 0xffffff0f;
  }
  else {
    uVar1 = 0xfffffff0;
  }
  i2c_w_bits(param_1,(param_2 >> 1 & 0x7f) + 0x12,uVar1,param_3);
  return;
}



/* 00101a8c init_module */

undefined8 init_module(void)

{
  return 0;
}



/* 00101a98 cleanup_module */

void cleanup_module(void)

{
  return;
}



