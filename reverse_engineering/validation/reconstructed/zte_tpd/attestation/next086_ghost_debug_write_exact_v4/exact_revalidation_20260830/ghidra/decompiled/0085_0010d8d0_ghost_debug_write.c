
ulong ghost_debug_write(undefined8 param_1,long param_2,ulong param_3)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  char *pcVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  undefined1 uVar10;
  undefined1 uVar11;
  undefined1 uVar12;
  undefined1 uVar13;
  undefined1 uVar14;
  undefined4 local_e4;
  char *local_e0;
  undefined8 local_d8;
  undefined8 local_d0;
  undefined8 local_c8;
  undefined8 local_c0;
  undefined8 uStack_b8;
  char local_b0 [104];
  long local_48;
  
  lVar1 = tpd_cdev;
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
  local_e4 = 0;
  local_c0 = 0;
  uStack_b8 = 0;
  local_d0 = 0;
  local_c8 = 0;
  local_d8 = 0;
  if (param_2 != 0) {
    __check_object_size(local_b0,param_3,0);
    lVar4 = _inline_copy_from_user(local_b0,param_2,param_3);
    if (lVar4 != 0) {
      _printk(&DAT_00132617);
      param_3 = 0xffffffffffffffea;
      goto LAB_0010da3c;
    }
  }
  local_e0 = local_b0;
  pcVar5 = strsep(&local_e0,",");
  if (pcVar5 == (char *)0x0) {
    uVar6 = 0;
    uVar7 = 0;
    uVar8 = 0;
    uVar9 = 0;
    uVar10 = 0;
    uVar11 = 0;
    uVar12 = 0;
    uVar13 = 0;
    uVar14 = 0;
  }
  else {
    uVar6 = 0;
    do {
      iVar3 = kstrtouint(pcVar5,10,&local_e4);
      if (iVar3 == 0) {
        if (0x13 < uVar6) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(1,0x10da88);
          (*pcVar2)();
        }
        *(short *)((long)&local_d8 + (ulong)uVar6 * 2) = (short)local_e4;
        uVar6 = uVar6 + 1;
      }
      pcVar5 = strsep(&local_e0,",");
    } while ((pcVar5 != (char *)0x0) && (uVar6 < 10));
    uVar9 = (uint)local_d0._2_2_;
    uVar8 = (uint)local_d0._4_2_;
    uVar7 = (uint)local_d0._6_2_;
    uVar6 = (uint)(ushort)local_c8;
    uVar10 = (undefined1)local_d0;
    uVar11 = local_d8._6_1_;
    uVar12 = local_d8._4_1_;
    uVar13 = local_d8._2_1_;
    uVar14 = (undefined1)local_d8;
  }
  *(undefined1 *)(lVar1 + 0x491) = uVar14;
  *(undefined1 *)(lVar1 + 0x492) = uVar13;
  *(undefined1 *)(lVar1 + 0x493) = uVar12;
  *(undefined1 *)(lVar1 + 0x494) = uVar11;
  *(undefined1 *)(lVar1 + 0x495) = uVar10;
  *(uint *)(lVar1 + 0x498) = uVar9;
  *(uint *)(lVar1 + 0x49c) = uVar8;
  *(uint *)(lVar1 + 0x4a0) = uVar7;
  *(uint *)(lVar1 + 0x4a4) = uVar6;
LAB_0010da3c:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

