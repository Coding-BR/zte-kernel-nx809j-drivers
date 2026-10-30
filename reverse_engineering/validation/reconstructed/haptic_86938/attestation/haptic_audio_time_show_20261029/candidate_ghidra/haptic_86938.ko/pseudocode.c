/* 001006b4 aw8693x_set_bst_peak_cur */

void aw8693x_set_bst_peak_cur(void)

{
  return;
}



/* 001006bc state_store */

undefined8 state_store(void)

{
  undefined8 in_x3;
  
  return in_x3;
}



/* 001006c8 brightness_get */

undefined4 brightness_get(long param_1)

{
  return *(undefined4 *)(param_1 + -0x50);
}



/* 001006d4 aw_i2c_resume */

undefined8 aw_i2c_resume(void)

{
  return 0;
}



/* 001006e0 richtap_write */

undefined8 richtap_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  return param_3;
}



/* 001006ec richtap_read */

undefined8 richtap_read(void)

{
  return 0;
}



/* 001006f8 state_show */

long state_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"state = %d\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68)
                  );
  return (long)iVar1;
}



/* 00100734 activate_show */

long activate_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68));
  return (long)iVar1;
}



/* 00100770 activate_mode_show */

long activate_mode_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate_mode = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x8d));
  return (long)iVar1;
}



/* 001007ac vmax_show */

long vmax_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"vmax = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x78));
  return (long)iVar1;
}



/* 001007e8 gain_show */

long gain_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"gain = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x74));
  return (long)iVar1;
}



/* 00100824 gun_type_show */

long gun_type_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"0x%02x\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x2c));
  return (long)iVar1;
}



/* 00100860 bullet_nr_show */

long bullet_nr_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"0x%02x\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x28));
  return (long)iVar1;
}



/* 0010089c cont_brk_time_show */

long cont_brk_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_brk_time = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f5));
  return (long)iVar1;
}



/* 001008d8 rtp_auto_sin_show */

long rtp_auto_sin_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"rtp_cnt = %u\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x34));
  return (long)iVar1;
}



/* 00100914 auto_boost_show */

long auto_boost_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"auto_boost = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x90));
  return (long)iVar1;
}



/* 00100950 cont_save_show */

long cont_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_f0 = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x38));
  return (long)iVar1;
}



/* 0010098c f0_save_show */

long f0_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"f0_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x20));
  return (long)iVar1;
}



/* 001009c8 haptic_audio_show */

long haptic_audio_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"%d\n",(ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x4f8));
  return (long)iVar1;
}



/* 00100a04 activate_aw_show */

long activate_aw_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"activate = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68));
  return (long)iVar1;
}



/* 00100a40 osc_cali_show */

long osc_cali_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"osc_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x10));
  return (long)iVar1;
}



/* 00100a7c osc_save_show */

long osc_save_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"osc_cali_data = 0x%02X\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x10));
  return (long)iVar1;
}



/* 00100ab8 ram_vbat_comp_show */

long ram_vbat_comp_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"ram_vbat_comp = %d\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + -0x8c));
  return (long)iVar1;
}



/* 00100af4 pre_f0_show */

long pre_f0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"pre_f0 = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x3c0));
  return (long)iVar1;
}



/* 00100b30 rtp_show */

long rtp_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"rtp_cnt = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x34));
  return (long)iVar1;
}



/* 00100b6c cont_drv_lvl_show */

long cont_drv_lvl_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_drv1_lvl = 0x%02X, cont_drv2_lvl = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f2),
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f3));
  return (long)iVar1;
}



/* 00100bac cont_drv_time_show */

long cont_drv_time_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"cont_drv1_time = 0x%02X, cont_drv2_time = 0x%02X\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f8),
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x3f9));
  return (long)iVar1;
}



/* 00100bec haptic_audio_time_show */

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



/* 00100c5c init_module */

undefined8 init_module(void)

{
  return 0;
}



/* 00100c68 cleanup_module */

void cleanup_module(void)

{
  return;
}



