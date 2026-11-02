/* 00100164 aw8693x_set_bst_peak_cur */

void aw8693x_set_bst_peak_cur(void)

{
  return;
}



/* 0010016c state_store */

undefined8 state_store(void)

{
  undefined8 in_x3;
  
  return in_x3;
}



/* 00100178 brightness_get */

undefined4 brightness_get(long param_1)

{
  return *(undefined4 *)(param_1 + -0x50);
}



/* 00100184 aw_i2c_resume */

undefined8 aw_i2c_resume(void)

{
  return 0;
}



/* 00100190 richtap_write */

undefined8 richtap_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  return param_3;
}



/* 0010019c richtap_read */

undefined8 richtap_read(void)

{
  return 0;
}



/* 001001a8 state_show */

long state_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"state = %d\n",(ulong)*(uint *)(*(long *)(param_1 + 0x98) + -0x68)
                  );
  return (long)iVar1;
}



/* 001001e4 init_module */

undefined8 init_module(void)

{
  return 0;
}



/* 001001f0 cleanup_module */

void cleanup_module(void)

{
  return;
}



