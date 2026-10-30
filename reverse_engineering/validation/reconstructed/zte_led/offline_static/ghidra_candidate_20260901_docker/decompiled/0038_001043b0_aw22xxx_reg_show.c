
long aw22xxx_reg_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  size_t sVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  ulong __maxlen;
  byte local_60 [4];
  char local_5c [4];
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_5c[0] = '\0';
  local_60[0] = 0;
  lVar4 = *(long *)(param_1 + 0x98) + -0x10;
  aw22xxx_i2c_read(lVar4,0xff,local_5c);
  uVar5 = 0;
  lVar3 = 0;
  do {
    if ((local_5c[0] != '\0') || (((&aw22xxx_reg_access)[uVar5] & 1) != 0)) {
      aw22xxx_i2c_read(lVar4,uVar5 & 0xffffffff,local_60);
      __maxlen = 0x1000 - lVar3;
      if (__maxlen < 0x21) goto LAB_00104488;
      iVar1 = snprintf((char *)(param_3 + lVar3),__maxlen,"reg:0x%02x=0x%02x \n",uVar5 & 0xffffffff,
                       (ulong)local_60[0]);
      if (__maxlen <= (ulong)(long)iVar1) {
        lVar3 = -0xe;
        goto LAB_00104488;
      }
      sVar2 = strlen((char *)(param_3 + lVar3));
      lVar3 = sVar2 + lVar3;
    }
    uVar5 = uVar5 + 1;
    if (uVar5 == 0x100) {
LAB_00104488:
      lVar4 = sp_el0;
      if (*(long *)(lVar4 + 0x710) == local_58) {
        return lVar3;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  } while( true );
}

