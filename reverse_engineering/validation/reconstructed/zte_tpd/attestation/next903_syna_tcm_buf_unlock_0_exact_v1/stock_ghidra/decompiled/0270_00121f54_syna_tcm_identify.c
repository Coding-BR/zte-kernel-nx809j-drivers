
int syna_tcm_identify(long param_1,void *param_2,int param_3)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  char cVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_identify");
    iVar3 = -0xf1;
  }
  else {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_3 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_identify");
      }
      else {
        param_3 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x121ff8);
      (*pcVar2)();
    }
    iVar3 = (**(code **)(param_1 + 0x398))(param_1,2,0,0,0,param_3);
    if (iVar3 < 0) {
      _printk(&DAT_0013a7db,"syna_tcm_identify",2);
    }
    else {
      *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
      _printk(&DAT_0013cf5a,"syna_tcm_identify",*(undefined1 *)(param_1 + 0x81),
              *(undefined1 *)(param_1 + 0x80));
      if (param_2 != (void *)0x0) {
        if (*(char *)(param_1 + 0x188) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x158);
        uVar1 = *(uint *)(param_1 + 0x154);
        if (0x2f < uVar1) {
          uVar1 = 0x30;
        }
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(void **)(param_1 + 0x148) != (void *)0x0) {
          if (uVar1 <= *(uint *)(param_1 + 0x150)) {
            memcpy(param_2,*(void **)(param_1 + 0x148),(ulong)uVar1);
            if (*(char *)(param_1 + 0x188) == '\x01') {
              cVar4 = '\0';
            }
            else {
              _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
              cVar4 = *(char *)(param_1 + 0x188) + -1;
            }
            *(char *)(param_1 + 0x188) = cVar4;
            mutex_unlock(param_1 + 0x158);
            return 0;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x30);
        }
        _printk(&DAT_0013ba6a,"syna_tcm_identify");
        syna_tcm_buf_unlock(param_1 + 0x148);
        iVar3 = -0x16;
      }
    }
  }
  return iVar3;
}

