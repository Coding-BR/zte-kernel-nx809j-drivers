
void syna_tcm_v1_detect(long param_1,ulong param_2,ulong param_3)

{
  long *plVar1;
  int iVar2;
  undefined8 uVar3;
  void *__s;
  long lVar4;
  undefined *puVar5;
  undefined4 uVar6;
  code *pcVar7;
  uint uVar8;
  char *pcVar9;
  undefined1 local_3c [4];
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  local_3c[0] = 0;
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168a84,"syna_tcm_v1_detect");
  }
  if ((param_2 & 1) != 0) {
    uVar3 = 0;
    *(code **)(param_1 + 0x390) = syna_tcm_v1_read_message;
    *(code **)(param_1 + 0x398) = syna_tcm_v1_write_message;
    *(code **)(param_1 + 0x3a8) = syna_tcm_v1_set_up_max_rw_size;
    *(code **)(param_1 + 0x3b0) = syna_tcm_v1_check_max_rw_size;
    *(code **)(param_1 + 0x3a0) = syna_tcm_v1_terminate;
    *(undefined4 *)(param_1 + 0x37c) = 0;
    *(undefined1 *)(param_1 + 8) = 1;
LAB_0014481c:
    lVar4 = sp_el0;
    if (*(long *)(lVar4 + 0x710) == local_38) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  mutex_lock(param_1 + 0x348);
  if (*(char *)(param_1 + 0x280) != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  plVar1 = (long *)(param_1 + 0x240);
  mutex_lock(param_1 + 0x250);
  uVar8 = *(uint *)(param_1 + 0x248);
  __s = *(void **)(param_1 + 0x240);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  if (uVar8 < 0x36) {
    if (__s != (void *)0x0) {
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171996,"syna_pal_mem_free");
      }
      devm_kfree(lVar4,__s);
    }
    lVar4 = syna_request_managed_device();
    if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171996,"syna_pal_mem_alloc");
    }
    uVar8 = 0x36;
    __s = (void *)devm_kmalloc(lVar4,0x36,0xdc0);
    *plVar1 = (long)__s;
    if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c730,"syna_tcm_buf_alloc",0x36);
    }
    *(undefined4 *)(param_1 + 0x248) = 0x36;
  }
  memset(__s,0,(ulong)uVar8);
  lVar4 = *(long *)(param_1 + 0x48);
  *(undefined4 *)(param_1 + 0x24c) = 0;
  if (lVar4 == 0) {
    puVar5 = &DAT_0016d5c2;
LAB_00144898:
                    /* WARNING: Subroutine does not return */
    _printk(puVar5,"syna_tcm_read");
  }
  pcVar7 = *(code **)(lVar4 + 0x20);
  if (pcVar7 == (code *)0x0) {
    puVar5 = &DAT_0016b7bc;
    goto LAB_00144898;
  }
  pcVar9 = *(char **)(param_1 + 0x240);
  if (*(int *)(pcVar7 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x1447e0);
    (*pcVar7)();
  }
  iVar2 = (*pcVar7)(lVar4,pcVar9,0x36);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016e84c,"syna_tcm_v1_detect");
  }
  if (*(char *)(param_1 + 0x280) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
  }
  *(undefined1 *)(param_1 + 0x280) = 0;
  mutex_unlock(param_1 + 0x250);
  mutex_unlock(param_1 + 0x348);
  if (*pcVar9 != -0x5b) {
    uVar3 = 0xffffff0b;
    goto LAB_0014481c;
  }
  if ((*(char *)(param_1 + 0x380) == '\x01') && (*(int *)(param_1 + 0x200) != 0)) {
    syna_tcm_buf_lock(plVar1);
    uVar8 = *(int *)(param_1 + 0x200) + 5;
    if (uVar8 < *(uint *)(param_1 + 0x248)) {
      *(undefined2 *)(param_1 + 0x382) = *(undefined2 *)(*(long *)(param_1 + 0x240) + (ulong)uVar8);
      if (*(char *)(param_1 + 900) == '\x01') {
        uVar8 = *(int *)(param_1 + 0x200) + 7;
        if (uVar8 <= *(uint *)(param_1 + 0x248)) {
          *(undefined1 *)(param_1 + 0x385) =
               *(undefined1 *)(*(long *)(param_1 + 0x240) + (ulong)uVar8);
        }
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
  if (pcVar9[1] != '\x10') {
    uVar6 = 4;
    if ((param_3 & 1) == 0) {
      uVar6 = 2;
    }
    iVar2 = syna_tcm_v1_write_message(param_1,uVar6,0,0,local_3c,*(undefined4 *)(param_1 + 0x1ec));
    if (iVar2 < 0) {
      puVar5 = &DAT_0016d700;
      goto LAB_00144a2c;
    }
  }
  if (*(char *)(param_1 + 9) == '\0') {
    syna_tcm_buf_lock(plVar1);
    iVar2 = syna_tcm_v1_parse_idinfo(param_1,pcVar9 + 4,0x34,0x30);
    syna_tcm_buf_unlock(plVar1);
    if (iVar2 < 0) {
      puVar5 = &DAT_0016dc42;
      goto LAB_00144a2c;
    }
  }
  iVar2 = syna_tcm_v1_check_max_rw_size(param_1);
  if (-1 < iVar2) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00166c4e,"syna_tcm_v1_detect");
  }
  puVar5 = &DAT_001721f6;
LAB_00144a2c:
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_v1_detect");
}

