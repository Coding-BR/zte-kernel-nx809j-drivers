
undefined8 syna_dev_set_sensibility_level(undefined8 *param_1,int param_2,undefined4 param_3)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  _printk(&DAT_0013b5e5,"syna_dev_set_sensibility_level","syna_dev_set_sensibility_level");
  if (param_1 == (undefined8 *)0x0) {
    uVar2 = 0xffffffea;
  }
  else {
    puVar1 = &DAT_0013cc2f;
    if (param_2 < 2) {
      if (param_2 == 0) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_00134552;
      }
      else if (param_2 == 1) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8 | 1,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_00138d6a;
      }
    }
    else if (param_2 == 2) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8 | 2,
                         param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_001337f8;
    }
    else if (param_2 == 3) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8 | 3,
                         param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_00133828;
    }
    else {
      puVar1 = &DAT_0013cc2f;
      if (param_2 == 4) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8 | 4,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_001364a5;
      }
    }
    _printk(puVar1,"syna_dev_set_sensibility_level","syna_dev_set_sensibility_level");
    uVar2 = 0;
  }
  return uVar2;
}

