
void zte_reset_frame_list(long param_1)

{
  mutex_lock(param_1 + 0x470);
  *(undefined8 *)(param_1 + 0x43c) = 0;
  memset(*(void **)(param_1 + 0x460),0,0x32000);
  mutex_unlock(param_1 + 0x470);
  _printk(&DAT_001370dd,"zte_reset_frame_list");
  return;
}

