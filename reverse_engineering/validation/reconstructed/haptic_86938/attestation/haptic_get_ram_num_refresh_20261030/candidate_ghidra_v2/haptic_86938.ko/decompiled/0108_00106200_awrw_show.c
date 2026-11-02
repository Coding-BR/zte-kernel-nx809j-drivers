
long awrw_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  long lVar5;
  uint uVar6;
  
  lVar4 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar4 + 0x248);
  if (*(int *)(lVar4 + 0x528) == 1) {
    if (*(long *)(lVar4 + 0x530) != 0) {
      if (*(int *)(lVar4 + 0x52c) == 0) {
        lVar5 = 0;
      }
      else {
        lVar5 = 0;
        uVar6 = 0;
        do {
          iVar1 = snprintf((char *)(param_3 + lVar5),0x1000 - lVar5,"0x%02x,",
                           (ulong)*(byte *)(*(long *)(lVar4 + 0x530) + (long)(int)uVar6));
          uVar6 = uVar6 + 1;
          lVar5 = lVar5 + iVar1;
        } while (uVar6 < *(uint *)(lVar4 + 0x52c));
        iVar1 = snprintf((char *)(param_3 + lVar5 + -1),0x1000 - lVar5,"\n");
        lVar5 = lVar5 + iVar1;
      }
      goto LAB_001062f4;
    }
    puVar2 = &DAT_001091c3;
    uVar3 = 0xc54;
  }
  else {
    puVar2 = &DAT_0010885f;
    uVar3 = 0xc50;
  }
  _printk(puVar2,"haptic_hv",uVar3,"awrw_show");
  lVar5 = -0x22;
LAB_001062f4:
  mutex_unlock(lVar4 + 0x248);
  return lVar5;
}

