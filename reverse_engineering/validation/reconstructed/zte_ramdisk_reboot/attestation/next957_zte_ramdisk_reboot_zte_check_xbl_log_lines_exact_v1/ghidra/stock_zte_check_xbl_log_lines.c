
undefined8
zte_check_xbl_log_lines(undefined8 *param_1,long param_2,long param_3,int *param_4,void *param_5)

{
  ulong uVar1;
  void *pvVar2;
  long lVar3;
  char *pcVar4;
  int *piVar5;
  void *__dest;
  void *__s;
  long lVar6;
  size_t __n;
  ulong uVar7;
  
  uVar1 = param_1[0xf];
  __s = (void *)param_1[0x10];
  if (0x2fff < uVar1) {
    uVar1 = 0x3000;
  }
  pvVar2 = (void *)((long)__s + uVar1);
  if (__s < pvVar2) {
    do {
      __n = (long)pvVar2 - (long)__s;
      pvVar2 = memchr(__s,10,__n);
      if (pvVar2 == (void *)0x0) {
        pcVar4 = "ztedbg xbl in the end of log\n";
LAB_00100650:
        _dev_info(*param_1,pcVar4);
        return 0;
      }
      uVar7 = (long)pvVar2 - (long)__s;
      if (uVar7 < 2) {
        _dev_err(*param_1,"ztedbg unexpected matched len %zu : now offset %zu \n",uVar7,__n);
        return 0xffffffff;
      }
      if (param_3 == 0) {
LAB_00100644:
        pcVar4 = "ztedbg xbl all searched\n";
        goto LAB_00100650;
      }
      lVar6 = 0;
      __dest = param_5;
      do {
        if ((0 < param_4[lVar6]) &&
           (lVar3 = strnstr(__s,*(undefined8 *)(param_2 + lVar6 * 8),uVar7), lVar3 != 0)) {
          if (uVar7 < 0x81) {
            memcpy(__dest,__s,uVar7 - 1);
            *(undefined1 *)((long)__dest + (uVar7 - 1)) = 0;
            param_4[lVar6] = param_4[lVar6] + -1;
          }
          else {
            _dev_info(*param_1,"ztedbg ignored matched long line for idx %zu / left %zu\n",lVar6,__n
                     );
          }
        }
        lVar6 = lVar6 + 1;
        __dest = (void *)((long)__dest + 0x80);
      } while (param_3 != lVar6);
      __s = (void *)((long)pvVar2 + 1);
      piVar5 = param_4;
      lVar6 = param_3;
      while (*piVar5 < 1) {
        lVar6 = lVar6 + -1;
        piVar5 = piVar5 + 1;
        if (lVar6 == 0) goto LAB_00100644;
      }
      pvVar2 = (void *)(param_1[0x10] + uVar1);
    } while (__s < pvVar2);
  }
  return 0;
}

