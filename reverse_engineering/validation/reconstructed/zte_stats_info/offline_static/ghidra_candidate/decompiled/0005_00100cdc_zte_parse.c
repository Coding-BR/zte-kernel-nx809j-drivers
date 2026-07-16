
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 zte_parse(ushort *param_1,undefined8 param_2)

{
  uint uVar1;
  undefined4 uVar2;
  long lVar3;
  
  if (param_1 == (ushort *)0x0) {
    uVar2 = 1;
  }
  else {
    uVar1 = *param_1 - 4;
    if (uVar1 < 0x125) {
      if ((uVar1 & 0xffff) == 0) {
        uVar2 = 0xffffffea;
      }
      else {
        lVar3 = __kmalloc_noprof(uVar1 & 0xffff,0xcc0);
        if (lVar3 == 0) {
          uVar2 = 0xfffffff4;
        }
        else {
          nla_strscpy(lVar3,param_1,uVar1 & 0xffff);
          uVar2 = bitmap_parselist(lVar3,param_2,_nr_cpu_ids);
          kfree(lVar3);
        }
      }
    }
    else {
      uVar2 = 0xfffffff9;
    }
  }
  return uVar2;
}

