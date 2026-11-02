
int syna_tcm_preserve_touch_report_config(long param_1,int param_2)

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
  char cVar11;
  int iVar12;
  uint uVar13;
  uint uVar14;
  ulong uVar15;
  uint uVar16;
  ulong __n;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_preserve_touch_report_config");
    return -0xf1;
  }
  uVar10 = (uint)*(byte *)(param_1 + 9);
  if (*(byte *)(param_1 + 9) != 1) {
    puVar9 = &DAT_00137912;
    goto LAB_0012a8d4;
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      param_2 = *(int *)(param_1 + 0x20c);
      _printk(&DAT_0013c851,"syna_tcm_preserve_touch_report_config");
    }
    else {
      param_2 = 0;
    }
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x12a5b0);
    (*pcVar6)();
  }
  iVar7 = (**(code **)(param_1 + 0x398))(param_1,0x25,0,0,0,param_2);
  if (iVar7 < 0) {
    _printk(&DAT_00134374,"syna_tcm_preserve_touch_report_config");
    goto LAB_0012a7f4;
  }
  uVar10 = *(uint *)(param_1 + 0x150);
  if (*(long *)(param_1 + 0x148) == 0) {
    uVar2 = *(undefined4 *)(param_1 + 0x154);
    puVar9 = &DAT_0013ca39;
    goto LAB_0012a8b4;
  }
  if (uVar10 == 0) {
    uVar10 = *(uint *)(param_1 + 0x154);
    puVar9 = &DAT_001355c9;
    goto LAB_0012a8d4;
  }
  if (*(char *)(param_1 + 0x188) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x158);
  *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
  if (*(char *)(param_1 + 0x1d0) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x1a0);
  *(char *)(param_1 + 0x1d0) = *(char *)(param_1 + 0x1d0) + '\x01';
  *(undefined4 *)(param_1 + 0x38c) = 1;
  uVar1 = *(uint *)(param_1 + 0x154);
  __n = (ulong)uVar1;
  __s = *(void **)(param_1 + 400);
  uVar15 = (ulong)*(uint *)(param_1 + 0x198);
  if (uVar1 <= *(uint *)(param_1 + 0x198)) {
LAB_0012a660:
    memset(__s,0,uVar15);
    uVar10 = *(uint *)(param_1 + 0x150);
    *(undefined4 *)(param_1 + 0x19c) = 0;
    if (*(void **)(param_1 + 0x148) == (void *)0x0) {
      uVar2 = *(undefined4 *)(param_1 + 0x154);
      puVar9 = &DAT_0013d11d;
LAB_0012a8b4:
      _printk(puVar9,"syna_tcm_preserve_touch_report_config",uVar10,uVar2);
      return -0xf1;
    }
    if (uVar10 == 0) {
      uVar10 = *(uint *)(param_1 + 0x154);
      puVar9 = &DAT_0013bc01;
LAB_0012a8d4:
      _printk(puVar9,"syna_tcm_preserve_touch_report_config",uVar10);
      return -0xf1;
    }
    if (*(void **)(param_1 + 400) != (void *)0x0) {
      if ((uVar1 <= uVar10) && (uVar1 <= *(uint *)(param_1 + 0x198))) {
        memcpy(*(void **)(param_1 + 400),*(void **)(param_1 + 0x148),__n);
        *(uint *)(param_1 + 0x19c) = uVar1;
        if (*(char *)(param_1 + 0x1d0) == '\x01') {
          cVar11 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar11 = *(char *)(param_1 + 0x1d0) + -1;
        }
        *(char *)(param_1 + 0x1d0) = cVar11;
        mutex_unlock(param_1 + 0x1a0);
        if (*(char *)(param_1 + 0x188) == '\x01') {
          cVar11 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar11 = *(char *)(param_1 + 0x188) + -1;
        }
        *(char *)(param_1 + 0x188) = cVar11;
        mutex_unlock(param_1 + 0x158);
        if (uVar1 == 0) {
          iVar12 = 0;
          uVar13 = 0;
          uVar10 = 0;
        }
        else {
          uVar14 = 0;
          uVar10 = 0;
          uVar13 = 0;
          iVar12 = 0;
          bVar5 = false;
          bVar4 = false;
          do {
            bVar3 = *(byte *)(*(long *)(param_1 + 400) + (ulong)uVar14);
            uVar15 = (ulong)uVar14 + 1;
            uVar16 = (uint)bVar3;
            if (bVar3 < 3) {
              if (uVar16 - 1 < 2) {
                bVar4 = true;
              }
              else if (uVar16 == 0) {
                bVar4 = false;
                bVar5 = false;
              }
              else {
LAB_0012a784:
                bVar3 = *(byte *)(*(long *)(param_1 + 400) + uVar15);
                uVar15 = (ulong)(uVar14 + 2);
                uVar14 = uVar13 + bVar3;
                uVar16 = uVar14;
                if (!bVar4) {
                  uVar16 = uVar13;
                }
                if (bVar5) {
                  uVar10 = uVar10 + bVar3;
                  bVar5 = true;
                  uVar13 = uVar16;
                }
                else if (bVar4) {
                  bVar5 = false;
                  bVar4 = true;
                  uVar13 = uVar14;
                }
                else {
                  bVar4 = false;
                  bVar5 = false;
                  iVar12 = iVar12 + (uint)bVar3;
                }
              }
            }
            else if (uVar16 == 3) {
              bVar4 = false;
              *(int *)(param_1 + 0x1d8) = (int)uVar15;
              bVar5 = true;
            }
            else {
              if (uVar16 != 4) goto LAB_0012a784;
              uVar14 = uVar13 + 7 & 0xfffffff8;
              if (!bVar4) {
                uVar14 = uVar13;
              }
              uVar13 = uVar14;
              if (bVar5) {
                bVar5 = true;
                uVar10 = uVar10 + 7 & 0xfffffff8;
              }
              else {
                bVar5 = false;
              }
            }
            uVar14 = (uint)uVar15;
          } while (uVar14 < uVar1);
        }
        iVar7 = 0;
        *(int *)(param_1 + 0x1e0) = iVar12;
        *(uint *)(param_1 + 0x1dc) = uVar13;
        *(uint *)(param_1 + 0x1e4) = uVar10;
        goto LAB_0012a7f4;
      }
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",uVar10,*(uint *)(param_1 + 0x198),uVar1);
    }
    _printk(&DAT_0013687a,"syna_tcm_preserve_touch_report_config");
    if (*(char *)(param_1 + 0x1d0) == '\x01') {
      cVar11 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar11 = *(char *)(param_1 + 0x1d0) + -1;
    }
    *(char *)(param_1 + 0x1d0) = cVar11;
    mutex_unlock(param_1 + 0x1a0);
    if (*(char *)(param_1 + 0x188) == '\x01') {
      cVar11 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar11 = *(char *)(param_1 + 0x188) + -1;
    }
    *(char *)(param_1 + 0x188) = cVar11;
    mutex_unlock(param_1 + 0x158);
    iVar7 = -0x16;
    goto LAB_0012a7f4;
  }
  if (__s == (void *)0x0) {
LAB_0012a634:
    lVar8 = syna_request_managed_device();
    if (lVar8 != 0) goto LAB_0012a63c;
LAB_0012a9d8:
    puVar9 = &DAT_0013ccb3;
LAB_0012a9e0:
    _printk(puVar9,"syna_pal_mem_alloc");
    *(undefined8 *)(param_1 + 400) = 0;
  }
  else {
    lVar8 = syna_request_managed_device();
    if (lVar8 != 0) {
      devm_kfree(lVar8,__s);
      goto LAB_0012a634;
    }
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) goto LAB_0012a9d8;
LAB_0012a63c:
    if ((int)uVar1 < 1) {
      puVar9 = &DAT_00138e98;
      goto LAB_0012a9e0;
    }
    __s = (void *)devm_kmalloc(lVar8,__n,0xdc0);
    *(void **)(param_1 + 400) = __s;
    if (__s != (void *)0x0) {
      *(uint *)(param_1 + 0x198) = uVar1;
      uVar15 = __n;
      goto LAB_0012a660;
    }
  }
  _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar1);
  *(undefined8 *)(param_1 + 0x198) = 0;
  _printk(&DAT_00136277,"syna_tcm_preserve_touch_report_config");
  if (*(char *)(param_1 + 0x188) == '\x01') {
    cVar11 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar11 = *(char *)(param_1 + 0x188) + -1;
  }
  *(char *)(param_1 + 0x188) = cVar11;
  mutex_unlock(param_1 + 0x158);
  iVar7 = -0xf3;
LAB_0012a7f4:
  *(undefined4 *)(param_1 + 0x38c) = 0;
  return iVar7;
}

