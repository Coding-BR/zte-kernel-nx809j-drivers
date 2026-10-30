
void aw9620x_check_isp_go_reg(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  int iVar6;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  iVar6 = 100;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  while( true ) {
    iVar2 = aw9620x_i2c_read(param_1,0x4714,&local_2c);
    if (iVar2 != 0) {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] write 0xff20 err\n";
      uVar5 = 0x42e;
      goto LAB_001061b0;
    }
    if (local_2c == 0) break;
    __const_udelay(0x418958);
    iVar6 = iVar6 + -1;
    if (iVar6 == -1) {
LAB_0010616c:
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] check_isp_go_reg err!\n";
      uVar5 = 0x437;
LAB_001061b0:
      _dev_printk(&DAT_0010dd3c,uVar3,pcVar4,"aw9620x_check_isp_go_reg",uVar5);
      uVar3 = 0xffffffff;
LAB_00106144:
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(uVar3);
      }
      return;
    }
  }
  if (-1 < iVar6) {
    uVar3 = 0;
    goto LAB_00106144;
  }
  goto LAB_0010616c;
}

