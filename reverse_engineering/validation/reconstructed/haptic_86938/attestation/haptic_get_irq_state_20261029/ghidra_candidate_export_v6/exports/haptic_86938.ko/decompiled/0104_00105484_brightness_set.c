
void brightness_set(long param_1,undefined4 param_2)

{
  _printk(&DAT_00105abf,"haptic_hv",0x889,"brightness_set");
  if ((*(byte *)(param_1 + -0xa2) & 1) == 0) {
    _printk(&DAT_00106270,"haptic_hv",0x88b,"brightness_set");
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

