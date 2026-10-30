
undefined8 syna_tcm_preserve_touch_report_config(long param_1,int param_2)

{
  uint uVar1;
  undefined4 uVar2;
  byte bVar3;
  bool bVar4;
  bool bVar5;
  code *pcVar6;
  int iVar7;
  void *__s;
  long lVar8;
  undefined *puVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  ulong uVar13;
  uint uVar14;
  ulong __n;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168a84,"syna_tcm_preserve_touch_report_config");
  }
  uVar10 = (uint)*(byte *)(param_1 + 9);
  if (*(byte *)(param_1 + 9) != 1) {
    puVar9 = &DAT_0016c48e;
LAB_0014f12c:
                    /* WARNING: Subroutine does not return */
    _printk(puVar9,"syna_tcm_preserve_touch_report_config",uVar10);
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171524,"syna_tcm_preserve_touch_report_config");
    }
    param_2 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x14ee08);
    (*pcVar6)();
  }
  iVar7 = (**(code **)(param_1 + 0x398))(param_1,0x25,0,0,0,param_2);
  if (iVar7 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168e30,"syna_tcm_preserve_touch_report_config");
  }
  uVar10 = *(uint *)(param_1 + 0x150);
  if (*(long *)(param_1 + 0x148) == 0) {
    uVar2 = *(undefined4 *)(param_1 + 0x154);
    puVar9 = &DAT_00171710;
  }
  else {
    if (uVar10 == 0) {
      uVar10 = *(uint *)(param_1 + 0x154);
      puVar9 = &DAT_0016a0ca;
      goto LAB_0014f12c;
    }
    if (*(char *)(param_1 + 0x188) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    }
    mutex_lock(param_1 + 0x158);
    *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
    if (*(char *)(param_1 + 0x1d0) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    }
    mutex_lock(param_1 + 0x1a0);
    *(char *)(param_1 + 0x1d0) = *(char *)(param_1 + 0x1d0) + '\x01';
    *(undefined4 *)(param_1 + 0x38c) = 1;
    uVar1 = *(uint *)(param_1 + 0x154);
    __n = (ulong)uVar1;
    __s = *(void **)(param_1 + 400);
    uVar13 = (ulong)*(uint *)(param_1 + 0x198);
    if (*(uint *)(param_1 + 0x198) < uVar1) {
      if (__s != (void *)0x0) {
        lVar8 = syna_request_managed_device();
        if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00171996,"syna_pal_mem_free");
        }
        devm_kfree(lVar8,__s);
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        puVar9 = &DAT_00171996;
LAB_0014f238:
                    /* WARNING: Subroutine does not return */
        _printk(puVar9,"syna_pal_mem_alloc");
      }
      if ((int)uVar1 < 1) {
        puVar9 = &DAT_0016da92;
        goto LAB_0014f238;
      }
      __s = (void *)devm_kmalloc(lVar8,__n,0xdc0);
      *(void **)(param_1 + 400) = __s;
      if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
      }
      *(uint *)(param_1 + 0x198) = uVar1;
      uVar13 = __n;
    }
    memset(__s,0,uVar13);
    uVar10 = *(uint *)(param_1 + 0x150);
    *(undefined4 *)(param_1 + 0x19c) = 0;
    if (*(void **)(param_1 + 0x148) != (void *)0x0) {
      if (uVar10 != 0) {
        if (*(void **)(param_1 + 400) == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016b3be,"syna_tcm_preserve_touch_report_config");
        }
        if ((uVar10 < uVar1) || (*(uint *)(param_1 + 0x198) < uVar1)) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar10,*(uint *)(param_1 + 0x198),uVar1);
        }
        memcpy(*(void **)(param_1 + 400),*(void **)(param_1 + 0x148),__n);
        *(uint *)(param_1 + 0x19c) = uVar1;
        if (*(char *)(param_1 + 0x1d0) != '\x01') {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        }
        *(undefined1 *)(param_1 + 0x1d0) = 0;
        mutex_unlock(param_1 + 0x1a0);
        if (*(char *)(param_1 + 0x188) != '\x01') {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        }
        *(undefined1 *)(param_1 + 0x188) = 0;
        mutex_unlock(param_1 + 0x158);
        if (uVar1 == 0) {
          iVar7 = 0;
          uVar11 = 0;
          uVar10 = 0;
        }
        else {
          uVar12 = 0;
          uVar10 = 0;
          uVar11 = 0;
          iVar7 = 0;
          bVar5 = false;
          bVar4 = false;
          do {
            bVar3 = *(byte *)(*(long *)(param_1 + 400) + (ulong)uVar12);
            uVar13 = (ulong)uVar12 + 1;
            uVar14 = (uint)bVar3;
            if (bVar3 < 3) {
              if (uVar14 - 1 < 2) {
                bVar4 = true;
              }
              else if (uVar14 == 0) {
                bVar4 = false;
                bVar5 = false;
              }
              else {
LAB_0014efdc:
                bVar3 = *(byte *)(*(long *)(param_1 + 400) + uVar13);
                uVar13 = (ulong)(uVar12 + 2);
                uVar12 = uVar11 + bVar3;
                uVar14 = uVar12;
                if (!bVar4) {
                  uVar14 = uVar11;
                }
                if (bVar5) {
                  uVar10 = uVar10 + bVar3;
                  bVar5 = true;
                  uVar11 = uVar14;
                }
                else if (bVar4) {
                  bVar5 = false;
                  bVar4 = true;
                  uVar11 = uVar12;
                }
                else {
                  bVar4 = false;
                  bVar5 = false;
                  iVar7 = iVar7 + (uint)bVar3;
                }
              }
            }
            else if (uVar14 == 3) {
              bVar4 = false;
              *(int *)(param_1 + 0x1d8) = (int)uVar13;
              bVar5 = true;
            }
            else {
              if (uVar14 != 4) goto LAB_0014efdc;
              uVar12 = uVar11 + 7 & 0xfffffff8;
              if (!bVar4) {
                uVar12 = uVar11;
              }
              uVar11 = uVar12;
              if (bVar5) {
                bVar5 = true;
                uVar10 = uVar10 + 7 & 0xfffffff8;
              }
              else {
                bVar5 = false;
              }
            }
            uVar12 = (uint)uVar13;
          } while (uVar12 < uVar1);
        }
        *(int *)(param_1 + 0x1e0) = iVar7;
        *(uint *)(param_1 + 0x1dc) = uVar11;
        *(uint *)(param_1 + 0x1e4) = uVar10;
        *(undefined4 *)(param_1 + 0x38c) = 0;
        return 0;
      }
      uVar10 = *(uint *)(param_1 + 0x154);
      puVar9 = &DAT_001708b0;
      goto LAB_0014f12c;
    }
    uVar2 = *(undefined4 *)(param_1 + 0x154);
    puVar9 = &DAT_00171e0e;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar9,"syna_tcm_preserve_touch_report_config",uVar10,uVar2);
}

