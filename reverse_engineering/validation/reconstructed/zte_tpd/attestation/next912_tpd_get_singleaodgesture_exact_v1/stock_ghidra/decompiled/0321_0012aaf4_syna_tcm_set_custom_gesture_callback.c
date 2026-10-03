
undefined8 syna_tcm_set_custom_gesture_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x3d0) = param_2;
    *(undefined8 *)(param_1 + 0x3c8) = param_3;
    return 0;
  }
  _printk(&DAT_00133fd6,"syna_tcm_set_custom_gesture_callback");
  return 0xffffff0f;
}

