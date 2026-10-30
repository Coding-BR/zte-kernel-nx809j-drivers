
ulong syna_tcm_read_flash_boot_config(long param_1,long param_2,long *param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  void *__s;
  ulong uVar4;
  undefined *puVar5;
  char cVar6;
  long lVar7;
  char *pcVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  
  if (param_2 == 0) {
    puVar5 = &DAT_00134898;
  }
  else if (param_3 == (long *)0x0) {
    puVar5 = &DAT_00135b8d;
  }
  else {
    if (*(char *)(param_1 + 9) == '\x01') {
      puVar5 = &DAT_00132f49;
      cVar6 = '\x01';
LAB_0012544c:
      _printk(puVar5,"syna_tcm_read_flash_boot_config",cVar6);
      return 0xffffff0f;
    }
    pcVar8 = *(char **)(param_2 + 0x20);
    cVar6 = *pcVar8;
    if (cVar6 == '\x01') {
      lVar7 = 0xf;
      lVar9 = 0xe;
      lVar10 = 0xd;
      lVar11 = 0xc;
    }
    else {
      if (cVar6 != '\x03') {
        puVar5 = &DAT_0013d047;
        goto LAB_0012544c;
      }
      lVar7 = 0x13;
      lVar9 = 0x12;
      lVar10 = 0x11;
      lVar11 = 0x10;
    }
    iVar1 = *(int *)(param_2 + 0x2c) * (uint)CONCAT11(pcVar8[lVar10],pcVar8[lVar11]);
    if (iVar1 != 0) {
      uVar3 = (uint)CONCAT11(pcVar8[lVar7],pcVar8[lVar9]);
      uVar2 = *(int *)(param_2 + 0x2c) * uVar3;
      if (uVar2 != 0) {
        if (*(int *)(param_2 + 0x38) != iVar1) {
          *(int *)(param_2 + 0x38) = iVar1;
        }
        if (*(uint *)(param_2 + 0x34) != uVar3) {
          *(uint *)(param_2 + 0x34) = uVar3;
        }
        _printk(&DAT_001348c1,"syna_tcm_read_flash_boot_config",iVar1,iVar1,uVar3,uVar2);
        __s = (void *)*param_3;
        uVar3 = *(uint *)(param_3 + 1);
        if (*(uint *)(param_3 + 1) < uVar2) {
          if (__s != (void *)0x0) {
            syna_pal_mem_free();
          }
          __s = (void *)syna_pal_mem_alloc(uVar2);
          *param_3 = (long)__s;
          if (__s == (void *)0x0) {
            _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar2);
            param_3[1] = 0;
            _printk(&DAT_001347f0,"syna_tcm_read_flash_boot_config");
            return 0xffffff0d;
          }
          *(uint *)(param_3 + 1) = uVar2;
          uVar3 = uVar2;
        }
        memset(__s,0,(ulong)uVar3);
        *(undefined4 *)((long)param_3 + 0xc) = 0;
        uVar4 = syna_tcm_read_flash(param_1,iVar1,*param_3,uVar2,param_4);
        if ((int)uVar4 < 0) {
          _printk(&DAT_00132f84,"syna_tcm_read_flash_boot_config",iVar1,uVar2);
          return uVar4 & 0xffffffff;
        }
        *(uint *)((long)param_3 + 0xc) = uVar2;
        return uVar4;
      }
    }
    puVar5 = &DAT_00133b81;
  }
  _printk(puVar5,"syna_tcm_read_flash_boot_config");
  return 0xffffff0f;
}

