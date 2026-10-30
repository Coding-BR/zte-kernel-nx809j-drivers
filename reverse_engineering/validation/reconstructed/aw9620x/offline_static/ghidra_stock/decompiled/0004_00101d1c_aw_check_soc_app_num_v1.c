
undefined8 aw_check_soc_app_num_v1(long param_1,uint param_2)

{
  int iVar1;
  int iVar2;
  code *pcVar3;
  undefined8 uVar4;
  long lVar5;
  
  _printk(&DAT_0010d838,"aw_check_soc_app_num_v1",0xe3);
  if (param_2 < 100) {
    lVar5 = param_1 + (ulong)param_2 * 0x54;
    param_1 = param_1 + (ulong)*(uint *)(lVar5 + 0x54);
    _printk(&DAT_0010c32b,"aw_check_soc_app_num_v1",0xe7,param_1 + 0x20e8);
    *(undefined4 *)(lVar5 + 100) = *(undefined4 *)(param_1 + 0x20e8);
    iVar1 = *(int *)(param_1 + 0x20f0);
    iVar2 = *(int *)(lVar5 + 0x28) + -0xc;
    _printk(&DAT_0010c3cd,"aw_check_soc_app_num_v1",0xf2,param_2,iVar1,iVar2);
    if (iVar1 == iVar2) {
      *(int *)(lVar5 + 0x58) = iVar1;
      uVar4 = 0;
      *(undefined4 *)(lVar5 + 0x60) = *(undefined4 *)(param_1 + 0x20ec);
      *(int *)(lVar5 + 0x50) = *(int *)(lVar5 + 0x28) + -0xc;
      *(int *)(lVar5 + 0x54) = *(int *)(lVar5 + 0x54) + 0xc;
    }
    else {
      _printk(&DAT_0010da54,"aw_check_soc_app_num_v1",0xf5);
      _printk(&DAT_0010d858,"aw_check_soc_app_num_v1",0xf6,param_2,iVar1,iVar2);
      uVar4 = 0xfffffff9;
    }
    return uVar4;
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x101e54);
  (*pcVar3)();
}

