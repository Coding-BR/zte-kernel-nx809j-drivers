
void get_tp_noise_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  code *pcVar4;
  long lVar5;
  char local_68 [32];
  long local_48;
  
  lVar1 = tpd_cdev;
  lVar5 = sp_el0;
  uVar3 = 0;
  local_48 = *(long *)(lVar5 + 0x710);
  local_68[0x18] = '\0';
  local_68[0x19] = '\0';
  local_68[0x1a] = '\0';
  local_68[0x1b] = '\0';
  local_68[0x1c] = '\0';
  local_68[0x1d] = '\0';
  local_68[8] = '\0';
  local_68[9] = '\0';
  local_68[10] = '\0';
  local_68[0xb] = '\0';
  local_68[0xc] = '\0';
  local_68[0xd] = '\0';
  local_68[0xe] = '\0';
  local_68[0xf] = '\0';
  local_68[0x10] = '\0';
  local_68[0x11] = '\0';
  local_68[0x12] = '\0';
  local_68[0x13] = '\0';
  local_68[0x14] = '\0';
  local_68[0x15] = '\0';
  local_68[0x16] = '\0';
  local_68[0x17] = '\0';
  local_68[0] = '\0';
  local_68[1] = '\0';
  local_68[2] = '\0';
  local_68[3] = '\0';
  local_68[4] = '\0';
  local_68[5] = '\0';
  local_68[6] = '\0';
  local_68[7] = '\0';
  if (*param_4 == 0) {
    mutex_lock(tpd_cdev + 0xc60);
    pcVar4 = *(code **)(lVar1 + 0xee8);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x13d76c);
        (*pcVar4)();
      }
      (*pcVar4)(lVar1);
    }
    if (*(undefined8 **)(lVar1 + 0xc58) == (undefined8 *)0x0) {
      lVar5 = 0;
    }
    else {
      iVar2 = snprintf(local_68,0x1e,"%zu\n",**(undefined8 **)(lVar1 + 0xc58));
      lVar5 = (long)iVar2;
      _printk(&DAT_00165704,**(undefined8 **)(lVar1 + 0xc58));
    }
    mutex_unlock(lVar1 + 0xc60);
    uVar3 = simple_read_from_buffer(param_2,param_3,param_4,local_68,lVar5);
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

