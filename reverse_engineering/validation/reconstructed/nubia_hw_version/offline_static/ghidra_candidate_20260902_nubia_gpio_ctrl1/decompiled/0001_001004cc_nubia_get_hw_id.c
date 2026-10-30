
undefined4 nubia_get_hw_id(void)

{
  undefined **ppuVar1;
  undefined *puVar2;
  
  if (nubia_hw_exact_bss_base < 2) {
    if (nubia_hw_exact_bss_base == 0) {
      if (2 < nubia_pcb_gpio2_v) {
        return 9;
      }
      ppuVar1 = &PTR_nubia_hw_exact_rodata_base_00101530;
    }
    else {
      if (nubia_hw_exact_bss_base != 1) {
        return 9;
      }
      if (2 < nubia_pcb_gpio2_v) {
        return 9;
      }
      ppuVar1 = &PTR_DAT_00101560;
    }
  }
  else {
    if (nubia_hw_exact_bss_base != 2) {
      if (nubia_hw_exact_bss_base != 3) {
        return 9;
      }
      if (nubia_pcb_gpio2_v != 3) {
        return 9;
      }
      puVar2 = &UNK_001012f8;
      goto LAB_00100564;
    }
    if (2 < nubia_pcb_gpio2_v) {
      return 9;
    }
    ppuVar1 = &PTR_DAT_00101548;
  }
  puVar2 = ppuVar1[(char)nubia_pcb_gpio2_v];
LAB_00100564:
  if (debug_value == 1) {
    _printk(&DAT_00101c63,*(undefined4 *)(puVar2 + 8));
  }
  return *(undefined4 *)(puVar2 + 8);
}

