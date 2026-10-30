
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
  long lVar9;
  ulong uVar10;
  int iVar11;
  long lVar12;
  
  if (DAT_00100104 - 0x11U < 0xfffffff0) {
    _printk(&DAT_00101f5d);
    uVar10 = 0xffffffdf;
  }
  else {
    auVar2._8_8_ = 0;
    auVar2._0_8_ = (long)DAT_00100104;
    if (SUB168(auVar2 * ZEXT816(0x1c8),8) == 0) {
      DAT_00100108 = __kmalloc_noprof((long)DAT_00100104 * 0x1c8,0xdc0);
      if (DAT_00100108 != 0) {
        uVar6 = __platform_driver_register(rdbg_driver,&__this_module);
        uVar10 = uVar6 & 0xffffffff;
        if ((int)uVar6 == 0) {
          uVar4 = alloc_chrdev_region(&DAT_00100100,0,DAT_00100104,"rdbgctl");
          if (uVar4 == 0) {
            uVar4 = DAT_00100100 & 0xfff00000;
            cdev_init(&g_rdbg_instance,rdbg_fops);
            DAT_001000d0 = &__this_module;
            uVar5 = cdev_add(&g_rdbg_instance,uVar4,DAT_00100104);
            if (uVar5 == 0) {
              uVar10 = class_create(&DAT_00101af0);
              DAT_001000f8 = uVar10;
              if (uVar10 < 0xfffffffffffff001) {
                if (0 < DAT_00100104) {
                  lVar12 = 0;
                  lVar9 = 0;
                  iVar11 = 0;
                  uVar6 = 0xffffffffffffffff;
                  iVar8 = DAT_00100104;
                  do {
                    if (uVar6 == 0xf) {
                    /* WARNING: Does not return */
                      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x101924);
                      (*pcVar3)();
                    }
                    if (lVar9 == 0x180) {
                    /* WARNING: Does not return */
                      pcVar3 = (code *)SoftwareBreakpoint(1,0x101928);
                      (*pcVar3)();
                    }
                    if (*(long *)((long)&proc_info + lVar9) != 0) {
                      uVar7 = device_create(DAT_001000f8,0,uVar4 | (int)uVar6 + 1U,0,&DAT_00101d3a);
                      *(undefined8 *)(DAT_00100108 + lVar12) = uVar7;
                      uVar10 = *(ulong *)(DAT_00100108 + lVar12);
                      if (0xfffffffffffff000 < uVar10) {
                        _printk(&DAT_00101fb9);
                        lVar9 = DAT_00100108;
                        if (uVar6 != 0xffffffffffffffff) {
                          do {
                            if (*(char *)(lVar9 + (uVar6 & 0xffffffff) * 0x1c8 + 0x58) == '\x01') {
                              device_destroy(DAT_001000f8,DAT_00100100 & 0xfff00000 | (uint)uVar6);
                              lVar9 = DAT_00100108;
                            }
                            lVar12 = uVar6 + 1;
                            uVar6 = uVar6 - 1;
                          } while (1 < lVar12);
                        }
                        goto LAB_00101820;
                      }
                      iVar11 = iVar11 + 1;
                      *(undefined1 *)(DAT_00100108 + lVar12 + 0x58) = 1;
                      iVar8 = DAT_00100104;
                    }
                    lVar1 = uVar6 + 2;
                    uVar6 = uVar6 + 1;
                    lVar9 = lVar9 + 0x18;
                    lVar12 = lVar12 + 0x1c8;
                  } while (lVar1 < iVar8);
                  if (iVar11 != 0) {
                    uVar10 = 0;
                    goto LAB_001018fc;
                  }
                }
                _printk(&DAT_00102042);
                uVar10 = 0xffffffea;
LAB_00101820:
                class_destroy(DAT_001000f8);
              }
              else {
                _printk(&DAT_00101af5);
              }
              cdev_del(&g_rdbg_instance);
            }
            else {
              uVar10 = (ulong)uVar5;
              _printk(&DAT_00102018);
            }
            unregister_chrdev_region(DAT_00100100,DAT_00100104);
          }
          else {
            uVar10 = (ulong)uVar4;
            _printk(&DAT_00101e05);
          }
          kfree(DAT_00100108);
        }
        goto LAB_001018fc;
      }
    }
    else {
      DAT_00100108 = 0;
    }
    uVar10 = 0xfffffff4;
  }
LAB_001018fc:
  return uVar10 & 0xffffffff;
}

