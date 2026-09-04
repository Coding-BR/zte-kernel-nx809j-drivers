
/* WARNING: Control flow encountered bad instruction data */

undefined8 get_aw22xxx_id(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  size_t sVar1;
  undefined8 uVar2;
  
  if (*param_4 != 0) {
    return 0;
  }
  _printk(&DAT_0010dbaa,"get_aw22xxx_id",0x9b3,&g_chip_id);
  sVar1 = strnlen((char *)&g_chip_id,0x20);
  if (sVar1 < 0x21) {
    if (sVar1 != 0x20) {
      uVar2 = simple_read_from_buffer(param_2,param_3,param_4,&g_chip_id);
      return uVar2;
    }
  }
  else {
    __fortify_panic(2,0x20,sVar1 + 1);
  }
  __fortify_panic(4,0x20,0x21);
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}

