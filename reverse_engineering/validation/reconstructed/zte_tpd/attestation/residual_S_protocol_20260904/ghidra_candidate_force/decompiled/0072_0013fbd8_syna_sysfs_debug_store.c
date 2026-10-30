
undefined8
syna_sysfs_debug_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  int local_2c;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  local_2c = 0;
  lVar3 = *(long *)(*(long *)(param_1 + 0x18) + 0x98);
  iVar1 = kstrtouint(param_3,10,&local_2c);
  if (iVar1 == 0) {
    if (local_2c == 0) {
      if (*(long *)(lVar3 + 0x3a0) != 0) {
        sysfs_remove_group(*(long *)(lVar3 + 0x3a0),attr_debug_group);
        kobject_put(*(undefined8 *)(lVar3 + 0x3a0));
        *(undefined8 *)(lVar3 + 0x3a0) = 0;
      }
    }
    else {
      if ((local_2c != 1) || (*(long *)(lVar3 + 0x3a0) != 0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e1ac,"syna_sysfs_debug_store");
      }
      lVar2 = kobject_create_and_add("utility",*(undefined8 *)(lVar3 + 0x398));
      *(long *)(lVar3 + 0x3a0) = lVar2;
      if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e7b5,"syna_sysfs_debug_store");
      }
      iVar1 = sysfs_create_group(lVar2,attr_debug_group);
      if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017eafd,"syna_sysfs_debug_store");
      }
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

