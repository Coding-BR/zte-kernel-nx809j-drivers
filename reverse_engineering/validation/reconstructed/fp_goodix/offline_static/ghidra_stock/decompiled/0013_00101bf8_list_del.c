
void list_del(void)

{
  long lVar1;
  long *plVar2;
  undefined8 *puVar3;
  undefined8 *extraout_x9;
  
  plVar2 = DAT_00104020;
  lVar1 = DAT_00104018;
  puVar3 = &DAT_00104018;
  if (((undefined8 *)*DAT_00104020 == &DAT_00104018) &&
     (*(undefined8 **)(DAT_00104018 + 8) == &DAT_00104018)) {
    *(long **)(DAT_00104018 + 8) = DAT_00104020;
    *plVar2 = lVar1;
  }
  else {
    __list_del_entry_valid_or_report(&DAT_00104018);
    puVar3 = extraout_x9;
  }
  *puVar3 = 0xdead000000000100;
  puVar3[1] = 0xdead000000000122;
  return;
}

