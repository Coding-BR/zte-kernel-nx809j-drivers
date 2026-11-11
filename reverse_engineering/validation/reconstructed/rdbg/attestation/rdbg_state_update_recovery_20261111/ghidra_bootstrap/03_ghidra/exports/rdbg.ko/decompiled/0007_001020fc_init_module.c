
ulong init_module(void)

{
  long lVar1;
  undefined1 auVar2 [16];
  code *pcVar3;
  uint uVar4;
  uint uVar5;
  ulong uVar6;
  undefined8 uVar7;
  int iVar8;
  ulong uVar9;
  long lVar10;
  long lVar11;
  int iVar12;
  
  if (DAT_00100114 - 0x11U < 0xfffffff0) {
    _printk(&DAT_00101f6b);
    uVar9 = 0xffffffdf;
  }
  else {
    auVar2._8_8_ = 0;
    auVar2._0_8_ = (long)DAT_00100114;
    if (SUB168(auVar2 * ZEXT816(0x1c8),8) == 0) {
      DAT_00100118 = __kmalloc_noprof((long)DAT_00100114 * 0x1c8,0xdc0);
      if (DAT_00100118 != 0) {
        uVar6 = __platform_driver_register(rdbg_driver,&__this_module);
        uVar9 = uVar6 & 0xffffffff;
        if ((int)uVar6 == 0) {
          uVar4 = alloc_chrdev_region(&DAT_00100110,0,DAT_00100114,"rdbgctl");
          if (uVar4 == 0) {
            uVar4 = DAT_00100110 & 0xfff00000;
            cdev_init(&g_rdbg_instance,rdbg_fops);
            DAT_001000e0 = &__this_module;
            uVar5 = cdev_add(&g_rdbg_instance,uVar4,DAT_00100114);
            if (uVar5 == 0) {
              uVar9 = class_create(&DAT_00101ab4);
              DAT_00100108 = uVar9;
              if (uVar9 < 0xfffffffffffff001) {
                if (0 < DAT_00100114) {
                  lVar11 = 0;
                  lVar10 = 0;
                  iVar12 = 0;
                  uVar6 = 0xffffffffffffffff;
                  iVar8 = DAT_00100114;
                  do {
                    if (uVar6 == 0xf) {
                    /* WARNING: Does not return */
                      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x102470);
                      (*pcVar3)();
                    }
                    if (lVar10 == 0x180) {
                    /* WARNING: Does not return */
                      pcVar3 = (code *)SoftwareBreakpoint(1,0x102474);
                      (*pcVar3)();
                    }
                    if (*(long *)((long)&proc_info + lVar10) != 0) {
                      uVar7 = device_create(DAT_00100108,0,uVar4 | (int)uVar6 + 1U,0,&DAT_00101d42);
                      *(undefined8 *)(DAT_00100118 + lVar11) = uVar7;
                      uVar9 = *(ulong *)(DAT_00100118 + lVar11);
                      if (0xfffffffffffff000 < uVar9) {
                        _printk(&DAT_00101f88);
                        lVar10 = DAT_00100118;
                        if (uVar6 != 0xffffffffffffffff) {
                          do {
                            if (*(char *)(lVar10 + (uVar6 & 0xffffffff) * 0x1c8 + 0x58) == '\x01') {
                              device_destroy(DAT_00100108,DAT_00100110 & 0xfff00000 | (uint)uVar6);
                              lVar10 = DAT_00100118;
                            }
                            lVar11 = uVar6 + 1;
                            uVar6 = uVar6 - 1;
                          } while (1 < lVar11);
                        }
                        goto LAB_00102364;
                      }
                      iVar12 = iVar12 + 1;
                      *(undefined1 *)(DAT_00100118 + lVar11 + 0x58) = 1;
                      iVar8 = DAT_00100114;
                    }
                    lVar1 = uVar6 + 2;
                    uVar6 = uVar6 + 1;
                    lVar10 = lVar10 + 0x18;
                    lVar11 = lVar11 + 0x1c8;
                  } while (lVar1 < iVar8);
                  if (iVar12 != 0) {
                    uVar9 = 0;
                    goto LAB_00102448;
                  }
                }
                _printk(&DAT_00102061);
                uVar9 = 0xffffffea;
LAB_00102364:
                class_destroy(DAT_00100108);
              }
              else {
                _printk(&DAT_00101acc);
              }
              cdev_del(&g_rdbg_instance);
            }
            else {
              uVar9 = (ulong)uVar5;
              _printk(&DAT_00102042);
            }
            unregister_chrdev_region(DAT_00100110,DAT_00100114);
          }
          else {
            uVar9 = (ulong)uVar4;
            _printk(&DAT_00101df8);
          }
          platform_driver_unregister(rdbg_driver);
        }
        if ((DAT_00100118 != 0) && (0 < DAT_00100114)) {
          lVar10 = 0;
          lVar11 = 0x50;
          do {
            lVar1 = DAT_00100118;
            mutex_lock(&rdbg_smem_state_lock);
            uVar6 = *(ulong *)(lVar1 + lVar11);
            if ((uVar6 != 0) && (uVar6 < 0xfffffffffffff001)) {
              *(undefined8 *)(lVar1 + lVar11) = 0;
              qcom_smem_state_put();
            }
            mutex_unlock(&rdbg_smem_state_lock);
            lVar10 = lVar10 + 1;
            lVar11 = lVar11 + 0x1c8;
          } while (lVar10 < DAT_00100114);
        }
        kfree(DAT_00100118);
        DAT_00100118 = 0;
        goto LAB_00102448;
      }
    }
    else {
      DAT_00100118 = 0;
    }
    uVar9 = 0xfffffff4;
  }
LAB_00102448:
  return uVar9 & 0xffffffff;
}

