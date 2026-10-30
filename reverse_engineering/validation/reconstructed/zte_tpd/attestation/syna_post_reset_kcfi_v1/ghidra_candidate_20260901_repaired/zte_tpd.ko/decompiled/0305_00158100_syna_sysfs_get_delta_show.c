
long syna_sysfs_get_delta_show(long param_1,undefined8 param_2,undefined8 param_3)

{
  code *pcVar1;
  int iVar2;
  undefined1 *puVar3;
  long lVar4;
  long lVar5;
  long *plVar6;
  uint uVar7;
  long local_b0;
  undefined8 local_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  plVar6 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar4 = *plVar6;
  iVar2 = syna_tcm_enable_report(lVar4,0x12,1,10);
  if (iVar2 < 0) {
    iVar2 = scnprintf(param_3,0x1000,"Fail to enable report %x\n",0x12);
LAB_001584bc:
    lVar4 = sp_el0;
    if (*(long *)(lVar4 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    return (long)iVar2;
  }
  if (lVar4 == 0) {
    puVar3 = &DAT_0017eb2d;
  }
  else {
    lVar5 = *(long *)(lVar4 + 0x48);
    if (lVar5 != 0) {
      if (*(long *)(lVar5 + 0x38) != 0) {
        mutex_lock(lVar4 + 0x50);
        if (*(int *)(*(code **)(lVar5 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1581ac);
          (*pcVar1)();
        }
        (**(code **)(lVar5 + 0x38))(lVar5,0);
        mutex_unlock(lVar4 + 0x50);
      }
      local_70 = local_70 & 0xffffffffffffff00;
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      uVar7 = 0;
      do {
        iVar2 = syna_tcm_wait_for_report(lVar4,0x12,&local_b0,100,1000);
        if ((-1 < iVar2) && (iStack_a4 != 0)) {
          lVar4 = _printk(&DAT_00183340,"syna_sysfs_get_delta_show",1);
          return lVar4;
        }
        uVar7 = uVar7 + 1;
      } while ((true) && (uVar7 < 5));
      syna_tcm_enable_report(*plVar6,0x12,0,10);
      if (lVar4 == 0) {
        lVar4 = _printk(&DAT_0017eb2d,"syna_tcm_enable_irq");
        return lVar4;
      }
      lVar5 = *(long *)(lVar4 + 0x48);
      if (lVar5 == 0) {
        lVar4 = _printk(&DAT_00180beb,"syna_tcm_enable_irq");
        return lVar4;
      }
      if (*(long *)(lVar5 + 0x38) != 0) {
        mutex_lock(lVar4 + 0x50);
        if (*(int *)(*(code **)(lVar5 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x158458);
          (*pcVar1)();
        }
        (**(code **)(lVar5 + 0x38))(lVar5,1);
        mutex_unlock(lVar4 + 0x50);
      }
      lVar4 = local_b0;
      if ((char)local_70 != '\0') {
        lVar4 = _printk(&DAT_0017f281,"syna_tcm_buf_release");
        return lVar4;
      }
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) {
        lVar4 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return lVar4;
      }
      if (lVar4 != 0) {
        devm_kfree(lVar5,lVar4);
      }
      local_a8 = 0;
      local_70 = local_70 & 0xffffffffffffff00;
      iVar2 = scnprintf(param_3,0x1000,"Done\n");
      goto LAB_001584bc;
    }
    puVar3 = &DAT_00180beb;
  }
  lVar4 = _printk(puVar3,"syna_tcm_enable_irq");
  return lVar4;
}

