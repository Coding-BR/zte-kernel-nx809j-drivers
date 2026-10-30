
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_reboot_ext_probe(long param_1)

{
  long lVar1;
  long lVar2;
  undefined8 uVar3;
  int iVar4;
  long *plVar5;
  ulong uVar6;
  undefined1 *puVar7;
  long *plVar8;
  long local_40;
  long local_38;
  
  lVar2 = sp_el0;
  lVar1 = param_1 + 0x10;
  local_38 = *(long *)(lVar2 + 0x710);
  local_40 = 0;
  plVar5 = (long *)devm_kmalloc(lVar1,0xa0,0xdc0);
  uVar3 = _kernel_kobj;
  if (plVar5 == (long *)0x0) {
    iVar4 = -0xc;
  }
  else {
    plVar8 = plVar5 + 1;
    *plVar5 = lVar1;
    iVar4 = kobject_init_and_add(plVar8,bootreason_nvmem_kobj_type,uVar3,"bootreason");
    if (iVar4 == 0) {
      iVar4 = sysfs_create_group(plVar8,qcom_boot_nvmem_attr_group);
      if (iVar4 == 0) {
        uVar6 = nvmem_cell_get(lVar1,"vendor_zlog_ss");
        plVar5[0x10] = uVar6;
        if (uVar6 < 0xfffffffffffff001) {
          puVar7 = (undefined1 *)nvmem_cell_read(uVar6,&local_40);
          if (puVar7 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_001014e1,0);
            }
            else {
              DAT_0010000e = *puVar7;
              _printk(&DAT_0010177e);
            }
            kfree(puVar7);
          }
          else {
            _printk(&DAT_00101947,(ulong)puVar7 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_001016c9,uVar6);
        }
        uVar6 = nvmem_cell_get(lVar1,"vendor_zlog_w");
        plVar5[0x11] = uVar6;
        if (uVar6 < 0xfffffffffffff001) {
          puVar7 = (undefined1 *)nvmem_cell_read(uVar6,&local_40);
          if (puVar7 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_0010133f,0);
            }
            else {
              DAT_0010000d = *puVar7;
              _printk(&DAT_001016f3);
            }
            kfree(puVar7);
          }
          else {
            _printk(&DAT_001019ff,(ulong)puVar7 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_00101980,uVar6);
        }
        uVar6 = nvmem_cell_get(lVar1,"vendor_zlog_p");
        plVar5[0x12] = uVar6;
        if (uVar6 < 0xfffffffffffff001) {
          puVar7 = (undefined1 *)nvmem_cell_read(uVar6,&local_40);
          if (puVar7 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_00101858,0);
            }
            else {
              DAT_0010000f = *puVar7;
              _printk(&DAT_00101883);
            }
            kfree(puVar7);
          }
          else {
            _printk(&DAT_0010163e,(ulong)puVar7 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_0010159d,uVar6);
        }
        uVar6 = nvmem_cell_get(lVar1,"vendor_zlog_panic_ext");
        plVar5[0x13] = uVar6;
        if (uVar6 < 0xfffffffffffff001) {
          puVar7 = (undefined1 *)nvmem_cell_read(uVar6,&local_40);
          if (puVar7 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_001013b9);
            }
            else {
              DAT_00100010 = *puVar7;
              _printk(&DAT_0010154b,local_40,DAT_00100010,DAT_00100011,DAT_00100012,DAT_00100013,
                      DAT_00100014,DAT_00100015,DAT_00100016,DAT_00100017);
            }
            kfree(puVar7);
          }
          else {
            _printk(&DAT_00101668,(ulong)puVar7 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_00101479,uVar6);
        }
        save_panic_buf_data_to_nvmem(plVar5);
        register_panic_hook(param_1);
        plVar5[0xd] = (long)zte_reboot_ext_panic;
        *(undefined4 *)(plVar5 + 0xf) = 0x7fffffff;
        atomic_notifier_chain_register(&panic_notifier_list);
        iVar4 = 0;
        *(long **)(param_1 + 0xa8) = plVar5;
      }
      else {
        _printk(&DAT_001019a9,"zte_reboot_ext_probe");
        kobject_del(plVar8);
      }
    }
    else {
      _printk(&DAT_00101454,"zte_reboot_ext_probe");
      kobject_put(plVar8);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}

