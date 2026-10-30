
undefined8 FUN_0014565c(void)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  long lVar4;
  undefined8 uVar5;
  code *pcVar6;
  long unaff_x19;
  undefined4 unaff_w20;
  long unaff_x21;
  undefined *puVar7;
  int iVar8;
  
  iVar8 = 100;
  do {
    puVar7 = &DAT_0016d5c2;
    if ((*(long *)(unaff_x19 + 0x48) == 0) ||
       (pcVar6 = *(code **)(*(long *)(unaff_x19 + 0x48) + 0x20), puVar7 = &DAT_0016b7bc,
       pcVar6 == (code *)0x0)) {
      uVar5 = _printk(puVar7,"syna_tcm_read");
      return uVar5;
    }
    if (*(int *)(pcVar6 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x1456a0);
      (*pcVar6)();
    }
    iVar3 = (*pcVar6)();
    if (iVar3 < 0) {
      uVar5 = _printk(&DAT_00166c72,"syna_tcm_v1_discard_message",unaff_w20);
      return uVar5;
    }
    if (*(char *)(unaff_x21 + 1) == '\0') break;
    usleep_range_state(1000,2000,2);
    iVar8 = iVar8 + -1;
  } while (iVar8 != 0);
  lVar4 = syna_request_managed_device();
  if (lVar4 == 0) {
    uVar5 = _printk(&DAT_00171996,"syna_pal_mem_free");
    return uVar5;
  }
  devm_kfree();
  uVar1 = *(uint *)(unaff_x19 + 0x210);
  if ((0 < (int)uVar1) && (uVar2 = *(uint *)(unaff_x19 + 0x214), 0 < (int)uVar2)) {
    if (uVar2 <= uVar1) {
      uVar2 = uVar1;
    }
    usleep_range_state(uVar1,uVar2,2);
  }
  mutex_unlock(unaff_x19 + 0x348);
  return 0xffffff0e;
}

