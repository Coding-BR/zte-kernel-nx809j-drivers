
undefined8 tpd_set_singleaodgesture(long param_1,int param_2)

{
  uint uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar2 + 0x57c) == 1) {
    uVar1 = *(uint *)(lVar2 + 0x5b8);
    *(uint *)(lVar2 + 0x5b4) = (uint)(0 < param_2);
    *(uint *)(lVar2 + 0x5b0) = uVar1 | *(uint *)(lVar2 + 0x5bc) | (uint)(0 < param_2);
  }
  else {
    _printk(&DAT_0013c39a,"tpd_set_singleaodgesture");
    uVar1 = *(uint *)(lVar2 + 0x5b8);
  }
  _printk(&DAT_00135d03,"tpd_set_singleaodgesture",uVar1);
  _printk(&DAT_00133ce1,"tpd_set_singleaodgesture",*(undefined4 *)(lVar2 + 0x5b4));
  _printk(&DAT_001362ed,"tpd_set_singleaodgesture",*(undefined4 *)(lVar2 + 0x5b0));
  return 0;
}

