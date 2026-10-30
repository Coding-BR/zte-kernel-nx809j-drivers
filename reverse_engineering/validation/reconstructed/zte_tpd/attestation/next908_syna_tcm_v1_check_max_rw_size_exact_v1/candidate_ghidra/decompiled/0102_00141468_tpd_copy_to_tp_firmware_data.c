
ulong tpd_copy_to_tp_firmware_data(char *param_1)

{
  uint uVar1;
  long lVar2;
  size_t sVar3;
  ulong *puVar4;
  uint uVar5;
  ulong uVar6;
  
  lVar2 = tpd_cdev;
  puVar4 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar4 != (ulong *)0x0) && (puVar4[1] != 0)) {
    uVar6 = *puVar4;
    if (uVar6 != 0) {
      uVar1 = *(uint *)(tpd_cdev + 0x448);
      if (uVar1 < uVar6) {
        sVar3 = strlen(param_1);
        uVar5 = (int)uVar6 - uVar1;
        if (uVar1 + (uint)sVar3 <= uVar6) {
          uVar5 = (uint)sVar3;
        }
        memcpy((void *)(*(long *)(*(long *)(lVar2 + 0xc58) + 8) + (ulong)*(uint *)(lVar2 + 0x448)),
               param_1,(long)(int)uVar5);
        *(uint *)(lVar2 + 0x448) = *(int *)(lVar2 + 0x448) + uVar5;
      }
      else {
        uVar5 = 0;
      }
      return (ulong)uVar5;
    }
    uVar6 = _printk(&DAT_00181b85);
    return uVar6;
  }
  uVar6 = _printk(&DAT_00182966);
  return uVar6;
}

