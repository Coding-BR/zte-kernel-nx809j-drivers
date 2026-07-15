
undefined8 extract_ocp_info(undefined8 *param_1,char *param_2,char *param_3,ulong param_4)

{
  ulong __n;
  char *pcVar1;
  char *pcVar2;
  size_t sVar3;
  undefined8 uVar4;
  
  pcVar1 = strstr(param_2,"OCP Occured: ");
  pcVar2 = strstr(param_2,"Status: ");
  if (param_2 == (char *)0x0) {
    _dev_err(*param_1,"ztedbg null input ocp line\n");
    return 0xffffffff;
  }
  if ((pcVar1 != (char *)0x0) && (pcVar2 != (char *)0x0)) {
    pcVar1 = pcVar1 + 0xd;
    __n = (long)pcVar2 - (long)pcVar1;
    if (pcVar1 <= pcVar2) {
      if (((__n != 0) && (sVar3 = strlen(param_2), __n < param_4)) && (__n < sVar3)) {
        strncpy(param_3,pcVar1,__n);
        param_3[__n] = '\0';
        return 0;
      }
      uVar4 = *param_1;
      pcVar1 = "ztedbg invalid ocp extract with input: %s\n";
      goto LAB_00100770;
    }
  }
  uVar4 = *param_1;
  pcVar1 = "ztedbg invalid ocp input %s\n";
LAB_00100770:
  _dev_err(uVar4,pcVar1,param_2);
  return 0xffffffff;
}

