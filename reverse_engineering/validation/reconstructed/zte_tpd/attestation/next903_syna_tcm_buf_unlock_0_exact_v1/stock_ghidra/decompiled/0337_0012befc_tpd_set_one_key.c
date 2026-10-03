
undefined8 tpd_set_one_key(long param_1,undefined4 param_2)

{
  undefined8 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_one_key");
  if (lVar2 == 0) {
    uVar1 = 0xffffffea;
  }
  else {
    uVar1 = 0;
    *(undefined4 *)(lVar2 + 0x5d4) = param_2;
    *(undefined4 *)(param_1 + 0x458) = param_2;
  }
  return uVar1;
}

