
undefined8 aw_check_dsp_reg_num_v1(long param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  code *pcVar4;
  undefined8 uVar5;
  long lVar6;
  
  _printk(&DAT_0010d838,"aw_check_dsp_reg_num_v1",0xb9);
  if (param_2 < 100) {
    lVar6 = param_1 + (ulong)param_2 * 0x54;
    param_1 = param_1 + (ulong)*(uint *)(lVar6 + 0x54);
    _printk(&DAT_0010c32b,"aw_check_dsp_reg_num_v1",0xbd,param_1 + 0x20e8);
    uVar1 = *(uint *)(param_1 + 0x20f0);
    uVar2 = *(uint *)(param_1 + 0x20ec);
    uVar3 = 0;
    if (uVar1 != 0) {
      uVar3 = (*(int *)(lVar6 + 0x28) - 0xcU) / uVar1;
    }
    *(uint *)(lVar6 + 0x5c) = uVar1;
    _printk(&DAT_0010dcd6,"aw_check_dsp_reg_num_v1",0xca,param_2,uVar2,uVar3);
    if (uVar2 == uVar3) {
      uVar5 = 0;
      *(undefined4 *)(lVar6 + 0x60) = *(undefined4 *)(param_1 + 0x20e8);
      *(int *)(lVar6 + 0x50) = *(int *)(lVar6 + 0x28) + -0xc;
      *(int *)(lVar6 + 0x54) = *(int *)(lVar6 + 0x54) + 0xc;
      *(uint *)(lVar6 + 0x58) = uVar2;
    }
    else {
      _printk(&DAT_0010ec07,"aw_check_dsp_reg_num_v1",0xcd);
      _printk(&DAT_0010c363,"aw_check_dsp_reg_num_v1",0xce,param_2,uVar2,uVar3);
      uVar5 = 0xfffffffa;
    }
    return uVar5;
  }
                    /* WARNING: Does not return */
  pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x101d18);
  (*pcVar4)();
}

