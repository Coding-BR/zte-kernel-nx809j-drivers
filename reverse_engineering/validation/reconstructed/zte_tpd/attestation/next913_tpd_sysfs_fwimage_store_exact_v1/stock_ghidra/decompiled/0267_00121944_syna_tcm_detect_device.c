
ulong syna_tcm_detect_device(long param_1,uint param_2,uint param_3)

{
  int iVar1;
  undefined1 *puVar2;
  
  if (param_1 == 0) {
    puVar2 = &DAT_00133fd6;
  }
  else {
    *(undefined2 *)(param_1 + 8) = 0;
    if ((param_2 & 0xf) == 1) {
      iVar1 = syna_tcm_v1_detect(param_1,param_2 >> 7 & 1,param_3 & 1);
      if (iVar1 < 0) {
        if (*(int *)(param_1 + 0x248) != 0) {
          puVar2 = *(undefined1 **)(param_1 + 0x240);
          _printk(&DAT_00133ace,"syna_tcm_detect_device",*puVar2,puVar2[1],puVar2[2],puVar2[3]);
          return 0xffffff0b;
        }
        return 0xffffff0b;
      }
      if ((*(long *)(param_1 + 0x398) != 0) && (*(long *)(param_1 + 0x390) != 0)) {
        if ((param_2 >> 7 & 1) == 0) {
          if (*(char *)(param_1 + 9) == '\v') {
            _printk(&DAT_0013d55f,"syna_tcm_detect_device");
          }
          else if (*(char *)(param_1 + 9) == '\x01') {
            _printk(&DAT_0013295b,"syna_tcm_detect_device",*(undefined4 *)(param_1 + 0xc),
                    param_1 + 0x82);
          }
          else {
            _printk(&DAT_0013a350,"syna_tcm_detect_device");
          }
          return (ulong)*(byte *)(param_1 + 9);
        }
        return 1;
      }
      _printk(&DAT_0013c7f0,"syna_tcm_detect_device");
      _printk(&DAT_0013779d,"syna_tcm_detect_device");
      return 0xffffff0b;
    }
    if ((param_2 & 0xf) == 2) {
      _printk(&DAT_001333de,"syna_tcm_detect_device",2);
      return 0xffffff0f;
    }
    puVar2 = &DAT_0013542a;
  }
  _printk(puVar2,"syna_tcm_detect_device");
  return 0xffffff0f;
}

