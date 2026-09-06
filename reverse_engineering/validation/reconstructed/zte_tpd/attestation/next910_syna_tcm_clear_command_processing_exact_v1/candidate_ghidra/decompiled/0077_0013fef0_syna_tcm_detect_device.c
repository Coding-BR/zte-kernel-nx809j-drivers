
undefined8 syna_tcm_detect_device(long param_1,uint param_2,uint param_3)

{
  int iVar1;
  undefined8 uVar2;
  undefined1 *puVar3;
  
  if (param_1 == 0) {
    puVar3 = &DAT_0017eb2d;
  }
  else {
    *(undefined2 *)(param_1 + 8) = 0;
    if ((param_2 & 0xf) == 1) {
      iVar1 = syna_tcm_v1_detect(param_1,param_2 >> 7 & 1,param_3 & 1);
      if (iVar1 < 0) {
        if (*(int *)(param_1 + 0x248) != 0) {
          puVar3 = *(undefined1 **)(param_1 + 0x240);
          uVar2 = _printk(&DAT_0017e7f5,"syna_tcm_detect_device",*puVar3,puVar3[1],puVar3[2],
                          puVar3[3]);
          return uVar2;
        }
        uVar2 = 0xffffff0b;
      }
      else {
        if ((*(long *)(param_1 + 0x398) == 0) || (*(long *)(param_1 + 0x390) == 0)) {
          uVar2 = _printk(&DAT_001825f9,"syna_tcm_detect_device");
          return uVar2;
        }
        if ((param_2 >> 7 & 1) == 0) {
          if (*(char *)(param_1 + 9) == '\v') {
            uVar2 = _printk(&DAT_00182c13,"syna_tcm_detect_device");
            return uVar2;
          }
          if (*(char *)(param_1 + 9) == '\x01') {
            uVar2 = _printk(&DAT_0017df99,"syna_tcm_detect_device",*(undefined4 *)(param_1 + 0xc),
                            param_1 + 0x82);
            return uVar2;
          }
          uVar2 = _printk(&DAT_0018165b,"syna_tcm_detect_device");
          return uVar2;
        }
        uVar2 = 1;
      }
      return uVar2;
    }
    if ((param_2 & 0xf) == 2) {
      uVar2 = _printk(&DAT_0017e572,"syna_tcm_detect_device",2);
      return uVar2;
    }
    puVar3 = &DAT_0017f39f;
  }
  uVar2 = _printk(puVar3,"syna_tcm_detect_device");
  return uVar2;
}

