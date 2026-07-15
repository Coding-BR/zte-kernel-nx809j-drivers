
undefined8 entry_panic(undefined8 param_1,undefined8 *param_2)

{
  bool bVar1;
  byte bVar2;
  byte bVar7;
  long lVar8;
  bool bVar9;
  byte bVar10;
  byte bVar11;
  byte bVar12;
  byte bVar13;
  byte bVar14;
  int iVar15;
  code *pcVar16;
  int iVar17;
  size_t sVar18;
  void *pvVar19;
  undefined *puVar20;
  uint uVar21;
  char *__s1;
  char *__s;
  int iVar22;
  ulong uVar23;
  byte local_170 [256];
  long local_70;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  
  lVar8 = sp_el0;
  local_70 = *(long *)(lVar8 + 0x710);
  __s = (char *)*param_2;
  local_170[0xf0] = 0;
  local_170[0xf1] = 0;
  local_170[0xf2] = 0;
  local_170[0xf3] = 0;
  local_170[0xf4] = 0;
  local_170[0xf5] = 0;
  local_170[0xf6] = 0;
  local_170[0xf7] = 0;
  local_170[0xf8] = 0;
  local_170[0xf9] = 0;
  local_170[0xfa] = 0;
  local_170[0xfb] = 0;
  local_170[0xfc] = 0;
  local_170[0xfd] = 0;
  local_170[0xfe] = 0;
  local_170[0xff] = 0;
  local_170[0xe0] = 0;
  local_170[0xe1] = 0;
  local_170[0xe2] = 0;
  local_170[0xe3] = 0;
  local_170[0xe4] = 0;
  local_170[0xe5] = 0;
  local_170[0xe6] = 0;
  local_170[0xe7] = 0;
  local_170[0xe8] = 0;
  local_170[0xe9] = 0;
  local_170[0xea] = 0;
  local_170[0xeb] = 0;
  local_170[0xec] = 0;
  local_170[0xed] = 0;
  local_170[0xee] = 0;
  local_170[0xef] = 0;
  uVar21 = once_entry_panic_count + 1;
  local_170[0xd0] = 0;
  local_170[0xd1] = 0;
  local_170[0xd2] = 0;
  local_170[0xd3] = 0;
  local_170[0xd4] = 0;
  local_170[0xd5] = 0;
  local_170[0xd6] = 0;
  local_170[0xd7] = 0;
  local_170[0xd8] = 0;
  local_170[0xd9] = 0;
  local_170[0xda] = 0;
  local_170[0xdb] = 0;
  local_170[0xdc] = 0;
  local_170[0xdd] = 0;
  local_170[0xde] = 0;
  local_170[0xdf] = 0;
  local_170[0xc0] = 0;
  local_170[0xc1] = 0;
  local_170[0xc2] = 0;
  local_170[0xc3] = 0;
  local_170[0xc4] = 0;
  local_170[0xc5] = 0;
  local_170[0xc6] = 0;
  local_170[199] = 0;
  local_170[200] = 0;
  local_170[0xc9] = 0;
  local_170[0xca] = 0;
  local_170[0xcb] = 0;
  local_170[0xcc] = 0;
  local_170[0xcd] = 0;
  local_170[0xce] = 0;
  local_170[0xcf] = 0;
  local_170[0xb0] = 0;
  local_170[0xb1] = 0;
  local_170[0xb2] = 0;
  local_170[0xb3] = 0;
  local_170[0xb4] = 0;
  local_170[0xb5] = 0;
  local_170[0xb6] = 0;
  local_170[0xb7] = 0;
  local_170[0xb8] = 0;
  local_170[0xb9] = 0;
  local_170[0xba] = 0;
  local_170[0xbb] = 0;
  local_170[0xbc] = 0;
  local_170[0xbd] = 0;
  local_170[0xbe] = 0;
  local_170[0xbf] = 0;
  local_170[0xa0] = 0;
  local_170[0xa1] = 0;
  local_170[0xa2] = 0;
  local_170[0xa3] = 0;
  local_170[0xa4] = 0;
  local_170[0xa5] = 0;
  local_170[0xa6] = 0;
  local_170[0xa7] = 0;
  local_170[0xa8] = 0;
  local_170[0xa9] = 0;
  local_170[0xaa] = 0;
  local_170[0xab] = 0;
  local_170[0xac] = 0;
  local_170[0xad] = 0;
  local_170[0xae] = 0;
  local_170[0xaf] = 0;
  local_170[0x90] = 0;
  local_170[0x91] = 0;
  local_170[0x92] = 0;
  local_170[0x93] = 0;
  local_170[0x94] = 0;
  local_170[0x95] = 0;
  local_170[0x96] = 0;
  local_170[0x97] = 0;
  local_170[0x98] = 0;
  local_170[0x99] = 0;
  local_170[0x9a] = 0;
  local_170[0x9b] = 0;
  local_170[0x9c] = 0;
  local_170[0x9d] = 0;
  local_170[0x9e] = 0;
  local_170[0x9f] = 0;
  local_170[0x80] = 0;
  local_170[0x81] = 0;
  local_170[0x82] = 0;
  local_170[0x83] = 0;
  local_170[0x84] = 0;
  local_170[0x85] = 0;
  local_170[0x86] = 0;
  local_170[0x87] = 0;
  local_170[0x88] = 0;
  local_170[0x89] = 0;
  local_170[0x8a] = 0;
  local_170[0x8b] = 0;
  local_170[0x8c] = 0;
  local_170[0x8d] = 0;
  local_170[0x8e] = 0;
  local_170[0x8f] = 0;
  local_170[0x70] = 0;
  local_170[0x71] = 0;
  local_170[0x72] = 0;
  local_170[0x73] = 0;
  local_170[0x74] = 0;
  local_170[0x75] = 0;
  local_170[0x76] = 0;
  local_170[0x77] = 0;
  local_170[0x78] = 0;
  local_170[0x79] = 0;
  local_170[0x7a] = 0;
  local_170[0x7b] = 0;
  local_170[0x7c] = 0;
  local_170[0x7d] = 0;
  local_170[0x7e] = 0;
  local_170[0x7f] = 0;
  local_170[0x60] = 0;
  local_170[0x61] = 0;
  local_170[0x62] = 0;
  local_170[99] = 0;
  local_170[100] = 0;
  local_170[0x65] = 0;
  local_170[0x66] = 0;
  local_170[0x67] = 0;
  local_170[0x68] = 0;
  local_170[0x69] = 0;
  local_170[0x6a] = 0;
  local_170[0x6b] = 0;
  local_170[0x6c] = 0;
  local_170[0x6d] = 0;
  local_170[0x6e] = 0;
  local_170[0x6f] = 0;
  local_170[0x50] = 0;
  local_170[0x51] = 0;
  local_170[0x52] = 0;
  local_170[0x53] = 0;
  local_170[0x54] = 0;
  local_170[0x55] = 0;
  local_170[0x56] = 0;
  local_170[0x57] = 0;
  local_170[0x58] = 0;
  local_170[0x59] = 0;
  local_170[0x5a] = 0;
  local_170[0x5b] = 0;
  local_170[0x5c] = 0;
  local_170[0x5d] = 0;
  local_170[0x5e] = 0;
  local_170[0x5f] = 0;
  local_170[0x40] = 0;
  local_170[0x41] = 0;
  local_170[0x42] = 0;
  local_170[0x43] = 0;
  local_170[0x44] = 0;
  local_170[0x45] = 0;
  local_170[0x46] = 0;
  local_170[0x47] = 0;
  local_170[0x48] = 0;
  local_170[0x49] = 0;
  local_170[0x4a] = 0;
  local_170[0x4b] = 0;
  local_170[0x4c] = 0;
  local_170[0x4d] = 0;
  local_170[0x4e] = 0;
  local_170[0x4f] = 0;
  local_170[0x30] = 0;
  local_170[0x31] = 0;
  local_170[0x32] = 0;
  local_170[0x33] = 0;
  local_170[0x34] = 0;
  local_170[0x35] = 0;
  local_170[0x36] = 0;
  local_170[0x37] = 0;
  local_170[0x38] = 0;
  local_170[0x39] = 0;
  local_170[0x3a] = 0;
  local_170[0x3b] = 0;
  local_170[0x3c] = 0;
  local_170[0x3d] = 0;
  local_170[0x3e] = 0;
  local_170[0x3f] = 0;
  local_170[0x20] = 0;
  local_170[0x21] = 0;
  local_170[0x22] = 0;
  local_170[0x23] = 0;
  local_170[0x24] = 0;
  local_170[0x25] = 0;
  local_170[0x26] = 0;
  local_170[0x27] = 0;
  local_170[0x28] = 0;
  local_170[0x29] = 0;
  local_170[0x2a] = 0;
  local_170[0x2b] = 0;
  local_170[0x2c] = 0;
  local_170[0x2d] = 0;
  local_170[0x2e] = 0;
  local_170[0x2f] = 0;
  local_170[0x10] = 0;
  local_170[0x11] = 0;
  local_170[0x12] = 0;
  local_170[0x13] = 0;
  local_170[0x14] = 0;
  local_170[0x15] = 0;
  local_170[0x16] = 0;
  local_170[0x17] = 0;
  local_170[0x18] = 0;
  local_170[0x19] = 0;
  local_170[0x1a] = 0;
  local_170[0x1b] = 0;
  local_170[0x1c] = 0;
  local_170[0x1d] = 0;
  local_170[0x1e] = 0;
  local_170[0x1f] = 0;
  local_170[0] = 0;
  local_170[1] = 0;
  local_170[2] = 0;
  local_170[3] = 0;
  local_170[4] = 0;
  local_170[5] = 0;
  local_170[6] = 0;
  local_170[7] = 0;
  local_170[8] = 0;
  local_170[9] = 0;
  local_170[10] = 0;
  local_170[0xb] = 0;
  local_170[0xc] = 0;
  local_170[0xd] = 0;
  local_170[0xe] = 0;
  local_170[0xf] = 0;
  if (once_entry_panic_count == 0) {
    once_entry_panic_count = uVar21;
    if (__s != (char *)0x0) {
      sVar18 = strlen(__s);
      if (sVar18 + 0x15 < 0x101) {
        snprintf((char *)local_170,0x100,"%s%s","ztedbg panic_hook:",__s);
        bVar9 = false;
        iVar22 = 0;
        iVar17 = -1;
        uVar21 = 0xffffffff;
        uVar23 = 0;
        do {
          bVar7 = local_170[uVar23];
          iVar15 = iVar22;
          if (bVar7 == 0x25) {
            bVar9 = (bool)(bVar9 ^ 1);
          }
          else {
            if (bVar7 == 0) {
LAB_001009cc:
              if (uVar21 - 1 < 7) {
                __s1 = (char *)param_2[uVar21];
                if (__s1 == (char *)0x0) {
                  _printk(&DAT_001018d3,uVar21);
                  goto LAB_001009f0;
                }
                _printk(&DAT_00101793,__s1);
                iVar17 = strcmp(__s1,"panicinpanic");
                if (iVar17 == 0) {
                    /* WARNING: Subroutine does not return */
                  panic("panicinpanic %d",once_entry_panic_count);
                }
              }
              else {
LAB_001009f0:
                __s1 = (char *)0x0;
              }
              if (iVar22 < 2) {
                if (iVar22 == 0) {
                  _printk(local_170);
                  goto LAB_00100918;
                }
                if (iVar22 == 1) {
                  _printk(local_170,param_2[1]);
                  goto LAB_00100918;
                }
              }
              else {
                if (iVar22 == 2) {
                  _printk(local_170,param_2[1],param_2[2]);
                  goto LAB_00100918;
                }
                if (iVar22 == 3) {
                  _printk(local_170,param_2[1],param_2[2],param_2[3]);
                  goto LAB_00100918;
                }
              }
              _printk(&DAT_00101848,iVar22,__s);
              goto LAB_00100918;
            }
            if (bVar9) {
              pvVar19 = memchr("diouxXfFeEgGaAcsSpn",(uint)bVar7,0x14);
              if (pvVar19 == (void *)0x0) {
                if (bVar7 == 0x2a) {
                  iVar22 = -1;
                  goto LAB_001009cc;
                }
                bVar9 = true;
              }
              else {
                bVar9 = false;
                iVar15 = iVar22 + 1;
                if (bVar7 == 0x73 && iVar17 == -1) {
                  uVar21 = iVar22 + 1;
                  iVar17 = iVar22 + 1;
                }
              }
            }
            else {
              bVar9 = false;
            }
          }
          iVar22 = iVar15;
          bVar1 = 0xfe < uVar23;
          uVar23 = uVar23 + 1;
          if (bVar1) {
                    /* WARNING: Does not return */
            pcVar16 = (code *)SoftwareBreakpoint(1,0x100ab4);
            (*pcVar16)();
          }
        } while( true );
      }
      _printk(&DAT_00101a13,sVar18 + 0x12,__s);
    }
    __s1 = (char *)0x0;
LAB_00100918:
    DAT_00100003 = 0x50;
    fill_nvmem_buf(__s1,__s,0x100000,4,1);
    puVar20 = &DAT_0010150e;
    uVar21 = (uint)saved_nvmem_buf;
    bVar2 = DAT_00100001;
    bVar3 = DAT_00100002;
    bVar4 = DAT_00100003;
    bVar7 = DAT_00100004;
    bVar5 = DAT_00100005;
    bVar6 = DAT_00100006;
    bVar10 = DAT_00100007;
    bVar11 = DAT_00100008;
    bVar12 = DAT_00100009;
    bVar13 = DAT_0010000a;
    bVar14 = DAT_0010000b;
  }
  else {
    puVar20 = &DAT_001016f2;
    bVar2 = saved_nvmem_buf;
    bVar3 = DAT_00100001;
    bVar4 = DAT_00100002;
    bVar7 = DAT_00100003;
    bVar5 = DAT_00100004;
    bVar6 = DAT_00100005;
    once_entry_panic_count = uVar21;
    bVar10 = DAT_00100006;
    bVar11 = DAT_00100007;
    bVar12 = DAT_00100008;
    bVar13 = DAT_00100009;
    bVar14 = DAT_0010000a;
  }
  _printk(puVar20,uVar21,bVar2,bVar3,bVar4,bVar7,bVar5,bVar6,bVar10,bVar11,bVar12,bVar13,bVar14);
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_70) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

