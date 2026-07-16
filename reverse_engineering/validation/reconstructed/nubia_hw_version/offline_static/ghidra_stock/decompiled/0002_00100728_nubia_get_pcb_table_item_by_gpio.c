
uint * nubia_get_pcb_table_item_by_gpio(uint *param_1,uint param_2)

{
  ulong uVar1;
  
  if ((param_1 != (uint *)0x0) && (param_2 != 0)) {
    uVar1 = (ulong)param_2;
    do {
      if ((*param_1 == (uint)nubia_pcb_gpio1_v) && (param_1[1] == (uint)nubia_pcb_gpio2_v)) {
        return param_1;
      }
      uVar1 = uVar1 - 1;
      param_1 = param_1 + 6;
    } while (uVar1 != 0);
  }
  return (uint *)0x0;
}

