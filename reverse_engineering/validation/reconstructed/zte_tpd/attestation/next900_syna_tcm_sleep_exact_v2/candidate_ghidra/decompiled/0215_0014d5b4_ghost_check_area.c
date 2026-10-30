
undefined8 ghost_check_area(long param_1)

{
  uint uVar1;
  int iVar2;
  ushort uVar3;
  ushort uVar4;
  undefined *puVar5;
  undefined8 uVar6;
  uint uVar7;
  
  uVar1 = *(uint *)(tpd_cdev + 0x10);
  uVar7 = (uint)*(ushort *)(param_1 + 0x18);
  if ((uVar1 | 2) == 3) {
    uVar3 = *(ushort *)(param_1 + 0x1c);
    iVar2 = *(int *)(tpd_cdev + 0x49c);
    if ((((iVar2 <= (int)(uint)uVar3) &&
         ((int)(uint)uVar3 <= (int)((uint)*(ushort *)(tpd_cdev + 0x444) - iVar2))) &&
        (iVar2 <= (int)(uint)*(ushort *)(param_1 + 0x18))) &&
       (uVar4 = *(ushort *)(tpd_cdev + 0x442), (int)uVar7 <= (int)((uint)uVar4 - iVar2))) {
LAB_0014d62c:
      uVar6 = 1;
      if ((int)uVar1 < 2) {
        if (uVar1 != 0) {
          if (uVar1 != 1) {
            return uVar6;
          }
          goto LAB_0014d658;
        }
        if ((int)(uint)uVar3 <=
            (int)((uint)*(ushort *)(tpd_cdev + 0x444) - *(int *)(tpd_cdev + 0x4a4))) {
          return uVar6;
        }
LAB_0014d6c0:
        if ((*(int *)(tpd_cdev + 0x4a0) <= (int)uVar7) &&
           ((int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x4a0)))) {
          return uVar6;
        }
      }
      else {
        if (uVar1 == 2) {
          if (*(int *)(tpd_cdev + 0x4a4) <= (int)(uint)uVar3) {
            return uVar6;
          }
          goto LAB_0014d6c0;
        }
        if (uVar1 != 3) {
          return uVar6;
        }
LAB_0014d658:
        if ((*(int *)(tpd_cdev + 0x4a4) <= (int)uVar7) &&
           ((int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x4a4)))) {
          return uVar6;
        }
        if ((*(int *)(tpd_cdev + 0x4a0) <= (int)(uint)uVar3) &&
           ((int)(uint)uVar3 <=
            (int)((uint)*(ushort *)(tpd_cdev + 0x444) - *(int *)(tpd_cdev + 0x4a0)))) {
          return uVar6;
        }
      }
      puVar5 = &DAT_001718b2;
      goto code_r0x0014d6e8;
    }
  }
  else if ((*(int *)(tpd_cdev + 0x49c) <= (int)uVar7) &&
          (uVar4 = *(ushort *)(tpd_cdev + 0x442),
          (int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x49c)))) {
    uVar3 = *(ushort *)(param_1 + 0x1c);
    goto LAB_0014d62c;
  }
  puVar5 = &DAT_001676ae;
code_r0x0014d6e8:
  uVar6 = _printk(puVar5);
  return uVar6;
}

