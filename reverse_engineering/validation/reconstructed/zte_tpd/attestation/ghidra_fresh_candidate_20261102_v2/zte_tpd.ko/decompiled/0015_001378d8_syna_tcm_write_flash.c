
undefined8
syna_tcm_write_flash(long param_1,long param_2,int param_3,long param_4,uint param_5,ulong param_6)

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
  uint uVar14;
  uint uVar15;
  ulong __n_00;
  ulong uVar16;
  
  uVar3 = *(uint *)(param_2 + 0x2c);
  uVar15 = *(uint *)(param_2 + 0x30);
  if (*(char *)(param_2 + 0x80) != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 0x50);
  cVar12 = *(char *)(param_2 + 0x80) + '\x01';
  *(char *)(param_2 + 0x80) = cVar12;
  if (param_5 != 0) {
    uVar6 = 0;
    if (uVar3 != 0) {
      uVar6 = uVar15 / uVar3;
    }
    uVar15 = 0;
    uVar14 = param_5;
    do {
      uVar16 = param_6 & 0xffffffff;
      pvVar9 = *(void **)(param_2 + 0x40);
      uVar2 = uVar14;
      if (uVar6 * uVar3 <= uVar14) {
        uVar2 = uVar6 * uVar3;
      }
      __n_00 = (ulong)uVar2;
      uVar1 = uVar2 + 2;
      __n = (ulong)*(uint *)(param_2 + 0x48);
      if (*(uint *)(param_2 + 0x48) < uVar1) {
        if (pvVar9 != (void *)0x0) {
          lVar10 = syna_request_managed_device();
          if (lVar10 == 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00171996,"syna_pal_mem_free");
          }
          devm_kfree(lVar10,pvVar9);
        }
        lVar10 = syna_request_managed_device();
        if (lVar10 == 0) {
          puVar11 = &DAT_00171996;
LAB_00137c28:
                    /* WARNING: Subroutine does not return */
          _printk(puVar11,"syna_pal_mem_alloc");
        }
        if ((int)uVar1 < 1) {
          puVar11 = &DAT_0016da92;
          goto LAB_00137c28;
        }
        pvVar9 = (void *)devm_kmalloc(lVar10,(ulong)uVar1,0xdc0);
        *(void **)(param_2 + 0x40) = pvVar9;
        if (pvVar9 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
        }
        *(uint *)(param_2 + 0x48) = uVar1;
        __n = (ulong)uVar1;
      }
      memset(pvVar9,0,__n);
      *(undefined4 *)(param_2 + 0x4c) = 0;
      uVar5 = 0;
      if (*(uint *)(param_2 + 0x2c) != 0) {
        uVar5 = (undefined2)((uVar15 + param_3) / *(uint *)(param_2 + 0x2c));
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
        uVar16 = (ulong)(uVar13 * (int)param_6) / 1000;
      }
      if (((void *)(param_4 + (ulong)uVar15) == (void *)0x0) ||
         (pvVar9 = (void *)(*(long *)(param_2 + 0x40) + 2), pvVar9 == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d77c,"syna_tcm_write_flash",__n_00);
      }
      uVar4 = *(int *)(param_2 + 0x48) - 2;
      if ((param_5 - uVar15 < uVar2) || (uVar4 < uVar2)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016edc2,"syna_pal_mem_cpy",param_5 - uVar15,uVar4,__n_00);
      }
      memcpy(pvVar9,(void *)(param_4 + (ulong)uVar15),__n_00);
      if (*(char *)(param_1 + 9) != '\v') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d1c4,"syna_tcm_reflash_send_command");
      }
      if ((int)uVar16 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016bea2,"syna_tcm_reflash_send_command",*(undefined4 *)(param_1 + 0x20c));
        }
        uVar16 = 0;
      }
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x137aa0);
        (*pcVar7)();
      }
      iVar8 = (**(code **)(param_1 + 0x398))
                        (param_1,0x12,*(undefined8 *)(param_2 + 0x40),uVar1,0,uVar16);
      if (iVar8 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016f442,"syna_tcm_reflash_send_command",0x12);
      }
      uVar14 = uVar14 - uVar2;
      uVar15 = uVar15 + uVar2;
      *(uint *)(param_2 + 0x90) = *(int *)(param_2 + 0x90) + uVar2;
    } while (uVar14 != 0);
    cVar12 = *(char *)(param_2 + 0x80);
  }
  if (cVar12 != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock",cVar12);
  }
  *(undefined1 *)(param_2 + 0x80) = 0;
  mutex_unlock(param_2 + 0x50);
  return 0;
}

