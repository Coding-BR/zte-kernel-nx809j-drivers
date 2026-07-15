
int count_format_args(byte *param_1,int *param_2)

{
  byte bVar1;
  bool bVar2;
  void *pvVar3;
  int iVar4;
  int iVar5;
  
  iVar4 = -1;
  if (param_2 != (int *)0x0) {
    *param_2 = -1;
    iVar4 = 0;
    if (param_1 != (byte *)0x0) {
      bVar2 = false;
      iVar5 = -1;
LAB_001006a4:
      for (; bVar1 = *param_1, bVar1 == 0x25; param_1 = param_1 + 1) {
        bVar2 = (bool)(bVar2 ^ 1);
LAB_001006fc:
      }
      if (bVar1 == 0) {
        return iVar4;
      }
      if (!bVar2) {
        bVar2 = false;
        param_1 = param_1 + 1;
        goto LAB_001006a4;
      }
      pvVar3 = memchr("diouxXfFeEgGaAcsSpn",(uint)bVar1,0x14);
      if (pvVar3 != (void *)0x0) {
        bVar2 = false;
        iVar4 = iVar4 + 1;
        if ((bVar1 != 0x73) || (iVar5 != -1)) goto LAB_001006fc;
        bVar2 = false;
        *param_2 = iVar4;
        param_1 = param_1 + 1;
        iVar5 = iVar4;
        goto LAB_001006a4;
      }
      if (bVar1 != 0x2a) {
        bVar2 = true;
        param_1 = param_1 + 1;
        goto LAB_001006a4;
      }
      iVar4 = -1;
    }
  }
  return iVar4;
}

