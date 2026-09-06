
undefined8
syna_tcm_set_custom_touch_entity_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x3c0) = param_2;
    *(undefined8 *)(param_1 + 0x3b8) = param_3;
    return 0;
  }
  _printk(&DAT_00133fd6,"syna_tcm_set_custom_touch_entity_callback");
  return 0xffffff0f;
}

