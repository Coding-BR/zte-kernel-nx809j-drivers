
void tp_BBAT_test_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  code *pcVar4;
  char local_48 [16];
  long local_38;
  
  lVar3 = sp_el0;
  uVar2 = 0;
  local_38 = *(long *)(lVar3 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar4 = *(code **)(tpd_cdev + 0xfe8);
    if (pcVar4 == (code *)0x0) {
      lVar3 = (ulong)(*(char *)(tpd_cdev + 0x14) == '\0') << 1;
    }
    else {
      if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x14bfe0);
        (*pcVar4)();
      }
      iVar1 = (*pcVar4)();
      if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00172684);
      }
      lVar3 = 0;
    }
    iVar1 = snprintf(local_48,10,"%d\n",lVar3);
    uVar2 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar1);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

