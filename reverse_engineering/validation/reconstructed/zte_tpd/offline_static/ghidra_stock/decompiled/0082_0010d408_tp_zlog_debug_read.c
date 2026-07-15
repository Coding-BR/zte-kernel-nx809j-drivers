
void tp_zlog_debug_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  undefined8 uVar2;
  char local_50 [56];
  long local_18;
  
  lVar1 = sp_el0;
  uVar2 = 0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_50[0x2c] = '\0';
  local_50[0x2d] = '\0';
  local_50[0x2e] = '\0';
  local_50[0x2f] = '\0';
  local_50[0x30] = '\0';
  local_50[0x31] = '\0';
  local_50[0x24] = '\0';
  local_50[0x25] = '\0';
  local_50[0x26] = '\0';
  local_50[0x27] = '\0';
  local_50[0x28] = '\0';
  local_50[0x29] = '\0';
  local_50[0x2a] = '\0';
  local_50[0x2b] = '\0';
  local_50[0x1c] = '\0';
  local_50[0x1d] = '\0';
  local_50[0x1e] = '\0';
  local_50[0x1f] = '\0';
  local_50[0x20] = '\0';
  local_50[0x21] = '\0';
  local_50[0x22] = '\0';
  local_50[0x23] = '\0';
  local_50[0x14] = '\0';
  local_50[0x15] = '\0';
  local_50[0x16] = '\0';
  local_50[0x17] = '\0';
  local_50[0x18] = '\0';
  local_50[0x19] = '\0';
  local_50[0x1a] = '\0';
  local_50[0x1b] = '\0';
  local_50[0xc] = '\0';
  local_50[0xd] = '\0';
  local_50[0xe] = '\0';
  local_50[0xf] = '\0';
  local_50[0x10] = '\0';
  local_50[0x11] = '\0';
  local_50[0x12] = '\0';
  local_50[0x13] = '\0';
  if (*param_4 == 0) {
    builtin_strncpy(local_50 + 8,"use",4);
    builtin_strncpy(local_50,"this no ",8);
    uVar2 = simple_read_from_buffer(param_2,param_3,param_4,local_50,0xb);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

