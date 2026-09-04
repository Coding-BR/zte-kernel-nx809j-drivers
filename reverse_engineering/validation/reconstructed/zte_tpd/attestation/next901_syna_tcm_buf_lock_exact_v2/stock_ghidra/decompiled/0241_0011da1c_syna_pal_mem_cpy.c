
void syna_pal_mem_cpy(undefined8 *param_1,uint param_2,undefined8 *param_3)

{
  undefined8 uVar1;
  
  if ((param_1 != (undefined8 *)0x0) && (param_3 != (undefined8 *)0x0)) {
    if (param_2 < 0x10) {
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",0x10,param_2,0x10);
      return;
    }
    uVar1 = param_3[1];
    *param_1 = *param_3;
    param_1[1] = uVar1;
  }
  return;
}

