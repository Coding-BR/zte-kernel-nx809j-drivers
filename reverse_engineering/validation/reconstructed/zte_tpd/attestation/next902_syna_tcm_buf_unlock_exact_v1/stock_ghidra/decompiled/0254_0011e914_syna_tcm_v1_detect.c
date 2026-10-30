
void syna_tcm_v1_detect(long param_1,ulong param_2,ulong param_3)

{
  long *plVar1;
  undefined *puVar2;
  byte bVar3;
  int iVar4;
  void *__s;
  long lVar5;
  undefined *puVar6;
  char cVar7;
  undefined4 uVar8;
  code *pcVar9;
  uint uVar10;
  char *pcVar11;
  undefined1 local_3c [4];
  long local_38;
  
  lVar5 = sp_el0;
  local_38 = *(long *)(lVar5 + 0x710);
  local_3c[0] = 0;
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_v1_detect");
    iVar4 = -0xf1;
    goto LAB_0011ea90;
  }
  if ((param_2 & 1) != 0) {
LAB_0011e948:
    iVar4 = 0;
    *(code **)(param_1 + 0x390) = syna_tcm_v1_read_message;
    *(code **)(param_1 + 0x398) = syna_tcm_v1_write_message;
    *(code **)(param_1 + 0x3a8) = syna_tcm_v1_set_up_max_rw_size;
    *(code **)(param_1 + 0x3b0) = syna_tcm_v1_check_max_rw_size;
    *(code **)(param_1 + 0x3a0) = syna_tcm_v1_terminate;
    *(undefined4 *)(param_1 + 0x37c) = 0;
    *(undefined1 *)(param_1 + 8) = 1;
    goto LAB_0011ea90;
  }
  mutex_lock(param_1 + 0x348);
  if (*(char *)(param_1 + 0x280) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  plVar1 = (long *)(param_1 + 0x240);
  mutex_lock(param_1 + 0x250);
  uVar10 = *(uint *)(param_1 + 0x248);
  __s = *(void **)(param_1 + 0x240);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  if (uVar10 < 0x36) {
    if (__s == (void *)0x0) {
LAB_0011e9ec:
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) goto LAB_0011e9f4;
LAB_0011ecd0:
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
      *plVar1 = 0;
    }
    else {
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) {
        devm_kfree(lVar5,__s);
        goto LAB_0011e9ec;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) goto LAB_0011ecd0;
LAB_0011e9f4:
      uVar10 = 0x36;
      __s = (void *)devm_kmalloc(lVar5,0x36,0xdc0);
      *plVar1 = (long)__s;
      if (__s != (void *)0x0) {
        *(undefined4 *)(param_1 + 0x248) = 0x36;
        goto LAB_0011ea10;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",0x36);
    *(undefined8 *)(param_1 + 0x248) = 0;
    _printk(&DAT_00134d71,"syna_tcm_v1_detect");
    if (*(char *)(param_1 + 0x280) == '\x01') {
      cVar7 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar7 = *(char *)(param_1 + 0x280) + -1;
    }
    *(char *)(param_1 + 0x280) = cVar7;
    mutex_unlock(param_1 + 0x250);
    mutex_unlock(param_1 + 0x348);
    iVar4 = -0xf3;
    goto LAB_0011ea90;
  }
LAB_0011ea10:
  memset(__s,0,(ulong)uVar10);
  lVar5 = *(long *)(param_1 + 0x48);
  *(undefined4 *)(param_1 + 0x24c) = 0;
  if (lVar5 == 0) {
    iVar4 = -0xf1;
    puVar6 = &DAT_001389db;
LAB_0011eb0c:
    _printk(puVar6,"syna_tcm_read");
  }
  else {
    pcVar9 = *(code **)(lVar5 + 0x20);
    if (pcVar9 == (code *)0x0) {
      iVar4 = -0xf5;
      puVar6 = &DAT_00136c67;
      goto LAB_0011eb0c;
    }
    pcVar11 = *(char **)(param_1 + 0x240);
    if (*(int *)(pcVar9 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x11ea54);
      (*pcVar9)();
    }
    iVar4 = (*pcVar9)(lVar5,pcVar11,0x36);
    if (-1 < iVar4) {
      if (*(char *)(param_1 + 0x280) == '\x01') {
        cVar7 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar7 = *(char *)(param_1 + 0x280) + -1;
      }
      *(char *)(param_1 + 0x280) = cVar7;
      mutex_unlock(param_1 + 0x250);
      mutex_unlock(param_1 + 0x348);
      if (*pcVar11 != -0x5b) {
        iVar4 = -0xf5;
        goto LAB_0011ea90;
      }
      if ((*(char *)(param_1 + 0x380) == '\x01') && (*(int *)(param_1 + 0x200) != 0)) {
        syna_tcm_buf_lock(plVar1);
        uVar10 = *(int *)(param_1 + 0x200) + 5;
        if (uVar10 < *(uint *)(param_1 + 0x248)) {
          *(undefined2 *)(param_1 + 0x382) =
               *(undefined2 *)(*(long *)(param_1 + 0x240) + (ulong)uVar10);
          if ((*(char *)(param_1 + 900) == '\x01') &&
             (uVar10 = *(int *)(param_1 + 0x200) + 7, uVar10 <= *(uint *)(param_1 + 0x248))) {
            *(undefined1 *)(param_1 + 0x385) =
                 *(undefined1 *)(*(long *)(param_1 + 0x240) + (ulong)uVar10);
          }
          syna_tcm_buf_unlock(plVar1);
        }
      }
      if (*(short *)(param_1 + 0x382) == 0x5a5a) {
        *(undefined1 *)(param_1 + 0x380) = 0;
      }
      if (*(char *)(param_1 + 0x385) == 'Z') {
        *(undefined1 *)(param_1 + 900) = 0;
      }
      if (pcVar11[1] == '\x10') {
LAB_0011ec4c:
        if (*(char *)(param_1 + 9) == '\0') {
          syna_tcm_buf_lock(plVar1);
          iVar4 = syna_tcm_v1_parse_idinfo(param_1,pcVar11 + 4,0x34,0x30);
          syna_tcm_buf_unlock(plVar1);
          if (iVar4 < 0) {
            puVar6 = &DAT_00139040;
            goto LAB_0011eca0;
          }
        }
        iVar4 = syna_tcm_v1_check_max_rw_size(param_1);
        if (-1 < iVar4) {
          _printk(&DAT_00132207,"syna_tcm_v1_detect");
          bVar3 = *(byte *)(param_1 + 0x380);
          if (((bVar3 & 1) != 0) || ((*(byte *)(param_1 + 900) & 1) != 0)) {
            puVar6 = &DAT_0013650e;
            if (bVar3 == 0) {
              puVar6 = &DAT_0013a5e4;
            }
            puVar2 = &DAT_0013650e;
            if (((*(byte *)(param_1 + 900) | bVar3 ^ 0xff) & 1) == 0) {
              puVar2 = &DAT_0013a5e4;
            }
            _printk(&DAT_00134742,"syna_tcm_v1_detect",puVar6,puVar2);
          }
          goto LAB_0011e948;
        }
        puVar6 = &DAT_0013d4fa;
      }
      else {
        uVar8 = 4;
        if ((param_3 & 1) == 0) {
          uVar8 = 2;
        }
        iVar4 = syna_tcm_v1_write_message
                          (param_1,uVar8,0,0,local_3c,*(undefined4 *)(param_1 + 0x1ec));
        if (-1 < iVar4) goto LAB_0011ec4c;
        puVar6 = &DAT_00138b16;
      }
LAB_0011eca0:
      _printk(puVar6,"syna_tcm_v1_detect");
      iVar4 = -0xf2;
      goto LAB_0011ea90;
    }
  }
  _printk(&DAT_00139c18,"syna_tcm_v1_detect");
  if (*(char *)(param_1 + 0x280) == '\x01') {
    cVar7 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar7 = *(char *)(param_1 + 0x280) + -1;
  }
  *(char *)(param_1 + 0x280) = cVar7;
  mutex_unlock(param_1 + 0x250);
  mutex_unlock(param_1 + 0x348);
LAB_0011ea90:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar4);
  }
  return;
}

