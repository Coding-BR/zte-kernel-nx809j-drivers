
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 syna_cdev_process_reports(undefined1 param_1,void *param_2,uint param_3,long *param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  undefined2 uVar5;
  bool bVar6;
  long lVar7;
  undefined1 *__src;
  void *__dest;
  undefined *puVar8;
  long *plVar9;
  long *plVar10;
  code *pcVar11;
  ulong __n;
  long lVar12;
  undefined4 uVar13;
  ulong __n_00;
  long *plVar14;
  uint uVar15;
  undefined1 *local_70;
  
  if (param_4 == (long *)0x0) {
    _printk(&DAT_00139a47,"syna_cdev_process_reports");
    return 0xffffffea;
  }
  __n = (ulong)param_3;
  if (param_2 == (void *)0x0) {
    _printk(&DAT_001365f5,"syna_cdev_update_fifo");
    uVar13 = 0xffffffea;
    goto LAB_001180b0;
  }
  lVar12 = *param_4;
  uVar1 = param_3 + 3;
  uVar3 = DAT_00131e80._4_4_ & ((int)DAT_00131e80._4_4_ >> 0x1f ^ 0xffffffffU);
  uVar2 = uVar3 + uVar1;
  __n_00 = (ulong)uVar2;
  lVar7 = syna_request_managed_device();
  if (lVar7 == 0) {
    puVar8 = &DAT_0013ccb3;
LAB_00118044:
    _printk(puVar8,"syna_pal_mem_alloc");
LAB_00118050:
    _printk(&DAT_0013604e,"syna_cdev_update_fifo",__n_00,__n);
  }
  else {
    if ((int)uVar2 < 1) {
      puVar8 = &DAT_00138e98;
      goto LAB_00118044;
    }
    __src = (undefined1 *)devm_kmalloc(lVar7,__n_00,0xdc0);
    uVar15 = DAT_00131e80._4_4_;
    if (__src == (undefined1 *)0x0) goto LAB_00118050;
    if ((int)DAT_00131e80._4_4_ < 1) {
      uVar15 = 0;
      local_70 = (undefined1 *)0x0;
LAB_00117d58:
      *__src = param_1;
      if ((uVar2 == 1) || (__src[1] = (char)param_3, uVar2 == 2)) goto LAB_001181f4;
      __src[2] = (char)(param_3 >> 8);
      if (param_3 == 0) {
LAB_00117dac:
        if ((int)DAT_00131e80._4_4_ < 2) {
LAB_00117e38:
          lVar7 = param_4[0x4e];
          mutex_lock(&DAT_00131e50);
          if (*(uint *)(param_4 + 0x9e) < 0x4b0) {
            if (0x4af < (int)syna_cdev_push_data_to_fifo_pre_remaining_frames) {
              _printk(&DAT_00138a7d,"syna_cdev_push_data_to_fifo");
              syna_cdev_push_data_to_fifo_pre_remaining_frames = *(uint *)(param_4 + 0x9e);
            }
          }
          else {
            if (*(uint *)(param_4 + 0x9e) != syna_cdev_push_data_to_fifo_pre_remaining_frames) {
              _printk(&DAT_00134b96,"syna_cdev_push_data_to_fifo");
            }
            plVar14 = (long *)param_4[0x9f];
            plVar10 = (long *)plVar14[1];
            if (((long *)*plVar10 == plVar14) &&
               (lVar12 = *plVar14, *(long **)(lVar12 + 8) == plVar14)) {
              *(long **)(lVar12 + 8) = plVar10;
              *plVar10 = lVar12;
            }
            else {
              __list_del_entry_valid_or_report(plVar14);
            }
            *plVar14 = -0x2152ffffffffff00;
            plVar14[1] = -0x2152fffffffffede;
            kfree(plVar14[2]);
            kfree(plVar14);
            syna_cdev_push_data_to_fifo_pre_remaining_frames = *(uint *)(param_4 + 0x9e);
            *(uint *)(param_4 + 0x9e) = syna_cdev_push_data_to_fifo_pre_remaining_frames - 1;
          }
          plVar10 = (long *)__kmalloc_cache_noprof(_kobject_uevent_env,0xcc0,0x30);
          if (plVar10 == (long *)0x0) {
            _printk(&DAT_0013661f,"syna_cdev_push_data_to_fifo");
            _printk(&DAT_0013bf78,"syna_cdev_push_data_to_fifo",0x30);
          }
          else {
            __dest = (void *)__kmalloc_noprof(__n_00,0xcc0);
            plVar10[2] = (long)__dest;
            if (__dest != (void *)0x0) {
              *(uint *)(plVar10 + 3) = uVar2;
              memcpy(__dest,__src,__n_00);
              ktime_get_real_ts64(plVar10 + 4);
              plVar14 = param_4 + 0x9f;
              plVar9 = (long *)param_4[0xa0];
              if (((plVar10 == plVar14) || (plVar9 == plVar10)) || ((long *)*plVar9 != plVar14)) {
                __list_add_valid_or_report(plVar10);
              }
              else {
                param_4[0xa0] = (long)plVar10;
                *plVar10 = (long)plVar14;
                plVar10[1] = (long)plVar9;
                *plVar9 = (long)plVar10;
              }
              uVar1 = (int)param_4[0x9e] + 1;
              uVar2 = DAT_00131e88 - 1;
              *(uint *)(param_4 + 0x9e) = uVar1;
              if ((uVar2 < uVar1) && (pcVar11 = *(code **)(lVar7 + 0x40), pcVar11 != (code *)0x0)) {
                if (*(int *)(pcVar11 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
                  pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x117f98);
                  (*pcVar11)();
                }
                (*pcVar11)(lVar7 + 8,0);
              }
              mutex_unlock(&DAT_00131e50);
              __wake_up(param_4 + 0xa1,1,1,0);
              bVar6 = false;
              uVar13 = 0;
              goto LAB_00117fc4;
            }
            _printk(&DAT_001327bc,"syna_cdev_push_data_to_fifo",__n_00);
          }
          mutex_unlock(&DAT_00131e50);
          _printk(&DAT_00135818,"syna_cdev_update_fifo");
          uVar13 = 0xfffffff4;
          bVar6 = true;
          goto LAB_00117fc4;
        }
        if (uVar15 == 0) {
LAB_001181f4:
                    /* WARNING: Does not return */
          pcVar11 = (code *)SoftwareBreakpoint(1,0x1181f8);
          (*pcVar11)();
        }
        uVar5 = *(undefined2 *)(lVar12 + 0x382);
        *local_70 = (char)uVar5;
        if (uVar15 == 1) goto LAB_001181f4;
        local_70[1] = (char)((ushort)uVar5 >> 8);
        if ((DAT_00131e80._4_4_ + 0xfffe & 0xffff) != 0) {
          if (uVar15 == 2) goto LAB_001181f4;
          local_70[2] = *(undefined1 *)(lVar12 + 0x385);
        }
        if ((__src + (int)uVar1 != (undefined1 *)0x0) && (local_70 != (undefined1 *)0x0)) {
          if (DAT_00131e80._4_4_ <= uVar3) {
            uVar4 = 0;
            if (uVar1 <= uVar2) {
              uVar4 = __n_00 - (long)(int)uVar1;
            }
            if (uVar4 < DAT_00131e80._4_4_) {
LAB_001181f8:
                    /* WARNING: Subroutine does not return */
              __fortify_panic(0x11);
            }
            memcpy(__src + (int)uVar1,local_70,(ulong)DAT_00131e80._4_4_);
            goto LAB_00117e38;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy",DAT_00131e80._4_4_,uVar3,DAT_00131e80._4_4_);
        }
        _printk(&DAT_00138343,"syna_cdev_update_fifo");
        uVar13 = 0xffffffea;
        bVar6 = true;
        lVar7 = syna_request_managed_device();
        if (lVar7 != 0) goto LAB_00117fd0;
LAB_001181bc:
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar7 = syna_request_managed_device();
      }
      else {
        if (__src + 3 != (undefined1 *)0x0) {
          if (param_3 <= uVar3 + param_3) {
            if (__n_00 - 3 < __n) goto LAB_001181f8;
            memcpy(__src + 3,param_2,__n);
            goto LAB_00117dac;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy",__n,uVar3 + param_3,__n);
        }
        _printk(&DAT_0013468e,"syna_cdev_update_fifo",__n);
        uVar13 = 0xffffffea;
        bVar6 = true;
LAB_00117fc4:
        lVar7 = syna_request_managed_device();
        if (lVar7 == 0) goto LAB_001181bc;
LAB_00117fd0:
        if (local_70 != (undefined1 *)0x0) {
          devm_kfree(lVar7,local_70);
        }
        lVar7 = syna_request_managed_device();
      }
      if (lVar7 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else {
        devm_kfree(lVar7,__src);
      }
      if (!bVar6) {
        return 0;
      }
      goto LAB_001180b0;
    }
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) goto LAB_00117d38;
LAB_0011808c:
      devm_kfree(lVar7,__src);
    }
    else {
      local_70 = (undefined1 *)devm_kmalloc(lVar7,uVar15,0xdc0);
      if (local_70 != (undefined1 *)0x0) goto LAB_00117d58;
      lVar7 = syna_request_managed_device();
      if (lVar7 != 0) goto LAB_0011808c;
LAB_00117d38:
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    _printk(&DAT_0013daa6,"syna_cdev_update_fifo",DAT_00131e80._4_4_);
  }
  uVar13 = 0xfffffff4;
LAB_001180b0:
  _printk(&DAT_0013a68c,"syna_cdev_process_reports",param_1,__n);
  return uVar13;
}

