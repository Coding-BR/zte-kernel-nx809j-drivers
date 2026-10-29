
void get_ram_num(long param_1)

{
  long lVar1;
  code *pcVar2;
  ushort local_3c [2];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = 0;
  if ((*(byte *)(param_1 + 6) & 1) == 0) {
    _printk(&DAT_00104b8d,"haptic_hv",0x268,"get_ram_num");
  }
  else {
    mutex_lock(param_1 + 0x2f0);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x38);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x103bd0);
      (*pcVar2)();
    }
    (*pcVar2)(param_1);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x68);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x103bfc);
      (*pcVar2)();
    }
    (*pcVar2)(param_1,1);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xf8);
    if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x103c24);
      (*pcVar2)();
    }
    (*pcVar2)(param_1);
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x130);
    if (*(int *)(pcVar2 + -4) != 0x13c2d68c) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x103c50);
      (*pcVar2)();
    }
    (*pcVar2)(param_1,local_3c);
    *(char *)(param_1 + 0x45c) =
         (char)(((uint)(local_3c[0] >> 8) | (local_3c[0] & 0xff00ff) << 8) +
                ~*(uint *)(param_1 + 0x458) >> 2);
    _printk(&DAT_00104de2,"haptic_hv",0x277,"get_ram_num");
    _printk(&DAT_00104c2c,"haptic_hv",0x278,"get_ram_num",*(undefined1 *)(param_1 + 0x45c));
    pcVar2 = *(code **)(*(long *)(param_1 + 0x5c8) + 0x68);
    if (*(int *)(pcVar2 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x103cdc);
      (*pcVar2)();
    }
    (*pcVar2)(param_1,0);
    mutex_unlock(param_1 + 0x2f0);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

