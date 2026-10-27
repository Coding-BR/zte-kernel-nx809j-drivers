
undefined4 aw9620x_read_chipid(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined4 uVar7;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","aw9620x_read_chipid",
              0x326);
  iVar2 = aw9620x_i2c_read(param_1,0xff00,&local_2c);
  if (iVar2 < 0) {
    uVar7 = 0xffffffff;
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] read CHIP ID failed: %d\n",
                "aw9620x_read_chipid",0x32a,0xffffffff);
  }
  else {
    if (local_2c == 0x20226208) {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] AW96208CSR CHIP ID : 0x%x\n";
      *(undefined8 *)(param_1 + 0x2a1) = 0x38303236395741;
      uVar5 = 0x33a;
      uVar6 = 0x20226208;
    }
    else if (local_2c == 0x20226205) {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] AW96205DNR CHIP ID : 0x%x\n";
      *(undefined8 *)(param_1 + 0x2a1) = 0x35303236395741;
      uVar5 = 0x336;
      uVar6 = 0x20226205;
    }
    else {
      if (local_2c != 0x20226203) {
        _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] no chipid,need update root and frimware,CHIP ID : 0x%x\n",
                    "aw9620x_read_chipid",0x33e);
        uVar7 = 0xfffffffe;
        goto LAB_00106d3c;
      }
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] AW96203CSR CHIP ID : 0x%x\n";
      uVar5 = 0x332;
      uVar6 = 0x20226203;
      *(undefined8 *)(param_1 + 0x2a1) = 0x33303236395741;
    }
    _dev_printk(&DAT_0010d797,uVar3,pcVar4,"aw9620x_read_chipid",uVar5,uVar6);
    uVar7 = 0;
  }
LAB_00106d3c:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return uVar7;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

