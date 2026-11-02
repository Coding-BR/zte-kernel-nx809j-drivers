
void goodix_fb_state_chg_callback(int param_1,int *param_2,long param_3)

{
  long lVar1;
  undefined *puVar2;
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = 0;
  if ((param_2 == (int *)0x0) || (param_3 == 0)) {
    puVar2 = &DAT_00103d48;
  }
  else {
    if (*(char *)(param_3 + 0x70) != '\0') {
      _printk(&DAT_00102fd1,"goodix_fb_state_chg_callback");
      if (param_1 != 1) goto LAB_00101614;
      if (*param_2 == 1) {
        _printk(&DAT_00103985,"goodix_fb_state_chg_callback");
        *(undefined1 *)(param_3 + 0x71) = 1;
        _printk(&DAT_00103497,"goodix_fb_state_chg_callback");
        local_3c[0] = 2;
      }
      else {
        if (*param_2 != 2) {
          puVar2 = &DAT_00103bf8;
          goto LAB_001015d8;
        }
        _printk(&DAT_00102e40,"goodix_fb_state_chg_callback");
        *(undefined1 *)(param_3 + 0x71) = 0;
        _printk(&DAT_00102eb9,"goodix_fb_state_chg_callback");
        local_3c[0] = 3;
      }
      sendnlmsg(local_3c);
      goto LAB_00101614;
    }
    puVar2 = &DAT_00103072;
  }
LAB_001015d8:
  _printk(puVar2,"goodix_fb_state_chg_callback");
LAB_00101614:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

