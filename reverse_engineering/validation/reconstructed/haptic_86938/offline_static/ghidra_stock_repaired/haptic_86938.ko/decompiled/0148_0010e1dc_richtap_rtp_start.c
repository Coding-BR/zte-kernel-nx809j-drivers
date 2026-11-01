
bool richtap_rtp_start(long param_1)

{
  bool bVar1;
  uint uVar2;
  code *pcVar3;
  int iVar4;
  
  mutex_lock(param_1 + 0x2f0);
  pcVar3 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x98);
  if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e224);
    (*pcVar3)();
  }
  (*pcVar3)(param_1,2);
  pcVar3 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x60);
  if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e250);
    (*pcVar3)();
  }
  (*pcVar3)(param_1,1);
  usleep_range_state(2000,2000,2);
  iVar4 = -200;
  while( true ) {
    pcVar3 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x160);
    if (*(int *)(pcVar3 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e28c);
      (*pcVar3)();
    }
    uVar2 = (*pcVar3)(param_1);
    if ((uVar2 & 0xf) == 8) break;
    usleep_range_state(2000,0x9c4,2);
    bVar1 = iVar4 == -1;
    iVar4 = iVar4 + 1;
    if (bVar1) {
      _printk(&DAT_001100df,"haptic_hv",0x509,"richtap_rtp_start");
      pcVar3 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e2f8);
        (*pcVar3)();
      }
      (*pcVar3)(param_1);
LAB_0010e330:
      mutex_unlock(param_1 + 0x2f0);
      return (uVar2 & 0xf) == 8;
    }
  }
  _printk(&DAT_00111481,"haptic_hv",0x4fd,"richtap_rtp_start");
  usleep_range_state(2000,0x9c4,2);
  goto LAB_0010e330;
}

