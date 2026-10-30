
void aw8693x_set_rtp_data(undefined8 param_1,undefined8 param_2,undefined4 param_3)

{
  i2c_w_bytes(param_1,0x32,param_2,param_3);
  return;
}

