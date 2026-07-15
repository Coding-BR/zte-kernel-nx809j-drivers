
undefined8 tpd_set_singlefpgesture(long param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar3 + 0x57c) == 1) {
    uVar1 = (uint)(0 < param_2);
    uVar2 = (uint)(0 < param_2);
    *(uint *)(lVar3 + 0x5b8) = uVar2;
    *(uint *)(lVar3 + 0x5b0) = *(uint *)(lVar3 + 0x5b4) | *(uint *)(lVar3 + 0x5bc) | uVar2;
  }
  else {
    _printk(&DAT_0013c39a,"tpd_set_singlefpgesture");
    uVar1 = *(uint *)(lVar3 + 0x5b8);
  }
  _printk(&DAT_00135d03,"tpd_set_singlefpgesture",uVar1);
  _printk(&DAT_00133ce1,"tpd_set_singlefpgesture",*(undefined4 *)(lVar3 + 0x5b4));
  _printk(&DAT_001362ed,"tpd_set_singlefpgesture",*(undefined4 *)(lVar3 + 0x5b0));
  return 0;
}

