
int syna_tcm_write_flash
              (long param_1,long param_2,int param_3,long param_4,uint param_5,ulong param_6)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  undefined2 uVar5;
  uint uVar6;
  code *pcVar7;
  int iVar8;
  void *pvVar9;
  long lVar10;
  undefined *puVar11;
  ulong __n;
  char cVar12;
  uint uVar13;
  char cVar14;
  uint uVar15;
  undefined8 uVar16;
  uint uVar17;
  ulong __n_00;
  ulong uVar18;
  
  uVar3 = *(uint *)(param_2 + 0x2c);
  uVar17 = *(uint *)(param_2 + 0x30);
  if (*(char *)(param_2 + 0x80) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 0x50);
  cVar12 = *(char *)(param_2 + 0x80) + '\x01';
  *(char *)(param_2 + 0x80) = cVar12;
  if (param_5 != 0) {
    uVar6 = 0;
    if (uVar3 != 0) {
      uVar6 = uVar17 / uVar3;
    }
    uVar17 = 0;
    uVar15 = param_5;
    do {
      uVar18 = param_6 & 0xffffffff;
      pvVar9 = *(void **)(param_2 + 0x40);
      uVar2 = uVar15;
      if (uVar6 * uVar3 <= uVar15) {
        uVar2 = uVar6 * uVar3;
      }
      __n_00 = (ulong)uVar2;
      uVar1 = uVar2 + 2;
      __n = (ulong)*(uint *)(param_2 + 0x48);
      if (*(uint *)(param_2 + 0x48) < uVar1) {
        if (pvVar9 == (void *)0x0) {
LAB_001270f4:
          lVar10 = syna_request_managed_device();
          if (lVar10 != 0) goto LAB_001270fc;
LAB_00127294:
          puVar11 = &DAT_0013ccb3;
LAB_0012739c:
          _printk(puVar11,"syna_pal_mem_alloc");
          *(undefined8 *)(param_2 + 0x40) = 0;
        }
        else {
          lVar10 = syna_request_managed_device();
          if (lVar10 != 0) {
            devm_kfree(lVar10,pvVar9);
            goto LAB_001270f4;
          }
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          lVar10 = syna_request_managed_device();
          if (lVar10 == 0) goto LAB_00127294;
LAB_001270fc:
          if ((int)uVar1 < 1) {
            puVar11 = &DAT_00138e98;
            goto LAB_0012739c;
          }
          pvVar9 = (void *)devm_kmalloc(lVar10,(ulong)uVar1,0xdc0);
          *(void **)(param_2 + 0x40) = pvVar9;
          if (pvVar9 != (void *)0x0) {
            *(uint *)(param_2 + 0x48) = uVar1;
            __n = (ulong)uVar1;
            goto LAB_00127120;
          }
        }
        _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar1);
        *(undefined8 *)(param_2 + 0x48) = 0;
        _printk(&DAT_00136eda,"syna_tcm_write_flash");
        cVar12 = *(char *)(param_2 + 0x80);
        iVar8 = -0xf3;
        if (cVar12 != '\x01') goto LAB_001273ec;
LAB_00127344:
        cVar14 = '\0';
        goto LAB_001272b8;
      }
LAB_00127120:
      memset(pvVar9,0,__n);
      *(undefined4 *)(param_2 + 0x4c) = 0;
      uVar5 = 0;
      if (*(uint *)(param_2 + 0x2c) != 0) {
        uVar5 = (undefined2)((uVar17 + param_3) / *(uint *)(param_2 + 0x2c));
      }
      **(undefined1 **)(param_2 + 0x40) = (char)uVar5;
      *(char *)(*(long *)(param_2 + 0x40) + 1) = (char)((ushort)uVar5 >> 8);
      uVar4 = *(uint *)(param_2 + 0x2c);
      uVar13 = 0;
      if (uVar4 != 0) {
        uVar13 = 0;
        if (uVar4 != 0) {
          uVar13 = ((uVar2 + uVar4) - 1) / uVar4;
        }
      }
      if ((int)param_6 != 0) {
        uVar18 = (ulong)(uVar13 * (int)param_6) / 1000;
      }
      if (((void *)(param_4 + (ulong)uVar17) == (void *)0x0) ||
         (pvVar9 = (void *)(*(long *)(param_2 + 0x40) + 2), pvVar9 == (void *)0x0)) {
LAB_0012731c:
        _printk(&DAT_00138b90,"syna_tcm_write_flash",__n_00);
        cVar12 = *(char *)(param_2 + 0x80);
        iVar8 = -0x16;
joined_r0x00127340:
        if (cVar12 == '\x01') goto LAB_00127344;
        goto LAB_001273ec;
      }
      uVar4 = *(int *)(param_2 + 0x48) - 2;
      if ((param_5 - uVar17 < uVar2) || (uVar4 < uVar2)) {
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",param_5 - uVar17,uVar4,__n_00);
        goto LAB_0012731c;
      }
      memcpy(pvVar9,(void *)(param_4 + (ulong)uVar17),__n_00);
      uVar16 = *(undefined8 *)(param_2 + 0x40);
      if (*(char *)(param_1 + 9) != '\v') {
        _printk(&DAT_001385ed,"syna_tcm_reflash_send_command");
      }
      if ((int)uVar18 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
          uVar18 = (ulong)*(uint *)(param_1 + 0x20c);
          _printk(&DAT_00137337,"syna_tcm_reflash_send_command",uVar18);
        }
        else {
          uVar18 = 0;
        }
      }
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x127214);
        (*pcVar7)();
      }
      iVar8 = (**(code **)(param_1 + 0x398))(param_1,0x12,uVar16,uVar1,0,uVar18);
      if (iVar8 < 0) {
        _printk(&DAT_0013a7db,"syna_tcm_reflash_send_command",0x12);
        _printk(&DAT_00139d63,"syna_tcm_write_flash",uVar17 + param_3,uVar1);
        cVar12 = *(char *)(param_2 + 0x80);
        goto joined_r0x00127340;
      }
      uVar15 = uVar15 - uVar2;
      uVar17 = uVar17 + uVar2;
      *(uint *)(param_2 + 0x90) = *(int *)(param_2 + 0x90) + uVar2;
    } while (uVar15 != 0);
    cVar12 = *(char *)(param_2 + 0x80);
  }
  iVar8 = 0;
  cVar14 = '\0';
  if (cVar12 != '\x01') {
LAB_001273ec:
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock",cVar12);
    cVar14 = *(char *)(param_2 + 0x80) + -1;
  }
LAB_001272b8:
  *(char *)(param_2 + 0x80) = cVar14;
  mutex_unlock(param_2 + 0x50);
  return iVar8;
}

