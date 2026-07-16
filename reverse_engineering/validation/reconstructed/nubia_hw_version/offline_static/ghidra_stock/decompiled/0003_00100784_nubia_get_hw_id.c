
undefined4 nubia_get_hw_id(void)

{
  undefined **ppuVar1;
  undefined *puVar2;
  
  if (nubia_pcb_gpio1_v < 2) {
    if (nubia_pcb_gpio1_v == 0) {
      if (2 < nubia_pcb_gpio2_v) {
        return 9;
      }
      ppuVar1 = &PTR_hw_pcb_gpio_map_00101f38;
    }
    else {
      if (nubia_pcb_gpio1_v != 1) {
        return 9;
      }
      if (2 < nubia_pcb_gpio2_v) {
        return 9;
      }
      ppuVar1 = &PTR_DAT_00101f68;
    }
  }
  else {
    if (nubia_pcb_gpio1_v != 2) {
      if (nubia_pcb_gpio1_v != 3) {
        return 9;
      }
      if (nubia_pcb_gpio2_v != 3) {
        return 9;
      }
      puVar2 = &UNK_00101d00;
      goto LAB_0010081c;
    }
    if (2 < nubia_pcb_gpio2_v) {
      return 9;
    }
    ppuVar1 = &PTR_DAT_00101f50;
  }
  puVar2 = ppuVar1[(char)nubia_pcb_gpio2_v];
LAB_0010081c:
  if (debug_value == 1) {
    _printk(&DAT_00101adf,*(undefined4 *)(puVar2 + 8));
  }
  return *(undefined4 *)(puVar2 + 8);
}

