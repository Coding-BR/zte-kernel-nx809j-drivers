
void fill_nvmem_buf(char *param_1,char *param_2,long param_3,long param_4,ulong param_5)

{
  ulong uVar1;
  size_t __n;
  ulong __n_00;
  
  if (param_1 == (char *)0x0) {
    uVar1 = 0;
  }
  else {
    uVar1 = strlen(param_1);
  }
  if (param_2 == (char *)0x0) {
    __n = 0;
  }
  else {
    __n = strlen(param_2);
  }
  __n_00 = 0;
  if ((param_1 != (char *)0x0) && (__n_00 = 0, uVar1 != 0)) {
    __n_00 = uVar1;
    if (param_5 <= uVar1) {
      __n_00 = param_5;
    }
    memcpy((void *)(param_3 + param_4),param_1,__n_00);
    if (param_5 <= uVar1) {
      return;
    }
  }
  if ((param_2 != (char *)0x0) && (__n != 0)) {
    if (param_5 - __n_00 <= __n) {
      __n = param_5 - __n_00;
    }
    memcpy((void *)(param_3 + __n_00 + param_4),param_2,__n);
    __n_00 = __n + __n_00;
    if (param_5 <= __n_00) {
      return;
    }
  }
  if (__n_00 <= param_5 && param_5 - __n_00 != 0) {
    memset((void *)(param_3 + __n_00 + param_4),0,param_5 - __n_00);
  }
  return;
}

