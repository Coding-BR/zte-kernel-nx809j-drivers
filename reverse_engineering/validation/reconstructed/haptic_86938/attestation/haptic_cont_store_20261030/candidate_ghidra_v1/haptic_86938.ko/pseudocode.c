/* 0010256c aw8693x_set_bst_peak_cur */

void aw8693x_set_bst_peak_cur(void)

{
  return;
}



/* 00102574 state_store */

undefined8 state_store(void)

{
  undefined8 in_x3;
  
  return in_x3;
}



/* 00102580 brightness_get */

undefined4 brightness_get(long param_1)

{
  return *(undefined4 *)(param_1 + -0x50);
}



/* 0010258c aw_i2c_resume */

undefined8 aw_i2c_resume(void)

{
  return 0;
}



/* 00102598 richtap_write */

undefined8 richtap_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  return param_3;
}



/* 001025a4 richtap_read */

undefined8 richtap_read(void)

{
  return 0;
}



/* 001025b0 state_show */

long state_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"state = %d\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68)
                  );
  return (long)iVar1;
}



/* 001025ec activate_show */

long activate_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68));
  return (long)iVar1;
}



/* 00102628 activate_mode_show */

long activate_mode_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate_mode = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x8d));
  return (long)iVar1;
}



/* 00102664 vmax_show */

long vmax_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"vmax = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x78));
  return (long)iVar1;
}



/* 001026a0 gain_show */

long gain_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"gain = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x74));
  return (long)iVar1;
}



/* 001026dc gun_type_show */

long gun_type_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"0x%02x\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x2c));
  return (long)iVar1;
}



/* 00102718 bullet_nr_show */

long bullet_nr_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"0x%02x\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x28));
  return (long)iVar1;
}



/* 00102754 cont_brk_time_show */

long cont_brk_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_brk_time = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f5));
  return (long)iVar1;
}



/* 00102790 rtp_auto_sin_show */

long rtp_auto_sin_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"rtp_cnt = %u\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x34));
  return (long)iVar1;
}



/* 001027cc auto_boost_show */

long auto_boost_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"auto_boost = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x90));
  return (long)iVar1;
}



/* 00102808 cont_save_show */

long cont_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_f0 = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x38));
  return (long)iVar1;
}



/* 00102844 f0_save_show */

long f0_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"f0_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x20));
  return (long)iVar1;
}



/* 00102880 haptic_audio_show */

long haptic_audio_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"%d\n",(ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x4f8));
  return (long)iVar1;
}



/* 001028bc activate_aw_show */

long activate_aw_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68));
  return (long)iVar1;
}



/* 001028f8 osc_cali_show */

long osc_cali_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"osc_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x10));
  return (long)iVar1;
}



/* 00102934 osc_save_show */

long osc_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"osc_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x10));
  return (long)iVar1;
}



/* 00102970 ram_vbat_comp_show */

long ram_vbat_comp_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"ram_vbat_comp = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x8c));
  return (long)iVar1;
}



/* 001029ac pre_f0_show */

long pre_f0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"pre_f0 = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x3c0));
  return (long)iVar1;
}



/* 001029e8 rtp_show */

long rtp_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"rtp_cnt = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x34));
  return (long)iVar1;
}



/* 00102a24 cont_drv_lvl_show */

long cont_drv_lvl_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_drv1_lvl = 0x%02X, cont_drv2_lvl = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f2),
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f3));
  return (long)iVar1;
}



/* 00102a64 cont_drv_time_show */

long cont_drv_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_drv1_time = 0x%02X, cont_drv2_time = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f8),
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f9));
  return (long)iVar1;
}



/* 00102aa4 haptic_audio_time_show */

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



/* 00102b14 loop_show */

void loop_show(long param_1,undefined8 param_2,undefined8 param_3)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(*(long *)(*(long *)(param_1 + 0x98) + 0x520) + 0x138);
  if (*(int *)(pcVar1 + -4) != -0x2005be67) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x102b4c);
    (*pcVar1)();
  }
  (*pcVar1)(*(long *)(param_1 + 0x98) + -0xa8,param_3);
  return;
}



/* 00102b60 reg_show */

void reg_show(long param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(*(long *)(*(long *)(param_1 + 0x98) + 0x520) + 0x148);
  if (*(int *)(pcVar1 + -4) != -0x20795a12) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x102b98);
    (*pcVar1)();
  }
  (*pcVar1)(*(long *)(param_1 + 0x98) + -0xa8,0);
  return;
}



/* 00102bac trig_show */

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



/* 00102cd4 i2c_r_bytes */

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
    _printk(&DAT_00108bf3,"haptic_hv",0x65,"i2c_r_bytes");
  }
  else if ((int)uVar2 != 2) {
    _printk(&DAT_001090d6,"haptic_hv",0x68,"i2c_r_bytes");
    uVar2 = 0xfffffffa;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00102dd4 i2c_w_bytes */

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
      pcVar3 = (code *)SoftwareBreakpoint(1,0x102ee8);
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
    _printk(&DAT_00109104,"haptic_hv",0x7a,"i2c_w_bytes",param_2);
  }
  kfree(puVar5);
  return iVar4;
}



/* 00102eec cont_drv_time_store */

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



/* 00102fbc richtap_file_release */

undefined8 richtap_file_release(void)

{
  module_put(&__this_module);
  return 0;
}



/* 00102fe8 richtap_file_open */

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



/* 00103038 richtap_clean_buf */

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



/* 001031e8 aw_i2c_suspend */

undefined8 aw_i2c_suspend(long param_1)

{
  code *pcVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar2 + 0x2f0);
  pcVar1 = *(code **)(*(long *)(lVar2 + 0x5c8) + 0x38);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x103228);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2);
  mutex_unlock(lVar2 + 0x2f0);
  return 0;
}



/* 0010324c aw8693x_set_rtp_data */

void aw8693x_set_rtp_data(undefined8 param_1,undefined8 param_2,undefined4 param_3)

{
  i2c_w_bytes(param_1,0x32,param_2,param_3);
  return;
}



/* 00103278 i2c_w_bits */

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
    _printk(&DAT_00108bf3,"haptic_hv",0x65,"i2c_r_bytes");
LAB_001033b0:
    puVar3 = &DAT_00109470;
    uVar4 = 0x87;
  }
  else {
    if (iVar2 != 2) {
      _printk(&DAT_001090d6,"haptic_hv",0x68,"i2c_r_bytes");
      iVar2 = -6;
      goto LAB_001033b0;
    }
    local_60[0] = local_60[0] & param_3 | param_4 & (param_3 ^ 0xff);
    iVar2 = i2c_w_bytes(param_1,param_2,local_60,1);
    if (-1 < iVar2) {
      iVar2 = 0;
      goto LAB_00103338;
    }
    puVar3 = &DAT_00109853;
    uVar4 = 0x8e;
  }
  _printk(puVar3,"haptic_hv",uVar4,"i2c_w_bits",iVar2);
LAB_00103338:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}



/* 0010340c aw8693x_set_rtp_aei */

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



/* 00103440 aw8693x_auto_bst_enable */

void aw8693x_auto_bst_enable(long param_1,char param_2)

{
  *(char *)(param_1 + 0x18) = param_2;
  i2c_w_bits(param_1,8,0xffffffef,(ulong)(param_2 != '\0') << 4);
  return;
}



/* 00103478 aw8693x_vbat_mode_config */

void aw8693x_vbat_mode_config(undefined8 param_1,char param_2)

{
  i2c_w_bits(param_1,0x4c,0xffffffbf,(ulong)(param_2 == '\x01') << 6);
  return;
}



/* 001034b0 aw8693x_set_wav_loop */

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



/* 001034f4 aw8693x_set_wav_seq */

void aw8693x_set_wav_seq(undefined8 param_1,int param_2,undefined1 param_3)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = param_3;
  i2c_w_bytes(param_1,param_2 + 10,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103550 aw8693x_set_bst_vol */

void aw8693x_set_bst_vol(undefined8 param_1,byte param_2)

{
  if (param_2 < 6) {
    param_2 = 5;
  }
  if (0x18 < param_2) {
    param_2 = 0x19;
  }
  i2c_w_bits(param_1,6,0xffffffe0,param_2);
  return;
}



/* 00103594 aw8693x_set_gain */

void aw8693x_set_gain(undefined8 param_1,undefined1 param_2)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = param_2;
  i2c_w_bytes(param_1,7,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001035f0 aw8693x_get_glb_state */

void aw8693x_get_glb_state(undefined8 param_1)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,0x3f,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(local_1c[0]);
}



/* 00103650 aw8693x_get_osc_status */

byte aw8693x_get_osc_status(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,4,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] & 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001036b4 aw8693x_rtp_get_fifo_afs */

byte aw8693x_rtp_get_fifo_afs(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,1,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] >> 3 & 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103718 aw8693x_rtp_get_fifo_aes */

byte aw8693x_rtp_get_fifo_aes(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,1,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] >> 4 & 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010377c aw8693x_rtp_get_fifo_afi */

byte aw8693x_rtp_get_fifo_afi(long param_1)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0x5b;
  }
  i2c_r_bytes(param_1,2,local_2c,1);
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return local_2c[0] >> 3 & 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010381c aw8693x_get_prctmode */

byte aw8693x_get_prctmode(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,0x4a,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] >> 7;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103880 aw8693x_get_trim_lra */

byte aw8693x_get_trim_lra(undefined8 param_1)

{
  long lVar1;
  byte local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,0x5d,local_1c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return local_1c[0] & 0x7f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001038e4 aw8693x_set_ram_addr */

void aw8693x_set_ram_addr(long param_1)

{
  long lVar1;
  ushort local_1c [2];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = *(ushort *)(param_1 + 0x458) >> 8 | *(ushort *)(param_1 + 0x458) << 8;
  i2c_w_bytes(param_1,0x40,local_1c,2);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010394c aw8693x_ram_init */

void aw8693x_ram_init(undefined8 param_1,ulong param_2)

{
  if ((param_2 & 1) == 0) {
    i2c_w_bits(param_1,0x45,0xfffffffb,0);
  }
  else {
    i2c_w_bits(param_1,0x45,0xfffffffb,4);
    usleep_range_state(500,600,2);
  }
  return;
}



/* 001039a0 aw8693x_get_first_wave_addr */

void aw8693x_get_first_wave_addr(undefined8 param_1,undefined2 *param_2)

{
  long lVar1;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c._0_3_ = 0;
  i2c_r_bytes(param_1,0x42,local_2c,3);
  *param_2 = local_2c._1_2_;
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103a14 aw8693x_set_repeat_seq */

void aw8693x_set_repeat_seq(undefined8 param_1,undefined1 param_2)

{
  long lVar1;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = param_2;
  i2c_w_bytes(param_1,10,local_2c,1);
  i2c_w_bits(param_1,0x12,0xffffff0f,0xf0);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103a90 aw8693x_irq_clear */

void aw8693x_irq_clear(undefined8 param_1)

{
  long lVar1;
  undefined1 local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = 0;
  i2c_r_bytes(param_1,2,local_1c,1);
  _printk(&DAT_00109272,"haptic_hv",1099,"aw8693x_irq_clear",local_1c[0]);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103b10 aw8693x_check_qualify */

void aw8693x_check_qualify(undefined8 param_1)

{
  long lVar1;
  undefined8 uVar2;
  char local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = '\0';
  i2c_r_bytes(param_1,100,local_1c,1);
  if (local_1c[0] < '\0') {
    _printk(&DAT_00109130,"haptic_hv",0x139,"aw8693x_check_qualify");
    uVar2 = 0;
  }
  else {
    _printk(&DAT_00109719,"haptic_hv",0x136,"aw8693x_check_qualify");
    uVar2 = 0xffffffde;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00103bc0 cont_brk_time_store */

long cont_brk_time_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  iVar1 = kstrtou8(param_3,0,lVar2 + 0x3f5);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    i2c_w_bytes(lVar2 + -0xa8,0x21,lVar2 + 0x3f5,1);
    mutex_unlock(lVar2 + 0x248);
  }
  return param_4;
}



/* 00103c3c cont_drv_lvl_store */

undefined8 cont_drv_lvl_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined2 local_44;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_40 = 0;
  local_44 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_40,(ulong)&local_40 | 4);
  if (iVar1 == 2) {
    *(char *)(lVar2 + 0x3f2) = (char)local_40;
    *(char *)(lVar2 + 0x3f3) = (char)((ulong)local_40 >> 0x20);
    mutex_lock(lVar2 + 0x248);
    i2c_r_bytes(lVar2 + -0xa8,0x1d,&local_44,1);
    local_44 = CONCAT11(*(undefined1 *)(lVar2 + 0x3f3),
                        (byte)local_44 & 0x80 | *(byte *)(lVar2 + 0x3f2));
    i2c_w_bytes(lVar2 + -0xa8,0x1d,&local_44,2);
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103d38 rtp_auto_sin_store */

long rtp_auto_sin_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    _printk(&DAT_00109626,"haptic_hv",0x8dd,"rtp_auto_sin_store");
    param_4 = (long)iVar1;
    goto LAB_00103df0;
  }
  mutex_lock(lVar3 + 0x248);
  if (local_3c == 0) {
    uVar2 = 0;
    *(undefined4 *)(lVar3 + -0x68) = 0;
LAB_00103dd4:
    i2c_w_bits(lVar3 + -0xa8,0x2d,0xffffffdf,uVar2);
  }
  else {
    if (local_3c < *(uint *)(lVar3 + 0x638)) {
      uVar2 = 0x20;
      *(undefined4 *)(lVar3 + -0x68) = 1;
      *(uint *)(lVar3 + -0x18) = local_3c;
      goto LAB_00103dd4;
    }
    *(undefined4 *)(lVar3 + -0x68) = 0;
    _printk(&DAT_001092a7,"haptic_hv",0x8ee,"rtp_auto_sin_store");
  }
  mutex_unlock(lVar3 + 0x248);
  queue_work_on(0x20,*(undefined8 *)(lVar3 + 0x3a0),lVar3 + 0x2f8);
LAB_00103df0:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103e7c aw8693x_trig1_param_config */

void aw8693x_trig1_param_config(long param_1)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  byte local_2c [4];
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  uVar3 = (uint)(*(char *)(param_1 + 0x5e7) != '\0');
  uVar1 = uVar3 << 6;
  if (*(char *)(param_1 + 0x5e8) != '\0') {
    uVar1 = uVar3 << 6 | 0xffffff80;
  }
  if (*(char *)(param_1 + 0x5e5) != '\0') {
    uVar1 = uVar1 | 0x20;
  }
  if (*(char *)(param_1 + 0x5e6) != '\0') {
    uVar1 = uVar1 | 0x10;
  }
  i2c_w_bits(param_1,0x39,0xffffff0f,uVar1);
  local_2c[0] = *(byte *)(param_1 + 0x5eb) | (*(char *)(param_1 + 0x5e9) != '\0') << 7;
  i2c_w_bytes(param_1,0x33,local_2c,1);
  local_2c[0] = *(byte *)(param_1 + 0x5ec) | (*(char *)(param_1 + 0x5ea) != '\0') << 7;
  i2c_w_bytes(param_1,0x36,local_2c,1);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103f78 aw8693x_trig2_param_config */

void aw8693x_trig2_param_config(long param_1)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  byte local_2c [4];
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  uVar3 = (uint)(*(char *)(param_1 + 0x5f4) != '\0');
  uVar1 = uVar3 << 2;
  if (*(char *)(param_1 + 0x5f5) != '\0') {
    uVar1 = uVar3 << 2 | 8;
  }
  if (*(char *)(param_1 + 0x5f2) != '\0') {
    uVar1 = uVar1 | 2;
  }
  if (*(char *)(param_1 + 0x5f3) != '\0') {
    uVar1 = uVar1 + 1;
  }
  i2c_w_bits(param_1,0x39,0xfffffff0,uVar1);
  local_2c[0] = *(byte *)(param_1 + 0x5f8) | (*(char *)(param_1 + 0x5f6) != '\0') << 7;
  i2c_w_bytes(param_1,0x34,local_2c,1);
  local_2c[0] = *(byte *)(param_1 + 0x5f9) | (*(char *)(param_1 + 0x5f7) != '\0') << 7;
  i2c_w_bytes(param_1,0x37,local_2c,1);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104070 aw8693x_trig3_param_config */

void aw8693x_trig3_param_config(long param_1)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  byte local_2c [4];
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  uVar3 = (uint)(*(char *)(param_1 + 0x601) != '\0');
  uVar1 = uVar3 << 6;
  if (*(char *)(param_1 + 0x602) != '\0') {
    uVar1 = uVar3 << 6 | 0xffffff80;
  }
  if (*(char *)(param_1 + 0x5ff) != '\0') {
    uVar1 = uVar1 | 0x20;
  }
  if (*(char *)(param_1 + 0x600) != '\0') {
    uVar1 = uVar1 | 0x10;
  }
  i2c_w_bits(param_1,0x3a,0xffffff0f,uVar1);
  local_2c[0] = *(byte *)(param_1 + 0x605) | (*(char *)(param_1 + 0x603) != '\0') << 7;
  i2c_w_bytes(param_1,0x35,local_2c,1);
  local_2c[0] = *(byte *)(param_1 + 0x606) | (*(char *)(param_1 + 0x604) != '\0') << 7;
  i2c_w_bytes(param_1,0x38,local_2c,1);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010416c trig_store */

undefined8 trig_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  uint uVar1;
  ulong uVar2;
  int iVar3;
  long lVar4;
  long lVar5;
  long lVar6;
  undefined8 local_60;
  undefined8 local_58;
  undefined8 local_50;
  undefined8 local_48;
  undefined4 local_40 [2];
  long local_38;
  
  lVar6 = sp_el0;
  local_38 = *(long *)(lVar6 + 0x710);
  lVar6 = *(long *)(param_1 + 0x98);
  local_40[0] = 0;
  local_50 = 0;
  local_48 = 0;
  local_60 = 0;
  local_58 = 0;
  iVar3 = sscanf(param_3,"%u %u %u %u %u %u %u %u %u",&local_60,(ulong)&local_60 | 4,&local_58,
                 (long)&local_58 + 4,&local_50,(long)&local_50 + 4,&local_48,(long)&local_48 + 4,
                 local_40);
  if (iVar3 == 9) {
    _printk(&DAT_00109647,"haptic_hv",0x89a,"trig_store",local_60 & 0xffffffff,local_60._4_4_,
            local_58 & 0xffffffff,local_58._4_4_,local_50 & 0xffffffff,local_50 >> 0x20,
            local_48 & 0xffffffff,local_48._4_4_,local_40[0]);
    uVar2 = local_60;
    if ((int)local_60 - 4U < 0xfffffffd) {
      _printk(&DAT_001098ea,"haptic_hv",0x89c,"trig_store");
    }
    else {
      uVar1 = (int)local_60 - 1;
      if ((uVar1 == 0) && (*(char *)(lVar6 + 0x417) == '\x01')) {
        _printk(&DAT_00108c24,"haptic_hv",0x8a0,"trig_store");
      }
      else if ((*(byte *)(lVar6 + -0xa2) & 1) == 0) {
        _printk(&DAT_00109922,"haptic_hv",0x8a4,"trig_store");
      }
      else if ((*(byte *)(lVar6 + 0x3b4) < (uint)local_50) ||
              (*(byte *)(lVar6 + 0x3b4) < (uint)local_48)) {
        _printk(&DAT_001095a2,"haptic_hv",0x8a9,"trig_store");
      }
      else {
        local_60 = CONCAT44(local_60._4_4_,uVar1);
        lVar4 = lVar6 + (ulong)uVar1 * 0xd;
        lVar5 = lVar6 + -0xa8;
        *(char *)(lVar4 + 0x53f) = (char)(uVar2 >> 0x20);
        *(char *)(lVar4 + 0x540) = (char)local_58;
        *(char *)(lVar4 + 0x543) = (char)local_50;
        *(char *)(lVar4 + 0x541) = (char)(local_58 >> 0x20);
        *(char *)(lVar4 + 0x544) = (char)local_48;
        *(char *)(lVar4 + 0x542) = (char)(local_50 >> 0x20);
        *(char *)(lVar4 + 0x53d) = (char)(local_48 >> 0x20);
        *(char *)(lVar4 + 0x53e) = (char)local_40[0];
        mutex_lock(lVar6 + 0x248);
        if ((int)local_60 == 2) {
          aw8693x_trig3_param_config(lVar5);
        }
        else if ((int)local_60 == 1) {
          aw8693x_trig2_param_config(lVar5);
        }
        else if ((int)local_60 == 0) {
          aw8693x_trig1_param_config(lVar5);
        }
        mutex_unlock(lVar6 + 0x248);
      }
    }
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001043dc duration_store */

long duration_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else if (local_2c != 0) {
    *(int *)(lVar2 + -0x54) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104468 ram_work_init */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ram_work_init(long param_1)

{
  *(undefined8 *)(param_1 + 0x3c0) = 0xfffffffe00000;
  *(long *)(param_1 + 0x3c8) = param_1 + 0x3c8;
  *(long *)(param_1 + 0x3d0) = param_1 + 0x3c8;
  *(code **)(param_1 + 0x3d8) = ram_work_routine;
  init_timer_key(param_1 + 0x3e0,&delayed_work_timer_fn,0x200000,0,0);
  queue_delayed_work_on(0x20,_system_wq,param_1 + 0x3c0,2000);
  return;
}



/* 001044e4 ram_work_routine */

void ram_work_routine(long param_1)

{
  *(undefined2 *)(param_1 + -0x3bb) = 0;
  request_firmware_nowait
            (&__this_module,1,aw_ram_name,*(undefined8 *)(param_1 + -0xa0),0xcc0,param_1 + -0x3c0,
             ram_load);
  return;
}



/* 00104534 ram_load */

/* WARNING: Control flow encountered bad instruction data */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ram_load(ulong *param_1,long param_2)

{
  ulong uVar1;
  ushort *puVar2;
  int *piVar3;
  code *pcVar4;
  ulong uVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  ulong uVar9;
  uint uVar10;
  int iVar11;
  ulong uVar12;
  byte *pbVar13;
  ulong uVar14;
  
  ram_load_load_cont = ram_load_load_cont + 1;
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_00108e6d,"haptic_hv",0x6e9,"ram_load",aw_ram_name);
    release_firmware(0);
    if (0x14 < ram_load_load_cont) {
      return;
    }
    queue_delayed_work_on(0x20,_system_wq,param_2 + 0x3c0,0xfa);
    _printk(&DAT_00108e90,"haptic_hv",0x6ef,"ram_load",ram_load_load_cont);
    return;
  }
  _printk(&DAT_00109498,"haptic_hv",0x6f4,"ram_load",aw_ram_name,*param_1);
  uVar1 = *param_1;
  puVar2 = (ushort *)param_1[1];
  if (uVar1 < 3) {
    uVar6 = 0;
    goto LAB_00104654;
  }
  uVar9 = uVar1 - 2;
  if (uVar9 < 2) {
    uVar5 = 2;
    iVar8 = 2;
    uVar6 = 0;
LAB_00104630:
    do {
      iVar8 = iVar8 + 1;
      pbVar13 = (byte *)((long)puVar2 + uVar5);
      uVar5 = (ulong)iVar8;
      uVar6 = uVar6 + *pbVar13;
    } while (uVar5 < uVar1);
  }
  else {
    iVar8 = 2;
    uVar10 = (uint)(uVar1 - 3);
    uVar5 = 2;
    uVar6 = 0;
    if (((0x7ffffffd < uVar10) || (uVar6 = 0, 0x7ffffffc < uVar10)) || (uVar1 - 3 >> 0x20 != 0))
    goto LAB_00104630;
    uVar12 = uVar9 & 0xfffffffffffffffe;
    iVar7 = 0;
    uVar5 = uVar12 + 2;
    iVar8 = (int)uVar12 + 2;
    iVar11 = 0;
    pbVar13 = (byte *)((long)puVar2 + 3);
    uVar14 = uVar12;
    do {
      uVar14 = uVar14 - 2;
      iVar7 = iVar7 + (uint)pbVar13[-1];
      iVar11 = iVar11 + (uint)*pbVar13;
      pbVar13 = pbVar13 + 2;
    } while (uVar14 != 0);
    uVar6 = iVar11 + iVar7;
    if (uVar9 != uVar12) goto LAB_00104630;
  }
  uVar6 = uVar6 & 0xffff;
LAB_00104654:
  if (uVar6 == ((uint)(*puVar2 >> 8) | (*puVar2 & 0xff00ff) << 8)) {
    _printk(&DAT_0010967b,"haptic_hv",0x6fd,"ram_load",uVar6);
    *(uint *)(param_2 + 0x454) = uVar6;
    uVar9 = *param_1;
    uVar1 = uVar9 + 4;
    piVar3 = (int *)__kmalloc_noprof(uVar1,0xdc0);
    if (piVar3 == (int *)0x0) {
      release_firmware(param_1);
      _printk(&DAT_00108adf,"haptic_hv",0x704,"ram_load");
    }
    else {
      if (uVar1 < 4) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(1,0x104894);
        (*pcVar4)();
      }
      uVar5 = *param_1;
      uVar1 = 0;
      if (true) {
        uVar1 = uVar9;
      }
      *piVar3 = (int)uVar5;
      if (uVar1 < uVar5) {
        __fortify_panic(0x11);
                    /* WARNING: Bad instruction - Truncating control flow here */
        halt_baddata();
      }
      memcpy(piVar3 + 1,(void *)param_1[1],uVar5);
      release_firmware(param_1);
      pcVar4 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x30);
      if (*(int *)(pcVar4 + -4) != -0x2e8ff3f0) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x104804);
        (*pcVar4)();
      }
      iVar8 = (*pcVar4)(param_2,piVar3);
      if (iVar8 == 0) {
        iVar8 = *piVar3;
        *(undefined1 *)(param_2 + 6) = 1;
        *(uint *)(param_2 + 0x450) = iVar8 - (uint)*(byte *)(param_2 + 0x45e);
        _printk(&DAT_001091ac,"haptic_hv",0x711,"ram_load");
        get_ram_num(param_2);
      }
      else {
        _printk(&DAT_001095d1,"haptic_hv",0x70c,"ram_load");
      }
      kfree(piVar3);
    }
  }
  else {
    _printk(&DAT_0010882b,"haptic_hv",0x6f9,"ram_load",uVar6);
    release_firmware(param_1);
  }
  return;
}



/* 001048a0 get_ram_num */

void get_ram_num(long param_1)

{
  long lVar1;
  code *pcVar2;
  ushort local_3c [2];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = 0;
  if ((*(byte *)(param_1 + 6) & 1) == 0) {
    _printk(&ram_num_failure_format,"haptic_hv",0x268,"get_ram_num");
  }
  else {
    mutex_lock(param_1 + 0x2f0);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x104900);
      (*pcVar2)();
    }
    (*pcVar2)(param_1);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x68);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10492c);
      (*pcVar2)();
    }
    (*pcVar2)(param_1,1);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xf8);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x104954);
      (*pcVar2)();
    }
    (*pcVar2)(param_1);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x130);
    if (*(int *)(pcVar2 + -4) != 0x13c2d68c) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x104980);
      (*pcVar2)();
    }
    (*pcVar2)(param_1,local_3c);
    *(char *)(param_1 + 0x45c) =
         (char)(((uint)(local_3c[0] >> 8) | (local_3c[0] & 0xff00ff) << 8) +
                ~*(uint *)(param_1 + 0x458) >> 2);
    _printk(&ram_num_first_wave_format,"haptic_hv",0x277,"get_ram_num");
    _printk(&DAT_001092ce,"haptic_hv",0x278,"get_ram_num",*(undefined1 *)(param_1 + 0x45c));
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x68);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x104a0c);
      (*pcVar2)();
    }
    (*pcVar2)(param_1,0);
    mutex_unlock(param_1 + 0x2f0);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104a70 f0_save_store */

long f0_save_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    *(undefined4 *)(lVar2 + -0x20) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104af8 cont_save_store */

long cont_save_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    *(undefined4 *)(lVar2 + -0x38) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104b80 osc_save_store */

long osc_save_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    *(undefined4 *)(lVar2 + -0x10) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104c08 duration_aw_store */

long duration_aw_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else if (local_2c != 0) {
    *(int *)(lVar2 + -0x54) = local_2c;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104c94 vibrator_timer_func */

undefined8 vibrator_timer_func(long param_1)

{
  *(undefined4 *)(param_1 + -0x2f0) = 0;
  queue_work_on(0x20,*(undefined8 *)(param_1 + 0x118),param_1 + 0xf8);
  return 0;
}



/* 00104ccc gun_type_store */

long gun_type_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    *(undefined4 *)(lVar2 + -0x2c) = local_2c;
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104d64 bullet_nr_store */

long bullet_nr_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    *(undefined4 *)(lVar2 + -0x28) = local_2c;
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104dfc haptic_audio_time_store */

undefined8 haptic_audio_time_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%d %d",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    *(undefined4 *)(lVar2 + 0x430) = (undefined4)local_30;
    *(undefined4 *)(lVar2 + 0x434) = local_30._4_4_;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00104e94 audio_timer_func */

undefined8 audio_timer_func(long param_1)

{
  queue_work_on(0x20,*(undefined8 *)(param_1 + -0xd8),param_1 + 0x40);
  hrtimer_start_range_ns
            (param_1,(long)((*(int *)(param_1 + -0x44) % 1000000) * 1000) +
                     (long)(*(int *)(param_1 + -0x44) / 1000000) * 1000000000,0,1);
  return 0;
}



/* 00104f20 duration_show */

long duration_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  uVar2 = hrtimer_active(lVar3 + 0x288);
  if ((uVar2 & 1) == 0) {
    lVar3 = 0;
  }
  else {
    lVar3 = __hrtimer_get_remaining(lVar3 + 0x288,0);
    lVar3 = lVar3 / 1000000;
  }
  iVar1 = snprintf(param_3,0x1000,"duration = %lldms\n",lVar3);
  return (long)iVar1;
}



/* 00104fa0 duration_aw_show */

long duration_aw_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  uVar2 = hrtimer_active(lVar3 + 0x288);
  if ((uVar2 & 1) == 0) {
    lVar3 = 0;
  }
  else {
    lVar3 = __hrtimer_get_remaining(lVar3 + 0x288,0);
    lVar3 = lVar3 / 1000000;
  }
  iVar1 = snprintf(param_3,0x1000,"duration = %lldms\n",lVar3);
  return (long)iVar1;
}



/* 00105020 aw8693x_set_pwm */

void aw8693x_set_pwm(undefined8 param_1,byte param_2)

{
  undefined8 uVar1;
  
  if (param_2 < 2) {
    if (param_2 == 0) {
      uVar1 = 0x20;
    }
    else {
      if (param_2 != 1) {
LAB_001050a0:
        _printk(&DAT_00108a1b,"haptic_hv",0x156,"aw8693x_set_pwm");
        return;
      }
      uVar1 = 0;
    }
  }
  else if (param_2 == 2) {
    uVar1 = 0x40;
  }
  else {
    if (param_2 != 3) goto LAB_001050a0;
    uVar1 = 0x60;
  }
  i2c_w_bits(param_1,0x46,0xffffff9f,uVar1);
  return;
}



/* 001050c8 aw8693x_get_ram_data */

long aw8693x_get_ram_data(long param_1,long param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  
  uVar1 = *(uint *)(param_1 + 0x450);
  if (uVar1 != 0) {
    uVar2 = 0;
    do {
      uVar3 = uVar1 - uVar2;
      if (0x3ff < uVar3) {
        uVar3 = 0x400;
      }
      i2c_r_bytes(param_1,0x42,param_2 + (int)uVar2,uVar3);
      uVar1 = *(uint *)(param_1 + 0x450);
      uVar2 = uVar3 + uVar2;
    } while (uVar2 < uVar1);
    return (long)(int)uVar2;
  }
  return 0;
}



/* 00105150 prct_mode_show */

long prct_mode_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  int iVar2;
  code *pcVar3;
  
  pcVar3 = *(code **)(*(long *)(*(long *)(param_1 + 0x98) + 0x520) + 0x150);
  if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x10518c);
    (*pcVar3)();
  }
  uVar1 = (*pcVar3)(*(long *)(param_1 + 0x98) + -0xa8);
  iVar2 = snprintf(param_3,0x1000,"prctmode = %d\n",(ulong)(uVar1 & 0xff));
  return (long)iVar2;
}



/* 001051c0 ram_num_show */

long ram_num_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0x98);
  get_ram_num(lVar2 + -0xa8);
  iVar1 = snprintf(param_3,0x1000,"ram_num = %d\n",(ulong)*(byte *)(lVar2 + 0x3b4));
  return (long)iVar1;
}



/* 00105210 cont_show */

long cont_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x10);
  if (*(int *)(pcVar2 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10524c);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8);
  iVar1 = snprintf(param_3,0x1000,"cont_f0 = %d\n",(ulong)*(uint *)(lVar3 + -0x38));
  return (long)iVar1;
}



/* 00105280 lra_resistance_show */

long lra_resistance_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x78);
  if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1052bc);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8);
  iVar1 = snprintf(param_3,0x1000,"lra_resistance = %d\n",(ulong)*(uint *)(lVar3 + -0x44));
  return (long)iVar1;
}



/* 001052f0 index_show */

long index_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x120);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x105330);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8,1);
  *(uint *)(lVar3 + -100) = (uint)*(byte *)(lVar3 + -0x8a);
  iVar1 = snprintf(param_3,0x1000,"index = %d\n");
  return (long)iVar1;
}



/* 00105368 vbat_monitor_show */

long vbat_monitor_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar3 + 0x248);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x40);
  if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1053b4);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8);
  iVar1 = snprintf(param_3,0x1000,"vbat_monitor = %d\n",(ulong)*(uint *)(lVar3 + -0x40));
  mutex_unlock(lVar3 + 0x248);
  return (long)iVar1;
}



/* 001053f8 cali_show */

long cali_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar3 + 0x248);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x118);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x105448);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8,1);
  if (*(int *)((code *)**(undefined8 **)(lVar3 + 0x520) + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x105470);
    (*pcVar2)();
  }
  (*(code *)**(undefined8 **)(lVar3 + 0x520))(lVar3 + -0xa8);
  mutex_unlock(lVar3 + 0x248);
  iVar1 = snprintf(param_3,0x1000,"lra_f0 = %d cont_f0 = %d\n",(ulong)*(uint *)(lVar3 + -0x48),
                   (ulong)*(uint *)(lVar3 + -0x38));
  return (long)iVar1;
}



/* 001054b4 f0_show */

long f0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  
  lVar4 = *(long *)(param_1 + 0x98);
  lVar3 = lVar4 + -0xa8;
  mutex_lock(lVar4 + 0x248);
  pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x118);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x105504);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3,0);
  if (*(int *)((code *)**(undefined8 **)(lVar4 + 0x520) + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10552c);
    (*pcVar2)();
  }
  (*(code *)**(undefined8 **)(lVar4 + 0x520))(lVar3);
  pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x118);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x105558);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3,1);
  mutex_unlock(lVar4 + 0x248);
  iVar1 = snprintf(param_3,0x1000,"lra_f0 = %d cont_f0 = %d\n",(ulong)*(uint *)(lVar4 + -0x48),
                   (ulong)*(uint *)(lVar4 + -0x38));
  return (long)iVar1;
}



/* 0010559c ram_update_show */

long ram_update_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  long lVar4;
  long lVar5;
  
  lVar5 = *(long *)(param_1 + 0x98);
  lVar4 = lVar5 + -0xa8;
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0x38);
  if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1055e0);
    (*pcVar3)();
  }
  (*pcVar3)(lVar4);
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0x68);
  if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10560c);
    (*pcVar3)();
  }
  (*pcVar3)(lVar4,1);
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0xf8);
  if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x105634);
    (*pcVar3)();
  }
  (*pcVar3)(lVar4);
  builtin_strncpy(param_3,"aw_haptic_ram:\n",0x10);
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0x140);
  if (*(int *)(pcVar3 + -4) != 0xc0dba4c) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x105670);
    (*pcVar3)();
  }
  lVar2 = (*pcVar3)(lVar4,param_3);
  iVar1 = snprintf(param_3 + lVar2 + 0xf,0xff1 - lVar2,"\n");
  pcVar3 = *(code **)(*(long *)(lVar5 + 0x520) + 0x68);
  if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1056bc);
    (*pcVar3)();
  }
  (*pcVar3)(lVar4,0);
  return lVar2 + 0xf + (long)iVar1;
}



/* 001056dc ram_update_store */

long ram_update_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else if (local_2c != 0) {
    *(undefined2 *)(lVar2 + -0xa3) = 0;
    request_firmware_nowait
              (&__this_module,1,aw_ram_name,*(undefined8 *)(lVar2 + 0x278),0xcc0,lVar2 + -0xa8,
               ram_load);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105794 activate_mode_store */

long activate_mode_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    *(char *)(lVar2 + -0x8d) = (char)local_2c;
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010582c aw8693x_judge_rtp_going */

void aw8693x_judge_rtp_going(undefined8 param_1)

{
  long lVar1;
  bool bVar2;
  char local_1c [4];
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1c[0] = '\0';
  i2c_r_bytes(param_1,0x3f,local_1c,1);
  bVar2 = local_1c[0] == '\b';
  if (bVar2) {
    _printk(&DAT_001096a4,"haptic_hv",0x3fe,"aw8693x_judge_rtp_going");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(bVar2);
}



/* 001058c0 reg_store */

undefined8 reg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined1 local_34 [4];
  ulong local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    local_34[0] = (undefined1)(local_30 >> 0x20);
    i2c_w_bytes(lVar2 + -0xa8,local_30 & 0xffffffff,local_34,1);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105960 ram_vbat_comp_store */

long ram_vbat_comp_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar2 + 0x248);
    *(bool *)(lVar2 + -0x8c) = local_2c != 0;
    mutex_unlock(lVar2 + 0x248);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105a00 aw8693x_get_wav_seq */

void aw8693x_get_wav_seq(long param_1,uint param_2)

{
  long lVar1;
  uint uVar2;
  undefined8 local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  uVar2 = param_2;
  if (7 < param_2) {
    uVar2 = 8;
  }
  local_40 = 0;
  i2c_r_bytes(param_1,10,&local_40,(ulong)uVar2);
  if (param_2 != 0) {
    memcpy((void *)(param_1 + 0x1e),&local_40,(ulong)uVar2);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105a94 aw8693x_play_go */

void aw8693x_play_go(undefined8 param_1,uint param_2)

{
  long lVar1;
  undefined1 uVar2;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  uVar2 = 1;
  if ((param_2 & 1) == 0) {
    uVar2 = 2;
  }
  _printk(&DAT_00108c52,"haptic_hv",0x1d7,"aw8693x_play_go",param_2 & 1);
  local_2c[0] = uVar2;
  i2c_w_bytes(param_1,9,local_2c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105b30 aw8693x_interrupt_setup */

void aw8693x_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  i2c_r_bytes(param_1,2,local_2c,1);
  i2c_w_bits(param_1,0x46,0xffffffe7,8);
  i2c_w_bits(param_1,3,0xffffff19,0x40);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105bc0 aw8693x_bst_mode_config */

void aw8693x_bst_mode_config(undefined8 param_1,char param_2)

{
  if (param_2 == '\0') {
    _printk(&DAT_00108a61,"haptic_hv",0x1fe,"aw8693x_bst_mode_config");
    i2c_w_bits(param_1,6,0xffffffdf,0);
  }
  else if (param_2 == '\x01') {
    _printk(&DAT_00109769,"haptic_hv",0x1f8,"aw8693x_bst_mode_config");
    i2c_w_bits(param_1,6,0xffffffdf,0x20);
  }
  else {
    _printk(&DAT_00108c84,"haptic_hv",0x204,"aw8693x_bst_mode_config",param_2);
  }
  return;
}



/* 00105c90 aw8693x_get_theory_time */

uint aw8693x_get_theory_time(long param_1)

{
  long lVar1;
  uint uVar2;
  uint uVar3;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  i2c_r_bytes(param_1,0x46,local_2c,1);
  if ((local_2c[0] & 0x60) == 0x40) {
    uVar2 = 0xc;
  }
  else if ((local_2c[0] & 0x60) == 0x20) {
    uVar2 = 0x30;
  }
  else {
    if ((local_2c[0] & 0x60) != 0) {
      uVar3 = 0;
      goto LAB_00105d10;
    }
    uVar2 = 0x18;
  }
  uVar3 = 0;
  if (uVar2 != 0) {
    uVar3 = (uint)(*(int *)(param_1 + 0x78) * 1000) / uVar2;
  }
LAB_00105d10:
  _printk(&DAT_00109957,"haptic_hv",0x6a0,"aw8693x_get_theory_time",*(undefined8 *)(param_1 + 0xa0),
          uVar3);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar3;
}



/* 00105d6c brightness_set */

void brightness_set(long param_1,undefined4 param_2)

{
  _printk(&DAT_00108d4f,"haptic_hv",0x889,"brightness_set");
  if ((*(byte *)(param_1 + -0xa2) & 1) == 0) {
    _printk(&DAT_00109922,"haptic_hv",0x88b,"brightness_set");
  }
  else {
    mutex_lock(param_1 + 0x248);
    *(undefined4 *)(param_1 + -0x50) = param_2;
    *(undefined4 *)(param_1 + -0x68) = param_2;
    *(undefined1 *)(param_1 + -0x8d) = 1;
    mutex_unlock(param_1 + 0x248);
    queue_work_on(0x20,*(undefined8 *)(param_1 + 0x3a0),param_1 + 0x380);
  }
  return;
}



/* 00105e14 aw8693x_get_irq_state */

void aw8693x_get_irq_state(long param_1)

{
  long lVar1;
  undefined4 uVar2;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0x5b;
  }
  i2c_r_bytes(param_1,2,local_2c,1);
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0;
  }
  if ((char)local_2c[0] < '\0') {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_00109790,"haptic_hv",0x46b,"aw8693x_get_irq_state");
    uVar2 = 3;
  }
  else {
    uVar2 = 0xffffffff;
  }
  if ((local_2c[0] >> 6 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_001096c5,"haptic_hv",0x471,"aw8693x_get_irq_state");
    uVar2 = 4;
  }
  if ((local_2c[0] >> 5 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_0010998f,"haptic_hv",0x477,"aw8693x_get_irq_state");
    uVar2 = 5;
  }
  if ((local_2c[0] >> 2 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_00109893,"haptic_hv",0x47d,"aw8693x_get_irq_state");
    uVar2 = 6;
  }
  if ((local_2c[0] >> 1 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_001096e8,"haptic_hv",0x483,"aw8693x_get_irq_state");
    uVar2 = 7;
  }
  if ((local_2c[0] & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_00109159,"haptic_hv",0x489,"aw8693x_get_irq_state");
    uVar2 = 10;
  }
  if ((local_2c[0] >> 3 & 1) != 0) {
    _printk(&DAT_001092ee,"haptic_hv",0x48e,"aw8693x_get_irq_state");
    uVar2 = 2;
  }
  lVar1 = sp_el0;
  if ((local_2c[0] & 0x10) != 0) {
    uVar2 = 0;
  }
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}



/* 00106028 aw8693x_protect_config */

void aw8693x_protect_config(undefined8 param_1,undefined1 param_2,byte param_3)

{
  long lVar1;
  byte local_40 [4];
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = param_2;
  i2c_w_bits(param_1,0x48,0xffffff7f,0);
  if (param_3 == 0) {
    _printk(&DAT_00108889,"haptic_hv",0x2ed,"aw8693x_protect_config");
    i2c_w_bits(param_1,0x4a,0xffffff7f,0);
  }
  else {
    _printk(&DAT_001095fe,"haptic_hv",0x2e6,"aw8693x_protect_config");
    local_40[0] = param_3 | 0x80;
    i2c_w_bytes(param_1,0x4a,local_40,1);
    i2c_w_bytes(param_1,0x4b,local_3c,1);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010612c aw8693x_upload_lra */

void aw8693x_upload_lra(long param_1,int param_2)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  if (param_2 == 2) {
    _printk(&DAT_0010902d,"haptic_hv",0x2c6,"aw8693x_upload_lra",*(undefined4 *)(param_1 + 0x98));
    local_2c[0] = *(byte *)(param_1 + 0x98);
  }
  else {
    if (param_2 == 1) {
      _printk(&DAT_00108b48,"haptic_hv",0x2c2,"aw8693x_upload_lra",*(undefined4 *)(param_1 + 0x88));
    }
    else {
      if (param_2 == 0) {
        _printk(&DAT_001094bf,"haptic_hv",0x2bf,"aw8693x_upload_lra");
        goto LAB_0010620c;
      }
      _printk(&DAT_00109370,"haptic_hv",0x2ca,"aw8693x_upload_lra");
    }
    local_2c[0] = *(byte *)(param_1 + 0x88);
  }
  local_2c[0] = local_2c[0] & 0x7f;
LAB_0010620c:
  i2c_w_bytes(param_1,0x5d,local_2c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106250 awrw_show */

long awrw_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  long lVar5;
  uint uVar6;
  
  lVar4 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar4 + 0x248);
  if (*(int *)(lVar4 + 0x528) == 1) {
    if (*(long *)(lVar4 + 0x530) != 0) {
      if (*(int *)(lVar4 + 0x52c) == 0) {
        lVar5 = 0;
      }
      else {
        lVar5 = 0;
        uVar6 = 0;
        do {
          iVar1 = snprintf((char *)(param_3 + lVar5),0x1000 - lVar5,"0x%02x,",
                           (ulong)*(byte *)(*(long *)(lVar4 + 0x530) + (long)(int)uVar6));
          uVar6 = uVar6 + 1;
          lVar5 = lVar5 + iVar1;
        } while (uVar6 < *(uint *)(lVar4 + 0x52c));
        iVar1 = snprintf((char *)(param_3 + lVar5 + -1),0x1000 - lVar5,"\n");
        lVar5 = lVar5 + iVar1;
      }
      goto LAB_00106344;
    }
    puVar2 = &DAT_00109324;
    uVar3 = 0xc54;
  }
  else {
    puVar2 = &DAT_001089c0;
    uVar3 = 0xc50;
  }
  _printk(puVar2,"haptic_hv",uVar3,"awrw_show");
  lVar5 = -0x22;
LAB_00106344:
  mutex_unlock(lVar4 + 0x248);
  return lVar5;
}



/* 0010636c awrw_store */

undefined8 awrw_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  size_t sVar5;
  undefined1 *puVar6;
  undefined8 uVar7;
  ulong uVar8;
  long lVar9;
  code *pcVar10;
  long lVar11;
  uint uVar12;
  undefined4 local_94;
  undefined8 local_90;
  undefined1 local_88 [4];
  undefined1 local_84 [4];
  undefined4 local_80;
  undefined1 local_7c;
  undefined2 local_78;
  undefined4 local_76;
  undefined2 local_72;
  undefined1 *local_70;
  undefined2 local_68;
  undefined2 local_66;
  undefined2 local_64;
  undefined2 local_62;
  undefined8 local_60;
  long local_58;
  
  lVar11 = sp_el0;
  local_58 = *(long *)(lVar11 + 0x710);
  lVar11 = *(long *)(param_1 + 0x98);
  local_88[0] = 0;
  local_7c = 0;
  local_80 = 0;
  local_90 = 0;
  local_94 = 0;
  iVar2 = sscanf(param_3,"%x %x %x",(long)&local_90 + 4,&local_90,&local_94);
  if (iVar2 != 3) {
    _printk(&DAT_00109415,"haptic_hv",0xc94,"awrw_store");
    goto LAB_001066a4;
  }
  iVar2 = (uint)local_90;
  if ((uint)local_90 == 0) {
    _printk(&DAT_00109415,"haptic_hv",0xc6f,"awrw_store");
    param_4 = 0xffffffffffffffde;
    goto LAB_001066a4;
  }
  mutex_lock(lVar11 + 0x248);
  uVar1 = local_90._4_4_;
  lVar4 = __kmalloc_noprof(local_90 & 0xffffffff,0xcc0);
  if (lVar4 == 0) {
    param_4 = 0xfffffffffffffff4;
  }
  else {
    lVar9 = *(long *)(lVar11 + 0x530);
    *(int *)(lVar11 + 0x52c) = iVar2;
    *(undefined4 *)(lVar11 + 0x528) = uVar1;
    *(long *)(lVar11 + 0x530) = lVar4;
    if (lVar9 != 0) {
      kfree(lVar9);
    }
    lVar4 = lVar11 + -0xa8;
    if (local_90._4_4_ == 1) {
      pcVar10 = *(code **)(*(long *)(lVar11 + 0x520) + 0x38);
      if (*(int *)(pcVar10 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x1064c4);
        (*pcVar10)();
      }
      (*pcVar10)(lVar4);
      pcVar10 = *(code **)(*(long *)(lVar11 + 0x520) + 0x110);
      if (*(int *)(pcVar10 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x1064f0);
        (*pcVar10)();
      }
      (*pcVar10)(lVar4,0);
      pcVar10 = *(code **)(*(long *)(lVar11 + 0x520) + 0xf0);
      if (*(int *)(pcVar10 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x106518);
        (*pcVar10)();
      }
      (*pcVar10)(lVar4);
      local_84[0] = (undefined1)local_94;
      local_60 = *(undefined8 *)(lVar11 + 0x530);
      local_78 = *(undefined2 *)(*(long *)(lVar11 + 0x280) + 2);
      local_76 = 0x10000;
      local_70 = local_84;
      local_72 = 0;
      local_66 = 1;
      local_64 = (undefined2)local_90;
      local_62 = 0;
      local_68 = local_78;
      iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(lVar11 + 0x280) + 0x18),&local_78,2);
      if (iVar2 < 0) {
        puVar6 = &DAT_00108bf3;
        uVar7 = 0x65;
      }
      else {
        if (iVar2 == 2) goto LAB_0010669c;
        puVar6 = &DAT_001090d6;
        uVar7 = 0x68;
      }
      _printk(puVar6,"haptic_hv",uVar7,"i2c_r_bytes");
    }
    else if (local_90._4_4_ == 0) {
      iVar2 = (uint)local_90;
      uVar12 = (uint)local_90 * 5;
      sVar5 = strlen(param_3);
      if (sVar5 - 0xf == (ulong)uVar12) {
        if (iVar2 == 0) {
          uVar8 = 0;
        }
        else {
          uVar12 = 0;
          iVar2 = 0xf;
          do {
            local_80 = *(undefined4 *)(param_3 + iVar2);
            local_7c = 0;
            iVar3 = kstrtou8(&local_80,0,local_88);
            if (iVar3 < 0) {
              uVar7 = 0xc81;
              goto LAB_00106664;
            }
            iVar2 = iVar2 + 5;
            *(undefined1 *)(*(long *)(lVar11 + 0x530) + (long)(int)uVar12) = local_88[0];
            uVar12 = uVar12 + 1;
            uVar8 = local_90 & 0xffffffff;
          } while (uVar12 < (uint)local_90);
        }
        i2c_w_bytes(lVar4,local_94,*(undefined8 *)(lVar11 + 0x530),uVar8);
      }
      else {
        uVar7 = 0xc79;
LAB_00106664:
        _printk(&DAT_00109415,"haptic_hv",uVar7,"awrw_store");
        param_4 = 0xffffffffffffffde;
      }
    }
  }
LAB_0010669c:
  mutex_unlock(lVar11 + 0x248);
LAB_001066a4:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}



/* 001066e4 activate_aw_store */

long activate_aw_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_00108954,"haptic_hv",0x92d,"activate_aw_store",local_2c);
    if ((*(byte *)(lVar2 + -0xa2) & 1) == 0) {
      _printk(&DAT_00109922,"haptic_hv",0x92f,"activate_aw_store");
    }
    else {
      mutex_lock(lVar2 + 0x248);
      hrtimer_cancel(lVar2 + 0x288);
      *(undefined4 *)(lVar2 + -0x68) = local_2c;
      mutex_unlock(lVar2 + 0x248);
      queue_work_on(0x20,*(undefined8 *)(lVar2 + 0x3a0),lVar2 + 0x380);
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001067e4 vmax_store */

long vmax_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined4 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_00108954,"haptic_hv",0x992,"vmax_store",local_3c);
    mutex_lock(lVar3 + 0x248);
    *(undefined4 *)(lVar3 + -0x78) = local_3c;
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0xa0);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1068bc);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001068d4 gain_store */

long gain_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined4 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    _printk(&DAT_001089f0,"haptic_hv",0x9b0,"gain_store",local_3c);
    mutex_lock(lVar3 + 0x248);
    *(undefined4 *)(lVar3 + -0x74) = local_3c;
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x88);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1069ac);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001069c4 richtap_stop_work */

void richtap_stop_work(long param_1)

{
  code *pcVar1;
  long lVar2;
  
  lVar2 = param_1 + -0x668;
  mutex_lock(param_1 + -0x378);
  pcVar1 = *(code **)(*(long *)(param_1 + -0xa0) + 0xf0);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x106a10);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2);
  pcVar1 = *(code **)(*(long *)(param_1 + -0xa0) + 0x38);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x106a38);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2);
  mutex_unlock(param_1 + -0x378);
  pcVar1 = *(code **)(*(long *)(param_1 + -0xa0) + 0x110);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x106a6c);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2,0);
  *(undefined4 *)(param_1 + 0x54) = 0;
  return;
}



/* 00106a8c auto_boost_store */

long auto_boost_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined4 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    mutex_lock(lVar3 + 0x248);
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x106b04);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0xb0);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x106b30);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8,local_3c);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106b7c index_store */

long index_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else if (*(byte *)(lVar3 + 0x3b4) < local_3c) {
    _printk(&DAT_001093ae,"haptic_hv",0x971,"index_store");
  }
  else {
    _printk(&DAT_00108954,"haptic_hv",0x974,"index_store");
    mutex_lock(lVar3 + 0x248);
    *(uint *)(lVar3 + -100) = local_3c;
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0xa8);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x106c84);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106c9c prct_mode_store */

undefined8 prct_mode_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  ulong uVar1;
  undefined4 uVar2;
  int iVar3;
  code *pcVar4;
  long lVar5;
  undefined8 local_50;
  long local_48;
  
  lVar5 = sp_el0;
  local_48 = *(long *)(lVar5 + 0x710);
  lVar5 = *(long *)(param_1 + 0x98);
  local_50 = 0;
  iVar3 = sscanf(param_3,"%x %x",&local_50,(ulong)&local_50 | 4);
  uVar1 = local_50;
  if (iVar3 == 2) {
    uVar2 = local_50._4_4_;
    mutex_lock(lVar5 + 0x248);
    pcVar4 = *(code **)(*(long *)(lVar5 + 0x520) + 0xd8);
    if (*(int *)(pcVar4 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x106d34);
      (*pcVar4)();
    }
    (*pcVar4)(lVar5 + -0xa8,uVar1 & 0xffffffff,uVar2);
    mutex_unlock(lVar5 + 0x248);
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106d7c aw8693x_get_reg */

long aw8693x_get_reg(undefined8 param_1,long param_2,long param_3)

{
  uint uVar1;
  long lVar2;
  int iVar3;
  ulong uVar4;
  byte local_d0 [136];
  long local_48;
  
  lVar2 = sp_el0;
  local_48 = *(long *)(lVar2 + 0x710);
  local_d0[0x70] = 0;
  local_d0[0x71] = 0;
  local_d0[0x72] = 0;
  local_d0[0x73] = 0;
  local_d0[0x74] = 0;
  local_d0[0x75] = 0;
  local_d0[0x76] = 0;
  local_d0[0x77] = 0;
  local_d0[0x78] = 0;
  local_d0[0x79] = 0;
  local_d0[0x7a] = 0;
  local_d0[0x7b] = 0;
  local_d0[0x7c] = 0;
  local_d0[0x7d] = 0;
  local_d0[0x7e] = 0;
  local_d0[0x7f] = 0;
  local_d0[0x80] = 0;
  local_d0[0x81] = 0;
  local_d0[0x82] = 0;
  local_d0[0x60] = 0;
  local_d0[0x61] = 0;
  local_d0[0x62] = 0;
  local_d0[99] = 0;
  local_d0[100] = 0;
  local_d0[0x65] = 0;
  local_d0[0x66] = 0;
  local_d0[0x67] = 0;
  local_d0[0x68] = 0;
  local_d0[0x69] = 0;
  local_d0[0x6a] = 0;
  local_d0[0x6b] = 0;
  local_d0[0x6c] = 0;
  local_d0[0x6d] = 0;
  local_d0[0x6e] = 0;
  local_d0[0x6f] = 0;
  local_d0[0x50] = 0;
  local_d0[0x51] = 0;
  local_d0[0x52] = 0;
  local_d0[0x53] = 0;
  local_d0[0x54] = 0;
  local_d0[0x55] = 0;
  local_d0[0x56] = 0;
  local_d0[0x57] = 0;
  local_d0[0x58] = 0;
  local_d0[0x59] = 0;
  local_d0[0x5a] = 0;
  local_d0[0x5b] = 0;
  local_d0[0x5c] = 0;
  local_d0[0x5d] = 0;
  local_d0[0x5e] = 0;
  local_d0[0x5f] = 0;
  local_d0[0x40] = 0;
  local_d0[0x41] = 0;
  local_d0[0x42] = 0;
  local_d0[0x43] = 0;
  local_d0[0x44] = 0;
  local_d0[0x45] = 0;
  local_d0[0x46] = 0;
  local_d0[0x47] = 0;
  local_d0[0x48] = 0;
  local_d0[0x49] = 0;
  local_d0[0x4a] = 0;
  local_d0[0x4b] = 0;
  local_d0[0x4c] = 0;
  local_d0[0x4d] = 0;
  local_d0[0x4e] = 0;
  local_d0[0x4f] = 0;
  local_d0[0x30] = 0;
  local_d0[0x31] = 0;
  local_d0[0x32] = 0;
  local_d0[0x33] = 0;
  local_d0[0x34] = 0;
  local_d0[0x35] = 0;
  local_d0[0x36] = 0;
  local_d0[0x37] = 0;
  local_d0[0x38] = 0;
  local_d0[0x39] = 0;
  local_d0[0x3a] = 0;
  local_d0[0x3b] = 0;
  local_d0[0x3c] = 0;
  local_d0[0x3d] = 0;
  local_d0[0x3e] = 0;
  local_d0[0x3f] = 0;
  local_d0[0x20] = 0;
  local_d0[0x21] = 0;
  local_d0[0x22] = 0;
  local_d0[0x23] = 0;
  local_d0[0x24] = 0;
  local_d0[0x25] = 0;
  local_d0[0x26] = 0;
  local_d0[0x27] = 0;
  local_d0[0x28] = 0;
  local_d0[0x29] = 0;
  local_d0[0x2a] = 0;
  local_d0[0x2b] = 0;
  local_d0[0x2c] = 0;
  local_d0[0x2d] = 0;
  local_d0[0x2e] = 0;
  local_d0[0x2f] = 0;
  local_d0[0x10] = 0;
  local_d0[0x11] = 0;
  local_d0[0x12] = 0;
  local_d0[0x13] = 0;
  local_d0[0x14] = 0;
  local_d0[0x15] = 0;
  local_d0[0x16] = 0;
  local_d0[0x17] = 0;
  local_d0[0x18] = 0;
  local_d0[0x19] = 0;
  local_d0[0x1a] = 0;
  local_d0[0x1b] = 0;
  local_d0[0x1c] = 0;
  local_d0[0x1d] = 0;
  local_d0[0x1e] = 0;
  local_d0[0x1f] = 0;
  local_d0[0] = 0;
  local_d0[1] = 0;
  local_d0[2] = 0;
  local_d0[3] = 0;
  local_d0[4] = 0;
  local_d0[5] = 0;
  local_d0[6] = 0;
  local_d0[7] = 0;
  local_d0[8] = 0;
  local_d0[9] = 0;
  local_d0[10] = 0;
  local_d0[0xb] = 0;
  local_d0[0xc] = 0;
  local_d0[0xd] = 0;
  local_d0[0xe] = 0;
  local_d0[0xf] = 0;
  i2c_r_bytes(param_1,0,local_d0,0x32);
  i2c_r_bytes(param_1,0x33,local_d0 + 0x33,0xf);
  i2c_r_bytes(param_1,0x43,local_d0 + 0x43,0x40);
  uVar4 = 0;
  do {
    uVar1 = (uint)uVar4 & 0xff;
    if ((uVar1 != 0x32) && (uVar1 != 0x42)) {
      iVar3 = snprintf((char *)(param_3 + param_2),0x1000 - param_2,"reg:0x%02X=0x%02X\n",
                       uVar4 & 0xffffffff,(ulong)local_d0[uVar4]);
      param_2 = param_2 + iVar3;
    }
    uVar4 = uVar4 + 1;
  } while (uVar4 != 0x83);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_48) {
    return param_2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00106ea0 aw8693x_cont_config */

void aw8693x_cont_config(long param_1)

{
  long lVar1;
  undefined1 local_40 [4];
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_40[0] = 0xff;
  _printk(&DAT_00109205,"haptic_hv",0x275,"aw8693x_play_mode");
  *(undefined1 *)(param_1 + 0x17) = 4;
  i2c_w_bits(param_1,8,0xfffffffc,2);
  i2c_w_bits(param_1,8,0xfffffffb,4);
  _printk(&DAT_00108a61,"haptic_hv",0x1fe,"aw8693x_bst_mode_config");
  i2c_w_bits(param_1,6,0xffffffdf,0);
  i2c_w_bits(param_1,0x4c,0xffffffbf,0x40);
  i2c_w_bits(param_1,0x1d,0xffffff7f,(ulong)*(byte *)(param_1 + 0x4c0) << 7);
  i2c_w_bits(param_1,0x1d,0xffffff80,*(undefined1 *)(param_1 + 0x49a));
  i2c_w_bytes(param_1,0x1e,param_1 + 0x49b,1);
  i2c_w_bytes(param_1,0x20,local_40,1);
  _printk(&DAT_00108c52,"haptic_hv",0x1d7,"aw8693x_play_go",1);
  local_3c[0] = 1;
  i2c_w_bytes(param_1,9,local_3c,1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010702c aw8693x_stop */

void aw8693x_stop(long param_1)

{
  long lVar1;
  bool bVar2;
  int iVar3;
  undefined1 local_30 [4];
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_00108d4f,"haptic_hv",0x2a9,"aw8693x_stop");
  *(undefined1 *)(param_1 + 0x17) = 0;
  local_30[0] = 1;
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,8,0xfffffffc,3);
  i2c_w_bytes(param_1,9,local_30,1);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  iVar3 = -100;
  do {
    local_2c[0] = '\0';
    i2c_r_bytes(param_1,0x3f,local_2c,1);
    if (local_2c[0] == '\0') {
      _printk(&DAT_00109806,"haptic_hv",0x1ea,"aw8693x_wait_enter_standby");
      goto LAB_001071c4;
    }
    usleep_range_state(2000,0x9c4,2);
    bVar2 = iVar3 != -1;
    iVar3 = iVar3 + 1;
  } while (bVar2);
  _printk(&DAT_001088b2,"haptic_hv",0x1ef,"aw8693x_wait_enter_standby");
  _printk(&DAT_001093d9,"haptic_hv",0x2b4,"aw8693x_stop");
  _printk(&DAT_0010896e,"haptic_hv",0x23e,"aw8693x_play_mode");
  *(undefined1 *)(param_1 + 0x17) = 0;
  i2c_w_bits(param_1,0x45,0xffffffdf,0x20);
  i2c_w_bits(param_1,0x45,0xffffffdf,0);
LAB_001071c4:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001071f4 aw8693x_get_lra_resistance */

void aw8693x_get_lra_resistance(long param_1)

{
  long lVar1;
  byte bVar2;
  byte bVar3;
  byte local_40 [4];
  undefined2 local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_40[0] = 0;
  local_3c = 0;
  aw8693x_stop();
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,0x4e,0xffffff87,0x18);
  i2c_r_bytes(param_1,0x4d,local_40,1);
  bVar2 = local_40[0];
  i2c_r_bytes(param_1,0x4e,local_40,1);
  bVar3 = local_40[0];
  i2c_w_bits(param_1,0x4e,0xfffffff8,4);
  i2c_w_bits(param_1,0x4d,0xfffffff0,5);
  usleep_range_state(3000,0xdac,2);
  i2c_w_bits(param_1,0x4d,0xfffffffc,0);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  i2c_w_bits(param_1,0x4d,0xfffffff3,bVar2 & 0xc);
  i2c_w_bits(param_1,0x4e,0xfffffff8,bVar3 & 7);
  i2c_r_bytes(param_1,0x4f,&local_3c,2);
  *(uint *)(param_1 + 100) = (((uint)local_3c._1_1_ | ((byte)local_3c & 3) << 8) * 610000) / 0x27f6;
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010738c aw8693x_get_vbat */

void aw8693x_get_vbat(long param_1)

{
  uint uVar1;
  long lVar2;
  ulong uVar3;
  undefined2 local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_2c = 0;
  aw8693x_stop();
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  i2c_w_bits(param_1,0x4e,0xffffff87,0);
  i2c_w_bits(param_1,0x4d,0xfffffffc,1);
  usleep_range_state(3000,0xdac,2);
  i2c_w_bits(param_1,0x4d,0xfffffffc,0);
  i2c_r_bytes(param_1,0x4f,&local_2c,2);
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  uVar1 = (uint)local_2c._1_1_ | ((byte)local_2c & 3) << 8;
  uVar3 = (ulong)(uVar1 * 0x17d4) / 0x3ff;
  *(uint *)(param_1 + 0x68) = (uVar1 * 0x17d4) / 0x3ff;
  if (0x2f2 < uVar1) {
    *(undefined4 *)(param_1 + 0x68) = 0x1194;
    _printk(&DAT_001099e7,"haptic_hv",0x5d7,"aw8693x_get_vbat",0x1194);
    uVar3 = (ulong)*(uint *)(param_1 + 0x68);
  }
  if ((uint)uVar3 < 3000) {
    *(undefined4 *)(param_1 + 0x68) = 3000;
    _printk(&DAT_00108f4e,"haptic_hv",0x5db,"aw8693x_get_vbat",3000);
    uVar3 = (ulong)*(uint *)(param_1 + 0x68);
  }
  _printk(&DAT_00109067,"haptic_hv",0x5dd,"aw8693x_get_vbat",uVar3,uVar1);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010753c aw8693x_get_f0 */

void aw8693x_get_f0(long param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  ushort uVar4;
  byte bVar5;
  bool bVar6;
  undefined *puVar7;
  undefined8 uVar8;
  int iVar9;
  undefined4 uVar10;
  byte local_44 [4];
  undefined1 local_40;
  undefined2 local_3f;
  undefined2 local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  local_44[0] = 0;
  *(undefined4 *)(param_1 + 0x60) = *(undefined4 *)(param_1 + 0x468);
  aw8693x_stop();
  _printk(&DAT_00108d4f,"haptic_hv",0x20d,"aw8693x_vbat_ref_config");
  i2c_w_bits(param_1,0x4d,0xffffff8f,0x20);
  i2c_w_bits(param_1,0x4e,0xfffffff8,*(undefined1 *)(param_1 + 0x495));
  _printk(&DAT_00109205,"haptic_hv",0x275,"aw8693x_play_mode");
  *(undefined1 *)(param_1 + 0x17) = 4;
  i2c_w_bits(param_1,8,0xfffffffc,2);
  i2c_w_bits(param_1,8,0xfffffffb,4);
  _printk(&DAT_00108a61,"haptic_hv",0x1fe,"aw8693x_bst_mode_config");
  i2c_w_bits(param_1,6,0xffffffdf,0);
  i2c_w_bits(param_1,0x4c,0xffffffbf,0x40);
  i2c_w_bits(param_1,0x18,0xffffffdf,0x20);
  i2c_w_bits(param_1,0x1d,0xffffff7f,(ulong)*(byte *)(param_1 + 0x4c0) << 7);
  i2c_r_bytes(param_1,8,local_44,1);
  bVar5 = local_44[0];
  i2c_w_bits(param_1,8,0xfffffffb,4);
  i2c_w_bits(param_1,0x1d,0xffffff80,*(undefined1 *)(param_1 + 0x49a));
  local_40 = *(undefined1 *)(param_1 + 0x49b);
  local_3f = *(undefined2 *)(param_1 + 0x4a0);
  i2c_w_bytes(param_1,0x1e,&local_40,3);
  if (*(char *)(param_1 + 0x4a3) == '\0') {
    _printk(&DAT_00108b81,"haptic_hv",0x4dd,"aw8693x_get_f0");
    uVar1 = *(uint *)(param_1 + 0x468);
  }
  else {
    i2c_w_bytes(param_1,0x22,param_1 + 0x4a3,1);
    uVar1 = *(uint *)(param_1 + 0x468);
  }
  if (uVar1 == 0) {
    uVar10 = 0xffffffde;
  }
  else {
    local_3c._1_1_ = (undefined1)(local_3c >> 8);
    uVar2 = 0;
    if (uVar1 != 0) {
      uVar2 = 240000 / uVar1;
    }
    iVar9 = (uVar2 - ((uint)*(byte *)(param_1 + 0x49f) + (uint)*(byte *)(param_1 + 0x4a3))) + -8;
    if (0xfe < iVar9) {
      iVar9 = 0xff;
    }
    if (0xfe < uVar2) {
      uVar2 = 0xff;
    }
    local_40 = (undefined1)uVar2;
    uVar4 = (ushort)local_3f >> 8;
    local_3f = CONCAT11((char)uVar4,(byte)iVar9 & ((byte)(iVar9 >> 0x1f) ^ 0xff));
    i2c_w_bytes(param_1,0x19,&local_40,2);
    _printk(&DAT_00108c52,"haptic_hv",0x1d7,"aw8693x_play_go",1);
    local_3c = CONCAT11(local_3c._1_1_,1);
    i2c_w_bytes(param_1,9,&local_3c,1);
    usleep_range_state(20000,0x5014,2);
    iVar9 = -100;
    do {
      local_3c = local_3c & 0xff00;
      i2c_r_bytes(param_1,0x3f,&local_3c,1);
      if ((char)local_3c == '\0') {
        puVar7 = &DAT_00109806;
        uVar8 = 0x1ea;
        goto LAB_00107878;
      }
      usleep_range_state(2000,0x9c4,2);
      bVar6 = iVar9 != -1;
      iVar9 = iVar9 + 1;
    } while (bVar6);
    puVar7 = &DAT_001088b2;
    uVar8 = 0x1ef;
LAB_00107878:
    _printk(puVar7,"haptic_hv",uVar8,"aw8693x_wait_enter_standby");
    local_3c = 0;
    i2c_r_bytes(param_1,0x27,&local_3c,2);
    uVar1 = (uint)(local_3c >> 8) | (local_3c & 0xff00ff) << 8;
    if (uVar1 == 0) {
      *(undefined4 *)(param_1 + 0x60) = 0;
      _printk(&DAT_00108d79,"haptic_hv",0x4ac,"aw8693x_read_f0");
      uVar10 = 0xffffffde;
    }
    else {
      uVar2 = 0;
      if (uVar1 != 0) {
        uVar2 = 0x3a9800 / uVar1;
      }
      *(uint *)(param_1 + 0x60) = uVar2;
      *(uint *)(param_1 + 0x70) = uVar2;
      _printk(&DAT_00108da7,"haptic_hv",0x4b1,"aw8693x_read_f0");
      uVar10 = 0;
    }
    i2c_w_bits(param_1,0x18,0xffffffdf,0);
    i2c_w_bits(param_1,8,0xfffffffb,bVar5 & 4);
    _printk(&DAT_00108d4f,"haptic_hv",0x20d,"aw8693x_vbat_ref_config");
    i2c_w_bits(param_1,0x4d,0xffffff8f,0x40);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar10);
  }
  return;
}



/* 00107970 aw8693x_ram_get_f0 */

void aw8693x_ram_get_f0(long param_1)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  byte bVar4;
  bool bVar5;
  undefined1 *puVar6;
  undefined *puVar7;
  undefined8 uVar8;
  byte bVar9;
  int iVar10;
  undefined4 uVar11;
  byte local_50 [4];
  undefined1 local_4c [4];
  undefined1 local_48 [4];
  undefined1 local_44 [4];
  char local_40 [4];
  ushort local_3c [2];
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  local_50[0] = 0;
  if ((*(byte *)(param_1 + 6) & 1) == 0) {
    puVar6 = &DAT_00109922;
    uVar8 = 0x50a;
  }
  else {
    if (4 < *(byte *)(param_1 + 0x45c)) {
      *(undefined4 *)(param_1 + 0x60) = *(undefined4 *)(param_1 + 0x468);
      aw8693x_stop(param_1);
      i2c_w_bits(param_1,0x4e,0xfffffff8,*(undefined1 *)(param_1 + 0x495));
      _printk(&DAT_00108f73,"haptic_hv",0x24f,"aw8693x_play_mode");
      *(undefined1 *)(param_1 + 0x17) = 1;
      i2c_w_bits(param_1,8,0xfffffffc,0);
      i2c_w_bits(param_1,8,0xfffffffb,0);
      _printk(&DAT_00109769,"haptic_hv",0x1f8,"aw8693x_bst_mode_config");
      i2c_w_bits(param_1,6,0xffffffdf,0x20);
      i2c_w_bits(param_1,0x4c,0xffffffbf,0);
      i2c_w_bits(param_1,0x18,0xffffffdf,0x20);
      i2c_r_bytes(param_1,8,local_50,1);
      bVar4 = local_50[0];
      i2c_w_bits(param_1,8,0xfffffffb,4);
      i2c_w_bits(param_1,6,0xffffffe0,0xd);
      local_4c[0] = 5;
      i2c_w_bytes(param_1,10,local_4c,1);
      local_48[0] = 0;
      i2c_w_bytes(param_1,0xb,local_48,1);
      i2c_w_bits(param_1,0x12,0xffffff0f,0x20);
      _printk(&DAT_00108c52,"haptic_hv",0x1d7,"aw8693x_play_go",1);
      local_44[0] = 1;
      i2c_w_bytes(param_1,9,local_44,1);
      usleep_range_state(20000,0x5014,2);
      iVar10 = -100;
      do {
        local_40[0] = '\0';
        i2c_r_bytes(param_1,0x3f,local_40,1);
        if (local_40[0] == '\0') {
          puVar7 = &DAT_00109806;
          uVar8 = 0x1ea;
          goto LAB_00107c10;
        }
        usleep_range_state(2000,0x9c4,2);
        bVar5 = iVar10 != -1;
        iVar10 = iVar10 + 1;
      } while (bVar5);
      puVar7 = &DAT_001088b2;
      uVar8 = 0x1ef;
LAB_00107c10:
      _printk(puVar7,"haptic_hv",uVar8,"aw8693x_wait_enter_standby");
      local_3c[0] = 0;
      i2c_r_bytes(param_1,0x27,local_3c,2);
      uVar1 = (uint)(local_3c[0] >> 8) | (local_3c[0] & 0xff00ff) << 8;
      if (uVar1 == 0) {
        *(undefined4 *)(param_1 + 0x60) = 0;
        _printk(&DAT_00108d79,"haptic_hv",0x4ac,"aw8693x_read_f0");
        uVar11 = 0xffffffde;
      }
      else {
        uVar2 = 0;
        if (uVar1 != 0) {
          uVar2 = 0x3a9800 / uVar1;
        }
        *(uint *)(param_1 + 0x60) = uVar2;
        *(uint *)(param_1 + 0x70) = uVar2;
        _printk(&DAT_00108da7,"haptic_hv",0x4b1,"aw8693x_read_f0");
        uVar11 = 0;
      }
      bVar9 = *(byte *)(param_1 + 0x30);
      if (bVar9 < 6) {
        bVar9 = 5;
      }
      if (0x18 < bVar9) {
        bVar9 = 0x19;
      }
      i2c_w_bits(param_1,6,0xffffffe0,bVar9);
      i2c_w_bits(param_1,0x18,0xffffffdf,0);
      if ((bVar4 >> 2 & 1) == 0) {
        uVar8 = 0;
      }
      else {
        uVar8 = 4;
      }
      i2c_w_bits(param_1,8,0xfffffffb,uVar8);
      goto LAB_00107d00;
    }
    puVar6 = &DAT_00108ff4;
    uVar8 = 0x50e;
  }
  _printk(puVar6,"haptic_hv",uVar8,"aw8693x_ram_get_f0");
  uVar11 = 0xffffffde;
LAB_00107d00:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar11);
}



/* 00107d34 loop_store */

undefined8 loop_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    _printk(&DAT_00108cb7,"haptic_hv",0x9f5,"loop_store",local_30 & 0xffffffff,local_30._4_4_);
    mutex_lock(lVar3 + 0x248);
    if (7 < (uint)local_30) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x107e34);
      (*pcVar2)();
    }
    *(char *)(lVar3 + (local_30 & 0xffffffff) + -0x82) = (char)(local_30 >> 0x20);
    pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 200);
    if (*(int *)(pcVar2 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x107e1c);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3 + -0xa8);
    mutex_unlock(lVar3 + 0x248);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00107e38 seq_store */

undefined8 seq_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    if ((uint)local_30 < 8) {
      if (local_30._4_4_ <= *(byte *)(lVar3 + 0x3b4)) {
        _printk(&DAT_001097cb,"haptic_hv",0x9d6,"seq_store");
        mutex_lock(lVar3 + 0x248);
        if (7 < (uint)local_30) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x107f74);
          (*pcVar2)();
        }
        *(char *)(lVar3 + (local_30 & 0xffffffff) + -0x8a) = (char)(local_30 >> 0x20);
        pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0xc0);
        if (*(int *)(pcVar2 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x107f5c);
          (*pcVar2)();
        }
        (*pcVar2)(lVar3 + -0xa8);
        mutex_unlock(lVar3 + 0x248);
        goto LAB_00107e8c;
      }
    }
    _printk(&DAT_001093ae,"haptic_hv",0x9d3,"seq_store");
  }
LAB_00107e8c:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00107f78 seq_show */

long seq_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(param_1 + 0x98);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x120);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x107fc0);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8,8);
  iVar1 = snprintf(param_3,0x1000,"seq%d = %d\n",1,(ulong)*(byte *)(lVar3 + -0x8a));
  lVar4 = (long)iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",2,(ulong)*(byte *)(lVar3 + -0x89));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",3,(ulong)*(byte *)(lVar3 + -0x88));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",4,(ulong)*(byte *)(lVar3 + -0x87));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",5,(ulong)*(byte *)(lVar3 + -0x86));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",6,(ulong)*(byte *)(lVar3 + -0x85));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",7,(ulong)*(byte *)(lVar3 + -0x84));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"seq%d = %d\n",8,(ulong)*(byte *)(lVar3 + -0x83));
  return lVar4 + iVar1;
}



/* 001080cc aw8693x_creat_node */

int aw8693x_creat_node(long param_1)

{
  int iVar1;
  
  iVar1 = sysfs_create_group(*(undefined8 *)(param_1 + 0xf8),&aw8693x_vibrator_attribute_group);
  if (iVar1 < 0) {
    _printk(&DAT_00109226,"haptic_hv",0x91a,"aw8693x_creat_node");
  }
  else {
    iVar1 = 0;
  }
  return iVar1;
}



/* 00108138 aw8693x_container_update */

undefined4 aw8693x_container_update(long param_1,int *param_2)

{
  ushort uVar1;
  int iVar2;
  code *pcVar3;
  long lVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  byte local_470;
  undefined1 local_46f;
  byte local_46e;
  ushort local_46c [2];
  char local_468 [1024];
  long local_68;
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  memset(local_468,0,0x400);
  mutex_lock(param_1 + 0x2f0);
  *(undefined2 *)(param_1 + 0x45e) = 0x204;
  aw8693x_stop(param_1);
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  uVar1 = *(ushort *)((long)param_2 + (ulong)*(byte *)(param_1 + 0x45f) + 4);
  *(uint *)(param_1 + 0x458) = (uint)(uVar1 >> 8) | (uVar1 & 0xff00ff) << 8;
  _printk(&DAT_00108a41,"haptic_hv",0x657,"aw8693x_container_update");
  uVar7 = *(uint *)(param_1 + 0x458);
  iVar5 = uVar7 - (uVar7 >> 2);
  local_470 = (byte)(uVar7 >> 5) & 0xf0 | (byte)((uint)iVar5 >> 8) & 0xf;
  local_46f = (undefined1)(uVar7 >> 1);
  local_46e = (byte)iVar5;
  i2c_w_bytes(param_1,0x2f,&local_470,3);
  i2c_r_bytes(param_1,0x2f,&local_470,3);
  _printk(&DAT_001090a9,"haptic_hv",0x665,"aw8693x_container_update",
          CONCAT11(local_470 >> 4,local_46f));
  _printk(&DAT_00108d23,"haptic_hv",0x668,"aw8693x_container_update",
          (uint)local_46e | (local_470 & 0xf) << 8);
  uVar7 = *(uint *)(param_1 + 0x458);
  local_46c[0] = (ushort)(uVar7 >> 8) & 0xff | (ushort)((uVar7 & 0xff00ff) << 8);
  i2c_w_bits(param_1,0x2d,0xffffffe0,uVar7 >> 8);
  i2c_w_bytes(param_1,0x2e,(ulong)local_46c | 1,1);
  local_46c[0] = *(ushort *)(param_1 + 0x458) >> 8 | *(ushort *)(param_1 + 0x458) << 8;
  i2c_w_bytes(param_1,0x40,local_46c,2);
  uVar7 = (uint)*(byte *)(param_1 + 0x45e);
  iVar5 = *param_2;
  if ((int)(uint)*(byte *)(param_1 + 0x45e) < iVar5) {
    do {
      iVar2 = iVar5 - uVar7;
      if (0x7ff < iVar2) {
        iVar2 = 0x800;
      }
      i2c_w_bytes(param_1,0x42,(long)param_2 + (long)(int)uVar7 + 4,iVar2);
      iVar5 = *param_2;
      uVar7 = iVar2 + uVar7;
    } while ((int)uVar7 < iVar5);
  }
  local_46c[0] = *(ushort *)(param_1 + 0x458) >> 8 | *(ushort *)(param_1 + 0x458) << 8;
  i2c_w_bytes(param_1,0x40,local_46c,2);
  uVar7 = (uint)*(byte *)(param_1 + 0x45e);
  iVar5 = *param_2;
  if ((int)(uint)*(byte *)(param_1 + 0x45e) < iVar5) {
    do {
      iVar5 = iVar5 - uVar7;
      iVar2 = iVar5;
      if (0x3ff < iVar5) {
        iVar2 = 0x400;
      }
      i2c_r_bytes(param_1,0x42,local_468,iVar2);
      lVar4 = 0;
      if (0x3ff < iVar5) {
        iVar5 = 0x400;
      }
      do {
        if (0x3ff < (uint)lVar4) {
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(1,0x10849c);
          (*pcVar3)();
        }
        if (local_468[lVar4] != *(char *)((long)param_2 + lVar4 + (long)(int)uVar7 + 4)) {
          _printk(&DAT_001088ff,"haptic_hv",0x630,"aw8693x_check_ram_data");
          _printk(&DAT_00108dc5,"haptic_hv",0x687,"aw8693x_container_update");
          uVar6 = 0xffffffde;
          goto LAB_00108440;
        }
        lVar4 = lVar4 + 1;
      } while (iVar5 != (int)lVar4);
      iVar5 = *param_2;
      uVar7 = iVar2 + uVar7;
    } while ((int)uVar7 < iVar5);
  }
  _printk(&DAT_001099be,"haptic_hv",0x689,"aw8693x_container_update");
  uVar6 = 0;
LAB_00108440:
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  mutex_unlock(param_1 + 0x2f0);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_68) {
    return uVar6;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001084a4 audio_off */

void audio_off(long param_1)

{
  code *pcVar1;
  long lVar2;
  long *plVar3;
  long *extraout_x9;
  long *plVar4;
  
  _printk(&DAT_00108d4f,"haptic_hv",0x765,"audio_off");
  mutex_lock(param_1 + 0x2f0);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x88);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10850c);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,0x80);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x108534);
    (*pcVar1)();
  }
  (*pcVar1)(param_1);
  plVar3 = *(long **)(param_1 + 0x598);
  while (plVar3 != (long *)(param_1 + 0x590)) {
    plVar4 = (long *)plVar3[1];
    if (((long *)*plVar4 == plVar3) && (lVar2 = *plVar3, *(long **)(lVar2 + 8) == plVar3)) {
      *(long **)(lVar2 + 8) = plVar4;
      *plVar4 = lVar2;
    }
    else {
      __list_del_entry_valid_or_report(plVar3);
      plVar3 = extraout_x9;
    }
    *plVar3 = -0x2152ffffffffff00;
    plVar3[1] = -0x2152fffffffffede;
    kfree(plVar3 + -1);
    plVar3 = plVar4;
  }
  mutex_unlock(param_1 + 0x2f0);
  return;
}



/* 001085c4 cont_store */

long cont_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 < 0) {
    param_4 = (long)iVar1;
  }
  else {
    lVar3 = lVar4 + -0xa8;
    pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x108634);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3);
    if (local_3c != 0) {
      pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x118);
      if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x108668);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3,1);
      pcVar2 = *(code **)(*(long *)(lVar4 + 0x520) + 0x48);
      if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x108690);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3);
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001086d4 init_module */

undefined8 init_module(void)

{
  return 0;
}



/* 001086e0 cleanup_module */

void cleanup_module(void)

{
  return;
}



