
void list_del(void)

{
  long lVar1;
  long *plVar2;
  undefined8 *puVar3;
  undefined8 *extraout_x9;
  
  plVar2 = DAT_001041e8;
  lVar1 = DAT_001041e0;
  puVar3 = &DAT_001041e0;
  if (((undefined8 *)*DAT_001041e8 == &DAT_001041e0) &&
     (*(undefined8 **)(DAT_001041e0 + 8) == &DAT_001041e0)) {
    *(long **)(DAT_001041e0 + 8) = DAT_001041e8;
    *plVar2 = lVar1;
  }
  else {
    __list_del_entry_valid_or_report(&DAT_001041e0);
    puVar3 = extraout_x9;
  }
  *puVar3 = 0xdead000000000100;
  puVar3[1] = 0xdead000000000122;
  return;
}

