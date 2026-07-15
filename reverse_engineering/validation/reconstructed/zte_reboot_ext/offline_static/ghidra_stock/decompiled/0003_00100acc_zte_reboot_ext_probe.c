
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_reboot_ext_probe(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  int iVar3;
  long *plVar4;
  ulong uVar5;
  undefined1 *puVar6;
  long *plVar7;
  long local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_40 = 0;
  plVar4 = (long *)devm_kmalloc(param_1 + 0x10,0xa0,0xdc0);
  uVar2 = _kernel_kobj;
  if (plVar4 == (long *)0x0) {
    iVar3 = -0xc;
  }
  else {
    plVar7 = plVar4 + 1;
    *plVar4 = param_1 + 0x10;
    iVar3 = kobject_init_and_add(plVar7,bootreason_nvmem_kobj_type,uVar2,"bootreason");
    if (iVar3 == 0) {
      iVar3 = sysfs_create_group(plVar7,qcom_boot_nvmem_attr_group);
      if (iVar3 == 0) {
        uVar5 = nvmem_cell_get(*plVar4,"vendor_zlog_ss");
        plVar4[0x10] = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          puVar6 = (undefined1 *)nvmem_cell_read(uVar5,&local_40);
          if (puVar6 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_00101636,0);
            }
            else {
              DAT_0010000e = *puVar6;
              _printk(&DAT_00101902);
            }
            kfree(puVar6);
          }
          else {
            _printk(&DAT_00101a9c,(ulong)puVar6 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_0010181e,uVar5);
        }
        uVar5 = nvmem_cell_get(*plVar4,"vendor_zlog_w");
        plVar4[0x11] = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          puVar6 = (undefined1 *)nvmem_cell_read(uVar5,&local_40);
          if (puVar6 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_00101494,0);
            }
            else {
              DAT_0010000d = *puVar6;
              _printk(&DAT_0010186f);
            }
            kfree(puVar6);
          }
          else {
            _printk(&DAT_00101b54,(ulong)puVar6 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_00101ad5,uVar5);
        }
        uVar5 = nvmem_cell_get(*plVar4,"vendor_zlog_p");
        plVar4[0x12] = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          puVar6 = (undefined1 *)nvmem_cell_read(uVar5,&local_40);
          if (puVar6 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_001019e8,0);
            }
            else {
              DAT_0010000f = *puVar6;
              _printk(&DAT_001019bd);
            }
            kfree(puVar6);
          }
          else {
            _printk(&DAT_001017b4,(ulong)puVar6 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_00101740,uVar5);
        }
        uVar5 = nvmem_cell_get(*plVar4,"vendor_zlog_panic_ext");
        plVar4[0x13] = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          puVar6 = (undefined1 *)nvmem_cell_read(uVar5,&local_40);
          if (puVar6 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_00101552);
            }
            else {
              DAT_00100010 = *puVar6;
              _printk(&DAT_001016a0,local_40,DAT_00100010,DAT_00100011,DAT_00100012,DAT_00100013,
                      DAT_00100014,DAT_00100015,DAT_00100016,DAT_00100017);
            }
            kfree(puVar6);
          }
          else {
            _printk(&DAT_001017de,(ulong)puVar6 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_001015ce,uVar5);
        }
        save_panic_buf_data_to_nvmem(plVar4);
        register_panic_hook(param_1);
        plVar4[0xd] = (long)zte_reboot_ext_panic;
        *(undefined4 *)(plVar4 + 0xf) = 0x7fffffff;
        atomic_notifier_chain_register(&panic_notifier_list);
        iVar3 = 0;
        *(long **)(param_1 + 0xa8) = plVar4;
      }
      else {
        _printk(&DAT_00101afe,"zte_reboot_ext_probe");
        kobject_del(plVar7);
      }
    }
    else {
      _printk(&DAT_001015a9,"zte_reboot_ext_probe");
      kobject_put(plVar7);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar3);
}

