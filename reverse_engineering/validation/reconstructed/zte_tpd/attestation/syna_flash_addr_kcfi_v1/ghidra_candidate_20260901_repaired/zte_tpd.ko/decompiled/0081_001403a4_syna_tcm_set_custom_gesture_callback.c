
undefined8 syna_tcm_set_custom_gesture_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uVar1;
  
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x3d0) = param_2;
    *(undefined8 *)(param_1 + 0x3c8) = param_3;
    return 0;
  }
  uVar1 = _printk(&DAT_0017eb2d,"syna_tcm_set_custom_gesture_callback");
  return uVar1;
}

