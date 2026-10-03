
undefined8 extract_sn_info(undefined8 *param_1,char *param_2,char *param_3,char *param_4)

{
  char *pcVar1;
  char *__n;
  char *pcVar2;
  char *pcVar3;
  undefined8 uVar4;
  
  pcVar2 = strstr(param_2," = ");
  if (param_2 == (char *)0x0) {
    _dev_err(*param_1,"ztedbg null input sn line\n");
    return 0xffffffff;
  }
  pcVar3 = (char *)strlen(param_2);
  if (pcVar2 != (char *)0x0) {
    pcVar1 = pcVar2 + (3 - (long)param_2);
    __n = pcVar3 + -(long)pcVar1;
    if (pcVar1 <= pcVar3) {
      if (((__n < param_4) && (pcVar3 != pcVar1)) && (__n < pcVar3)) {
        strncpy(param_3,pcVar2 + 3,(size_t)__n);
        param_3[(long)__n] = '\0';
        return 0;
      }
      uVar4 = *param_1;
      pcVar2 = "ztedbg invalid sn extract with input: %s\n";
      goto LAB_00100880;
    }
  }
  uVar4 = *param_1;
  pcVar2 = "ztedbg invalid sn input %s\n";
LAB_00100880:
  _dev_err(uVar4,pcVar2,param_2);
  return 0xffffffff;
}

