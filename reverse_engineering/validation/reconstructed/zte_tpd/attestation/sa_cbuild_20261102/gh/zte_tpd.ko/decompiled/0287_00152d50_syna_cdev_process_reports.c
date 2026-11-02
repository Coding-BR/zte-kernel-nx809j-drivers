
void syna_cdev_process_reports(undefined1 param_1,void *param_2,uint param_3,long *param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  undefined2 uVar5;
  code *pcVar6;
  long lVar7;
  undefined1 *puVar8;
  undefined *puVar9;
  long lVar10;
  ulong uVar11;
  uint uVar12;
  undefined1 *local_70;
  
  if (param_4 == (long *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181496,"syna_cdev_process_reports");
  }
  if (param_2 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017fcd4,"syna_cdev_update_fifo");
  }
  lVar10 = *param_4;
  uVar1 = param_3 + 3;
  uVar3 = DAT_0015eba0._4_4_ & ((int)DAT_0015eba0._4_4_ >> 0x1f ^ 0xffffffffU);
  uVar2 = uVar3 + uVar1;
  uVar11 = (ulong)uVar2;
  lVar7 = syna_request_managed_device();
  if (lVar7 == 0) {
    puVar9 = &DAT_001828fa;
LAB_00153104:
                    /* WARNING: Subroutine does not return */
    _printk(puVar9,"syna_pal_mem_alloc");
  }
  if ((int)uVar2 < 1) {
    puVar9 = &DAT_00180de7;
    goto LAB_00153104;
  }
  puVar8 = (undefined1 *)devm_kmalloc(lVar7,uVar11,0xdc0);
  uVar12 = DAT_0015eba0._4_4_;
  if (puVar8 == (undefined1 *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f9f3,"syna_cdev_update_fifo",uVar2,param_3);
  }
  if ((int)DAT_0015eba0._4_4_ < 1) {
    uVar12 = 0;
    local_70 = (undefined1 *)0x0;
  }
  else {
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828fa,"syna_pal_mem_alloc");
    }
    local_70 = (undefined1 *)devm_kmalloc(lVar7,uVar12,0xdc0);
    if (local_70 == (undefined1 *)0x0) {
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      devm_kfree(lVar7,puVar8);
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00182ffe,"syna_cdev_update_fifo",DAT_0015eba0._4_4_);
    }
  }
  *puVar8 = param_1;
  if ((uVar2 != 1) && (puVar8[1] = (char)param_3, uVar2 != 2)) {
    puVar8[2] = (char)(param_3 >> 8);
    if (param_3 != 0) {
      if (puVar8 + 3 == (undefined1 *)0x0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017eef9,"syna_cdev_update_fifo",param_3);
      }
      if (uVar3 + param_3 < param_3) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00181648,"syna_pal_mem_cpy",param_3,uVar3 + param_3,param_3);
      }
      if (uVar11 - 3 < (ulong)param_3) goto LAB_001532b8;
      memcpy(puVar8 + 3,param_2,(ulong)param_3);
    }
    if ((int)DAT_0015eba0._4_4_ < 2) {
LAB_00152ef8:
                    /* WARNING: Subroutine does not return */
      mutex_lock(&DAT_0015eb70);
    }
    if (uVar12 != 0) {
      uVar5 = *(undefined2 *)(lVar10 + 0x382);
      *local_70 = (char)uVar5;
      if (uVar12 != 1) {
        local_70[1] = (char)((ushort)uVar5 >> 8);
        if ((DAT_0015eba0._4_4_ + 0xfffe & 0xffff) != 0) {
          if (uVar12 == 2) goto LAB_001532b4;
          local_70[2] = *(undefined1 *)(lVar10 + 0x385);
        }
        if ((puVar8 + (int)uVar1 == (undefined1 *)0x0) || (local_70 == (undefined1 *)0x0)) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0018092b,"syna_cdev_update_fifo");
        }
        if (uVar3 < DAT_0015eba0._4_4_) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00181648,"syna_pal_mem_cpy",DAT_0015eba0._4_4_,uVar3,DAT_0015eba0._4_4_);
        }
        uVar4 = 0;
        if (uVar1 <= uVar2) {
          uVar4 = uVar11 - (long)(int)uVar1;
        }
        if (uVar4 < DAT_0015eba0._4_4_) {
LAB_001532b8:
                    /* WARNING: Subroutine does not return */
          __fortify_panic(0x11);
        }
        memcpy(puVar8 + (int)uVar1,local_70,(ulong)DAT_0015eba0._4_4_);
        goto LAB_00152ef8;
      }
    }
  }
LAB_001532b4:
                    /* WARNING: Does not return */
  pcVar6 = (code *)SoftwareBreakpoint(1,0x1532b8);
  (*pcVar6)();
}

