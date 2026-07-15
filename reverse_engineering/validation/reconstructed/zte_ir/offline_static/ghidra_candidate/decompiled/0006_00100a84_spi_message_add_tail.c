
void spi_message_add_tail(long param_1,long param_2)

{
  long *plVar1;
  long *plVar2;
  
  plVar1 = (long *)(param_1 + 0x70);
  plVar2 = *(long **)(param_2 + 8);
  if (((plVar1 != (long *)param_2) && (plVar2 != plVar1)) && (*plVar2 == param_2)) {
    *(long **)(param_2 + 8) = plVar1;
    *(long *)(param_1 + 0x70) = param_2;
    *(long **)(param_1 + 0x78) = plVar2;
    *plVar2 = (long)plVar1;
    return;
  }
  __list_add_valid_or_report();
  return;
}

