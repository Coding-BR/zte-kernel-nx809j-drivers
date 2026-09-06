
int tpd_copy_to_tp_firmware_data(char *param_1)

{
  uint uVar1;
  long lVar2;
  size_t sVar3;
  ulong *puVar4;
  int iVar5;
  ulong uVar6;
  
  lVar2 = tpd_cdev;
  puVar4 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar4 == (ulong *)0x0) || (puVar4[1] == 0)) {
    _printk(&DAT_0013cb0c);
    iVar5 = -0xc;
  }
  else {
    uVar6 = *puVar4;
    if (uVar6 == 0) {
      _printk(&DAT_0013aa16);
      iVar5 = -0x16;
    }
    else {
      uVar1 = *(uint *)(tpd_cdev + 0x448);
      if (uVar1 < uVar6) {
        sVar3 = strlen(param_1);
        iVar5 = (int)uVar6 - uVar1;
        if (uVar1 + (int)sVar3 <= uVar6) {
          iVar5 = (int)sVar3;
        }
        memcpy((void *)(*(long *)(*(long *)(lVar2 + 0xc58) + 8) + (ulong)*(uint *)(lVar2 + 0x448)),
               param_1,(long)iVar5);
        *(int *)(lVar2 + 0x448) = *(int *)(lVar2 + 0x448) + iVar5;
      }
      else {
        iVar5 = 0;
      }
    }
  }
  return iVar5;
}

