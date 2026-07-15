
void syna_tcm_v1_terminate(long param_1)

{
  ulong uVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_v1_terminate");
  }
  else if (*(int *)(param_1 + 0x1f8) == 1) {
    _printk(&DAT_0013c0f6,"syna_tcm_v1_terminate",*(undefined1 *)(param_1 + 0x1fc));
    *(undefined4 *)(param_1 + 0x1f8) = 2;
    uVar1 = completion_done(param_1 + 0x220);
    if ((uVar1 & 1) == 0) {
      complete(param_1 + 0x220);
    }
  }
  return;
}

