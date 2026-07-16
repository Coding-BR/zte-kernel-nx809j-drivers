
/* WARNING: Control flow encountered bad instruction data */

void nubia_get_hw_pcb_version(undefined4 *param_1)

{
  size_t sVar1;
  undefined **ppuVar2;
  undefined *puVar3;
  
  if (nubia_pcb_gpio1_v < 2) {
    if (nubia_pcb_gpio1_v == 0) {
      if (2 < nubia_pcb_gpio2_v) goto LAB_00100928;
      ppuVar2 = &PTR_hw_pcb_gpio_map_00101f38;
    }
    else {
      if ((nubia_pcb_gpio1_v != 1) || (2 < nubia_pcb_gpio2_v)) goto LAB_00100928;
      ppuVar2 = &PTR_DAT_00101f68;
    }
LAB_001008ec:
    puVar3 = ppuVar2[(char)nubia_pcb_gpio2_v];
joined_r0x001008c0:
    if (param_1 != (undefined4 *)0x0) {
      sVar1 = strnlen(puVar3 + 0xc,0xc);
      if (sVar1 < 0xd) {
        if (sVar1 != 0xc) {
          memcpy(param_1,puVar3 + 0xc,sVar1 + 1);
          return;
        }
      }
      else {
        sVar1 = __fortify_panic(2,0xc,sVar1 + 1);
      }
      __fortify_panic(4,0xc,sVar1 + 1);
                    /* WARNING: Bad instruction - Truncating control flow here */
      halt_baddata();
    }
  }
  else {
    if (nubia_pcb_gpio1_v == 2) {
      if (nubia_pcb_gpio2_v < 3) {
        ppuVar2 = &PTR_DAT_00101f50;
        goto LAB_001008ec;
      }
    }
    else if ((nubia_pcb_gpio1_v == 3) && (nubia_pcb_gpio2_v == 3)) {
      puVar3 = &UNK_00101d00;
      goto joined_r0x001008c0;
    }
LAB_00100928:
    if (param_1 != (undefined4 *)0x0) {
      *(undefined4 *)((long)param_1 + 3) = 0x776f6e;
      *param_1 = 0x6e6b6e75;
    }
  }
  return;
}

