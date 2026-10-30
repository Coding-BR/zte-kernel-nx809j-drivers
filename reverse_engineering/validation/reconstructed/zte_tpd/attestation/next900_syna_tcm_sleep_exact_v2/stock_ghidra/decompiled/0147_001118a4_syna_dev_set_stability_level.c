
undefined8 syna_dev_set_stability_level(undefined8 *param_1,int param_2,undefined4 param_3)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  _printk(&DAT_0013b5e5,"syna_dev_set_stability_level","syna_dev_set_stability_level");
  if (param_1 == (undefined8 *)0x0) {
    uVar2 = 0xffffffea;
  }
  else {
    puVar1 = &DAT_0013cc2f;
    if (param_2 < 2) {
      if (param_2 == 0) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4,param_3)
        ;
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_0013be93;
      }
      else if (param_2 == 1) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4 | 0x100,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_00137af1;
      }
    }
    else if (param_2 == 2) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4 | 0x200,
                         param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_0013af4b;
    }
    else if (param_2 == 3) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4 | 0x300,
                         param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_0013a56f;
    }
    else {
      puVar1 = &DAT_0013cc2f;
      if (param_2 == 4) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4 | 0x400,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_00135f21;
      }
    }
    _printk(puVar1,"syna_dev_set_stability_level","syna_dev_set_stability_level");
    uVar2 = 0;
  }
  return uVar2;
}

