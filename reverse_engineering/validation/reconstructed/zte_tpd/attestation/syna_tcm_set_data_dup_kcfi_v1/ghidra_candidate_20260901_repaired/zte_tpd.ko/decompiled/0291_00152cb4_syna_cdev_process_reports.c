
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 syna_cdev_process_reports(undefined1 param_1,void *param_2,uint param_3,long *param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  undefined2 uVar5;
  long lVar6;
  undefined1 *__src;
  undefined8 uVar7;
  void *__dest;
  undefined *puVar8;
  long *plVar9;
  long *plVar10;
  code *pcVar11;
  long lVar12;
  ulong __n;
  long *plVar13;
  uint uVar14;
  undefined1 *local_70;
  
  if (param_4 == (long *)0x0) {
    uVar7 = _printk(&DAT_00181456,"syna_cdev_process_reports");
    return uVar7;
  }
  if (param_2 == (void *)0x0) {
    uVar7 = _printk(&DAT_0017fc94,"syna_cdev_update_fifo");
    return uVar7;
  }
  lVar12 = *param_4;
  uVar1 = param_3 + 3;
  uVar3 = _DAT_0015eb64 & ((int)_DAT_0015eb64 >> 0x1f ^ 0xffffffffU);
  uVar2 = uVar3 + uVar1;
  __n = (ulong)uVar2;
  lVar6 = syna_request_managed_device();
  if (lVar6 == 0) {
    puVar8 = &DAT_001828ba;
LAB_00153068:
    uVar7 = _printk(puVar8,"syna_pal_mem_alloc");
    return uVar7;
  }
  if ((int)uVar2 < 1) {
    puVar8 = &DAT_00180da7;
    goto LAB_00153068;
  }
  __src = (undefined1 *)devm_kmalloc(lVar6,__n,0xdc0);
  uVar14 = _DAT_0015eb64;
  if (__src == (undefined1 *)0x0) {
    uVar7 = _printk(&DAT_0017f9b3,"syna_cdev_update_fifo",uVar2,param_3);
    return uVar7;
  }
  if ((int)_DAT_0015eb64 < 1) {
    uVar14 = 0;
    local_70 = (undefined1 *)0x0;
  }
  else {
    lVar6 = syna_request_managed_device();
    if (lVar6 == 0) {
      uVar7 = _printk(&DAT_001828ba,"syna_pal_mem_alloc");
      return uVar7;
    }
    local_70 = (undefined1 *)devm_kmalloc(lVar6,uVar14,0xdc0);
    if (local_70 == (undefined1 *)0x0) {
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        uVar7 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar7;
      }
      devm_kfree(lVar6,__src);
      uVar7 = _printk(&DAT_00182fa5,"syna_cdev_update_fifo",_DAT_0015eb64);
      return uVar7;
    }
  }
  *__src = param_1;
  if ((uVar2 != 1) && (__src[1] = (char)param_3, uVar2 != 2)) {
    __src[2] = (char)(param_3 >> 8);
    if (param_3 != 0) {
      if (__src + 3 == (undefined1 *)0x0) {
        uVar7 = _printk(&DAT_0017eeb9,"syna_cdev_update_fifo",param_3);
        return uVar7;
      }
      if (uVar3 + param_3 < param_3) {
        uVar7 = _printk(&DAT_00181608,"syna_pal_mem_cpy",param_3,uVar3 + param_3,param_3);
        return uVar7;
      }
      if (__n - 3 < (ulong)param_3) goto LAB_0015321c;
      memcpy(__src + 3,param_2,(ulong)param_3);
    }
    if ((int)_DAT_0015eb64 < 2) {
LAB_00152e5c:
      lVar6 = param_4[0x4e];
      mutex_lock(&DAT_0015eb30);
      if (*(uint *)(param_4 + 0x9e) < 0x4b0) {
        if (0x4af < (int)syna_cdev_push_data_to_fifo_pre_remaining_frames) {
          uVar7 = _printk(&DAT_00180c66,"syna_cdev_push_data_to_fifo");
          return uVar7;
        }
      }
      else {
        if (*(uint *)(param_4 + 0x9e) != syna_cdev_push_data_to_fifo_pre_remaining_frames) {
          uVar7 = _printk(&DAT_0017f0f6,"syna_cdev_push_data_to_fifo");
          return uVar7;
        }
        plVar13 = (long *)param_4[0x9f];
        plVar10 = (long *)plVar13[1];
        if (((long *)*plVar10 == plVar13) && (lVar12 = *plVar13, *(long **)(lVar12 + 8) == plVar13))
        {
          *(long **)(lVar12 + 8) = plVar10;
          *plVar10 = lVar12;
        }
        else {
          __list_del_entry_valid_or_report(plVar13);
        }
        *plVar13 = -0x2152ffffffffff00;
        plVar13[1] = -0x2152fffffffffede;
        kfree(plVar13[2]);
        kfree(plVar13);
        syna_cdev_push_data_to_fifo_pre_remaining_frames = *(uint *)(param_4 + 0x9e);
        *(uint *)(param_4 + 0x9e) = syna_cdev_push_data_to_fifo_pre_remaining_frames - 1;
      }
      plVar10 = (long *)__kmalloc_cache_noprof(_delayed_work_timer_fn,0xcc0,0x30);
      if (plVar10 == (long *)0x0) {
        uVar7 = _printk(&DAT_0017fcbe,"syna_cdev_push_data_to_fifo");
        return uVar7;
      }
      __dest = (void *)__kmalloc_noprof(__n,0xcc0);
      plVar10[2] = (long)__dest;
      if (__dest == (void *)0x0) {
        uVar7 = _printk(&DAT_0017e098,"syna_cdev_push_data_to_fifo",uVar2);
        return uVar7;
      }
      *(uint *)(plVar10 + 3) = uVar2;
      memcpy(__dest,__src,__n);
      ktime_get_real_ts64(plVar10 + 4);
      plVar13 = param_4 + 0x9f;
      plVar9 = (long *)param_4[0xa0];
      if (((plVar10 == plVar13) || (plVar9 == plVar10)) || ((long *)*plVar9 != plVar13)) {
        __list_add_valid_or_report(plVar10);
      }
      else {
        param_4[0xa0] = (long)plVar10;
        *plVar10 = (long)plVar13;
        plVar10[1] = (long)plVar9;
        *plVar9 = (long)plVar10;
      }
      uVar1 = (int)param_4[0x9e] + 1;
      uVar2 = DAT_0015eb68 - 1;
      *(uint *)(param_4 + 0x9e) = uVar1;
      if ((uVar2 < uVar1) && (pcVar11 = *(code **)(lVar6 + 0x40), pcVar11 != (code *)0x0)) {
        if (*(int *)(pcVar11 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x152fbc);
          (*pcVar11)();
        }
        (*pcVar11)(lVar6 + 8,0);
      }
      mutex_unlock(&DAT_0015eb30);
      __wake_up(param_4 + 0xa1,1,1,0);
      lVar6 = syna_request_managed_device();
      if (lVar6 != 0) {
        if (local_70 != (undefined1 *)0x0) {
          devm_kfree(lVar6,local_70);
        }
        lVar6 = syna_request_managed_device();
        if (lVar6 != 0) {
          devm_kfree(lVar6,__src);
          if (true) {
            return 0;
          }
          uVar7 = _printk(&DAT_001819c3,"syna_cdev_process_reports",param_1,param_3);
          return uVar7;
        }
        uVar7 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar7;
      }
      uVar7 = _printk(&DAT_001828ba,"syna_pal_mem_free");
      return uVar7;
    }
    if (uVar14 != 0) {
      uVar5 = *(undefined2 *)(lVar12 + 0x382);
      *local_70 = (char)uVar5;
      if (uVar14 != 1) {
        local_70[1] = (char)((ushort)uVar5 >> 8);
        if ((_DAT_0015eb64 + 0xfffe & 0xffff) != 0) {
          if (uVar14 == 2) goto LAB_00153218;
          local_70[2] = *(undefined1 *)(lVar12 + 0x385);
        }
        if ((__src + (int)uVar1 == (undefined1 *)0x0) || (local_70 == (undefined1 *)0x0)) {
          uVar7 = _printk(&DAT_001808eb,"syna_cdev_update_fifo");
          return uVar7;
        }
        if (uVar3 < _DAT_0015eb64) {
          uVar7 = _printk(&DAT_00181608,"syna_pal_mem_cpy",_DAT_0015eb64,uVar3,_DAT_0015eb64);
          return uVar7;
        }
        uVar4 = 0;
        if (uVar1 <= uVar2) {
          uVar4 = __n - (long)(int)uVar1;
        }
        if (uVar4 < _DAT_0015eb64) {
LAB_0015321c:
                    /* WARNING: Subroutine does not return */
          __fortify_panic(0x11);
        }
        memcpy(__src + (int)uVar1,local_70,(ulong)_DAT_0015eb64);
        goto LAB_00152e5c;
      }
    }
  }
LAB_00153218:
                    /* WARNING: Does not return */
  pcVar11 = (code *)SoftwareBreakpoint(1,0x15321c);
  (*pcVar11)();
}

