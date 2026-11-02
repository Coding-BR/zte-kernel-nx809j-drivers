
undefined8 aw_check_register_num_v1(long param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  code *pcVar4;
  undefined8 uVar5;
  long lVar6;
  
  _printk(&DAT_0010d838,"aw_check_register_num_v1",0x96);
  if (param_2 < 100) {
    lVar6 = param_1 + (ulong)param_2 * 0x54;
    param_1 = param_1 + (ulong)*(uint *)(lVar6 + 0x54);
    _printk(&DAT_0010c32b,"aw_check_register_num_v1",0x9a,param_1 + 0x20e8);
    uVar2 = *(uint *)(param_1 + 0x20e8);
    uVar1 = *(int *)(lVar6 + 0x48) + *(int *)(lVar6 + 0x44);
    uVar3 = 0;
    if (uVar1 != 0) {
      uVar3 = (*(int *)(lVar6 + 0x28) - 4U) / uVar1;
    }
    _printk(&DAT_0010e6c2,"aw_check_register_num_v1",0xa3,param_2,uVar2,uVar3);
    if (uVar2 == uVar3) {
      uVar5 = 0;
      *(int *)(lVar6 + 0x50) = *(int *)(lVar6 + 0x28) + -4;
      *(int *)(lVar6 + 0x54) = *(int *)(lVar6 + 0x54) + 4;
      *(uint *)(lVar6 + 0x58) = uVar2;
    }
    else {
      _printk(&DAT_0010f572,"aw_check_register_num_v1",0xa6);
      _printk(&DAT_0010de6a,"aw_check_register_num_v1",0xa7,param_2,uVar2,uVar3);
      uVar5 = 0xfffffffb;
    }
    return uVar5;
  }
                    /* WARNING: Does not return */
  pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x101bdc);
  (*pcVar4)();
}

