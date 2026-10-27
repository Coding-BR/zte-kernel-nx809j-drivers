
void reg_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  ulong uVar5;
  uint uVar6;
  ushort local_580 [2];
  char acStack_57c [1300];
  long local_68;
  
  uVar4 = g_aw86320;
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  local_580[0] = 0;
  memset(acStack_57c,0,0x514);
  if (*param_4 == 0) {
    uVar6 = 0;
    uVar5 = 0;
    do {
      haptic_i2c_read(uVar4,uVar6,local_580);
      if (0x514 < uVar5) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x102650);
        (*pcVar2)();
      }
      iVar3 = snprintf(acStack_57c + uVar5,0x1000 - uVar5,"reg:0x%02x=0x%04x\n",(ulong)uVar6,
                       (ulong)local_580[0]);
      uVar6 = uVar6 + 1;
      uVar5 = uVar5 + (long)iVar3;
    } while (uVar6 != 0x39);
    _printk(&DAT_00104337,"aw86320",0x3a2,"reg_show",acStack_57c);
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,acStack_57c,uVar5);
  }
  else {
    uVar4 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

