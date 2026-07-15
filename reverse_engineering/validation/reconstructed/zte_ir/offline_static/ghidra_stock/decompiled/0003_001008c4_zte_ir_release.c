
undefined8 zte_ir_release(undefined8 param_1,long param_2)

{
  mutex_lock(&device_list_lock);
  *(undefined8 *)(param_2 + 0x20) = 0;
  _printk(&DAT_0010126c);
  mutex_unlock(&device_list_lock);
  return 0;
}

