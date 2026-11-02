
void haptic_init(long param_1)

{
  code *pcVar1;
  
  _printk(&haptic_86938_cb_enter,"haptic_hv",0xfeb,"haptic_init");
  *(undefined8 *)(param_1 + 0x4d8) = 0x534600000001;
  *(long *)(param_1 + 0x590) = param_1 + 0x590;
  *(long *)(param_1 + 0x598) = param_1 + 0x590;
  hrtimer_init(param_1 + 0x520,1,1);
  *(code **)(param_1 + 0x548) = audio_timer_func;
  *(undefined8 *)(param_1 + 0x560) = 0xfffffffe00000;
  *(long *)(param_1 + 0x568) = param_1 + 0x568;
  *(long *)(param_1 + 0x570) = param_1 + 0x568;
  *(code **)(param_1 + 0x578) = audio_work_routine;
  __mutex_init(param_1 + 0x4f0,"&aw_haptic->haptic_audio.lock",&haptic_init___key_249);
  *(long *)(param_1 + 0x580) = param_1 + 0x580;
  *(long *)(param_1 + 0x588) = param_1 + 0x580;
  mutex_lock(param_1 + 0x2f0);
  *(undefined8 *)(param_1 + 0x7c) = 0xff;
  *(undefined1 *)(param_1 + 0x13) = 0;
  *(undefined1 *)(param_1 + 0x1d) = 0;
  *(undefined1 *)(param_1 + 0x1b) = *(undefined1 *)(param_1 + 0x460);
  *(undefined4 *)(param_1 + 0x6e0) = 5;
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x98);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10c5c8);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,0);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x80);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10c5f4);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,1);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x100);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10c61c);
    (*pcVar1)();
  }
  (*pcVar1)(param_1);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x70);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10c644);
    (*pcVar1)();
  }
  (*pcVar1)(param_1);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xa0);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10c670);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,*(undefined4 *)(param_1 + 0x30));
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xd8);
  if (*(int *)(pcVar1 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10c6a0);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,1,0);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xb0);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10c6cc);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,0);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x50);
  if (*(int *)(pcVar1 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10c6f4);
    (*pcVar1)();
  }
  (*pcVar1)(param_1);
  pcVar1 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xb8);
  if (*(int *)(pcVar1 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x10c720);
    (*pcVar1)();
  }
  (*pcVar1)(param_1,1);
  *(undefined1 *)(param_1 + 0x1c) = 0;
  mutex_unlock(param_1 + 0x2f0);
  return;
}

