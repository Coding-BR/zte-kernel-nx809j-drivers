
void audio_off(long param_1)

{
  code *pcVar1;
  long lVar2;
  long *plVar3;
  long *extraout_x9;
  long *plVar4;
  
  _printk(&DAT_00108bee,"haptic_hv",0x765,"audio_off");
  mutex_lock(param_1 + 0x2f0);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x88);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1084bc);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,0x80);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1084e4);
    (*pcVar1)();
  }
  (*pcVar1)(param_1);
  plVar3 = *(long **)(param_1 + 0x598);
  while (plVar3 != (long *)(param_1 + 0x590)) {
    plVar4 = (long *)plVar3[1];
    if (((long *)*plVar4 == plVar3) && (lVar2 = *plVar3, *(long **)(lVar2 + 8) == plVar3)) {
      *(long **)(lVar2 + 8) = plVar4;
      *plVar4 = lVar2;
    }
    else {
      __list_del_entry_valid_or_report(plVar3);
      plVar3 = extraout_x9;
    }
    *plVar3 = -0x2152ffffffffff00;
    plVar3[1] = -0x2152fffffffffede;
    kfree(plVar3 + -1);
    plVar3 = plVar4;
  }
  mutex_unlock(param_1 + 0x2f0);
  return;
}

