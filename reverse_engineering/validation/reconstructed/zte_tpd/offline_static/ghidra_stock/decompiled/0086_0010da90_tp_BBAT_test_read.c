
void tp_BBAT_test_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  uint uVar2;
  int iVar3;
  undefined8 uVar4;
  ulong uVar5;
  code *pcVar6;
  char local_48 [16];
  long local_38;
  
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
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
    pcVar6 = *(code **)(tpd_cdev + 0xfe8);
    if (pcVar6 == (code *)0x0) {
      uVar5 = (ulong)(*(char *)(tpd_cdev + 0x14) == '\0') << 1;
    }
    else {
      if (*(int *)(pcVar6 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10dafc);
        (*pcVar6)();
      }
      uVar2 = (*pcVar6)();
      if (uVar2 == 0) {
        uVar5 = 0;
      }
      else {
        uVar5 = (ulong)uVar2;
        _printk(&DAT_0013d976);
      }
    }
    iVar3 = snprintf(local_48,10,"%d\n",uVar5);
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

