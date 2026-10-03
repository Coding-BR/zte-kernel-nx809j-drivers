
int syna_tcm_set_static_config(long param_1,undefined8 param_2,uint param_3,int param_4)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_set_static_config");
    iVar2 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_set_static_config");
      }
      else {
        param_4 = 0;
      }
    }
    if (*(ushort *)(param_1 + 0xb4) == param_3) {
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12315c);
        (*pcVar1)();
      }
      iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x22,param_2,param_3,0,param_4);
      if (iVar2 < 0) {
        _printk(&DAT_0013a7db,"syna_tcm_set_static_config",0x22);
      }
      else {
        iVar2 = 0;
      }
    }
    else {
      _printk(&DAT_00135ab5,"syna_tcm_set_static_config",param_3);
      iVar2 = -0xf1;
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_set_static_config");
    iVar2 = -0xf1;
  }
  return iVar2;
}

