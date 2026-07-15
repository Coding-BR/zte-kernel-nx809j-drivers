
uint syna_dev_get_frame_data(undefined8 *param_1,int param_2,undefined4 param_3)

{
  uint uVar1;
  undefined4 uVar2;
  
  _printk(&DAT_00136a10,"syna_dev_get_frame_data",param_2);
  if (param_1 == (undefined8 *)0x0) {
    uVar1 = 0xffffffea;
  }
  else {
    uVar2 = 0;
    if (param_2 != 0) {
      uVar2 = 6;
    }
    uVar1 = syna_tcm_set_dynamic_config(*param_1,0xf3,uVar2,param_3);
    uVar1 = uVar1 & (int)uVar1 >> 0x1f;
  }
  return uVar1;
}

