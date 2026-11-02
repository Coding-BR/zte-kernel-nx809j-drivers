
undefined8 aw_i2c_suspend(long param_1)

{
  aw86320_play_stop(*(undefined8 *)(param_1 + 0x98));
  return 0;
}

