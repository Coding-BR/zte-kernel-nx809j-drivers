
void tp_edge_report_limit_write(undefined8 param_1,long param_2,ulong param_3)

{
  undefined1 uVar1;
  ushort uVar2;
  long lVar3;
  bool bVar4;
  int iVar5;
  long lVar6;
  char *pcVar7;
  ulong uVar8;
  uint uVar9;
  ulong uVar10;
  undefined8 local_c0;
  char *local_b8;
  char local_b0 [104];
  long local_48;
  
  lVar3 = tpd_cdev;
  lVar6 = sp_el0;
  local_48 = *(long *)(lVar6 + 0x710);
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
    lVar6 = _inline_copy_from_user(local_b0,param_2,param_3);
    if (lVar6 != 0) {
      _printk(&DAT_001344ed);
      uVar8 = 0xffffffffffffffea;
      goto LAB_0010b86c;
    }
  }
  iVar5 = get_tp_algo_item_id(local_b0);
  uVar8 = param_3;
  if (iVar5 < 0) {
    iVar5 = kstrtouint_from_user(param_2,param_3,10,&local_c0);
    uVar8 = 0xffffffffffffffea;
    if (iVar5 == 0) {
      if ((uint)local_c0 < 0xb) {
        uVar2 = *(ushort *)(lVar3 + 0x442);
        *(char *)(lVar3 + 0x38) = (char)local_c0;
        if ((uint)local_c0 < 6) {
          uVar9 = ((uint)local_c0 * uVar2 * 7) / 1000;
        }
        else {
          uVar9 = ((uint)uVar2 * 0x23) / 1000 + ((uint)local_c0 + 0xfffb) * ((uVar2 >> 1) / 0x7d);
        }
        *(short *)(lVar3 + 0x2c) = (short)uVar9;
        *(undefined2 *)(lVar3 + 0x2e) = 0;
        _printk(&DAT_001331b8,local_c0 & 0xffffffff,uVar9 & 0xffff,0);
        uVar8 = param_3;
      }
    }
    goto LAB_0010b86c;
  }
  pcVar7 = strchr(local_b0,0x3a);
  pcVar7 = pcVar7 + 1;
  local_b8 = pcVar7;
  _printk(&DAT_00132047,pcVar7);
  if (iVar5 < 3) {
    if (iVar5 == 0) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        bVar4 = local_c0._4_4_ != 0;
        local_c0 = (ulong)CONCAT14(bVar4,(uint)local_c0);
        *(bool *)(lVar3 + 0x1b) = bVar4;
        _printk(&DAT_001380ba);
      }
      goto LAB_0010b86c;
    }
    if (iVar5 == 1) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        *(char *)(lVar3 + 0x24) = (char)(local_c0 >> 0x20);
        _printk(&DAT_0013aa4c,local_c0._4_4_ & 0xff);
      }
      goto LAB_0010b86c;
    }
    if (iVar5 == 2) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        *(short *)(lVar3 + 0x3e) = (short)(local_c0 >> 0x20);
        _printk(&DAT_00133d9d,local_c0._4_4_ & 0xffff);
      }
      goto LAB_0010b86c;
    }
  }
  else if (iVar5 < 5) {
    if (iVar5 == 3) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        *(char *)(lVar3 + 0x26) = (char)(local_c0 >> 0x20);
        _printk(&DAT_00139996,local_c0._4_4_ & 0xff);
        uVar1 = *(undefined1 *)(lVar3 + 0x26);
        *(undefined1 *)(lVar3 + 0x27) = uVar1;
        *(undefined1 *)(lVar3 + 0x28) = uVar1;
        *(undefined1 *)(lVar3 + 0x29) = uVar1;
        *(undefined1 *)(lVar3 + 0x2a) = uVar1;
      }
      goto LAB_0010b86c;
    }
    if (iVar5 == 4) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        bVar4 = local_c0._4_4_ != 0;
        local_c0 = (ulong)CONCAT14(bVar4,(uint)local_c0);
        *(bool *)(lVar3 + 0x25) = bVar4;
        _printk(&DAT_00138d08);
      }
      goto LAB_0010b86c;
    }
  }
  else {
    if (iVar5 == 5) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        *(short *)(lVar3 + 0x3c) = (short)(local_c0 >> 0x20);
        _printk(&DAT_001380ba,local_c0._4_4_ & 0xffff);
      }
      goto LAB_0010b86c;
    }
    if (iVar5 == 6) {
      uVar10 = 0;
      do {
        pcVar7 = strsep(&local_b8,",");
        if (pcVar7 == (char *)0x0) break;
        iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
        if (iVar5 == 0) {
          *(char *)(lVar3 + 0x34 + uVar10) = (char)(local_c0 >> 0x20);
          _printk(&DAT_0013d903,(uint)uVar10 & 0xffff,local_c0._4_4_ & 0xff);
          uVar10 = uVar10 + 1;
        }
      } while (uVar10 < 4);
      goto LAB_0010b86c;
    }
  }
  _printk(&DAT_0013c493);
LAB_0010b86c:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}

