
long awrw_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  long lVar5;
  uint uVar6;
  
  lVar5 = *(long *)(param_1 + 0x98);
  if (*(int *)(lVar5 + 0x528) == 1) {
    if (*(long *)(lVar5 + 0x530) != 0) {
      if (*(int *)(lVar5 + 0x52c) == 0) {
        lVar4 = 0;
      }
      else {
        lVar4 = 0;
        uVar6 = 0;
        do {
          iVar1 = snprintf((char *)(param_3 + lVar4),0x1000 - lVar4,"0x%02x,",
                           (ulong)*(byte *)(*(long *)(lVar5 + 0x530) + (long)(int)uVar6));
          uVar6 = uVar6 + 1;
          lVar4 = lVar4 + iVar1;
        } while (uVar6 < *(uint *)(lVar5 + 0x52c));
      }
      iVar1 = snprintf((char *)(param_3 + lVar4 + -1),0x1000 - lVar4,"\n");
      return lVar4 + iVar1;
    }
    puVar2 = &DAT_00108925;
    uVar3 = 0xc54;
  }
  else {
    puVar2 = &DAT_001080a9;
    uVar3 = 0xc50;
  }
  _printk(puVar2,"haptic_hv",uVar3,"awrw_show");
  return -0x22;
}

