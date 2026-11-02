
undefined4 zlog_poll(long param_1,undefined8 *param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  
  if ((*(byte *)(param_1 + 0xc) & 1) == 0) {
    uVar1 = 0;
  }
  else {
    if ((param_2 != (undefined8 *)0x0) && (pcVar2 = (code *)*param_2, pcVar2 != (code *)0x0)) {
      if (*(int *)(pcVar2 + -4) != -0x1a5eeedd) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x100b58);
        (*pcVar2)();
      }
      (*pcVar2)(param_1,&DAT_00100fb0);
      DataMemoryBarrier(2,3);
    }
    mutex_lock(&g_zlog_info);
    uVar1 = 0;
    if ((undefined8 **)DAT_00100f48 != &DAT_00100f48) {
      uVar1 = 0x41;
    }
    mutex_unlock(&g_zlog_info);
  }
  return uVar1;
}

