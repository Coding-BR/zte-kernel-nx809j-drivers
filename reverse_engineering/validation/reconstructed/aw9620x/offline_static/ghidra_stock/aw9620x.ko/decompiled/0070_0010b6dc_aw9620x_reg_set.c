
undefined8 aw9620x_reg_set(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    lVar2 = 0;
    do {
      if ((uint)*(ushort *)((long)&DAT_001101f2 + lVar2) == ((uint)local_30 & 0xffff)) {
        if (((byte)(&aw9620x_reg_access)[lVar2] >> 1 & 1) != 0) {
          aw9620x_i2c_write(lVar3 + -0x38,local_30 & 0xffffffff,local_30._4_4_);
        }
        break;
      }
      lVar2 = lVar2 + 4;
    } while (lVar2 != 0x310);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}

