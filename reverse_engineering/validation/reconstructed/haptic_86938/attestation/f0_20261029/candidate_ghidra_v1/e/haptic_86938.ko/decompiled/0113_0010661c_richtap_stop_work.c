
void richtap_stop_work(long param_1)

{
  code *pcVar1;
  long lVar2;
  
  lVar2 = param_1 + -0x668;
  mutex_lock(param_1 + -0x378);
  pcVar1 = *(code **)(*(long *)(param_1 + -0xa0) + 0xf0);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x106668);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2);
  pcVar1 = *(code **)(*(long *)(param_1 + -0xa0) + 0x38);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x106690);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2);
  mutex_unlock(param_1 + -0x378);
  pcVar1 = *(code **)(*(long *)(param_1 + -0xa0) + 0x110);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1066c4);
    (*pcVar1)();
  }
  (*pcVar1)(lVar2,0);
  *(undefined4 *)(param_1 + 0x54) = 0;
  return;
}

