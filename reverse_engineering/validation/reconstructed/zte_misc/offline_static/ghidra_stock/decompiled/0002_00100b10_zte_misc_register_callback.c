
undefined8 zte_misc_register_callback(undefined8 *param_1,long param_2)

{
  int iVar1;
  size_t __n;
  size_t sVar2;
  size_t sVar3;
  undefined8 uVar4;
  ulong uVar5;
  char *__s;
  char *__s1;
  long *plVar6;
  
  if (param_1 == (undefined8 *)0x0) {
    return 0xffffffea;
  }
  __s = (char *)*param_1;
  if (__s != (char *)0x0) {
    __n = strlen(__s);
    uVar5 = 0;
    plVar6 = &DAT_00100088;
    do {
      __s1 = (char *)plVar6[-2];
      iVar1 = strncmp(__s1,__s,__n);
      if (iVar1 == 0) {
        sVar2 = strlen(__s1);
        sVar3 = strlen(__s);
        if (sVar2 == sVar3) {
          _printk(&DAT_001028dd,"zte_misc_register_callback",uVar5 & 0xffffffff,__s1);
          if ((((*plVar6 == 0) && (plVar6[-1] == 0)) && (plVar6[1] == 0)) && (plVar6[2] == 0)) {
            *plVar6 = param_1[2];
            plVar6[-1] = param_1[1];
            plVar6[1] = param_1[3];
            if (param_2 == 0) {
              param_2 = param_1[4];
            }
            uVar4 = 0;
            plVar6[2] = param_2;
          }
          else {
            _printk(&DAT_00102767,"zte_misc_register_callback",uVar5 & 0xffffffff,plVar6[-2]);
            uVar4 = 0xfffffff2;
          }
          if (0x23 < (uint)uVar5) {
            return 0xffffffea;
          }
          return uVar4;
        }
      }
      uVar5 = uVar5 + 1;
      plVar6 = plVar6 + 5;
    } while (uVar5 != 0x24);
  }
  return 0xffffffea;
}

