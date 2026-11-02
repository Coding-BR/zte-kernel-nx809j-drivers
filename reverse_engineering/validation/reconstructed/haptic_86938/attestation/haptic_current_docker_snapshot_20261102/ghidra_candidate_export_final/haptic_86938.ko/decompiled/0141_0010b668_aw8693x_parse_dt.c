
void aw8693x_parse_dt(undefined8 param_1,long param_2,undefined8 param_3)

{
  int iVar1;
  long lVar2;
  undefined2 local_54;
  undefined1 local_52;
  undefined8 local_50;
  undefined8 local_48;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_52 = 0;
  local_54 = 0;
  local_48 = 0;
  local_40 = 0;
  local_50 = 0;
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_gain_bypass",param_2 + 0x4c1,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00111363,"haptic_hv",0x6ae,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_uvlo_vol_default",param_2 + 0x4c2,1,0)
  ;
  if (iVar1 < 0) {
    _printk(&DAT_00110922,"haptic_hv",0x6b2,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u32_array(param_3,"f0_pre",param_2 + 0x468,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0010ff32,"haptic_hv",0x6b6,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_f0_cali_percent",param_2 + 0x462,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110815,"haptic_hv",0x6ba,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_smart_loop",param_2 + 0x4c3,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0010ffa2,"haptic_hv",0x6be,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_drv1_lvl",param_2 + 0x49a,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0010fdb9,"haptic_hv",0x6c2,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u32_array(param_3,"aw8693x_cont_lra_vrms",param_2 + 0x4c4,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110ce9,"haptic_hv",0x6c6,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_drv1_time",param_2 + 0x4a0,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110d1a,"haptic_hv",0x6ca,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_drv2_time",param_2 + 0x4a1,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00111078,"haptic_hv",0x6ce,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_brk_time",param_2 + 0x49d,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110134,"haptic_hv",0x6d2,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array
                    (param_3,"aw8693x_cont_track_margin",param_2 + 0x4a3,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_0011028c,"haptic_hv",0x6d7,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_cont_brk_gain",param_2 + 0x49f,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_001111e7,"haptic_hv",0x6db,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_d2s_gain",param_2 + 0x495,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00111756,"haptic_hv",0x6df,"aw8693x_parse_dt");
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_duration_time",&local_54,3,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110b87,"haptic_hv",0x6e4,"aw8693x_parse_dt");
  }
  else {
    *(undefined2 *)(param_2 + 0x464) = local_54;
    *(undefined1 *)(param_2 + 0x466) = local_52;
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_trig_config",&local_50,0x18,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110edb,"haptic_hv",0x6eb,"aw8693x_parse_dt");
  }
  else {
    *(undefined8 *)(param_2 + 0x4a5) = local_50;
    *(undefined8 *)(param_2 + 0x4ad) = local_48;
    *(undefined8 *)(param_2 + 0x4b5) = local_40;
  }
  iVar1 = of_property_read_variable_u8_array(param_3,"aw8693x_bst_vol_default",param_2 + 0x463,1,0);
  if (iVar1 < 0) {
    _printk(&DAT_00110848,"haptic_hv",0x6f2,"aw8693x_parse_dt");
  }
  lVar2 = of_find_property(param_3,"aw8693x_is_enabled_track_en",0);
  *(bool *)(param_2 + 0x4c0) = lVar2 != 0;
  _printk(&DAT_001113aa,"haptic_hv",0x6f6,"aw8693x_parse_dt");
  lVar2 = of_find_property(param_3,"aw8693x_is_enabled_auto_bst",0);
  *(bool *)(param_2 + 0x4bd) = lVar2 != 0;
  _printk(&DAT_0011038b,"haptic_hv",0x6fa,"aw8693x_parse_dt");
  lVar2 = of_find_property(param_3,"aw8693x_is_enabled_one_wire",0);
  *(bool *)(param_2 + 0x4bf) = lVar2 != 0;
  _printk(&DAT_00110331,"haptic_hv",0x6fe,"aw8693x_parse_dt");
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

