
undefined8 point_is_in_limit_area(uint param_1,ushort param_2)

{
  uint uVar1;
  ushort uVar2;
  
  uVar1 = param_1 & 0xffff;
  if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
    if (uVar1 < *(byte *)(tpd_cdev + 0x27)) {
      return 1;
    }
    if ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x28)) <
        (int)(param_1 & 0xffff)) {
      return 1;
    }
    if (param_2 < *(byte *)(tpd_cdev + 0x29)) {
      return 1;
    }
    if ((int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x2a)) <
        (int)(uint)param_2) {
      return 1;
    }
  }
  else {
    if (uVar1 < *(byte *)(tpd_cdev + 0x27)) {
      return 1;
    }
    uVar2 = *(ushort *)(tpd_cdev + 0x442);
    if ((int)((uint)uVar2 - (uint)*(byte *)(tpd_cdev + 0x28)) < (int)uVar1) {
      return 1;
    }
    if (((*(uint *)(tpd_cdev + 0x10) == 0) &&
        ((uVar1 < (uint)*(byte *)(tpd_cdev + 0x34) * 3 >> 1 ||
         ((int)((uint)uVar2 - ((uint)*(byte *)(tpd_cdev + 0x35) * 3 >> 1)) < (int)uVar1)))) &&
       (((DAT_00131678._3_1_ & 1) != 0 ||
        (((((((DAT_00131700._3_1_ & 1) != 0 || ((DAT_00131788._3_1_ & 1) != 0)) ||
            ((DAT_00131810._3_1_ & 1) != 0)) ||
           (((DAT_00131898._3_1_ & 1) != 0 || ((DAT_00131920._3_1_ & 1) != 0)))) ||
          (((DAT_001319a8._3_1_ & 1) != 0 ||
           (((DAT_00131a30._3_1_ & 1) != 0 || ((DAT_00131ab8._3_1_ & 1) != 0)))))) ||
         (DAT_00131b40._3_1_ == '\x01')))))) {
      _printk(&DAT_00135ea1,uVar1,param_2);
      return 1;
    }
    if ((*(char *)(tpd_cdev + 0x38) != '\0') && (*(ushort *)(tpd_cdev + 0x2e) < param_2)) {
      if (uVar1 < *(ushort *)(tpd_cdev + 0x2c)) {
        return 1;
      }
      if ((int)((uint)uVar2 - (uint)*(ushort *)(tpd_cdev + 0x2c)) < (int)uVar1) {
        return 1;
      }
    }
  }
  return 0;
}

