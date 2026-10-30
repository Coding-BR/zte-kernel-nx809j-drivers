
long syna_sysfs_get_delta_show(long param_1,undefined8 param_2,undefined8 param_3)

{
  ulong uVar1;
  ulong uVar2;
  code *pcVar3;
  int iVar4;
  undefined *puVar5;
  size_t sVar6;
  size_t __n;
  undefined1 *puVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  long lVar11;
  uint uVar12;
  long lVar13;
  long *plVar14;
  ulong uVar15;
  short *psVar16;
  ulong __maxlen;
  uint uVar17;
  char *__string;
  undefined4 local_b8;
  undefined2 local_b4;
  short *local_b0;
  undefined8 local_a8;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar11 = sp_el0;
  local_68 = *(long *)(lVar11 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  plVar14 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar11 = *plVar14;
  iVar4 = syna_tcm_enable_report(lVar11,0x12,1,10);
  if (iVar4 < 0) {
    iVar4 = scnprintf(param_3,0x1000,"Fail to enable report %x\n",0x12);
    goto LAB_0011ae98;
  }
  if (lVar11 == 0) {
    puVar7 = &DAT_00133fd6;
LAB_0011af34:
    _printk(puVar7,"syna_tcm_enable_irq");
  }
  else {
    lVar13 = *(long *)(lVar11 + 0x48);
    if (lVar13 == 0) {
      puVar7 = &DAT_001389db;
      goto LAB_0011af34;
    }
    if (*(long *)(lVar13 + 0x38) != 0) {
      mutex_lock(lVar11 + 0x50);
      if (*(int *)(*(code **)(lVar13 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x11ab88);
        (*pcVar3)();
      }
      (**(code **)(lVar13 + 0x38))(lVar13,0);
      mutex_unlock(lVar11 + 0x50);
    }
  }
  local_70 = local_70 & 0xffffffffffffff00;
  local_b0 = (short *)0x0;
  local_a8 = 0;
  __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  uVar8 = 0;
  uVar17 = 0;
  do {
    iVar4 = syna_tcm_wait_for_report(lVar11,0x12,&local_b0,100,1000);
    if ((iVar4 < 0) || (local_a8._4_4_ == 0)) {
      uVar17 = uVar17 + 1;
    }
    else {
      uVar8 = uVar8 + 1;
      _printk(&DAT_0013e1e0,"syna_sysfs_get_delta_show",uVar8);
      if (*(int *)(lVar11 + 0x1c) != 0) {
        uVar9 = 0;
        psVar16 = local_b0;
        do {
          iVar4 = *(int *)(lVar11 + 0x20);
          lVar13 = syna_request_managed_device();
          if (lVar13 == 0) {
            puVar5 = &DAT_0013ccb3;
LAB_0011ac6c:
            _printk(puVar5,"syna_pal_mem_alloc");
            uVar15 = 0;
            __string = (char *)0x0;
            iVar4 = *(int *)(lVar11 + 0x20);
          }
          else {
            uVar10 = iVar4 * 6;
            uVar15 = (ulong)uVar10;
            if ((int)uVar10 < 1) {
              puVar5 = &DAT_00138e98;
              goto LAB_0011ac6c;
            }
            __string = (char *)devm_kmalloc(lVar13,uVar15,0xdc0);
            iVar4 = *(int *)(lVar11 + 0x20);
          }
          if (iVar4 != 0) {
            uVar10 = 0;
            do {
              local_b4 = 0;
              local_b8 = 0;
              snprintf((char *)&local_b8,6,"%4d ",(long)*psVar16);
              uVar12 = *(uint *)(lVar11 + 0x20);
              __maxlen = (ulong)(uVar12 * 6);
              sVar6 = strnlen(__string,__maxlen);
              if (sVar6 == 0xffffffffffffffff) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(2,0xffffffffffffffff,0);
              }
              __n = strnlen((char *)&local_b8,6);
              if (6 < __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(2,6,__n + 1);
              }
              if (__n == 6) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(4,6,7);
              }
              if (sVar6 < __maxlen) {
                uVar1 = __n + sVar6;
                uVar2 = uVar1;
                if (__maxlen <= uVar1) {
                  uVar2 = __maxlen - 1;
                }
                if (uVar2 == 0xffffffffffffffff) {
                    /* WARNING: Subroutine does not return */
                  __fortify_panic(9,0xffffffffffffffff,0);
                }
                if (__maxlen <= uVar1) {
                  __n = ~sVar6 + __maxlen;
                }
                memcpy(__string + sVar6,&local_b8,__n);
                if (uVar15 <= uVar2) {
                    /* WARNING: Does not return */
                  pcVar3 = (code *)SoftwareBreakpoint(1,0x11afa0);
                  (*pcVar3)();
                }
                __string[uVar2] = '\0';
                uVar12 = *(uint *)(lVar11 + 0x20);
              }
              uVar10 = uVar10 + 1;
              psVar16 = psVar16 + 1;
            } while (uVar10 < uVar12);
          }
          _printk(&DAT_00137234,"syna_sysfs_get_delta_show",__string);
          lVar13 = syna_request_managed_device();
          if (lVar13 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          else if (__string != (char *)0x0) {
            devm_kfree(lVar13,__string);
          }
          uVar9 = uVar9 + 1;
        } while (uVar9 < *(uint *)(lVar11 + 0x1c));
      }
    }
  } while ((uVar8 < 2) && (uVar17 < 5));
  syna_tcm_enable_report(*plVar14,0x12,0,10);
  if (lVar11 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_enable_irq");
  }
  else {
    lVar13 = *(long *)(lVar11 + 0x48);
    if (lVar13 == 0) {
      _printk(&DAT_001389db,"syna_tcm_enable_irq");
    }
    else if (*(long *)(lVar13 + 0x38) != 0) {
      mutex_lock(lVar11 + 0x50);
      if (*(int *)(*(code **)(lVar13 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x11ae34);
        (*pcVar3)();
      }
      (**(code **)(lVar13 + 0x38))(lVar13,1);
      mutex_unlock(lVar11 + 0x50);
    }
  }
  if ((char)local_70 != '\0') {
    _printk(&DAT_00135294,"syna_tcm_buf_release");
  }
  psVar16 = local_b0;
  lVar11 = syna_request_managed_device();
  if (lVar11 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else if (psVar16 != (short *)0x0) {
    devm_kfree(lVar11,psVar16);
  }
  local_a8 = 0;
  local_70 = local_70 & 0xffffffffffffff00;
  iVar4 = scnprintf(param_3,0x1000,"Done\n");
LAB_0011ae98:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) == local_68) {
    return (long)iVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

