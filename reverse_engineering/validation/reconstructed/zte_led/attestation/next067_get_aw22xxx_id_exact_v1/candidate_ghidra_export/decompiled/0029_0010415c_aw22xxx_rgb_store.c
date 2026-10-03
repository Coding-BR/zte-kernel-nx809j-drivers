
undefined8 aw22xxx_rgb_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if ((iVar1 == 2) && ((uint)local_30 < 9)) {
    *(undefined4 *)(lVar3 + (local_30 & 0xffffffff) * 4 + 0x2fc) = local_30._4_4_;
    uVar2 = _printk(&DAT_00106814,"aw22xxx_rgb_store",0x8d3);
    return uVar2;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

