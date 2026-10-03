
void tp_edge_report_limit_write(undefined8 param_1,long param_2,ulong param_3)

{
  ushort uVar1;
  long lVar2;
  int iVar3;
  long lVar4;
  uint uVar5;
  ulong local_c0;
  char *local_b8;
  char local_b0 [104];
  long local_48;
  
  lVar2 = tpd_cdev;
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  local_b0[0x60] = '\0';
  local_b0[0x61] = '\0';
  local_b0[0x62] = '\0';
  local_b0[99] = '\0';
  if (99 < param_3) {
    param_3 = 100;
  }
  local_b0[0x50] = '\0';
  local_b0[0x51] = '\0';
  local_b0[0x52] = '\0';
  local_b0[0x53] = '\0';
  local_b0[0x54] = '\0';
  local_b0[0x55] = '\0';
  local_b0[0x56] = '\0';
  local_b0[0x57] = '\0';
  local_b0[0x58] = '\0';
  local_b0[0x59] = '\0';
  local_b0[0x5a] = '\0';
  local_b0[0x5b] = '\0';
  local_b0[0x5c] = '\0';
  local_b0[0x5d] = '\0';
  local_b0[0x5e] = '\0';
  local_b0[0x5f] = '\0';
  local_b0[0x40] = '\0';
  local_b0[0x41] = '\0';
  local_b0[0x42] = '\0';
  local_b0[0x43] = '\0';
  local_b0[0x44] = '\0';
  local_b0[0x45] = '\0';
  local_b0[0x46] = '\0';
  local_b0[0x47] = '\0';
  local_b0[0x48] = '\0';
  local_b0[0x49] = '\0';
  local_b0[0x4a] = '\0';
  local_b0[0x4b] = '\0';
  local_b0[0x4c] = '\0';
  local_b0[0x4d] = '\0';
  local_b0[0x4e] = '\0';
  local_b0[0x4f] = '\0';
  local_b0[0x30] = '\0';
  local_b0[0x31] = '\0';
  local_b0[0x32] = '\0';
  local_b0[0x33] = '\0';
  local_b0[0x34] = '\0';
  local_b0[0x35] = '\0';
  local_b0[0x36] = '\0';
  local_b0[0x37] = '\0';
  local_b0[0x38] = '\0';
  local_b0[0x39] = '\0';
  local_b0[0x3a] = '\0';
  local_b0[0x3b] = '\0';
  local_b0[0x3c] = '\0';
  local_b0[0x3d] = '\0';
  local_b0[0x3e] = '\0';
  local_b0[0x3f] = '\0';
  local_b0[0x20] = '\0';
  local_b0[0x21] = '\0';
  local_b0[0x22] = '\0';
  local_b0[0x23] = '\0';
  local_b0[0x24] = '\0';
  local_b0[0x25] = '\0';
  local_b0[0x26] = '\0';
  local_b0[0x27] = '\0';
  local_b0[0x28] = '\0';
  local_b0[0x29] = '\0';
  local_b0[0x2a] = '\0';
  local_b0[0x2b] = '\0';
  local_b0[0x2c] = '\0';
  local_b0[0x2d] = '\0';
  local_b0[0x2e] = '\0';
  local_b0[0x2f] = '\0';
  local_b0[0x10] = '\0';
  local_b0[0x11] = '\0';
  local_b0[0x12] = '\0';
  local_b0[0x13] = '\0';
  local_b0[0x14] = '\0';
  local_b0[0x15] = '\0';
  local_b0[0x16] = '\0';
  local_b0[0x17] = '\0';
  local_b0[0x18] = '\0';
  local_b0[0x19] = '\0';
  local_b0[0x1a] = '\0';
  local_b0[0x1b] = '\0';
  local_b0[0x1c] = '\0';
  local_b0[0x1d] = '\0';
  local_b0[0x1e] = '\0';
  local_b0[0x1f] = '\0';
  local_b0[0] = '\0';
  local_b0[1] = '\0';
  local_b0[2] = '\0';
  local_b0[3] = '\0';
  local_b0[4] = '\0';
  local_b0[5] = '\0';
  local_b0[6] = '\0';
  local_b0[7] = '\0';
  local_b0[8] = '\0';
  local_b0[9] = '\0';
  local_b0[10] = '\0';
  local_b0[0xb] = '\0';
  local_b0[0xc] = '\0';
  local_b0[0xd] = '\0';
  local_b0[0xe] = '\0';
  local_b0[0xf] = '\0';
  local_c0 = 0;
  if (param_2 != 0) {
    __check_object_size(local_b0,param_3,0);
    lVar4 = _inline_copy_from_user(local_b0,param_2,param_3);
    if (lVar4 != 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017ee66);
    }
  }
  iVar3 = get_tp_algo_item_id(local_b0);
  if (-1 < iVar3) {
    local_b8 = strchr(local_b0,0x3a);
    local_b8 = local_b8 + 1;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017de9b,local_b8);
  }
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_c0);
  if (iVar3 == 0) {
    if ((uint)local_c0 < 0xb) {
      uVar1 = *(ushort *)(lVar2 + 0x442);
      *(char *)(lVar2 + 0x38) = (char)local_c0;
      if ((uint)local_c0 < 6) {
        uVar5 = ((uint)local_c0 * uVar1 * 7) / 1000;
      }
      else {
        uVar5 = ((uint)uVar1 * 0x23) / 1000 + ((uint)local_c0 + 0xfffb) * ((uVar1 >> 1) / 0x7d);
      }
      *(short *)(lVar2 + 0x2c) = (short)uVar5;
      *(undefined2 *)(lVar2 + 0x2e) = 0;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e653,local_c0 & 0xffffffff,uVar5 & 0xffff,0);
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0xffffffffffffffea);
}

