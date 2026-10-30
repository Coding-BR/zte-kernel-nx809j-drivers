
void syna_pal_mem_cpy_0(undefined8 *param_1,uint param_2,undefined8 *param_3)

{
  undefined8 uVar1;
  
  if ((param_1 != (undefined8 *)0x0) && (param_3 != (undefined8 *)0x0)) {
    if (param_2 < 0x10) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016edc2,"syna_pal_mem_cpy",0x10,param_2,0x10);
    }
    uVar1 = param_3[1];
    *param_1 = *param_3;
    param_1[1] = uVar1;
  }
  return;
}

