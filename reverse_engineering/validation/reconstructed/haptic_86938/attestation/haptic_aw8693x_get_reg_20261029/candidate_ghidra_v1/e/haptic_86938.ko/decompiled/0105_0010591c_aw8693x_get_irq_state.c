
void aw8693x_get_irq_state(long param_1)

{
  long lVar1;
  undefined4 uVar2;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0x5b;
  }
  i2c_r_bytes(param_1,2,local_2c,1);
  if (*(char *)(param_1 + 0x11) == '\x01') {
    *(undefined2 *)(*(long *)(param_1 + 0x328) + 2) = 0;
  }
  if ((char)local_2c[0] < '\0') {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_00107642,"haptic_hv",0x46b,"aw8693x_get_irq_state");
    uVar2 = 3;
  }
  else {
    uVar2 = 0xffffffff;
  }
  if ((local_2c[0] >> 6 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_00107577,"haptic_hv",0x471,"aw8693x_get_irq_state");
    uVar2 = 4;
  }
  if ((local_2c[0] >> 5 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_001077c2,"haptic_hv",0x477,"aw8693x_get_irq_state");
    uVar2 = 5;
  }
  if ((local_2c[0] >> 2 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_001076e0,"haptic_hv",0x47d,"aw8693x_get_irq_state");
    uVar2 = 6;
  }
  if ((local_2c[0] >> 1 & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_0010759a,"haptic_hv",0x483,"aw8693x_get_irq_state");
    uVar2 = 7;
  }
  if ((local_2c[0] & 1) != 0) {
    *(undefined1 *)(param_1 + 0x1d) = 0;
    _printk(&DAT_00107066,"haptic_hv",0x489,"aw8693x_get_irq_state");
    uVar2 = 10;
  }
  if ((local_2c[0] >> 3 & 1) != 0) {
    _printk(&DAT_001071d1,"haptic_hv",0x48e,"aw8693x_get_irq_state");
    uVar2 = 2;
  }
  lVar1 = sp_el0;
  if ((local_2c[0] & 0x10) != 0) {
    uVar2 = 0;
  }
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

