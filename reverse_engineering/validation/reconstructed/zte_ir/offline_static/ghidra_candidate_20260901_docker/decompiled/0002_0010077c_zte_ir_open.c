
int zte_ir_open(long param_1,long param_2)

{
  undefined **ppuVar1;
  int iVar2;
  undefined **ppuVar3;
  
  mutex_lock(&device_list_lock);
  ppuVar3 = &device_list;
  do {
    ppuVar3 = (undefined **)*ppuVar3;
    if (ppuVar3 == &device_list) goto LAB_001007e4;
    ppuVar1 = ppuVar3 + -0x271b;
  } while (*(int *)ppuVar1 != *(int *)(param_1 + 0x4c));
  if ((ppuVar1 == (undefined **)0x0) || ((*(byte *)((long)ppuVar3 + 0x14) & 1) != 0)) {
LAB_001007e4:
    iVar2 = -6;
  }
  else {
    *(int *)(ppuVar3 + 2) = *(int *)(ppuVar3 + 2) + 1;
    *(undefined ***)(param_2 + 0x20) = ppuVar1;
    iVar2 = nonseekable_open(param_1,param_2);
    if (iVar2 != 0) {
      *(int *)(ppuVar3 + 2) = *(int *)(ppuVar3 + 2) + -1;
      *(undefined8 *)(param_2 + 0x20) = 0;
    }
  }
  mutex_unlock(&device_list_lock);
  return iVar2;
}

