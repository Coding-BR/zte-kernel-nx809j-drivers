
long show_simlock_status(undefined8 param_1,undefined8 param_2,char *param_3)

{
  long lVar1;
  int iVar2;
  ulong uVar3;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  ulong local_40;
  long local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  uStack_90 = 0x58030;
  local_38 = 0;
  uStack_30 = 0;
  local_48 = 0;
  local_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  if (ftm_sysdev_priv_data_0 == '\0') {
    uStack_90 = 0x30;
  }
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 2;
  iVar2 = qcom_scm_qseecom_call(0x2000807,&local_98,1);
  if (iVar2 == 0) {
    uVar3 = local_40 & 0xffffffff | local_38 << 0x20;
  }
  else {
    _printk(&DAT_00100f7d,6,iVar2);
    uVar3 = 0;
  }
  _printk(&DAT_00100f05,"show_simlock_status",uVar3);
  iVar2 = snprintf(param_3,0x1000,"%d\n",(ulong)((~(uint)uVar3 & 0xc0000000) == 0));
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return (long)iVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

