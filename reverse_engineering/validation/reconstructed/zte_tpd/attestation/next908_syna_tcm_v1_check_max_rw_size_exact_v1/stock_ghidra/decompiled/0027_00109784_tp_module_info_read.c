
void tp_module_info_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  uint uVar3;
  int iVar4;
  undefined8 uVar5;
  code *pcVar6;
  ulong uVar7;
  char local_120 [200];
  long local_58;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_58 = *(long *)(lVar1 + 0x710);
  if (*param_4 != 0) {
    uVar5 = 0;
LAB_001099e8:
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == local_58) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  local_120[0xb8] = '\0';
  local_120[0xb9] = '\0';
  local_120[0xba] = '\0';
  local_120[0xbb] = '\0';
  local_120[0xbc] = '\0';
  local_120[0xbd] = '\0';
  local_120[0xbe] = '\0';
  local_120[0xbf] = '\0';
  local_120[0xc0] = '\0';
  local_120[0xc1] = '\0';
  local_120[0xc2] = '\0';
  local_120[0xc3] = '\0';
  local_120[0xc4] = '\0';
  local_120[0xc5] = '\0';
  local_120[0xc6] = '\0';
  local_120[199] = '\0';
  local_120[0xa8] = '\0';
  local_120[0xa9] = '\0';
  local_120[0xaa] = '\0';
  local_120[0xab] = '\0';
  local_120[0xac] = '\0';
  local_120[0xad] = '\0';
  local_120[0xae] = '\0';
  local_120[0xaf] = '\0';
  local_120[0xb0] = '\0';
  local_120[0xb1] = '\0';
  local_120[0xb2] = '\0';
  local_120[0xb3] = '\0';
  local_120[0xb4] = '\0';
  local_120[0xb5] = '\0';
  local_120[0xb6] = '\0';
  local_120[0xb7] = '\0';
  pcVar6 = *(code **)(tpd_cdev + 0xe20);
  local_120[0x98] = '\0';
  local_120[0x99] = '\0';
  local_120[0x9a] = '\0';
  local_120[0x9b] = '\0';
  local_120[0x9c] = '\0';
  local_120[0x9d] = '\0';
  local_120[0x9e] = '\0';
  local_120[0x9f] = '\0';
  local_120[0xa0] = '\0';
  local_120[0xa1] = '\0';
  local_120[0xa2] = '\0';
  local_120[0xa3] = '\0';
  local_120[0xa4] = '\0';
  local_120[0xa5] = '\0';
  local_120[0xa6] = '\0';
  local_120[0xa7] = '\0';
  local_120[0x88] = '\0';
  local_120[0x89] = '\0';
  local_120[0x8a] = '\0';
  local_120[0x8b] = '\0';
  local_120[0x8c] = '\0';
  local_120[0x8d] = '\0';
  local_120[0x8e] = '\0';
  local_120[0x8f] = '\0';
  local_120[0x90] = '\0';
  local_120[0x91] = '\0';
  local_120[0x92] = '\0';
  local_120[0x93] = '\0';
  local_120[0x94] = '\0';
  local_120[0x95] = '\0';
  local_120[0x96] = '\0';
  local_120[0x97] = '\0';
  local_120[0x78] = '\0';
  local_120[0x79] = '\0';
  local_120[0x7a] = '\0';
  local_120[0x7b] = '\0';
  local_120[0x7c] = '\0';
  local_120[0x7d] = '\0';
  local_120[0x7e] = '\0';
  local_120[0x7f] = '\0';
  local_120[0x80] = '\0';
  local_120[0x81] = '\0';
  local_120[0x82] = '\0';
  local_120[0x83] = '\0';
  local_120[0x84] = '\0';
  local_120[0x85] = '\0';
  local_120[0x86] = '\0';
  local_120[0x87] = '\0';
  local_120[0x68] = '\0';
  local_120[0x69] = '\0';
  local_120[0x6a] = '\0';
  local_120[0x6b] = '\0';
  local_120[0x6c] = '\0';
  local_120[0x6d] = '\0';
  local_120[0x6e] = '\0';
  local_120[0x6f] = '\0';
  local_120[0x70] = '\0';
  local_120[0x71] = '\0';
  local_120[0x72] = '\0';
  local_120[0x73] = '\0';
  local_120[0x74] = '\0';
  local_120[0x75] = '\0';
  local_120[0x76] = '\0';
  local_120[0x77] = '\0';
  local_120[0x58] = '\0';
  local_120[0x59] = '\0';
  local_120[0x5a] = '\0';
  local_120[0x5b] = '\0';
  local_120[0x5c] = '\0';
  local_120[0x5d] = '\0';
  local_120[0x5e] = '\0';
  local_120[0x5f] = '\0';
  local_120[0x60] = '\0';
  local_120[0x61] = '\0';
  local_120[0x62] = '\0';
  local_120[99] = '\0';
  local_120[100] = '\0';
  local_120[0x65] = '\0';
  local_120[0x66] = '\0';
  local_120[0x67] = '\0';
  local_120[0x48] = '\0';
  local_120[0x49] = '\0';
  local_120[0x4a] = '\0';
  local_120[0x4b] = '\0';
  local_120[0x4c] = '\0';
  local_120[0x4d] = '\0';
  local_120[0x4e] = '\0';
  local_120[0x4f] = '\0';
  local_120[0x50] = '\0';
  local_120[0x51] = '\0';
  local_120[0x52] = '\0';
  local_120[0x53] = '\0';
  local_120[0x54] = '\0';
  local_120[0x55] = '\0';
  local_120[0x56] = '\0';
  local_120[0x57] = '\0';
  local_120[0x38] = '\0';
  local_120[0x39] = '\0';
  local_120[0x3a] = '\0';
  local_120[0x3b] = '\0';
  local_120[0x3c] = '\0';
  local_120[0x3d] = '\0';
  local_120[0x3e] = '\0';
  local_120[0x3f] = '\0';
  local_120[0x40] = '\0';
  local_120[0x41] = '\0';
  local_120[0x42] = '\0';
  local_120[0x43] = '\0';
  local_120[0x44] = '\0';
  local_120[0x45] = '\0';
  local_120[0x46] = '\0';
  local_120[0x47] = '\0';
  local_120[0x28] = '\0';
  local_120[0x29] = '\0';
  local_120[0x2a] = '\0';
  local_120[0x2b] = '\0';
  local_120[0x2c] = '\0';
  local_120[0x2d] = '\0';
  local_120[0x2e] = '\0';
  local_120[0x2f] = '\0';
  local_120[0x30] = '\0';
  local_120[0x31] = '\0';
  local_120[0x32] = '\0';
  local_120[0x33] = '\0';
  local_120[0x34] = '\0';
  local_120[0x35] = '\0';
  local_120[0x36] = '\0';
  local_120[0x37] = '\0';
  local_120[0x18] = '\0';
  local_120[0x19] = '\0';
  local_120[0x1a] = '\0';
  local_120[0x1b] = '\0';
  local_120[0x1c] = '\0';
  local_120[0x1d] = '\0';
  local_120[0x1e] = '\0';
  local_120[0x1f] = '\0';
  local_120[0x20] = '\0';
  local_120[0x21] = '\0';
  local_120[0x22] = '\0';
  local_120[0x23] = '\0';
  local_120[0x24] = '\0';
  local_120[0x25] = '\0';
  local_120[0x26] = '\0';
  local_120[0x27] = '\0';
  local_120[8] = '\0';
  local_120[9] = '\0';
  local_120[10] = '\0';
  local_120[0xb] = '\0';
  local_120[0xc] = '\0';
  local_120[0xd] = '\0';
  local_120[0xe] = '\0';
  local_120[0xf] = '\0';
  local_120[0x10] = '\0';
  local_120[0x11] = '\0';
  local_120[0x12] = '\0';
  local_120[0x13] = '\0';
  local_120[0x14] = '\0';
  local_120[0x15] = '\0';
  local_120[0x16] = '\0';
  local_120[0x17] = '\0';
  local_120[0] = '\0';
  local_120[1] = '\0';
  local_120[2] = '\0';
  local_120[3] = '\0';
  local_120[4] = '\0';
  local_120[5] = '\0';
  local_120[6] = '\0';
  local_120[7] = '\0';
  if (pcVar6 != (code *)0x0) {
    if (*(int *)(pcVar6 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10982c);
      (*pcVar6)();
    }
    (*pcVar6)(tpd_cdev);
  }
  uVar3 = snprintf(local_120,200,"TP module: %s(0x%x)\n",lVar2 + 0xd40,
                   (ulong)*(uint *)(lVar2 + 0xcfc));
  if (uVar3 < 0xc9) {
    uVar7 = (ulong)uVar3;
    iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"IC type : %s\n",lVar2 + 0xd18);
    uVar7 = uVar7 + (long)iVar4;
    if (*(int *)(lVar2 + 0xd0c) != 0) {
      if (200 < uVar7) goto LAB_00109a1c;
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"I2C address: 0x%x\n");
      uVar7 = uVar7 + (long)iVar4;
    }
    if (*(int *)(lVar2 + 0xd14) != 0) {
      if (200 < uVar7) goto LAB_00109a1c;
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Spi num: %d\n");
      uVar7 = uVar7 + (long)iVar4;
    }
    if (uVar7 < 0xc9) {
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Firmware version : %d\n",
                       (ulong)*(uint *)(lVar2 + 0xd00));
      uVar7 = uVar7 + (long)iVar4;
      if (*(int *)(lVar2 + 0xd04) != 0) {
        if (200 < uVar7) goto LAB_00109a1c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Config version:0x%x\n");
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(int *)(lVar2 + 0xd08) != 0) {
        if (200 < uVar7) goto LAB_00109a1c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Display version:0x%x\n");
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(char *)(lVar2 + 0xd68) != '\0') {
        if (200 < uVar7) goto LAB_00109a1c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Chip hard version:%s\n",lVar2 + 0xd68);
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(char *)(lVar2 + 0xd90) != '\0') {
        if (200 < uVar7) goto LAB_00109a1c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"fw update status:%s\n",lVar2 + 0xd90);
        uVar7 = uVar7 + (long)iVar4;
      }
      uVar5 = simple_read_from_buffer(param_2,param_3,param_4,local_120,uVar7);
      goto LAB_001099e8;
    }
  }
LAB_00109a1c:
                    /* WARNING: Does not return */
  pcVar6 = (code *)SoftwareBreakpoint(0x5512,0x109a20);
  (*pcVar6)();
}

