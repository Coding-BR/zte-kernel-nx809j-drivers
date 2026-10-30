
undefined8 vibrator_timer_func(long param_1)

{
  *(undefined4 *)(param_1 + -0x2f0) = 0;
  queue_work_on(0x20,*(undefined8 *)(param_1 + 0x118),param_1 + 0xf8);
  return 0;
}

