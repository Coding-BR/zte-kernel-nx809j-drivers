
long aw22xxx_reg_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  size_t sVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  char local_60 [4];
  byte local_5c [4];
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_5c[0] = 0;
  local_60[0] = '\0';
  lVar4 = *(long *)(param_1 + 0x98) + -0x10;
  aw22xxx_i2c_read(lVar4,0xff,local_60);
  uVar5 = 0;
  lVar3 = 0;
  do {
    if ((local_60[0] != '\0') || (((&aw22xxx_reg_access)[uVar5] & 1) != 0)) {
      aw22xxx_i2c_read(lVar4,uVar5 & 0xffffffff,local_5c);
      iVar1 = snprintf((char *)(param_3 + lVar3),0x1000U - lVar3,"reg:0x%02x=0x%02x \n",
                       uVar5 & 0xffffffff,(ulong)local_5c[0]);
      if (0x1000U - lVar3 <= (ulong)(long)iVar1) {
        lVar3 = -0xe;
        break;
      }
      sVar2 = strlen((char *)(param_3 + lVar3));
      lVar3 = sVar2 + lVar3;
    }
    uVar5 = uVar5 + 1;
  } while (uVar5 != 0x100);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

