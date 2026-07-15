/* 00100464 zte_ramdisk_reboot_write */

undefined8 zte_ramdisk_reboot_write(undefined1 *param_1,int param_2)

{
  long lVar1;
  undefined8 uVar2;
  
  lVar1 = ramdisk_rb;
  uVar2 = 0xffffffff;
  if (((param_2 == 1) && (param_1 != (undefined1 *)0x0)) && (ramdisk_rb != 0)) {
    saved_ramdisk_buf = *param_1;
    if (*(ulong *)(ramdisk_rb + 0x68) < 0xfffffffffffff001) {
      _printk(&DAT_0010139f,saved_ramdisk_buf);
      nvmem_cell_write(*(undefined8 *)(lVar1 + 0x68),&saved_ramdisk_buf,1);
    }
    else {
      _printk(&DAT_00100feb);
    }
    uVar2 = 0;
  }
  return uVar2;
}



/* 001004fc zte_check_xbl_log_lines */

undefined8
zte_check_xbl_log_lines(undefined8 *param_1,long param_2,long param_3,int *param_4,void *param_5)

{
  ulong uVar1;
  void *pvVar2;
  long lVar3;
  char *pcVar4;
  int *piVar5;
  void *__dest;
  void *__s;
  long lVar6;
  size_t __n;
  ulong uVar7;
  
  uVar1 = param_1[0xf];
  __s = (void *)param_1[0x10];
  if (0x2fff < uVar1) {
    uVar1 = 0x3000;
  }
  pvVar2 = (void *)((long)__s + uVar1);
  if (__s < pvVar2) {
    do {
      __n = (long)pvVar2 - (long)__s;
      pvVar2 = memchr(__s,10,__n);
      if (pvVar2 == (void *)0x0) {
        pcVar4 = "ztedbg xbl in the end of log\n";
LAB_00100650:
        _dev_info(*param_1,pcVar4);
        return 0;
      }
      uVar7 = (long)pvVar2 - (long)__s;
      if (uVar7 < 2) {
        _dev_err(*param_1,"ztedbg unexpected matched len %zu : now offset %zu \n",uVar7,__n);
        return 0xffffffff;
      }
      if (param_3 == 0) {
LAB_00100644:
        pcVar4 = "ztedbg xbl all searched\n";
        goto LAB_00100650;
      }
      lVar6 = 0;
      __dest = param_5;
      do {
        if ((0 < param_4[lVar6]) &&
           (lVar3 = strnstr(__s,*(undefined8 *)(param_2 + lVar6 * 8),uVar7), lVar3 != 0)) {
          if (uVar7 < 0x81) {
            memcpy(__dest,__s,uVar7 - 1);
            *(undefined1 *)((long)__dest + (uVar7 - 1)) = 0;
            param_4[lVar6] = param_4[lVar6] + -1;
          }
          else {
            _dev_info(*param_1,"ztedbg ignored matched long line for idx %zu / left %zu\n",lVar6,__n
                     );
          }
        }
        lVar6 = lVar6 + 1;
        __dest = (void *)((long)__dest + 0x80);
      } while (param_3 != lVar6);
      __s = (void *)((long)pvVar2 + 1);
      piVar5 = param_4;
      lVar6 = param_3;
      while (*piVar5 < 1) {
        lVar6 = lVar6 + -1;
        piVar5 = piVar5 + 1;
        if (lVar6 == 0) goto LAB_00100644;
      }
      pvVar2 = (void *)(param_1[0x10] + uVar1);
    } while (__s < pvVar2);
  }
  return 0;
}



/* 001006b8 extract_ocp_info */

undefined8 extract_ocp_info(undefined8 *param_1,char *param_2,char *param_3,ulong param_4)

{
  ulong __n;
  char *pcVar1;
  char *pcVar2;
  size_t sVar3;
  undefined8 uVar4;
  
  pcVar1 = strstr(param_2,"OCP Occured: ");
  pcVar2 = strstr(param_2,"Status: ");
  if (param_2 == (char *)0x0) {
    _dev_err(*param_1,"ztedbg null input ocp line\n");
    return 0xffffffff;
  }
  if ((pcVar1 != (char *)0x0) && (pcVar2 != (char *)0x0)) {
    pcVar1 = pcVar1 + 0xd;
    __n = (long)pcVar2 - (long)pcVar1;
    if (pcVar1 <= pcVar2) {
      if (((__n != 0) && (sVar3 = strlen(param_2), __n < param_4)) && (__n < sVar3)) {
        strncpy(param_3,pcVar1,__n);
        param_3[__n] = '\0';
        return 0;
      }
      uVar4 = *param_1;
      pcVar1 = "ztedbg invalid ocp extract with input: %s\n";
      goto LAB_00100770;
    }
  }
  uVar4 = *param_1;
  pcVar1 = "ztedbg invalid ocp input %s\n";
LAB_00100770:
  _dev_err(uVar4,pcVar1,param_2);
  return 0xffffffff;
}



/* 001007ac extract_sn_info */

undefined8 extract_sn_info(undefined8 *param_1,char *param_2,char *param_3,char *param_4)

{
  char *pcVar1;
  char *__n;
  char *pcVar2;
  char *pcVar3;
  undefined8 uVar4;
  
  pcVar2 = strstr(param_2," = ");
  if (param_2 == (char *)0x0) {
    _dev_err(*param_1,"ztedbg null input sn line\n");
    return 0xffffffff;
  }
  pcVar3 = (char *)strlen(param_2);
  if (pcVar2 != (char *)0x0) {
    pcVar1 = pcVar2 + (3 - (long)param_2);
    __n = pcVar3 + -(long)pcVar1;
    if (pcVar1 <= pcVar3) {
      if (((__n < param_4) && (pcVar3 != pcVar1)) && (__n < pcVar3)) {
        strncpy(param_3,pcVar2 + 3,(size_t)__n);
        param_3[(long)__n] = '\0';
        return 0;
      }
      uVar4 = *param_1;
      pcVar2 = "ztedbg invalid sn extract with input: %s\n";
      goto LAB_00100880;
    }
  }
  uVar4 = *param_1;
  pcVar2 = "ztedbg invalid sn input %s\n";
LAB_00100880:
  _dev_err(uVar4,pcVar2,param_2);
  return 0xffffffff;
}



/* 00100894 zte_ramdisk_reboot_probe */

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



/* 00100bd8 zte_ramdisk_reboot_remove */

void zte_ramdisk_reboot_remove(void)

{
  return;
}



/* 00100bdc zte_get_xbl_log_memory_region */

void zte_get_xbl_log_memory_region(long *param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  undefined8 uVar4;
  char *pcVar5;
  long local_78 [11];
  
  lVar2 = sp_el0;
  local_78[10] = *(long *)(lVar2 + 0x710);
  local_78[8] = 0;
  local_78[9] = 0;
  local_78[6] = 0;
  local_78[7] = 0;
  local_78[4] = 0;
  local_78[5] = 0;
  local_78[2] = 0;
  local_78[3] = 0;
  local_78[0] = 0;
  local_78[1] = 0;
  iVar1 = __of_parse_phandle_with_args
                    (*(undefined8 *)(*param_1 + 0x2e8),"memory-region",0,0,0,local_78);
  if ((iVar1 == 0) && (local_78[0] != 0)) {
    lVar2 = of_reserved_mem_lookup();
    if (lVar2 != 0) {
      param_1[0xe] = *(long *)(lVar2 + 0x18);
      param_1[0xf] = *(long *)(lVar2 + 0x20);
      lVar3 = devm_ioremap_wc(*param_1);
      param_1[0x10] = lVar3;
      if (lVar3 == 0) {
        _dev_err(*param_1,"ztedbg unable to map xbl log memory region: %pa+%zx\n",lVar2 + 0x18,
                 param_1[0xf]);
        uVar4 = 0xfffffff0;
      }
      else {
        uVar4 = 0;
      }
      goto LAB_00100c74;
    }
    lVar2 = *param_1;
    pcVar5 = "ztedbg unable to resolve xbl log memory-region\n";
  }
  else {
    lVar2 = *param_1;
    pcVar5 = "ztedbg no xbl log memory-region specified\n";
  }
  _dev_err(lVar2,pcVar5);
  uVar4 = 0xffffffea;
LAB_00100c74:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_78[10]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 00100cec attr_show */

undefined8 attr_show(undefined8 param_1,long param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(param_2 + 0x10);
  if (pcVar2 == (code *)0x0) {
    return 0xfffffffffffffffb;
  }
  if (*(int *)(pcVar2 + -4) != 0x618e6a55) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x100d18);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1;
}



/* 00100d34 attr_store */

undefined8 attr_store(undefined8 param_1,long param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(param_2 + 0x18);
  if (pcVar2 == (code *)0x0) {
    return 0xfffffffffffffffb;
  }
  if (*(int *)(pcVar2 + -4) != 0x7a5b5d2f) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x100d60);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1;
}



/* 00100d7c ramdisk_nvmem_show */

long ramdisk_nvmem_show(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  int iVar1;
  
  iVar1 = scnprintf(param_3,0x1000,&DAT_0010105a,&extract_buffer);
  return (long)iVar1;
}



/* 00100db8 ramdisk_nvmem_store */

undefined8 ramdisk_nvmem_store(void)

{
  _printk(&DAT_00101237);
  return 0xffffffffffffffea;
}



/* 00100de4 init_module */

void init_module(void)

{
  __platform_driver_register(zte_ramdisk_reboot_driver,&__this_module);
  return;
}



/* 00100e14 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(zte_ramdisk_reboot_driver);
  return;
}



