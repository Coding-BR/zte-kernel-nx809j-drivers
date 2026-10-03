
int count_format_args(byte *param_1,int *param_2)

{
  byte bVar1;
  bool bVar2;
  void *pvVar3;
  int iVar4;
  uint __c;
  int iVar5;
  
  iVar4 = -1;
  if (param_2 != (int *)0x0) {
    *param_2 = -1;
    if ((param_1 == (byte *)0x0) || (bVar1 = *param_1, bVar1 == 0)) {
      iVar4 = 0;
    }
    else {
      bVar2 = false;
      iVar4 = 0;
      iVar5 = -1;
      do {
        __c = (uint)bVar1;
        param_1 = param_1 + 1;
        if (__c == 0x25) {
          bVar2 = (bool)(bVar2 ^ 1);
        }
        else if (bVar2) {
          pvVar3 = memchr("diouxXfFeEgGaAcsSpn",__c,0x14);
          if (pvVar3 == (void *)0x0) {
            if (__c == 0x2a) {
              return -1;
            }
            bVar2 = true;
          }
          else {
            bVar2 = false;
            iVar4 = iVar4 + 1;
            if ((__c == 0x73) && (iVar5 == -1)) {
              bVar2 = false;
              *param_2 = iVar4;
              iVar5 = iVar4;
            }
          }
        }
        else {
          bVar2 = false;
        }
        bVar1 = *param_1;
      } while (bVar1 != 0);
    }
  }
  return iVar4;
}

