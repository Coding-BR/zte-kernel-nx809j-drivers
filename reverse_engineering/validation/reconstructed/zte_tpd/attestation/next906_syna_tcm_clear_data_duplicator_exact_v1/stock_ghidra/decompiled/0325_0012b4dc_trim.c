
byte * trim(long param_1)

{
  byte *pbVar1;
  size_t sVar2;
  byte *pbVar3;
  byte *__s;
  
  if (param_1 == 0) {
    __s = (byte *)0x0;
  }
  else {
    __s = (byte *)(param_1 + -1);
    do {
      __s = __s + 1;
    } while (((byte)(&_ctype)[*__s] >> 5 & 1) != 0);
    if (*__s != 0) {
      sVar2 = strlen((char *)__s);
      pbVar3 = __s + sVar2;
      do {
        pbVar1 = pbVar3;
        pbVar3 = pbVar1 + -1;
        if (pbVar3 <= __s) break;
      } while (((byte)(&_ctype)[*pbVar3] >> 5 & 1) != 0);
      *pbVar1 = 0;
    }
  }
  return __s;
}

