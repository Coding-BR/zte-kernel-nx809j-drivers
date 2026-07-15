
/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_ramdisk_reboot_probe(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  int iVar3;
  long *plVar4;
  ulong uVar5;
  undefined1 *puVar6;
  size_t sVar7;
  undefined *puVar8;
  long *plVar9;
  undefined1 in_z29 [32];
  undefined4 in_p6;
  undefined4 in_p9;
  long local_158 [33];
  undefined8 local_50;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_158[0] = 0;
  local_50 = 0x100000001;
  local_158[0x1f] = 0;
  local_158[0x20] = 0;
  local_158[0x1d] = 0;
  local_158[0x1e] = 0;
  local_158[0x1b] = 0;
  local_158[0x1c] = 0;
  local_158[0x19] = 0;
  local_158[0x1a] = 0;
  local_158[0x17] = 0;
  local_158[0x18] = 0;
  local_158[0x15] = 0;
  local_158[0x16] = 0;
  local_158[0x13] = 0;
  local_158[0x14] = 0;
  local_158[0x11] = 0;
  local_158[0x12] = 0;
  local_158[0xf] = 0;
  local_158[0x10] = 0;
  local_158[0xd] = 0;
  local_158[0xe] = 0;
  local_158[0xb] = 0;
  local_158[0xc] = 0;
  local_158[9] = 0;
  local_158[10] = 0;
  local_158[7] = 0;
  local_158[8] = 0;
  local_158[5] = 0;
  local_158[6] = 0;
  local_158[3] = 0;
  local_158[4] = 0;
  local_158[1] = 0;
  local_158[2] = 0;
  plVar4 = (long *)devm_kmalloc(param_1 + 0x10,0x88,0xdc0);
  uVar2 = _kernel_kobj;
  if (plVar4 == (long *)0x0) {
    iVar3 = -0xc;
    goto LAB_00100928;
  }
  plVar9 = plVar4 + 1;
  *plVar4 = param_1 + 0x10;
  iVar3 = kobject_init_and_add(plVar9,ramdisk_nvmem_kobj_type,uVar2,"ramdiskboot");
  if (iVar3 != 0) {
    _printk(&DAT_00101019,"zte_ramdisk_reboot_probe");
    kobject_put(plVar9);
    goto LAB_00100928;
  }
  iVar3 = sysfs_create_group(plVar9,qcom_ramdisk_nvmem_attr_group);
  if (iVar3 != 0) {
    _printk(&DAT_001013c7,"zte_ramdisk_reboot_probe");
    kobject_del(plVar9);
    goto LAB_00100928;
  }
  uVar5 = nvmem_cell_get(*plVar4,"vendor_ramdisk_zlog");
  plVar4[0xd] = uVar5;
  if (uVar5 < 0xfffffffffffff001) {
    puVar6 = (undefined1 *)nvmem_cell_read(uVar5,local_158);
    if (puVar6 < (undefined1 *)0xfffffffffffff001) {
      if (local_158[0] == 0) {
        _printk(&DAT_00101412,1,0);
      }
      else {
        read_ramdisk_buf = *puVar6;
        _printk(&DAT_001010af);
      }
      kfree(puVar6);
    }
    else {
      _printk(&DAT_00101320,(ulong)puVar6 & 0xffffffff);
    }
  }
  else {
    _printk(&DAT_00101350,uVar5);
  }
  iVar3 = zte_get_xbl_log_memory_region(plVar4);
  if (iVar3 == 0) {
    zte_check_xbl_log_lines(plVar4,&PTR_s_OCP_Occured__001015f8,2,&local_50,local_158 + 1);
    if ((int)local_50 < 1) {
      iVar3 = extract_ocp_info(plVar4,local_158 + 1,&extract_buffer,0x80);
      if (iVar3 == 0) {
        puVar8 = &DAT_00101117;
LAB_00100b6c:
        _printk(puVar8,&extract_buffer);
      }
    }
    else {
      sVar7 = strnlen(&extract_buffer,0x80);
      if (0x80 < sVar7) {
        __fortify_panic(2,0x80,sVar7 + 1);
LAB_00100bc4:
        __fortify_panic(4,0x80,0x81);
        SVE_cmphi(in_p9,in_p6,in_z29,4);
        return;
      }
      if (sVar7 == 0x80) goto LAB_00100bc4;
      if ((sVar7 == 0) && (local_50._4_4_ < 1)) {
        iVar3 = extract_sn_info(plVar4,local_158 + 0x11,&extract_buffer,0x80);
        if (iVar3 == 0) {
          puVar8 = &DAT_001011e9;
          goto LAB_00100b6c;
        }
        _printk(&DAT_00101263);
      }
    }
  }
  if (plVar4[0x10] != 0) {
    devm_iounmap(*plVar4);
    plVar4[0x10] = 0;
    _printk(&DAT_001013f3);
  }
  iVar3 = 0;
  *(long **)(param_1 + 0xa8) = plVar4;
  ramdisk_rb = plVar4;
LAB_00100928:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar3);
  }
  return;
}

