
undefined4 * nubia_get_hw_pcb_version(undefined4 *param_1)

{
  int iVar1;
  size_t sVar2;
  undefined4 *puVar3;
  char *__s;
  ulong uVar4;
  undefined **ppuVar5;
  undefined *puVar6;
  
  if (nubia_hw_exact_bss_base < 2) {
    if (nubia_hw_exact_bss_base == 0) {
      if (2 < nubia_pcb_gpio2_v) goto LAB_00100670;
      ppuVar5 = &PTR_nubia_hw_exact_rodata_base_00101530;
    }
    else {
      if ((nubia_hw_exact_bss_base != 1) || (2 < nubia_pcb_gpio2_v)) goto LAB_00100670;
      ppuVar5 = &PTR_DAT_00101560;
    }
LAB_00100634:
    puVar6 = ppuVar5[(char)nubia_pcb_gpio2_v];
joined_r0x00100608:
    if (param_1 != (undefined4 *)0x0) {
      sVar2 = strnlen(puVar6 + 0xc,0xc);
      if (sVar2 < 0xd) {
        if (sVar2 != 0xc) {
          puVar3 = memcpy(param_1,puVar6 + 0xc,sVar2 + 1);
          return puVar3;
        }
      }
      else {
        sVar2 = __fortify_panic(2,0xc,sVar2 + 1);
      }
      __s = (char *)(sVar2 + 1);
      __fortify_panic(4,0xc);
      if (__s == (char *)0x0) {
        return (undefined4 *)0x0;
      }
      if ((ulong)nubia_pcb_gpio3_v < 3) {
        uVar4 = (ulong)*(uint *)(&DAT_001015b4 + (ulong)nubia_pcb_gpio3_v * 4);
      }
      else {
        uVar4 = 0xffffffff;
      }
      if (debug_value == 1) {
        _printk(&DAT_0010194b,uVar4);
      }
      iVar1 = snprintf(__s,5,"%d",uVar4);
      return (undefined4 *)(long)iVar1;
    }
  }
  else {
    if (nubia_hw_exact_bss_base == 2) {
      if (nubia_pcb_gpio2_v < 3) {
        ppuVar5 = &PTR_DAT_00101548;
        goto LAB_00100634;
      }
    }
    else if ((nubia_hw_exact_bss_base == 3) && (nubia_pcb_gpio2_v == 3)) {
      puVar6 = &UNK_001012f8;
      goto joined_r0x00100608;
    }
LAB_00100670:
    if (param_1 != (undefined4 *)0x0) {
      *(undefined4 *)((long)param_1 + 3) = 0x776f6e;
      *param_1 = 0x6e6b6e75;
    }
  }
  return param_1;
}

