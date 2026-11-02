
undefined8 syna_dev_process_unexpected_reset(void)

{
  undefined8 uVar1;
  long in_x3;
  
  if (in_x3 == 0) {
    uVar1 = _printk(&unk_38D56,"syna_dev_process_unexpected_reset");
    return uVar1;
  }
  if (*(int *)(in_x3 + 0x57c) != 1) {
    return 0;
  }
  uVar1 = _printk(&unk_32499,"syna_dev_process_unexpected_reset");
  return uVar1;
}

