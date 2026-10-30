
undefined8 zte_ir_release(undefined8 param_1,long param_2)

{
  mutex_lock(0x100000);
  *(undefined8 *)(param_2 + 0x20) = 0;
  _printk(&DAT_00100a04);
  mutex_unlock(0x100000);
  return 0;
}

