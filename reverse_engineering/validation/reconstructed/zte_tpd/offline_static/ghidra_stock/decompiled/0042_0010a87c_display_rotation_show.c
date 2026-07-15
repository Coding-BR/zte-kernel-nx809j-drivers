
void display_rotation_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  char local_58 [32];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_58[0x18] = '\0';
  local_58[0x19] = '\0';
  local_58[0x1a] = '\0';
  local_58[0x1b] = '\0';
  local_58[0x1c] = '\0';
  local_58[0x1d] = '\0';
  local_58[8] = '\0';
  local_58[9] = '\0';
  local_58[10] = '\0';
  local_58[0xb] = '\0';
  local_58[0xc] = '\0';
  local_58[0xd] = '\0';
  local_58[0xe] = '\0';
  local_58[0xf] = '\0';
  local_58[0x10] = '\0';
  local_58[0x11] = '\0';
  local_58[0x12] = '\0';
  local_58[0x13] = '\0';
  local_58[0x14] = '\0';
  local_58[0x15] = '\0';
  local_58[0x16] = '\0';
  local_58[0x17] = '\0';
  local_58[0] = '\0';
  local_58[1] = '\0';
  local_58[2] = '\0';
  local_58[3] = '\0';
  local_58[4] = '\0';
  local_58[5] = '\0';
  local_58[6] = '\0';
  local_58[7] = '\0';
  if (*param_4 == 0) {
    _printk(&DAT_0013ae7f,"display_rotation_show",*(undefined4 *)(tpd_cdev + 0x10));
    iVar3 = snprintf(local_58,0x1e,"display rotation: %d\n",(ulong)*(uint *)(lVar2 + 0x10));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_58,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

