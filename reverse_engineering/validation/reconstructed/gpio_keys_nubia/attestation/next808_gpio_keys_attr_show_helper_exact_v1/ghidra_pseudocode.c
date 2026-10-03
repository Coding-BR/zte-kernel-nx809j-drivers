
long gpio_keys_attr_show_helper(long *param_1,long param_2,uint param_3,ulong param_4)

{
  code *pcVar1;
  int iVar2;
  long lVar3;
  undefined4 uVar4;
  long lVar5;
  long *plVar6;
  ulong uVar7;
  
  if ((param_3 & 0xfffffffb) != 1) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x800,0x101e84);
    (*pcVar1)();
  }
  uVar4 = 0x300;
  if (param_3 != 1) {
    uVar4 = 0x11;
  }
  _printk(&DAT_0010304e,uVar4);
  lVar3 = bitmap_zalloc(uVar4,0xcc0);
  if (lVar3 == 0) {
    lVar5 = -0xc;
  }
  else {
    if (0 < *(int *)(*param_1 + 8)) {
      lVar5 = 0;
      plVar6 = param_1;
      do {
        if ((*(uint *)(plVar6[9] + 0x18) == param_3) &&
           (((param_4 & 1) == 0 || ((char)plVar6[0x2a] == '\x01')))) {
          uVar7 = (ulong)(*(ushort *)plVar6[0xc] >> 3) & 0x1ff8;
          *(ulong *)(lVar3 + uVar7) =
               *(ulong *)(lVar3 + uVar7) | 1L << ((ulong)*(ushort *)plVar6[0xc] & 0x3f);
        }
        lVar5 = lVar5 + 1;
        plVar6 = plVar6 + 0x22;
      } while (lVar5 < *(int *)(*param_1 + 8));
    }
    iVar2 = scnprintf(param_2,0xfff,"%*pbl",uVar4,lVar3);
    lVar5 = (long)iVar2 + 1;
    *(undefined2 *)(param_2 + iVar2) = 10;
    bitmap_free(lVar3);
  }
  return lVar5;
}

