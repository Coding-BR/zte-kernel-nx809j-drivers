
undefined4 get_sysnumber_byname(char *param_1)

{
  int iVar1;
  long lVar2;
  
  lVar2 = 0;
  while ((*(char **)((long)&DAT_00101ec0 + lVar2) == (char *)0x0 ||
         (iVar1 = strcmp(*(char **)((long)&DAT_00101ec0 + lVar2),param_1), iVar1 != 0))) {
    lVar2 = lVar2 + 0x10;
    if (lVar2 == 0x100) {
      return 0;
    }
  }
  return *(undefined4 *)((long)&zte_gpios + lVar2);
}

