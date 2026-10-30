
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 syna_mmap(long param_1,long *param_2)

{
  int iVar1;
  ulong uVar2;
  undefined4 uVar3;
  
  uVar2 = param_2[1] - *param_2;
  if (uVar2 < 0x32001) {
    iVar1 = remap_pfn_range(param_2,*param_2,
                            (long)((_memstart_addr >> 0xc) * 0x40 +
                                  ((param_2[10] * 0x100000 +
                                    *(long *)(*(long *)(param_1 + 0x20) + 0x460) * 0x100 >> 8) +
                                   0x8000000000U >> 6)) >> 6,uVar2,param_2[3]);
    uVar3 = 0;
    if (iVar1 != 0) {
      uVar3 = 0xfffffff5;
    }
  }
  else {
    _printk(&DAT_0013a62e,"syna_mmap",uVar2 & 0xffffffff,0x32000);
    uVar3 = 0xffffffea;
  }
  return uVar3;
}

