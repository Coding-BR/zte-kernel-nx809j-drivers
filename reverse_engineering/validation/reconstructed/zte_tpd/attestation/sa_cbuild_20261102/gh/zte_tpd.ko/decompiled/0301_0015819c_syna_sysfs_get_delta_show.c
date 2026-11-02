
long syna_sysfs_get_delta_show(long param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined1 *puVar3;
  long lVar4;
  long *plVar5;
  uint uVar6;
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
  plVar5 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar4 = *plVar5;
  iVar2 = syna_tcm_enable_report(lVar4,0x12,1,10);
  if (iVar2 < 0) {
    iVar2 = scnprintf(param_3,0x1000,"Fail to enable report %x\n",0x12);
LAB_00158558:
    lVar4 = sp_el0;
    if (*(long *)(lVar4 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    return (long)iVar2;
  }
  if (lVar4 == 0) {
    puVar3 = &DAT_0017eb6d;
  }
  else {
    if (*(long *)(lVar4 + 0x48) != 0) {
      if (*(long *)(*(long *)(lVar4 + 0x48) + 0x38) != 0) {
                    /* WARNING: Subroutine does not return */
        mutex_lock(lVar4 + 0x50);
      }
      local_70 = local_70 & 0xffffffffffffff00;
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      uVar6 = 0;
      do {
        iVar2 = syna_tcm_wait_for_report(lVar4,0x12,&local_b0,100,1000);
        if ((-1 < iVar2) && (iStack_a4 != 0)) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00183399,"syna_sysfs_get_delta_show",1);
        }
        uVar6 = uVar6 + 1;
      } while ((true) && (uVar6 < 5));
      syna_tcm_enable_report(*plVar5,0x12,0,10);
      lVar1 = local_b0;
      if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017eb6d,"syna_tcm_enable_irq");
      }
      if (*(long *)(lVar4 + 0x48) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00180c2b,"syna_tcm_enable_irq");
      }
      if (*(long *)(*(long *)(lVar4 + 0x48) + 0x38) != 0) {
                    /* WARNING: Subroutine does not return */
        mutex_lock(lVar4 + 0x50);
      }
      if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017f2c1,"syna_tcm_buf_release");
      }
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      if (lVar1 != 0) {
        devm_kfree(lVar4,lVar1);
      }
      local_a8 = 0;
      local_70 = local_70 & 0xffffffffffffff00;
      iVar2 = scnprintf(param_3,0x1000,"Done\n");
      goto LAB_00158558;
    }
    puVar3 = &DAT_00180c2b;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_tcm_enable_irq");
}

