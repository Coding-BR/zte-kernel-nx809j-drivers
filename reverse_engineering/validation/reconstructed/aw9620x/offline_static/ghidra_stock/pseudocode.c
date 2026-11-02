/* 00101884 aw_check_sum */

undefined8 aw_check_sum(long param_1,uint param_2)

{
  uint uVar1;
  int iVar2;
  code *pcVar3;
  undefined8 uVar4;
  long lVar5;
  ulong uVar6;
  byte *pbVar7;
  int iVar8;
  ulong uVar9;
  ulong uVar10;
  long lVar11;
  int iVar12;
  ulong uVar13;
  
  _printk(&DAT_0010d838,"aw_check_sum",0x66);
  if (99 < param_2) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x101a28);
    (*pcVar3)();
  }
  lVar11 = param_1 + (ulong)param_2 * 0x54;
  uVar13 = (ulong)(uint)(*(int *)(lVar11 + 0x54) - *(int *)(lVar11 + 0x14));
  lVar5 = param_1 + uVar13;
  _printk(&DAT_0010c32b,"aw_check_sum",0x6b,lVar5 + 0x20e8);
  iVar2 = *(int *)(lVar5 + 0x20e8);
  uVar1 = *(int *)(lVar11 + 0x14) + *(int *)(lVar11 + 0x28);
  if (uVar1 < 5) {
    iVar12 = 0;
  }
  else {
    uVar6 = (ulong)uVar1 - 4;
    if (uVar6 < 2) {
      iVar12 = 0;
      lVar11 = 4;
    }
    else {
      uVar9 = uVar6 & 0xfffffffffffffffe;
      iVar8 = 0;
      iVar12 = 0;
      lVar11 = uVar9 + 4;
      pbVar7 = (byte *)(lVar5 + 0x20ed);
      uVar10 = uVar9;
      do {
        uVar10 = uVar10 - 2;
        iVar8 = iVar8 + (uint)pbVar7[-1];
        iVar12 = iVar12 + (uint)*pbVar7;
        pbVar7 = pbVar7 + 2;
      } while (uVar10 != 0);
      iVar12 = iVar12 + iVar8;
      if (uVar6 == uVar9) goto LAB_00101998;
    }
    lVar5 = (ulong)uVar1 - lVar11;
    pbVar7 = (byte *)(lVar11 + uVar13 + param_1 + 0x20e8);
    do {
      lVar5 = lVar5 + -1;
      iVar12 = iVar12 + (uint)*pbVar7;
      pbVar7 = pbVar7 + 1;
    } while (lVar5 != 0);
  }
LAB_00101998:
  _printk(&DAT_0010edf2,"aw_check_sum",0x77,param_2,iVar2,iVar12);
  if (iVar12 == iVar2) {
    uVar4 = 0;
  }
  else {
    _printk(&DAT_0010e2d1,"aw_check_sum",0x7a);
    _printk(&DAT_0010d0cc,"aw_check_sum",0x7b,param_2,iVar2,iVar12);
    uVar4 = 0xfffffffd;
  }
  return uVar4;
}



/* 00101a2c aw_check_data_version */

undefined8 aw_check_data_version(long param_1,uint param_2)

{
  code *pcVar1;
  undefined8 uVar2;
  
  _printk(&DAT_0010d838,"aw_check_data_version",0x86);
  if (param_2 < 100) {
    if (*(int *)(param_1 + (ulong)param_2 * 0x54 + 0x24) == 1) {
      uVar2 = 0;
    }
    else {
      _printk(&DAT_0010de1c,"aw_check_data_version",0x8c);
      uVar2 = 0xfffffffc;
    }
    return uVar2;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x101ab0);
  (*pcVar1)();
}



/* 00101ab4 aw_check_register_num_v1 */

undefined8 aw_check_register_num_v1(long param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  code *pcVar4;
  undefined8 uVar5;
  long lVar6;
  
  _printk(&DAT_0010d838,"aw_check_register_num_v1",0x96);
  if (param_2 < 100) {
    lVar6 = param_1 + (ulong)param_2 * 0x54;
    param_1 = param_1 + (ulong)*(uint *)(lVar6 + 0x54);
    _printk(&DAT_0010c32b,"aw_check_register_num_v1",0x9a,param_1 + 0x20e8);
    uVar2 = *(uint *)(param_1 + 0x20e8);
    uVar1 = *(int *)(lVar6 + 0x48) + *(int *)(lVar6 + 0x44);
    uVar3 = 0;
    if (uVar1 != 0) {
      uVar3 = (*(int *)(lVar6 + 0x28) - 4U) / uVar1;
    }
    _printk(&DAT_0010e6c2,"aw_check_register_num_v1",0xa3,param_2,uVar2,uVar3);
    if (uVar2 == uVar3) {
      uVar5 = 0;
      *(int *)(lVar6 + 0x50) = *(int *)(lVar6 + 0x28) + -4;
      *(int *)(lVar6 + 0x54) = *(int *)(lVar6 + 0x54) + 4;
      *(uint *)(lVar6 + 0x58) = uVar2;
    }
    else {
      _printk(&DAT_0010f572,"aw_check_register_num_v1",0xa6);
      _printk(&DAT_0010de6a,"aw_check_register_num_v1",0xa7,param_2,uVar2,uVar3);
      uVar5 = 0xfffffffb;
    }
    return uVar5;
  }
                    /* WARNING: Does not return */
  pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x101bdc);
  (*pcVar4)();
}



/* 00101be0 aw_check_dsp_reg_num_v1 */

undefined8 aw_check_dsp_reg_num_v1(long param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  code *pcVar4;
  undefined8 uVar5;
  long lVar6;
  
  _printk(&DAT_0010d838,"aw_check_dsp_reg_num_v1",0xb9);
  if (param_2 < 100) {
    lVar6 = param_1 + (ulong)param_2 * 0x54;
    param_1 = param_1 + (ulong)*(uint *)(lVar6 + 0x54);
    _printk(&DAT_0010c32b,"aw_check_dsp_reg_num_v1",0xbd,param_1 + 0x20e8);
    uVar1 = *(uint *)(param_1 + 0x20f0);
    uVar2 = *(uint *)(param_1 + 0x20ec);
    uVar3 = 0;
    if (uVar1 != 0) {
      uVar3 = (*(int *)(lVar6 + 0x28) - 0xcU) / uVar1;
    }
    *(uint *)(lVar6 + 0x5c) = uVar1;
    _printk(&DAT_0010dcd6,"aw_check_dsp_reg_num_v1",0xca,param_2,uVar2,uVar3);
    if (uVar2 == uVar3) {
      uVar5 = 0;
      *(undefined4 *)(lVar6 + 0x60) = *(undefined4 *)(param_1 + 0x20e8);
      *(int *)(lVar6 + 0x50) = *(int *)(lVar6 + 0x28) + -0xc;
      *(int *)(lVar6 + 0x54) = *(int *)(lVar6 + 0x54) + 0xc;
      *(uint *)(lVar6 + 0x58) = uVar2;
    }
    else {
      _printk(&DAT_0010ec07,"aw_check_dsp_reg_num_v1",0xcd);
      _printk(&DAT_0010c363,"aw_check_dsp_reg_num_v1",0xce,param_2,uVar2,uVar3);
      uVar5 = 0xfffffffa;
    }
    return uVar5;
  }
                    /* WARNING: Does not return */
  pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x101d18);
  (*pcVar4)();
}



/* 00101d1c aw_check_soc_app_num_v1 */

undefined8 aw_check_soc_app_num_v1(long param_1,uint param_2)

{
  int iVar1;
  int iVar2;
  code *pcVar3;
  undefined8 uVar4;
  long lVar5;
  
  _printk(&DAT_0010d838,"aw_check_soc_app_num_v1",0xe3);
  if (param_2 < 100) {
    lVar5 = param_1 + (ulong)param_2 * 0x54;
    param_1 = param_1 + (ulong)*(uint *)(lVar5 + 0x54);
    _printk(&DAT_0010c32b,"aw_check_soc_app_num_v1",0xe7,param_1 + 0x20e8);
    *(undefined4 *)(lVar5 + 100) = *(undefined4 *)(param_1 + 0x20e8);
    iVar1 = *(int *)(param_1 + 0x20f0);
    iVar2 = *(int *)(lVar5 + 0x28) + -0xc;
    _printk(&DAT_0010c3cd,"aw_check_soc_app_num_v1",0xf2,param_2,iVar1,iVar2);
    if (iVar1 == iVar2) {
      *(int *)(lVar5 + 0x58) = iVar1;
      uVar4 = 0;
      *(undefined4 *)(lVar5 + 0x60) = *(undefined4 *)(param_1 + 0x20ec);
      *(int *)(lVar5 + 0x50) = *(int *)(lVar5 + 0x28) + -0xc;
      *(int *)(lVar5 + 0x54) = *(int *)(lVar5 + 0x54) + 0xc;
    }
    else {
      _printk(&DAT_0010da54,"aw_check_soc_app_num_v1",0xf5);
      _printk(&DAT_0010d858,"aw_check_soc_app_num_v1",0xf6,param_2,iVar1,iVar2);
      uVar4 = 0xfffffff9;
    }
    return uVar4;
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x101e54);
  (*pcVar3)();
}



/* 00101e58 aw_get_single_bin_header_1_0_0 */

void aw_get_single_bin_header_1_0_0(undefined8 *param_1)

{
  uint uVar1;
  undefined1 uVar2;
  long lVar3;
  code *pcVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  
  _printk(&DAT_0010d125,"aw_get_single_bin_header_1_0_0",0x10e,"aw_get_single_bin_header_1_0_0");
  if (*(uint *)(param_1 + 1) < 100) {
    puVar5 = (undefined4 *)((long)param_1 + (ulong)*(uint *)(param_1 + 1) * 0x54 + 0x14);
    puVar6 = (undefined4 *)*param_1;
    *puVar5 = 0x3c;
    puVar5[1] = *puVar6;
    puVar5[2] = puVar6[1];
    puVar5[3] = puVar6[2];
    puVar5[4] = puVar6[3];
    puVar5[5] = puVar6[4];
    puVar5[6] = puVar6[5];
    puVar5[0xc] = puVar6[8];
    puVar5[0xd] = puVar6[9];
    puVar5[0xe] = puVar6[10];
    *(undefined1 *)(puVar5 + 7) = *(undefined1 *)(puVar6 + 6);
    *(undefined1 *)((long)puVar5 + 0x1d) = *(undefined1 *)((long)puVar6 + 0x19);
    *(undefined1 *)((long)puVar5 + 0x1e) = *(undefined1 *)((long)puVar6 + 0x1a);
    *(undefined1 *)((long)puVar5 + 0x1f) = *(undefined1 *)((long)puVar6 + 0x1b);
    *(undefined1 *)(puVar5 + 8) = *(undefined1 *)(puVar6 + 7);
    *(undefined1 *)((long)puVar5 + 0x21) = *(undefined1 *)((long)puVar6 + 0x1d);
    *(undefined1 *)((long)puVar5 + 0x22) = *(undefined1 *)((long)puVar6 + 0x1e);
    uVar2 = *(undefined1 *)((long)puVar6 + 0x1f);
    *(undefined1 *)(puVar5 + 9) = 0;
    *(undefined1 *)((long)puVar5 + 0x23) = uVar2;
    _printk(&DAT_0010d8c2,"aw_get_single_bin_header_1_0_0",0x131,"aw_get_single_bin_header_1_0_0");
    uVar1 = *(uint *)(param_1 + 1);
    if (uVar1 < 100) {
      lVar3 = (ulong)uVar1 * 0x54;
      *(undefined4 *)((long)param_1 + lVar3 + 0x50) = 0;
      *(undefined8 *)((long)param_1 + lVar3 + 0x58) = 0;
      *(undefined8 *)((long)param_1 + lVar3 + 0x60) = 0;
      *(uint *)(param_1 + 1) = uVar1 + 1;
      return;
    }
  }
                    /* WARNING: Does not return */
  pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x101f90);
  (*pcVar4)();
}



/* 00101f94 aw_parse_each_of_multi_bins_1_0_0 */

void aw_parse_each_of_multi_bins_1_0_0(int param_1,int param_2,long *param_3)

{
  uint uVar1;
  uint uVar2;
  code *pcVar3;
  int iVar4;
  
  _printk(&DAT_0010e322,"aw_parse_each_of_multi_bins_1_0_0",0x141,
          "aw_parse_each_of_multi_bins_1_0_0");
  if (param_2 == 0) {
    uVar1 = *(uint *)(param_3 + 1);
    *param_3 = *param_3 + (ulong)(*(int *)(*param_3 + 0x40) + 0x3c);
    if (uVar1 - 1 < 99) {
      iVar4 = *(int *)((long)param_3 + (ulong)(uVar1 - 1) * 0x54 + 0x54) + param_1 * 8 + 0x40;
LAB_00102068:
      *(int *)((long)param_3 + (ulong)uVar1 * 0x54 + 0x54) = iVar4;
      aw_parse_bin_header_1_0_0(param_3);
      return;
    }
  }
  else {
    uVar1 = *(uint *)(param_3 + 1);
    uVar2 = uVar1 - 1;
    if (uVar2 < 100) {
      iVar4 = *(int *)((long)param_3 + (ulong)uVar2 * 0x54 + 0x28);
      *param_3 = *param_3 + (ulong)(iVar4 + 0x3c);
      if (uVar1 < 100) {
        iVar4 = *(int *)((long)param_3 + (ulong)uVar2 * 0x54 + 0x54) + iVar4 + 0x3c;
        goto LAB_00102068;
      }
    }
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x10208c);
  (*pcVar3)();
}



/* 00102090 aw_parse_bin_header_1_0_0 */

undefined8 aw_parse_bin_header_1_0_0(long *param_1)

{
  uint uVar1;
  code *pcVar2;
  undefined8 uVar3;
  
  _printk(&DAT_0010d125,"aw_parse_bin_header_1_0_0",0x183,"aw_parse_bin_header_1_0_0");
  uVar1 = *(uint *)(*param_1 + 8);
  _printk(&DAT_0010f5cb,"aw_parse_bin_header_1_0_0",0x187,(ulong)uVar1);
  if ((uVar1 < 0x22) && ((1L << ((ulong)uVar1 & 0x3f) & 0x200010001U) != 0)) {
    _printk(&DAT_0010e534,"aw_parse_bin_header_1_0_0",400);
    *(int *)(param_1 + 2) = (int)param_1[2] + 1;
    _printk(&DAT_0010d637,"aw_parse_bin_header_1_0_0",0x193,"aw_parse_bin_header_1_0_0");
    if (*(int *)((long)param_1 + 0xc) == 0) {
      if (99 < *(uint *)(param_1 + 1)) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x10220c);
        (*pcVar2)();
      }
      *(undefined4 *)((long)param_1 + (ulong)*(uint *)(param_1 + 1) * 0x54 + 0x54) = 0x3c;
    }
    aw_get_single_bin_header_1_0_0(param_1);
  }
  else {
    if (uVar1 != 0x2000) {
      _printk(&DAT_0010d14d,"aw_parse_bin_header_1_0_0",0x1a3);
      return 0xfffffffe;
    }
    _printk(&DAT_0010f814,"aw_parse_bin_header_1_0_0",0x19a);
    *(int *)((long)param_1 + 0xc) = *(int *)((long)param_1 + 0xc) + 1;
    _printk(&DAT_0010efb6,"aw_parse_bin_header_1_0_0",0x19d,"aw_parse_bin_header_1_0_0");
    uVar3 = aw_get_multi_bin_header_1_0_0(param_1);
    if ((int)uVar3 < 0) {
      return uVar3;
    }
  }
  return 0;
}



/* 00102210 aw_get_multi_bin_header_1_0_0 */

undefined8 aw_get_multi_bin_header_1_0_0(long *param_1)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  uint uVar5;
  uint uVar6;
  code *pcVar7;
  undefined8 uVar8;
  long lVar9;
  int iVar10;
  
  _printk(&DAT_0010e322,"aw_get_multi_bin_header_1_0_0",0x161,"aw_get_multi_bin_header_1_0_0");
  lVar9 = *param_1;
  bVar1 = *(byte *)(lVar9 + 0x3f);
  bVar2 = *(byte *)(lVar9 + 0x3e);
  bVar3 = *(byte *)(lVar9 + 0x3d);
  bVar4 = *(byte *)(lVar9 + 0x3c);
  if (*(int *)((long)param_1 + 0xc) == 1) {
    if (99 < *(uint *)(param_1 + 1)) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x102328);
      (*pcVar7)();
    }
    *(undefined4 *)((long)param_1 + (ulong)*(uint *)(param_1 + 1) * 0x54 + 0x54) = 0x3c;
  }
  uVar5 = (uint)bVar1 * 0x1000000;
  uVar6 = uVar5 | (uint)bVar2 << 0x10 | (uint)bVar3 << 8 | (uint)bVar4;
  aw_get_single_bin_header_1_0_0(param_1);
  if (uVar6 != 0) {
    iVar10 = 0;
    do {
      _printk(&DAT_0010eaf6,"aw_get_multi_bin_header_1_0_0",0x16b,iVar10);
      uVar8 = aw_parse_each_of_multi_bins_1_0_0(uVar6,iVar10,param_1);
      if ((int)uVar8 < 0) {
        return uVar8;
      }
      iVar10 = iVar10 + 1;
    } while (uVar5 + (uint)bVar2 * 0x10000 + (uint)bVar3 * 0x100 + (uint)bVar4 != iVar10);
  }
  return 0;
}



/* 0010232c aw_parsing_bin_file */

int aw_parsing_bin_file(undefined8 *param_1)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  undefined *puVar4;
  ulong uVar5;
  undefined8 *puVar6;
  
  _printk(&DAT_0010f852,"aw_parsing_bin_file",0x1c6,"V0.0.7-V1.0.4");
  if (param_1 == (undefined8 *)0x0) {
    _printk(&DAT_0010dffa,"aw_parsing_bin_file",0x1c8);
    iVar2 = -8;
  }
  else {
    iVar2 = *(int *)((long)param_1 + 0x20ec);
    *param_1 = param_1 + 0x41d;
    param_1[1] = 0;
    *(undefined4 *)(param_1 + 2) = 0;
    _printk(&DAT_0010ec47,"aw_check_bin_header_version",0x1b3,iVar2);
    if (iVar2 == 0x1000000) {
      iVar2 = aw_parse_bin_header_1_0_0(param_1);
      if (-1 < iVar2) {
        *param_1 = 0;
        if (*(int *)(param_1 + 1) != 0) {
          uVar5 = 0;
          puVar6 = param_1 + 5;
          do {
            iVar2 = aw_check_sum(param_1,uVar5 & 0xffffffff);
            if (iVar2 < 0) {
              puVar4 = &DAT_0010da94;
              uVar3 = 0x1dd;
              goto LAB_0010243c;
            }
            _printk(&DAT_0010d838,"aw_check_data_version",0x86);
            if (uVar5 == 100) {
                    /* WARNING: Does not return */
              pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x1025d4);
              (*pcVar1)();
            }
            if (*(int *)((long)puVar6 + -4) != 1) {
              _printk(&DAT_0010de1c,"aw_check_data_version",0x8c);
              _printk(&DAT_0010c433,"aw_parsing_bin_file",0x1e3);
              return -4;
            }
            iVar2 = *(int *)(puVar6 + -1);
            if (iVar2 == 0x21) {
              iVar2 = aw_check_soc_app_num_v1(param_1,uVar5 & 0xffffffff);
              if (iVar2 < 0) {
                puVar4 = &DAT_0010c9a8;
                uVar3 = 0x200;
                goto LAB_0010243c;
              }
            }
            else if (iVar2 == 0x10) {
              iVar2 = aw_check_dsp_reg_num_v1(param_1,uVar5 & 0xffffffff);
              if (iVar2 < 0) {
                puVar4 = &DAT_0010f889;
                uVar3 = 0x1f7;
                goto LAB_0010243c;
              }
            }
            else if (iVar2 == 0) {
              iVar2 = aw_check_register_num_v1(param_1,uVar5 & 0xffffffff);
              if (iVar2 < 0) {
                puVar4 = &DAT_0010e37a;
                uVar3 = 0x1ee;
                goto LAB_0010243c;
              }
            }
            else {
              *(undefined4 *)(puVar6 + 5) = *(undefined4 *)puVar6;
            }
            uVar5 = uVar5 + 1;
            puVar6 = (undefined8 *)((long)puVar6 + 0x54);
          } while (uVar5 < *(uint *)(param_1 + 1));
        }
        _printk(&DAT_0010ee47,"aw_parsing_bin_file",0x209);
        return 0;
      }
    }
    else {
      _printk(&DAT_0010d1f8,"aw_check_bin_header_version",0x1bc);
      iVar2 = -1;
    }
    puVar4 = &DAT_0010e72a;
    uVar3 = 0x1d3;
LAB_0010243c:
    _printk(puVar4,"aw_parsing_bin_file",uVar3);
  }
  return iVar2;
}



/* 001025d8 aw9620x_flash_update */

void aw9620x_flash_update(long param_1,char *param_2)

{
  char cVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  undefined *puVar6;
  undefined8 uVar7;
  char *pcVar8;
  undefined8 uVar9;
  uint uVar10;
  uint uVar11;
  long lVar12;
  uint local_5c;
  long local_58;
  
  lVar12 = sp_el0;
  local_58 = *(long *)(lVar12 + 0x710);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter read_len = %d\n",
              "aw9620x_flash_update",0x5af,*(undefined4 *)(param_2 + 0x10));
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] 1.opne register access enable\n","aw9620x_flash_update",0x5b2);
  iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00ffff);
  if (iVar3 == 0) {
    iVar3 = aw9620x_i2c_write(param_1,0x4444,0x10000);
    if (iVar3 == 0) {
      iVar3 = aw9620x_i2c_write(param_1,0x4820,6);
      if (iVar3 == 0) {
        if ((*param_2 == '\x01') &&
           (iVar3 = aw9620x_i2c_write(param_1,0x4794,0x5a637955), iVar3 != 0)) {
          uVar7 = *(undefined8 *)(param_1 + 0x30);
          pcVar8 = "[%s:%d] write 0x4794 err\n";
          uVar9 = 0x5c5;
        }
        else {
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] 2.Erase sector (0x3800~0x37ff)\n","aw9620x_flash_update",0x5ca);
          uVar11 = **(uint **)(param_2 + 0x18) >> 7;
          bVar2 = (**(uint **)(param_2 + 0x18) & 0x7f) != 0;
          if (bVar2) {
            uVar11 = uVar11 + 1;
          }
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] enter temp = %d erase_cnt = %d\n","aw9620x_erase_sector",0x55c,bVar2,
                      uVar11);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] 1.open host write FMC protect\n","aw9620x_erase_sector",0x55f);
          iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
          if (iVar3 == 0) {
            iVar3 = aw9620x_i2c_write(param_1,0x4820,6);
            if (iVar3 == 0) {
              if ((*param_2 == '\0') &&
                 (iVar3 = aw9620x_i2c_write(param_1,0x4794,0x5a637955), iVar3 != 0)) {
                uVar7 = *(undefined8 *)(param_1 + 0x30);
                puVar6 = &DAT_0010eb37;
                pcVar8 = "[%s:%d] write 0x4794 err\n";
                uVar9 = 0x56f;
              }
              else {
                if (uVar11 != 0) {
                  iVar3 = 0;
                  do {
                    iVar4 = aw9620x_i2c_write(param_1,0x4704,
                                              iVar3 + *(int *)(*(long *)(param_2 + 0x18) + 4));
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010dd3c;
                      pcVar8 = "[%s:%d] write 0x4794 err\n";
                      uVar9 = 0x579;
                      goto LAB_00102c5c;
                    }
                    iVar4 = aw9620x_i2c_write(param_1,0x4710,5);
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010dd3c;
                      pcVar8 = "[%s:%d] write 0x4710 err\n";
                      uVar9 = 0x57f;
                      goto LAB_00102c5c;
                    }
                    iVar4 = aw9620x_i2c_write(param_1,0x472c,0xf0);
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010dd3c;
                      pcVar8 = "[%s:%d] write 0x472c err\n";
                      uVar9 = 0x585;
                      goto LAB_00102c5c;
                    }
                    iVar4 = aw9620x_i2c_write(param_1,0x4714,1);
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010dd3c;
                      pcVar8 = "[%s:%d] write 0x4714 err\n";
                      uVar9 = 0x58b;
                      goto LAB_00102c5c;
                    }
                    iVar4 = aw9620x_check_isp_go_reg(param_1);
                    if (iVar4 != 0) {
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      puVar6 = &DAT_0010dd3c;
                      pcVar8 = "[%s:%d] check_isp_go_reg err\n";
                      uVar9 = 0x591;
                      goto LAB_00102c5c;
                    }
                    uVar11 = uVar11 - 1;
                    iVar3 = iVar3 + 0x80;
                  } while (uVar11 != 0);
                }
                iVar3 = aw9620x_i2c_write(param_1,0x472c,0x16);
                if (iVar3 == 0) {
                  iVar3 = aw9620x_i2c_write(param_1,0x4820,4);
                  if (iVar3 == 0) {
                    iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
                    uVar7 = *(undefined8 *)(param_1 + 0x30);
                    if (iVar3 == 0) {
                      _dev_printk(&DAT_0010eb37,uVar7,"[%s:%d] 3.write boot\n",
                                  "aw9620x_flash_update",0x5d2);
                      uVar11 = *(uint *)(param_2 + 0x10);
                      iVar3 = *(int *)(param_2 + 0x14);
                      lVar12 = *(long *)(param_2 + 8);
                      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                                  "aw9620x_reg_write_bin_to_flash",0x531);
                      cVar1 = *param_2;
                      iVar4 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
                      if (iVar4 == 0) {
                        iVar4 = aw9620x_i2c_write(param_1,0x4820,6);
                        if (iVar4 != 0) {
                          uVar7 = 0x44d;
                          goto LAB_00102e80;
                        }
                        if ((cVar1 == '\0') &&
                           (iVar4 = aw9620x_i2c_write(param_1,0x4794,0x5a637955), iVar4 != 0)) {
                          uVar7 = 0x455;
                          goto LAB_00102e80;
                        }
                        if (uVar11 != 0) {
                          uVar10 = 0;
                          do {
                            iVar4 = aw9620x_reg_write_to_flash_once
                                              (param_1,iVar3 + uVar10,
                                               (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 3)) << 0x18
                                               | (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 2)) <<
                                                 0x10 | (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 1)
                                                                       ) << 8 |
                                               (uint)*(byte *)(lVar12 + (ulong)uVar10));
                            if (iVar4 != 0) {
                              uVar7 = *(undefined8 *)(param_1 + 0x30);
                              puVar6 = &DAT_0010eb37;
                              pcVar8 = "[%s:%d] write aw9620x_reg_write_bin_once err\n";
                              uVar9 = 0x53f;
                              goto LAB_00102ec0;
                            }
                            uVar10 = uVar10 + 4;
                          } while (uVar10 < uVar11);
                        }
                        iVar3 = aw9620x_i2c_write(param_1,0x4820,4);
                        if (iVar3 == 0) {
                          iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
                          uVar7 = *(undefined8 *)(param_1 + 0x30);
                          if (iVar3 == 0) {
                            _dev_printk(&DAT_0010eb37,uVar7,"[%s:%d] 4.read data check\n",
                                        "aw9620x_flash_update",0x5da);
                            lVar12 = *(long *)(param_2 + 8);
                            uVar11 = *(uint *)(param_2 + 0x10);
                            local_5c = 0;
                            _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                                        "[%s:%d] enter\n","aw9620x_rd_or_wi_cmp",0x4fa);
                            iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
                            if (iVar3 == 0) {
                              iVar3 = aw9620x_i2c_write(param_1,0x4820,4);
                              uVar7 = *(undefined8 *)(param_1 + 0x30);
                              if (iVar3 == 0) {
                                _dev_printk(&DAT_0010dd3c,uVar7,"[%s:%d] read_cnt = %d\n",
                                            "aw9620x_rd_or_wi_cmp",0x509,uVar11);
                                if (uVar11 != 0) {
                                  uVar10 = 0;
                                  do {
                                    iVar3 = aw9620x_reg_read_val
                                                      (param_1,&local_5c,
                                                       uVar10 + *(int *)(param_2 + 0x14));
                                    if (iVar3 != 0) {
                                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                                      pcVar8 = "[%s:%d] reg_read_bin err\n";
                                      uVar9 = 0x50e;
                                      goto LAB_00103000;
                                    }
                                    if (((uint)*(byte *)(lVar12 + (ulong)(uVar10 + 3)) << 0x18 |
                                         (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 2)) << 0x10 |
                                         (uint)*(byte *)(lVar12 + (ulong)(uVar10 + 1)) << 8 |
                                        (uint)*(byte *)(lVar12 + (ulong)uVar10)) != local_5c) {
                                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                                      pcVar8 = "[%s:%d] w_data != r_data err!\n";
                                      uVar9 = 0x517;
                                      goto LAB_00103000;
                                    }
                                    uVar10 = uVar10 + 4;
                                  } while (uVar10 < uVar11);
                                }
                                iVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
                                uVar7 = *(undefined8 *)(param_1 + 0x30);
                                if (iVar3 == 0) {
                                  _dev_printk(&DAT_0010eb37,uVar7,"[%s:%d] END\n",
                                              "aw9620x_rd_or_wi_cmp",0x522);
                                  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                                              "[%s:%d] 5.write checksum\n","aw9620x_flash_update",
                                              0x5e5);
                                  iVar3 = aw9620x_reg_write_val_to_flash
                                                    (param_1,*(undefined4 *)
                                                              (*(long *)(param_2 + 0x18) + 8),
                                                     0x20222022,param_2);
                                  uVar7 = *(undefined8 *)(param_1 + 0x30);
                                  if (iVar3 == 0) {
                                    _dev_printk(&DAT_0010eb37,uVar7,"[%s:%d] write checksum en ok\n"
                                                ,"aw9620x_flash_update",0x5ec);
                                    uVar5 = aw9620x_get_bin_checksum
                                                      (*(undefined8 *)(param_2 + 8),
                                                       *(undefined4 *)(param_2 + 0x10),
                                                       **(undefined4 **)(param_2 + 0x18));
                                    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                                                "[%s:%d] check_sum = 0x%x\n","aw9620x_flash_update",
                                                0x5f1,uVar5);
                                    iVar3 = aw9620x_reg_write_val_to_flash
                                                      (param_1,*(undefined4 *)
                                                                (*(long *)(param_2 + 0x18) + 0xc),
                                                       uVar5,param_2);
                                    uVar7 = *(undefined8 *)(param_1 + 0x30);
                                    if (iVar3 == 0) {
                                      _dev_printk(&DAT_0010eb37,uVar7,
                                                  "[%s:%d] 5.write checksum ok\n",
                                                  "aw9620x_flash_update",0x5f8);
                                      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                                                  "[%s:%d] 6.open flash protect\n",
                                                  "aw9620x_flash_update",0x5fb);
                                      cVar1 = *param_2;
                                      if (cVar1 == '\x01') {
                                        iVar3 = aw9620x_i2c_write(param_1,0x4794,0);
                                        if (iVar3 != 0) {
                                          uVar7 = *(undefined8 *)(param_1 + 0x30);
                                          pcVar8 = "[%s:%d] 6.open flash protect err\n";
                                          uVar9 = 0x5ff;
                                          goto LAB_00102c80;
                                        }
                                        cVar1 = *param_2;
                                      }
                                      puVar6 = &DAT_0010cbcb;
                                      if (cVar1 != '\0') {
                                        puVar6 = &DAT_0010e78f;
                                      }
                                      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                                                  "[%s:%d] %s update success!!!\n",
                                                  "aw9620x_flash_update",0x60b,puVar6);
                                      uVar7 = 0;
                                      goto LAB_00102c88;
                                    }
                                    pcVar8 = "[%s:%d] 5.write checksum err\n";
                                    uVar9 = 0x5f5;
                                  }
                                  else {
                                    pcVar8 = "[%s:%d] write checksum en err\n";
                                    uVar9 = 0x5e9;
                                  }
                                  goto LAB_00102c80;
                                }
                                pcVar8 = "[%s:%d] write 0xff20 err\n";
                                uVar9 = 0x51e;
                              }
                              else {
                                pcVar8 = "[%s:%d] config PMU_CFG reg err\n";
                                uVar9 = 0x505;
                              }
                            }
                            else {
                              uVar7 = *(undefined8 *)(param_1 + 0x30);
                              pcVar8 = "[%s:%d] write 0xff20 err\n";
                              uVar9 = 0x4ff;
                            }
LAB_00103000:
                            _dev_printk(&DAT_0010dd3c,uVar7,pcVar8,"aw9620x_rd_or_wi_cmp",uVar9);
                            uVar7 = *(undefined8 *)(param_1 + 0x30);
                            pcVar8 = "[%s:%d] reg_read_bin err\n";
                            uVar9 = 0x5e0;
                            goto LAB_00102c80;
                          }
                          puVar6 = &DAT_0010dd3c;
                          pcVar8 = "[%s:%d] write 0xff20 err\n";
                          uVar9 = 0x54d;
                        }
                        else {
                          uVar7 = *(undefined8 *)(param_1 + 0x30);
                          puVar6 = &DAT_0010dd3c;
                          pcVar8 = "[%s:%d] write 0x4820 err\n";
                          uVar9 = 0x547;
                        }
                      }
                      else {
                        uVar7 = 0x446;
LAB_00102e80:
                        _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                                    "[%s:%d] write 0xff20 err\n","aw9620x_close_write_flash_protect"
                                    ,uVar7);
                        uVar7 = *(undefined8 *)(param_1 + 0x30);
                        pcVar8 = "[%s:%d] close_write_flash_protect err\n";
                        puVar6 = &DAT_0010dd3c;
                        uVar9 = 0x535;
                      }
LAB_00102ec0:
                      _dev_printk(puVar6,uVar7,pcVar8,"aw9620x_reg_write_bin_to_flash",uVar9);
                      uVar7 = *(undefined8 *)(param_1 + 0x30);
                      pcVar8 = "[%s:%d] erase_sector_main err\n";
                      uVar9 = 0x5d5;
                      goto LAB_00102c80;
                    }
                    puVar6 = &DAT_0010dd3c;
                    pcVar8 = "[%s:%d] write 0xff20 err\n";
                    uVar9 = 0x5a3;
                  }
                  else {
                    uVar7 = *(undefined8 *)(param_1 + 0x30);
                    puVar6 = &DAT_0010dd3c;
                    pcVar8 = "[%s:%d] write 0x4820 err\n";
                    uVar9 = 0x59d;
                  }
                }
                else {
                  uVar7 = *(undefined8 *)(param_1 + 0x30);
                  puVar6 = &DAT_0010dd3c;
                  pcVar8 = "[%s:%d] write 0x472c err\n";
                  uVar9 = 0x597;
                }
              }
            }
            else {
              uVar7 = *(undefined8 *)(param_1 + 0x30);
              puVar6 = &DAT_0010dd3c;
              pcVar8 = "[%s:%d] write 0xff20 err\n";
              uVar9 = 0x568;
            }
          }
          else {
            uVar7 = *(undefined8 *)(param_1 + 0x30);
            puVar6 = &DAT_0010dd3c;
            pcVar8 = "[%s:%d] write 0xff20 err\n";
            uVar9 = 0x562;
          }
LAB_00102c5c:
          _dev_printk(puVar6,uVar7,pcVar8,"aw9620x_erase_sector",uVar9);
          uVar7 = *(undefined8 *)(param_1 + 0x30);
          pcVar8 = "[%s:%d] erase_sector_main err\n";
          uVar9 = 0x5cd;
        }
      }
      else {
        uVar7 = *(undefined8 *)(param_1 + 0x30);
        pcVar8 = "[%s:%d] 0x4820 write 0x6 err\n";
        uVar9 = 0x5bf;
      }
    }
    else {
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      pcVar8 = "[%s:%d] 0x4444 write 0x10000 err\n";
      uVar9 = 0x5ba;
    }
  }
  else {
    uVar7 = *(undefined8 *)(param_1 + 0x30);
    pcVar8 = "[%s:%d] write 0xff20 err\n";
    uVar9 = 0x5b5;
  }
LAB_00102c80:
  _dev_printk(&DAT_0010dd3c,uVar7,pcVar8,"aw9620x_flash_update",uVar9);
  uVar7 = 0xffffffff;
LAB_00102c88:
  lVar12 = sp_el0;
  if (*(long *)(lVar12 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar7);
  }
  return;
}



/* 00103090 aw9620x_i2c_write */

void aw9620x_i2c_write(long param_1,uint param_2,ulong param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  ulong uVar4;
  undefined8 local_60;
  undefined1 *local_58;
  undefined1 local_50;
  undefined1 local_4f;
  undefined1 local_4e;
  undefined1 local_4d;
  undefined1 local_4c;
  undefined1 local_4b;
  long local_48;
  
  lVar1 = sp_el0;
  local_4e = (undefined1)(param_3 >> 0x18);
  local_4d = (undefined1)(param_3 >> 0x10);
  local_48 = *(long *)(lVar1 + 0x710);
  uVar4 = param_3 & 0xffffffff;
  local_4c = (undefined1)(param_3 >> 8);
  local_50 = (undefined1)(param_2 >> 8);
  local_4b = (undefined1)param_3;
  local_4f = (undefined1)param_2;
  local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
  local_58 = &local_50;
  iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
  if (iVar2 < 0) {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n",
                "aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,5);
    usleep_range_state(2000,3000,2);
    local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
    local_58 = &local_50;
    iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
    if (iVar2 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n",
                  "aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,4);
      usleep_range_state(2000,3000,2);
      local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
      local_58 = &local_50;
      iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
      if (iVar2 < 0) {
        _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n",
                    "aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,3);
        usleep_range_state(2000,3000,2);
        local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
        local_58 = &local_50;
        iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
        if (iVar2 < 0) {
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n",
                      "aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,2);
          usleep_range_state(2000,3000,2);
          local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
          local_58 = &local_50;
          iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
          if (iVar2 < 0) {
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n"
                        ,"aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,1);
            usleep_range_state(2000,3000,2);
            local_60 = CONCAT62(0x60000,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
            local_58 = &local_50;
            iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_60,1);
            if (iVar2 < 0) {
              _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                          "[%s:%d] aw9620x i2c write error reg: 0x%04x data: 0x%08x, ret= %d cnt= %d\n"
                          ,"aw9620x_i2c_write",0x263,param_2 & 0xffff,uVar4,iVar2,0);
              usleep_range_state(2000,3000,2);
              _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c write error!\n"
                          ,"aw9620x_i2c_write",0x26b);
              uVar3 = 0xffffffff;
              goto LAB_00103120;
            }
          }
        }
      }
    }
  }
  uVar3 = 0;
LAB_00103120:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 00103410 aw9620x_reg_write_val_to_flash */

undefined8
aw9620x_reg_write_val_to_flash(long param_1,undefined4 param_2,undefined4 param_3,char *param_4)

{
  char cVar1;
  int iVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_reg_write_val_to_flash",0x4a7);
  cVar1 = *param_4;
  iVar2 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
  if (iVar2 == 0) {
    iVar2 = aw9620x_i2c_write(param_1,0x4820,6);
    if (iVar2 == 0) {
      if ((cVar1 != '\0') || (iVar2 = aw9620x_i2c_write(param_1,0x4794,0x5a637955), iVar2 == 0)) {
        iVar2 = aw9620x_reg_write_to_flash_once(param_1,param_2,param_3);
        if (iVar2 == 0) {
          iVar2 = aw9620x_i2c_write(param_1,0x4820,4);
          if (iVar2 == 0) {
            uVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
            if ((int)uVar3 == 0) {
              return uVar3;
            }
            uVar3 = *(undefined8 *)(param_1 + 0x30);
            pcVar4 = "[%s:%d] write 0xff20 err\n";
            uVar5 = 0x4be;
          }
          else {
            uVar3 = *(undefined8 *)(param_1 + 0x30);
            pcVar4 = "[%s:%d] write 0x4820 err\n";
            uVar5 = 0x4b8;
          }
        }
        else {
          uVar3 = *(undefined8 *)(param_1 + 0x30);
          pcVar4 = "[%s:%d] write aw9620x_reg_write_bin_once err\n";
          uVar5 = 0x4b1;
        }
        goto LAB_001035ac;
      }
      uVar3 = 0x455;
    }
    else {
      uVar3 = 0x44d;
    }
  }
  else {
    uVar3 = 0x446;
  }
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] write 0xff20 err\n",
              "aw9620x_close_write_flash_protect",uVar3);
  uVar3 = *(undefined8 *)(param_1 + 0x30);
  pcVar4 = "[%s:%d] close_write_flash_protect err\n";
  uVar5 = 0x4ab;
LAB_001035ac:
  _dev_printk(&DAT_0010dd3c,uVar3,pcVar4,"aw9620x_reg_write_val_to_flash",uVar5);
  return 0xffffffff;
}



/* 001035cc aw9620x_get_bin_checksum */

int aw9620x_get_bin_checksum(long param_1,uint param_2,uint param_3)

{
  ulong uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  
  if (param_3 != 0) {
    uVar5 = 0;
    iVar4 = 0;
    uVar6 = 0;
    do {
      if (uVar6 < param_2) {
        uVar7 = uVar5 + 3;
        uVar2 = uVar5 + 2;
        uVar3 = uVar5 + 1;
        uVar1 = (ulong)uVar5;
        uVar5 = uVar5 + 4;
        uVar7 = (uint)*(byte *)(param_1 + (ulong)uVar7) << 0x18 |
                (uint)*(byte *)(param_1 + (ulong)uVar2) << 0x10 |
                (uint)*(byte *)(param_1 + (ulong)uVar3) << 8 | (uint)*(byte *)(param_1 + uVar1);
      }
      else {
        uVar7 = 0xffffffff;
      }
      uVar6 = uVar6 + 4;
      iVar4 = uVar7 + iVar4;
    } while (uVar6 < param_3);
    return -iVar4;
  }
  return 0;
}



/* 00103644 aw9620x_update_bt_to_flash */

void aw9620x_update_bt_to_flash(long param_1,long param_2,undefined4 param_3)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 local_58;
  long lStack_50;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined8 *local_40;
  undefined8 local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_58 = 0;
  local_38 = 0x7f8;
  uStack_30 = 0x7fc000007f8;
  local_40 = &local_38;
  uStack_44 = 0;
  lStack_50 = param_2;
  local_48 = param_3;
  if (param_2 == 0) {
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] w_bin_offset is null err\n",
                "aw9620x_update_bt_to_flash",0x623);
    uVar2 = 0xffffffff;
  }
  else {
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_data_len = %d\n",
                "aw9620x_update_bt_to_flash",0x627,param_3);
    uVar2 = aw9620x_flash_update(param_1,&local_58);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00103720 aw9620x_update_fw_to_flash */

void aw9620x_update_fw_to_flash(long param_1,undefined8 param_2,undefined4 param_3)

{
  long lVar1;
  undefined1 local_58;
  undefined4 local_57;
  undefined3 uStack_53;
  undefined8 local_50;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined8 *local_40;
  undefined8 local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_38 = 0x800000037f8;
  uStack_30 = 0x3ffc00003ff8;
  local_58 = 1;
  uStack_44 = 0x2000;
  local_40 = &local_38;
  local_57 = 0;
  uStack_53 = 0;
  local_50 = param_2;
  local_48 = param_3;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_data_len = %d\n",
              "aw9620x_update_fw_to_flash",0x63c,param_3);
  aw9620x_flash_update(param_1,&local_58);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001037e0 get_pack_checksum */

int get_pack_checksum(long param_1,long param_2,ushort param_3,uint param_4,uint param_5)

{
  uint *puVar1;
  uint uVar2;
  ulong uVar3;
  int iVar4;
  
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","get_pack_checksum",
              0x64b);
  iVar4 = (uint)param_3 + (param_4 & 0xff) + (param_5 & 0xff);
  if (param_3 != 0) {
    uVar3 = 0;
    do {
      puVar1 = (uint *)(param_2 + uVar3);
      uVar3 = uVar3 + 4;
      uVar2 = (*puVar1 & 0xff00ff00) >> 8 | (*puVar1 & 0xff00ff) << 8;
      iVar4 = (uVar2 >> 0x10 | uVar2 << 0x10) + iVar4;
    } while (uVar3 < param_3);
  }
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] aw9610x check_sum = 0x%x\n",
              "get_pack_checksum",0x654,iVar4);
  return -iVar4;
}



/* 001038ac dri_to_soc_pack_send */

/* WARNING: Control flow encountered bad instruction data */

void dri_to_soc_pack_send(long param_1,byte param_2,byte param_3,ulong param_4,void *param_5)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  ushort uVar4;
  long lVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined8 uVar8;
  ulong uVar9;
  long local_78;
  undefined4 *local_70;
  long local_68;
  
  lVar5 = sp_el0;
  local_68 = *(long *)(lVar5 + 0x710);
  puVar7 = (undefined4 *)__kmalloc_noprof((param_4 & 0xffff) + 0xe,0xdc0);
  if (puVar7 == (undefined4 *)0x0) {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] kzalloc_ err!\n",
                "dri_to_soc_pack_send",0x664);
LAB_00103934:
    uVar8 = 0xffffffff;
  }
  else {
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                "dri_to_soc_pack_send",0x668);
    iVar6 = (uint)param_4 + 0xc;
    uVar8 = *(undefined8 *)(param_1 + 0x30);
    *puVar7 = 0x2000008;
    uVar2 = (uint)param_4 & 0xffff;
    *(char *)(puVar7 + 1) = (char)((uint)iVar6 >> 8);
    *(char *)((long)puVar7 + 5) = (char)iVar6;
    _dev_printk(&DAT_0010eb37,uVar8,"[%s:%d] enter\n","get_pack_checksum",0x64b);
    iVar6 = (uint)param_3 + (uint)param_2 + uVar2;
    if ((param_4 & 0xffff) != 0) {
      uVar9 = 0;
      do {
        puVar1 = (uint *)((long)param_5 + uVar9);
        uVar9 = uVar9 + 4;
        uVar3 = (*puVar1 & 0xff00ff00) >> 8 | (*puVar1 & 0xff00ff) << 8;
        iVar6 = (uVar3 >> 0x10 | uVar3 << 0x10) + iVar6;
      } while (uVar9 < (param_4 & 0xffff));
    }
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] aw9610x check_sum = 0x%x\n",
                "get_pack_checksum",0x654,iVar6);
    iVar6 = -iVar6;
    uVar8 = *(undefined8 *)(param_1 + 0x30);
    *(char *)((long)puVar7 + 9) = (char)iVar6;
    *(char *)(puVar7 + 2) = (char)((uint)iVar6 >> 8);
    *(char *)((long)puVar7 + 6) = (char)((uint)iVar6 >> 0x18);
    *(char *)((long)puVar7 + 7) = (char)((uint)iVar6 >> 0x10);
    *(byte *)((long)puVar7 + 10) = param_2;
    *(byte *)((long)puVar7 + 0xb) = param_3;
    *(char *)(puVar7 + 3) = (char)(param_4 >> 8);
    *(char *)((long)puVar7 + 0xd) = (char)param_4;
    _dev_printk(&DAT_0010eb37,uVar8,"[%s:%d] length = %d\n","dri_to_soc_pack_send",0x687,uVar2);
    if ((param_4 & 0xffff) == 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] length == 0\n",
                  "dri_to_soc_pack_send",0x68c);
    }
    else {
      if (false) {
        __fortify_panic(0x11,param_4 & 0xffff);
                    /* WARNING: Bad instruction - Truncating control flow here */
        halt_baddata();
      }
      memcpy((void *)((long)puVar7 + 0xe),param_5,param_4 & 0xffff);
    }
    uVar4 = (short)param_4 + 0xe;
    local_78 = (ulong)uVar4 << 0x20;
    local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
    local_70 = puVar7;
    iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
    if (iVar6 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n","dri_to_soc_pack_send",
                  0x69b,5,iVar6);
      local_78 = (ulong)uVar4 << 0x20;
      local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
      local_70 = puVar7;
      iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
      if (iVar6 < 0) {
        _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n","dri_to_soc_pack_send",
                    0x69b,4,iVar6);
        local_78 = (ulong)uVar4 << 0x20;
        local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
        local_70 = puVar7;
        iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
        if (iVar6 < 0) {
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n","dri_to_soc_pack_send"
                      ,0x69b,3,iVar6);
          local_78 = (ulong)uVar4 << 0x20;
          local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
          local_70 = puVar7;
          iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
          if (iVar6 < 0) {
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n",
                        "dri_to_soc_pack_send",0x69b,2,iVar6);
            local_78 = (ulong)uVar4 << 0x20;
            local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
            local_70 = puVar7;
            iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
            if (iVar6 < 0) {
              _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                          "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n",
                          "dri_to_soc_pack_send",0x69b,1,iVar6);
              local_78 = (ulong)uVar4 << 0x20;
              local_78 = CONCAT62(local_78._2_6_,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
              local_70 = puVar7;
              iVar6 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_78,1);
              if (iVar6 < 0) {
                _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                            "[%s:%d] aw9620x i2c write cmd err cnt = %d ret = %d\n",
                            "dri_to_soc_pack_send",0x69b,0,iVar6);
                kfree(puVar7);
                _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                            "[%s:%d] i2c write cmd err!!! ret = %d\n","dri_to_soc_pack_send",0x6a4,
                            iVar6);
                goto LAB_00103934;
              }
            }
          }
        }
      }
    }
    kfree(puVar7);
    uVar8 = 0;
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar8);
}



/* 00103d78 soc_to_dri_pack_recv */

void soc_to_dri_pack_recv(long param_1,long param_2,int param_3,undefined8 param_4)

{
  undefined2 uVar1;
  undefined2 uVar2;
  long lVar3;
  int iVar4;
  undefined8 uVar5;
  undefined8 local_68;
  undefined8 local_60;
  undefined8 local_58;
  long local_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","soc_to_dri_pack_recv"
              ,0x6b2);
  uVar5 = 0xffffffff;
  if ((param_2 != 0) && (param_3 != 0)) {
    uVar1 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
    local_68 = CONCAT62(0x20000,uVar1);
    local_58._0_4_ = CONCAT22(1,uVar1);
    uVar1 = (undefined2)param_3;
    local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
    local_58 = (ulong)(uint6)local_58;
    local_60 = param_4;
    local_50 = param_2;
    iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
    if (iVar4 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n","soc_to_dri_pack_recv",
                  0x6bb,5,iVar4);
      uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
      local_68 = CONCAT62(0x20000,uVar2);
      local_58._0_4_ = CONCAT22(1,uVar2);
      local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
      local_58 = (ulong)(uint6)local_58;
      local_60 = param_4;
      local_50 = param_2;
      iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
      if (iVar4 < 0) {
        _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n","soc_to_dri_pack_recv",
                    0x6bb,4,iVar4);
        uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
        local_68 = CONCAT62(0x20000,uVar2);
        local_58._0_4_ = CONCAT22(1,uVar2);
        local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
        local_58 = (ulong)(uint6)local_58;
        local_60 = param_4;
        local_50 = param_2;
        iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
        if (iVar4 < 0) {
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n","soc_to_dri_pack_recv",
                      0x6bb,3,iVar4);
          uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
          local_68 = CONCAT62(0x20000,uVar2);
          local_58._0_4_ = CONCAT22(1,uVar2);
          local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
          local_58 = (ulong)(uint6)local_58;
          local_60 = param_4;
          local_50 = param_2;
          iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
          if (iVar4 < 0) {
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n",
                        "soc_to_dri_pack_recv",0x6bb,2,iVar4);
            uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
            local_68 = CONCAT62(0x20000,uVar2);
            local_58._0_4_ = CONCAT22(1,uVar2);
            local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
            local_58 = (ulong)(uint6)local_58;
            local_60 = param_4;
            local_50 = param_2;
            iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
            if (iVar4 < 0) {
              _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                          "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n",
                          "soc_to_dri_pack_recv",0x6bb,1,iVar4);
              uVar2 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
              local_68 = CONCAT62(0x20000,uVar2);
              local_58._0_4_ = CONCAT22(1,uVar2);
              local_58._0_6_ = CONCAT24(uVar1,(undefined4)local_58);
              local_58 = (ulong)(uint6)local_58;
              local_60 = param_4;
              local_50 = param_2;
              iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_68,2);
              if (iVar4 < 0) {
                _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                            "[%s:%d] aw9620x i2c read cmd err cnt = %d ret = %d\n",
                            "soc_to_dri_pack_recv",0x6bb,0,iVar4);
                _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                            "[%s:%d] aw9620x i2c read cmd err!!! ret = %d\n","soc_to_dri_pack_recv",
                            0x6c3,iVar4);
                uVar5 = 0xffffffff;
                goto LAB_00103e30;
              }
            }
          }
        }
      }
    }
    uVar5 = 0;
  }
LAB_00103e30:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}



/* 001040ec soc_to_dri_pack_parse */

void soc_to_dri_pack_parse(long param_1,int param_2,char param_3,char param_4)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  ushort *puVar6;
  undefined8 uVar7;
  char *pcVar8;
  undefined8 uVar9;
  undefined2 local_5c [2];
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  uVar1 = param_2 + 0xc;
  local_5c[0] = 0x18;
  puVar6 = (ushort *)__kmalloc_noprof(uVar1,0xdc0);
  uVar7 = *(undefined8 *)(param_1 + 0x30);
  if (puVar6 == (ushort *)0x0) {
    pcVar8 = "[%s:%d] kzalloc_ err!\n";
    uVar9 = 0x6da;
LAB_00104358:
    _dev_printk(&DAT_0010dd3c,uVar7,pcVar8,"soc_to_dri_pack_parse",uVar9);
  }
  else {
    _dev_printk(&DAT_0010eb37,uVar7,"[%s:%d] enter\n","soc_to_dri_pack_parse",0x6de);
    iVar5 = soc_to_dri_pack_recv(param_1,puVar6,uVar1,local_5c);
    if (iVar5 == 0) {
      if (uVar1 < 2) {
LAB_00104394:
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(1,0x104398);
        (*pcVar4)();
      }
      *puVar6 = *puVar6 >> 8 | *puVar6 << 8;
      if (((uVar1 & 0xfffffffe) == 2) || ((uVar1 & 0xfffffffe) == 2)) goto LAB_00104394;
      puVar6[1] = puVar6[1] >> 8 | puVar6[1] << 8;
      if ((uVar1 < 10) || (((uVar1 & 0xfffffffe) == 10 || ((uVar1 & 0xfffffffe) == 10))))
      goto LAB_00104394;
      puVar6[5] = puVar6[5] >> 8 | puVar6[5] << 8;
      if ((uVar1 < 4) || (((uVar1 & 0xfffffffc) == 4 || ((uVar1 & 0xfffffffc) == 4))))
      goto LAB_00104394;
      uVar2 = (*(uint *)(puVar6 + 2) & 0xff00ff00) >> 8 | (*(uint *)(puVar6 + 2) & 0xff00ff) << 8;
      *(uint *)(puVar6 + 2) = uVar2 >> 0x10 | uVar2 << 0x10;
      if (uVar1 < 0x10) goto LAB_00104394;
      iVar5 = *(int *)(puVar6 + 6);
      _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] header= 0x%x, size= 0x%x, length= 0x%x, checksum= 0x%x,module= 0x%x, command= 0x%x, length=0x%x, cmd_status = %d\n"
                  ,"soc_to_dri_pack_parse",0x6f8);
      if ((((char)puVar6[4] == param_3) && (iVar5 == 0)) && (*(char *)((long)puVar6 + 9) == param_4)
         ) {
        _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] soc_to_dri_pack_parse ok\n","soc_to_dri_pack_parse",0x6fb);
        kfree(puVar6);
        uVar7 = 0;
        goto LAB_00104360;
      }
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      pcVar8 = "[%s:%d] soc_to_dri_pack_parse err!!!\n";
      uVar9 = 0x6fd;
      goto LAB_00104358;
    }
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] pack parse err\n",
                "soc_to_dri_pack_parse",0x6e7);
    kfree(puVar6);
  }
  uVar7 = 0xffffffff;
LAB_00104360:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar7);
}



/* 001043a0 aw9620x_fw_update */

void aw9620x_fw_update(long param_1,char param_2,long param_3,uint param_4,uint param_5)

{
  ulong uVar1;
  uint uVar2;
  uint uVar3;
  long lVar4;
  bool bVar5;
  int iVar6;
  int iVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *pcVar10;
  char *pcVar11;
  undefined8 uVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  undefined8 local_88;
  undefined8 local_80;
  uint local_78 [3];
  undefined4 local_6c;
  long local_68;
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] fw_len = %d,app_version = 0x%x\n","aw9620x_fw_update",0xa07,param_4,param_5);
  if (param_2 == '\0') {
    local_78[0] = 0;
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                "aw9620x_fw_version_cmp",0x722);
    iVar6 = aw9620x_i2c_read(param_1,0x1a10,local_78);
    uVar15 = local_78[0];
    if (iVar6 < 0) {
      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] read firmware version err\n","aw9620x_fw_version_cmp",0x726);
      goto LAB_001044dc;
    }
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] REG_FWVER :0x%08x bin_fwver :0x%08x!\n","aw9620x_fw_version_cmp",0x72a,
                local_78[0],param_5);
    if (uVar15 != param_5) goto LAB_001044dc;
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    puVar8 = &DAT_0010eb37;
    pcVar10 = "[%s:%d] bin fw not greater than soc fw, no update!\n";
    pcVar11 = "aw9620x_fw_update";
    uVar12 = 0xa0c;
LAB_001044d0:
    _dev_printk(puVar8,uVar9,pcVar10,pcVar11,uVar12);
    uVar9 = 0;
    goto LAB_001049e8;
  }
LAB_001044dc:
  local_88 = 0;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_send_all_update_cmd",0x974);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] 1.Send online upgrade command\n","aw9620x_send_all_update_cmd",0x978);
  local_78[0] = 0;
  iVar6 = aw9620x_i2c_write(param_1,0x4408,2);
  if (iVar6 == 0) {
    uVar15 = 0;
    do {
      iVar6 = aw9620x_i2c_read(param_1,0x1a14,local_78);
      if (iVar6 != 0) {
        uVar9 = *(undefined8 *)(param_1 + 0x30);
        puVar8 = &DAT_0010dd3c;
        pcVar11 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
        uVar12 = 0x90d;
        goto LAB_001047cc;
      }
      if (local_78[0] == 0x3000000) {
        uVar9 = *(undefined8 *)(param_1 + 0x30);
        pcVar11 = "[%s:%d] enter SLEEP MODE OK!\n";
        uVar12 = 0x911;
        goto LAB_00104634;
      }
      usleep_range_state(1000,0x3f2,2);
      bVar5 = uVar15 < 99;
      uVar15 = uVar15 + 1;
    } while (bVar5);
    iVar6 = aw9620x_i2c_read(param_1,0x1a10,local_78);
    if (iVar6 != 0) {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      puVar8 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
      uVar12 = 0x91a;
      goto LAB_001047cc;
    }
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    if (local_78[0] != 0x3000000) {
      puVar8 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] enter AW_PUB_VER SLEEP MODE err\n";
      uVar12 = 0x920;
      goto LAB_001047cc;
    }
    pcVar11 = "[%s:%d] enterA W_PUB_VER SLEEP MODE OK!\n";
    uVar12 = 0x91e;
LAB_00104634:
    _dev_printk(&DAT_0010eb37,uVar9,pcVar11,"aw9620x_send_online_cmd",uVar12);
    iVar6 = aw9620x_i2c_write(param_1,0x4408,0x14);
    if (iVar6 != 0) {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      puVar8 = &DAT_0010eb37;
      pcVar11 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
      uVar12 = 0x927;
      goto LAB_001047cc;
    }
    msleep(1);
    iVar6 = aw9620x_read_ack_irq(param_1);
    if (iVar6 != 0) {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      puVar8 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] read_ack_irq err\n";
      uVar12 = 0x92f;
      goto LAB_001047cc;
    }
    *(undefined1 *)(param_1 + 0x280) = 1;
    iVar6 = aw9620x_i2c_read(param_1,0x1c30,(undefined4 *)(param_1 + 0x290));
    if (iVar6 == 0) {
      iVar6 = aw9620x_i2c_read(param_1,0x1c34,(undefined4 *)(param_1 + 0x294));
      if (iVar6 != 0) {
        uVar9 = *(undefined8 *)(param_1 + 0x30);
        pcVar11 = "[%s:%d] read AW_BT_VER_INF_DATE err\n";
        uVar12 = 0x8e4;
        goto LAB_00104a60;
      }
      iVar6 = aw9620x_reg_read_all_val(param_1,(undefined4 *)(param_1 + 0x298),0x7fc);
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      if (iVar6 != 0) {
        pcVar11 = "[%s:%d] read bt_checksum err\n";
        uVar12 = 0x8eb;
        goto LAB_00104a60;
      }
      _dev_printk(&DAT_0010e5cb,uVar9,"[%s:%d] boot version:0x%08x, date:0x%08x, checksum 0x%08x\n",
                  "aw9620x_get_fw_and_bt_info",0x8ef,*(undefined4 *)(param_1 + 0x290),
                  *(undefined4 *)(param_1 + 0x294),*(undefined4 *)(param_1 + 0x298));
      uVar15 = 0;
      iVar6 = 0;
      uVar13 = 0xfffffffc;
      do {
        uVar13 = uVar13 + 4;
        if (uVar13 < param_4) {
          uVar14 = uVar15 + 3;
          uVar2 = uVar15 + 2;
          uVar3 = uVar15 + 1;
          uVar1 = (ulong)uVar15;
          uVar15 = uVar15 + 4;
          uVar14 = (uint)*(byte *)(param_3 + (ulong)uVar14) << 0x18 |
                   (uint)*(byte *)(param_3 + (ulong)uVar2) << 0x10 |
                   (uint)*(byte *)(param_3 + (ulong)uVar3) << 8 | (uint)*(byte *)(param_3 + uVar1);
        }
        else {
          uVar14 = 0xffffffff;
        }
        iVar6 = uVar14 + iVar6;
      } while (uVar13 >> 2 < 0xdfd);
      uVar15 = -iVar6;
      *(uint *)(param_1 + 0x28c) = uVar15;
      _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),"[%s:%d] firmwarw checksum 0x%08x\n"
                  ,"aw9620x_get_fw_and_bt_info",0x8f9,uVar15);
      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 2.send start cmd\n",
                  "aw9620x_send_all_update_cmd",0x988);
      *(undefined4 *)(param_1 + 0x24) = 1;
      iVar6 = aw9620x_send_once_cmd(param_1,1,1,0,0);
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      if (iVar6 == 0) {
        _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] 3.a en fw check erase_last_sector\n",
                    "aw9620x_send_all_update_cmd",0x993);
        local_78[0] = 0x803f0010;
        *(undefined4 *)(param_1 + 0x24) = 2;
        iVar6 = aw9620x_send_once_cmd(param_1,2,2,local_78,4);
        if (iVar6 == 0) {
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] cnt : %d, addr = 0x%x\n","aw9620x_flash_erase_last_sector",0x964,0x40
                      ,0x10003f80);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 3.b en fw check\n",
                      "aw9620x_send_all_update_cmd",0x99b);
          *(undefined4 *)(param_1 + 0x24) = 4;
          local_80 = 0;
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                      "aw9620x_write_firmware_checksum",0x892);
          uVar13 = (uVar15 & 0xff00ff00) >> 8 | (uVar15 & 0xff00ff) << 8;
          local_6c = uVar13 >> 0x10 | uVar13 << 0x10;
          local_78[0] = 0;
          local_78[1] = 0xf83f0010;
          local_78[2] = 0x22202220;
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x%x 0x%x 0x%x 0x%x\n",
                      "aw9620x_write_firmware_checksum",0x8ab,0,0,0,0);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x%x 0x%x 0x%x 0x%x\n",
                      "aw9620x_write_firmware_checksum",0x8ab,0x10,0,0x3f,0xf8);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x%x 0x%x 0x%x 0x%x\n",
                      "aw9620x_write_firmware_checksum",0x8ab,0x20,0x22,0x20,0x22);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x%x 0x%x 0x%x 0x%x\n",
                      "aw9620x_write_firmware_checksum",0x8ab,(undefined1)local_6c,local_6c._1_1_,
                      local_6c._2_1_,local_6c >> 0x18);
          iVar6 = aw9620x_send_once_cmd(param_1,1,2,local_78,0x10);
          if (iVar6 == 0) {
            iVar6 = aw9620x_reg_read_all_val(param_1,(long)&local_80 + 4,0x3ff8);
            if (iVar6 == 0) {
              iVar6 = aw9620x_reg_read_all_val(param_1,&local_80,0x3ffc);
              uVar9 = *(undefined8 *)(param_1 + 0x30);
              if (iVar6 == 0) {
                uVar13 = (uint)local_80;
                iVar6 = local_80._4_4_;
                _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] r_check_en :0x%08x, r_checksum 0x%08x\n",
                            "aw9620x_write_firmware_checksum",0x8c7,local_80._4_4_,
                            local_80 & 0xffffffff);
                uVar9 = *(undefined8 *)(param_1 + 0x30);
                if ((iVar6 == 0x20222022) && (uVar13 == uVar15)) {
                  _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] Consistent reading and writing\n",
                              "aw9620x_write_firmware_checksum",0x8ca);
                  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                              "[%s:%d] 4.send Erase Chip Cmd\n","aw9620x_send_all_update_cmd",0x9a5)
                  ;
                  iVar6 = 0;
                  uVar15 = 0x10002000;
                  do {
                    uVar13 = (uVar15 & 0xff00ff00) >> 8 | (uVar15 & 0xff00ff) << 8;
                    local_78[0] = uVar13 >> 0x10 | uVar13 << 0x10;
                    *(undefined4 *)(param_1 + 0x24) = 2;
                    iVar7 = aw9620x_send_once_cmd(param_1,2,2,local_78,4);
                    if (iVar7 != 0) {
                      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                                  "[%s:%d] send_UPDATE_START_CMD_cmd err i = %d\n",
                                  "aw9620x_flash_erase_sector",0x948,iVar6);
                      uVar9 = *(undefined8 *)(param_1 + 0x30);
                      pcVar11 = "[%s:%d] aw9620x_flash_erase_sector err\n";
                      uVar12 = 0x9a8;
                      goto LAB_001047f0;
                    }
                    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                                "[%s:%d] cnt : %d, addr = 0x%x\n","aw9620x_flash_erase_sector",0x94b
                                ,iVar6,uVar15);
                    iVar6 = iVar6 + 1;
                    uVar15 = uVar15 + 0x80;
                  } while (iVar6 != 0x3f);
                  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                              "[%s:%d] 5.Cycle write firmware\n","aw9620x_send_all_update_cmd",0x9ae
                             );
                  *(undefined4 *)(param_1 + 0x24) = 3;
                  iVar6 = aw9620x_cycle_write_firmware(param_1,param_3,param_4);
                  uVar9 = *(undefined8 *)(param_1 + 0x30);
                  if (iVar6 == 0) {
                    _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] 6.send stop\n",
                                "aw9620x_send_all_update_cmd",0x9b8);
                    *(undefined4 *)(param_1 + 0x24) = 6;
                    iVar6 = aw9620x_send_stop_cmd(param_1);
                    uVar9 = *(undefined8 *)(param_1 + 0x30);
                    if (iVar6 == 0) {
                      pcVar11 = "aw9620x_send_all_update_cmd";
                      _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] %s ok, update firmware ok!\n",
                                  "aw9620x_send_all_update_cmd",0x9c0,"aw9620x_send_all_update_cmd")
                      ;
                      uVar9 = *(undefined8 *)(param_1 + 0x30);
                      puVar8 = &DAT_0010dd3c;
                      pcVar10 = "[%s:%d] prot update fw ok!!!\n";
                      uVar12 = 0x9f5;
                      goto LAB_001044d0;
                    }
                    pcVar11 = "[%s:%d] stop err\n";
                    uVar12 = 0x9bc;
                  }
                  else {
                    pcVar11 = "[%s:%d] cycle_write_firmware err\n";
                    uVar12 = 0x9b2;
                  }
                  goto LAB_001047f0;
                }
                puVar8 = &DAT_0010dd3c;
                pcVar11 = 
                "[%s:%d] err ! r_check_en != AW_CHECK_EN_VAL || r_checksum != w_checksum\n";
                uVar12 = 0x8ce;
              }
              else {
                puVar8 = &DAT_0010eb37;
                pcVar11 = "[%s:%d] aw9620x_read check_en err\n";
                uVar12 = 0x8c1;
              }
            }
            else {
              uVar9 = *(undefined8 *)(param_1 + 0x30);
              puVar8 = &DAT_0010eb37;
              pcVar11 = "[%s:%d] aw9620x_read check_en err\n";
              uVar12 = 0x8ba;
            }
            _dev_printk(puVar8,uVar9,pcVar11,"aw9620x_write_firmware_checksum",uVar12);
          }
          else {
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] %s err\n",
                        "aw9620x_write_firmware_checksum",0x8b3,"aw9620x_write_firmware_checksum");
          }
          uVar9 = *(undefined8 *)(param_1 + 0x30);
          pcVar11 = "[%s:%d] aw9620x_write_firmware_checksum err\n";
          uVar12 = 0x99f;
        }
        else {
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] send_UPDATE_START_CMD_cmd\n","aw9620x_flash_erase_last_sector",0x961)
          ;
          uVar9 = *(undefined8 *)(param_1 + 0x30);
          pcVar11 = "[%s:%d] aw9620x_flash_erase_sector err\n";
          uVar12 = 0x996;
        }
      }
      else {
        pcVar11 = "[%s:%d] send_UPDATE_START_CMD_cmd err\n";
        uVar12 = 0x98e;
      }
    }
    else {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      pcVar11 = "[%s:%d] read AW_BT_VER_INF_VERSION err\n";
      uVar12 = 0x8de;
LAB_00104a60:
      _dev_printk(&DAT_0010dd3c,uVar9,pcVar11,"aw9620x_get_fw_and_bt_info",uVar12);
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      pcVar11 = "[%s:%d] aw9620x_get_fw_and_bt_infor\n";
      uVar12 = 0x982;
    }
  }
  else {
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    puVar8 = &DAT_0010dd3c;
    pcVar11 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
    uVar12 = 0x906;
LAB_001047cc:
    _dev_printk(puVar8,uVar9,pcVar11,"aw9620x_send_online_cmd",uVar12);
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    pcVar11 = "[%s:%d] 1.Send online upgrade command err\n";
    uVar12 = 0x97b;
  }
LAB_001047f0:
  _dev_printk(&DAT_0010eb37,uVar9,pcVar11,"aw9620x_send_all_update_cmd",uVar12);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] Write through protocol failed, start write through register\n",
              "aw9620x_send_all_update_cmd",0x9c4);
  iVar6 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
  if (iVar6 == 0) {
    iVar6 = aw9620x_i2c_read(param_1,0x4748,&local_88);
    if (iVar6 == 0) {
      if (((int)local_88 == 0) || (iVar6 = aw9620x_i2c_write(param_1,0x4748,0), iVar6 == 0)) {
        iVar6 = aw9620x_i2c_read(param_1,0x4744,(long)&local_88 + 4);
        if (iVar6 == 0) {
          if (((local_88 & 0xff00000000000000) == 0) ||
             (iVar6 = aw9620x_i2c_write(param_1,0x4744,local_88._4_4_ & 0xffffff), iVar6 == 0)) {
            iVar6 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
            if (iVar6 == 0) {
              if (param_2 != '\x01') {
                uVar9 = 0xfffffffc;
                goto LAB_001049e8;
              }
              uVar9 = *(undefined8 *)(param_1 + 0x30);
              puVar8 = &DAT_0010eb37;
              pcVar11 = "[%s:%d] aw9620x->direct_updata_flag = AW_TURE\n";
              uVar12 = 0x9ee;
            }
            else {
              uVar9 = *(undefined8 *)(param_1 + 0x30);
              puVar8 = &DAT_0010dd3c;
              pcVar11 = "[%s:%d] REG_APB_ACCESS_EN wr err\n";
              uVar12 = 0x9e9;
            }
          }
          else {
            uVar9 = *(undefined8 *)(param_1 + 0x30);
            puVar8 = &DAT_0010dd3c;
            pcVar11 = "[%s:%d] 0x4744 wr err\n";
            uVar12 = 0x9e2;
          }
        }
        else {
          uVar9 = *(undefined8 *)(param_1 + 0x30);
          puVar8 = &DAT_0010dd3c;
          pcVar11 = "[%s:%d] 0x4744 read err\n";
          uVar12 = 0x9db;
        }
      }
      else {
        uVar9 = *(undefined8 *)(param_1 + 0x30);
        puVar8 = &DAT_0010dd3c;
        pcVar11 = "[%s:%d] write REG_BOOT_LOADER_ACTIVE err\n";
        uVar12 = 0x9d4;
      }
    }
    else {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      puVar8 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] read REG_BOOT_LOADER_ACTIVE err\n";
      uVar12 = 0x9ce;
    }
  }
  else {
    uVar9 = *(undefined8 *)(param_1 + 0x30);
    puVar8 = &DAT_0010dd3c;
    pcVar11 = "[%s:%d] REG_APB_ACCESS_EN err\n";
    uVar12 = 0x9c8;
  }
  _dev_printk(puVar8,uVar9,pcVar11,"aw9620x_send_all_update_cmd",uVar12);
  uVar9 = 0xffffffff;
LAB_001049e8:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar9);
}



/* 00105064 aw9620x_irq_handle_func */

void aw9620x_irq_handle_func(long param_1)

{
  uint uVar1;
  uint uVar2;
  code *pcVar3;
  int iVar4;
  undefined8 uVar5;
  char *pcVar6;
  undefined8 uVar7;
  long lVar8;
  uint uVar9;
  long lVar10;
  undefined8 local_70;
  long local_68;
  
  lVar10 = sp_el0;
  local_68 = *(long *)(lVar10 + 0x710);
  local_70 = 0;
  iVar4 = aw9620x_i2c_read(param_1,0x4410,(long)&local_70 + 4);
  if (iVar4 < 0) {
    uVar5 = *(undefined8 *)(param_1 + 0x30);
    pcVar6 = "[%s:%d] i2c IO error\n";
    uVar7 = 0xa61;
  }
  else {
    if ((local_70 & 0x100000000) != 0) {
      if (1 < *(uint *)(param_1 + 8)) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x105380);
        (*pcVar3)();
      }
      (&aw_init_irq_flag)[*(uint *)(param_1 + 8)] = 1;
    }
    iVar4 = aw9620x_i2c_read(param_1,0x1a18,&local_70);
    if (-1 < iVar4) {
      uVar2 = (uint)local_70;
      uVar9 = 0;
      lVar10 = -0x180;
      do {
        lVar8 = *(long *)(param_1 + 0x200);
        if ((*(char *)(lVar8 + lVar10 + 0x180) != '\0') &&
           (uVar1 = uVar2 >> (ulong)(uVar9 & 0x1f) & 1 |
                    (uVar2 >> (ulong)(uVar9 & 0x1f | 8) & 1) << 1,
           *(uint *)(lVar8 + lVar10 + 0x184) != uVar1)) {
          if (uVar1 == 3) {
            input_event(*(undefined8 *)(lVar8 + lVar10 + 0x188),3,0x19,3);
          }
          else {
            if (uVar1 == 1) {
              input_event(*(undefined8 *)(lVar8 + lVar10 + 0x188),3,0x19,1);
              if (*(int *)(param_1 + 8) == 1) {
                input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),1,0x42,1);
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                pcVar6 = "[%s:%d] TRIGGER_TH0: F8 event report\n";
                uVar7 = 0xa8d;
              }
              else {
                if (*(int *)(param_1 + 8) != 0) goto LAB_00105134;
                input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),1,0x41,1);
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                pcVar6 = "[%s:%d] TRIGGER_TH0: F7 event report\n";
                uVar7 = 0xa89;
              }
            }
            else {
              if (uVar1 != 0) {
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                pcVar6 = "[%s:%d] error abs distance\n";
                uVar7 = 0xa94;
                goto LAB_00105318;
              }
              input_event(*(undefined8 *)(lVar8 + lVar10 + 0x188),3,0x19,0);
              if (*(int *)(param_1 + 8) == 1) {
                input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),1,0x42,0);
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                uVar7 = 0xa82;
                pcVar6 = "[%s:%d] TRIGGER_FAR: F8 event report\n";
              }
              else {
                if (*(int *)(param_1 + 8) != 0) goto LAB_00105134;
                input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),1,0x41,0);
                uVar5 = *(undefined8 *)(param_1 + 0x30);
                uVar7 = 0xa7d;
                pcVar6 = "[%s:%d] TRIGGER_FAR: F7 event report\n";
              }
            }
            _dev_printk(&DAT_0010e5cb,uVar5,pcVar6,"aw9620x_irq_handle_func",uVar7);
          }
LAB_00105134:
          input_event(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar10 + 0x188),0,0,0);
          *(uint *)(*(long *)(param_1 + 0x200) + lVar10 + 0x184) = uVar1;
        }
        lVar10 = lVar10 + 0x30;
        uVar9 = uVar9 + 1;
      } while (lVar10 != 0);
      goto LAB_0010531c;
    }
    uVar5 = *(undefined8 *)(param_1 + 0x30);
    pcVar6 = "[%s:%d] i2c IO error\n";
    uVar7 = 0xa6b;
  }
LAB_00105318:
  _dev_printk(&DAT_0010dd3c,uVar5,pcVar6,"aw9620x_irq_handle_func",uVar7);
LAB_0010531c:
  lVar10 = sp_el0;
  if (*(long *)(lVar10 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00105380 aw9620x_i2c_read */

void aw9620x_i2c_read(long param_1,uint param_2,uint *param_3)

{
  undefined2 uVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  uint uVar5;
  undefined1 local_90;
  undefined1 local_8f;
  uint local_8e;
  undefined8 local_88;
  undefined1 *local_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar2 = sp_el0;
  local_90 = (undefined1)(param_2 >> 8);
  local_68 = *(long *)(lVar2 + 0x710);
  uVar5 = 5;
  local_8e = 0;
  local_8f = (undefined1)param_2;
  do {
    uVar1 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
    local_88 = CONCAT62(0x20000,uVar1);
    local_78 = (ulong)CONCAT42(0x40001,uVar1);
    local_80 = &local_90;
    local_70 = (ulong)&local_90 | 2;
    iVar3 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x28) + 0x18),&local_88,2);
    if (-1 < iVar3) {
      if ((uVar5 >> 7 & 1) == 0) {
        uVar4 = 0;
        uVar5 = (local_8e & 0xff00ff00) >> 8 | (local_8e & 0xff00ff) << 8;
        *param_3 = uVar5 >> 0x10 | uVar5 << 0x10;
        goto LAB_00105494;
      }
      break;
    }
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] i2c read error reg: 0x%04x, ret= %d cnt= %d\n","aw9620x_i2c_read",0x23d,
                param_2 & 0xffff,iVar3,uVar5);
    usleep_range_state(2000,3000,2);
    uVar5 = uVar5 - 1;
  } while (uVar5 != 0xffffffff);
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c read error!\n",
              "aw9620x_i2c_read",0x244);
  uVar4 = 0xffffffff;
LAB_00105494:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}



/* 00105500 aw9620x_load_frimware_work */

void aw9620x_load_frimware_work(long param_1)

{
  ulong uVar1;
  ulong uVar2;
  ulong *puVar3;
  code *pcVar4;
  int iVar5;
  long lVar6;
  undefined8 uVar7;
  ulong __n;
  char *pcVar8;
  undefined8 uVar9;
  ulong uVar10;
  ulong uVar11;
  ulong uVar12;
  ulong *local_60;
  long local_58;
  
  lVar6 = sp_el0;
  local_58 = *(long *)(lVar6 + 0x710);
  local_60 = (ulong *)0x0;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_load_frimware_work",0xcf4);
  snprintf((char *)(param_1 + 0x2bf),0x1e,"aw9620x_fw_%d.bin",(ulong)*(uint *)(param_1 + 8));
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] name :%s\n",
              "aw9620x_load_frimware_work",0xcf9,param_1 + 0x2bf);
  iVar5 = request_firmware(&local_60,param_1 + 0x2bf,*(undefined8 *)(param_1 + 0x30));
  uVar7 = *(undefined8 *)(param_1 + 0x30);
  if (iVar5 == 0) {
    _dev_printk(&DAT_0010eb37,uVar7,"[%s:%d] parse %s ok!\n","aw9620x_load_frimware_work",0xd00,
                param_1 + 0x2bf);
    puVar3 = local_60;
    if (local_60 == (ulong *)0x0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] frimware request failed\n",
                  "aw9620x_parse_frimware",0xcb7);
LAB_00105904:
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      pcVar8 = "[%s:%d] reg_bin %s load err!\n";
      uVar9 = 0xd05;
      goto LAB_00105928;
    }
    _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] frimware request successfully\n","aw9620x_parse_frimware",0xcba);
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter, cont->size = %d\n",
                "aw9620x_parse_frimware",0xcbc,(int)*puVar3);
    uVar10 = *puVar3;
    uVar1 = uVar10 + 0x20e8;
    lVar6 = __kmalloc_noprof(uVar1,0xdc0);
    if (lVar6 == 0) {
      kfree(0);
      release_firmware(puVar3);
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] failed to allcating memory!\n","aw9620x_parse_frimware",0xcc2);
      goto LAB_00105904;
    }
    uVar12 = uVar1 >> 2;
    if (((uVar12 < 0x839) || (uVar11 = uVar1 & 0xfffffffffffffffc, uVar11 == 0x20e4)) ||
       (uVar12 == 0x839)) goto LAB_00105964;
    __n = *puVar3;
    uVar2 = 0;
    if (0x20e7 < uVar1) {
      uVar2 = uVar10;
    }
    *(int *)(lVar6 + 0x20e4) = (int)__n;
    if (uVar2 < __n) {
      uVar7 = __fortify_panic(0x11);
      goto LAB_00105970;
    }
    memcpy((void *)(lVar6 + 0x20e8),(void *)puVar3[1],__n);
    release_firmware(puVar3);
    iVar5 = aw_parsing_bin_file(lVar6);
    if (iVar5 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x parse bin fail! ret = %d\n","aw9620x_parse_frimware",0xccd,iVar5)
      ;
LAB_001058fc:
      kfree(lVar6);
      goto LAB_00105904;
    }
    if ((uVar12 < 0x839) || ((uVar1 & 0xfffffffffffffffc) == 0x20e4)) {
LAB_00105964:
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(1,0x105968);
      (*pcVar4)();
    }
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] reg chip name: %s, soc chip name: %s, len = %d\n","aw9620x_parse_frimware",
                0xcd2,param_1 + 0x2a1,lVar6 + 0x30,*(undefined4 *)(lVar6 + 0x20e4));
    if (*(char *)(param_1 + 3) == '\x01') {
      if (((uVar11 == 0x50) || (uVar11 == 0x54)) ||
         ((uVar1 < 0x54 ||
          (((uVar1 & 0xfffffffffffffffc) == 0x54 || ((uVar1 & 0xfffffffffffffffc) == 0x50))))))
      goto LAB_00105964;
      iVar5 = aw9620x_update_fw_to_flash
                        (param_1,lVar6 + 0x20e8 + (ulong)*(uint *)(lVar6 + 0x54),
                         *(undefined4 *)(lVar6 + 0x50));
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      if (iVar5 != 0) {
        pcVar8 = "[%s:%d] reg update_firmware err!\n";
        uVar9 = 0xcdf;
        goto LAB_001058f8;
      }
      pcVar8 = "[%s:%d] reg update_firmware ok!\n";
      uVar9 = 0xce2;
LAB_00105880:
      _dev_printk(&DAT_0010eb37,uVar7,pcVar8,"aw9620x_parse_frimware",uVar9);
    }
    else if (*(char *)(param_1 + 3) == '\0') {
      iVar5 = aw9620x_update_firmware(param_1,lVar6);
      uVar7 = *(undefined8 *)(param_1 + 0x30);
      if (iVar5 != 0) {
        pcVar8 = "[%s:%d] update_firmware err!\n";
        uVar9 = 0xcd7;
LAB_001058f8:
        _dev_printk(&DAT_0010dd3c,uVar7,pcVar8,"aw9620x_parse_frimware",uVar9);
        goto LAB_001058fc;
      }
      pcVar8 = "[%s:%d] update_firmware ok!\n";
      uVar9 = 0xcda;
      goto LAB_00105880;
    }
    kfree(lVar6);
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] reg_bin %s load ok!\n",
                "aw9620x_load_frimware_work",0xd08,param_1 + 0x2bf);
    uVar7 = 0;
  }
  else {
    pcVar8 = "[%s:%d] parse %s err!\n";
    uVar9 = 0xcfd;
LAB_00105928:
    _dev_printk(&DAT_0010dd3c,uVar7,pcVar8,"aw9620x_load_frimware_work",uVar9,param_1 + 0x2bf);
    uVar7 = 0xffffffff;
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_58) {
    return;
  }
LAB_00105970:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar7);
}



/* 00105978 aw9620x_update */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw9620x_update(long param_1)

{
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] aw9620x update enter\n",
              "aw9620x_update",0xd71);
  *(undefined8 *)(param_1 + 0x208) = 0xfffffffe00000;
  *(long *)(param_1 + 0x210) = param_1 + 0x210;
  *(long *)(param_1 + 0x218) = param_1 + 0x210;
  *(code **)(param_1 + 0x220) = aw9620x_update_work;
  init_timer_key(param_1 + 0x228,&delayed_work_timer_fn,0x200000,0,0);
  queue_delayed_work_on(0x20,_system_wq,param_1 + 0x208,0x4e2);
  return;
}



/* 00105a18 aw9620x_update_work */

void aw9620x_update_work(long param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  byte bVar3;
  long lVar4;
  bool bVar5;
  int iVar6;
  undefined *puVar7;
  undefined8 uVar8;
  char *pcVar9;
  undefined8 uVar10;
  char *pcVar11;
  undefined8 *puVar12;
  ulong uVar13;
  int local_6c;
  long local_68;
  
  lVar4 = sp_el0;
  pcVar11 = (char *)(param_1 + -0x208);
  local_68 = *(long *)(lVar4 + 0x710);
  mutex_lock(aw_lock);
  puVar12 = (undefined8 *)(param_1 + -0x1d8);
  _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] enter\n","aw9620x_update_work",0xd15);
  bVar3 = *(byte *)(param_1 + -0x202);
  if (bVar3 < 3) {
    if (bVar3 == 0) {
LAB_00105b50:
      *(undefined1 *)(param_1 + -0x205) = 0;
      iVar6 = aw9620x_load_frimware_work(pcVar11);
      if (iVar6 != 0) {
        _dev_printk(&DAT_0010dd3c,*puVar12,"[%s:%d] frimware load err!\n","aw9620x_update_work",
                    0xd30);
        goto LAB_00105cb4;
      }
LAB_00105b64:
      if (*pcVar11 == '\x01') {
        *pcVar11 = '\0';
        _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] start to download para!\n","aw9620x_para_loaded"
                    ,0xba6);
        uVar13 = 0;
        *(undefined1 *)(param_1 + -0x204) = 1;
        do {
          if (uVar13 == 200) {
            *(undefined4 *)(param_1 + -500) = 0xf;
          }
          else {
            uVar1 = (&aw9620x_reg_default)[uVar13];
            uVar2 = (&DAT_0010fbdc)[uVar13];
            aw9620x_i2c_write(pcVar11,uVar1,uVar2);
            _dev_printk(&DAT_0010e5cb,*puVar12,"[%s:%d] reg_addr = 0x%04x, reg_data = 0x%08x\n",
                        "aw9620x_para_loaded",0xbb4,uVar1,uVar2);
          }
          bVar5 = uVar13 < 0xde;
          uVar13 = uVar13 + 2;
        } while (bVar5);
        aw9620x_en_active(pcVar11);
        uVar8 = *puVar12;
        puVar7 = &DAT_0010e5cb;
        pcVar11 = "[%s:%d] para writen completely\n";
        pcVar9 = "aw9620x_para_loaded";
        uVar10 = 0xbb9;
      }
      else {
        iVar6 = aw9620x_load_def_reg_bin(pcVar11);
        if (iVar6 == 0) goto LAB_00105d98;
        uVar8 = *puVar12;
        puVar7 = &DAT_0010dd3c;
        pcVar11 = "[%s:%d] reg_bin load err!\n";
        pcVar9 = "aw9620x_update_work";
        uVar10 = 0xd68;
      }
    }
    else if (bVar3 == 2) {
      _dev_printk(&DAT_0010dd3c,*puVar12,"[%s:%d] enter\n","aw9620x_error_chipid_handle",0x3ec);
      local_6c = 0;
      _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] enter\n","aw9620x_check_chipid",0x34b);
      iVar6 = aw9620x_reg_read_all_val(pcVar11,&local_6c,0x4190);
      if (-1 < iVar6) {
        if (local_6c == 0x20226208) {
          pcVar9 = "[%s:%d] AW96208CSR check CHIP ID : 0x%08X\n";
          uVar10 = 0x20226208;
          uVar8 = 0x35c;
        }
        else if (local_6c == 0x20226205) {
          pcVar9 = "[%s:%d] AW96205DNR check CHIP ID : 0x%08X\n";
          uVar10 = 0x20226205;
          uVar8 = 0x359;
        }
        else {
          if (local_6c != 0x20226203) {
            _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] check chipid error, CHIP ID : 0x%08x\n",
                        "aw9620x_check_chipid",0x35f);
            goto LAB_00105b24;
          }
          pcVar9 = "[%s:%d] AW96203CSR check CHIP ID : 0x%08X\n";
          uVar8 = 0x356;
          uVar10 = 0x20226203;
        }
        _dev_printk(&DAT_0010eb37,*puVar12,pcVar9,"aw9620x_check_chipid",uVar8,uVar10);
        _dev_printk(&DAT_0010dd3c,*puVar12,"[%s:%d] update boot\n","aw9620x_error_chipid_handle",
                    0x3ef);
        iVar6 = aw9620x_reg_update_boot_work(pcVar11);
        uVar8 = *puVar12;
        if (iVar6 == 0) {
          _dev_printk(&DAT_0010dd3c,uVar8,"[%s:%d] update boot to flash update fw ok!!!\n",
                      "aw9620x_error_chipid_handle",0x3f2);
          iVar6 = aw9620x_soft_reset(pcVar11);
          if (iVar6 == 0) {
            iVar6 = aw9620x_read_chipid(pcVar11);
            if (iVar6 != 0) {
              _dev_printk(&DAT_0010dd3c,*puVar12,
                          "[%s:%d] after update boot, read chipid failed, ret=%d, \n",
                          "aw9620x_error_chipid_handle",0x3fc,iVar6);
              goto LAB_00105d98;
            }
            _dev_printk(&DAT_0010eb37,*puVar12,"[%s:%d] after update boot, read chipid ok!\n",
                        "aw9620x_error_chipid_handle",0x3fa);
            iVar6 = aw9620x_read_init_over_irq(pcVar11);
            uVar8 = *puVar12;
            if (iVar6 == -3) {
              _dev_printk(&DAT_0010dd3c,uVar8,"[%s:%d] _read_init_over_irq, ret=%d, \n",
                          "aw9620x_update_work",0xd21,0xfffffffd);
              aw9620x_get_err_info(pcVar11);
            }
            else {
              if (iVar6 == -1) {
                puVar7 = &DAT_0010dd3c;
                pcVar11 = "[%s:%d] read chipid failed\n";
                pcVar9 = "aw9620x_update_work";
                uVar10 = 0xd1e;
                goto LAB_00105d94;
              }
              _dev_printk(&DAT_0010dd3c,uVar8,"[%s:%d] read_init_over_irq ok!\n",
                          "aw9620x_update_work",0xd24);
            }
            goto LAB_00105b50;
          }
          uVar8 = *puVar12;
          pcVar11 = "[%s:%d] soft_reset failed :%d\n";
          uVar10 = 0x3f5;
        }
        else {
          pcVar11 = "[%s:%d] update_boot_to_flash failed :%d\n";
          uVar10 = 0x3ff;
        }
        _dev_printk(&DAT_0010dd3c,uVar8,pcVar11,"aw9620x_error_chipid_handle",uVar10,0xffffffff);
        goto LAB_00105d98;
      }
      _dev_printk(&DAT_0010dd3c,*puVar12,"[%s:%d] read chipid err\n","aw9620x_check_chipid",0x350);
LAB_00105b24:
      uVar8 = *puVar12;
      puVar7 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] nvr chipid err!\n";
      pcVar9 = "aw9620x_error_chipid_handle";
      uVar10 = 0x403;
    }
    else {
LAB_00105d74:
      uVar8 = *puVar12;
      puVar7 = &DAT_0010eb37;
      pcVar11 = "[%s:%d] aw9620x->init_err_flag error\n";
      pcVar9 = "aw9620x_update_work";
      uVar10 = 0xd5d;
    }
  }
  else {
    if (bVar3 == 3) goto LAB_00105b50;
    if (bVar3 != 5) goto LAB_00105d74;
LAB_00105cb4:
    iVar6 = aw9620x_reg_update_boot_work(pcVar11);
    uVar8 = *puVar12;
    if (iVar6 == 0) {
      _dev_printk(&DAT_0010eb37,uVar8,"[%s:%d] reg_update_boot ok\n","aw9620x_update_work",0xd39);
      *(undefined1 *)(param_1 + -0x205) = 1;
      iVar6 = aw9620x_load_frimware_work(pcVar11);
      if (iVar6 == 0) {
        iVar6 = aw9620x_recover_fun(pcVar11,0);
        if (iVar6 == 0) {
          iVar6 = aw9620x_soft_reset(pcVar11);
          if (iVar6 == 0) {
            iVar6 = aw9620x_read_chipid(pcVar11);
            if (iVar6 == 0) {
              iVar6 = aw9620x_read_init_over_irq(pcVar11);
              if (iVar6 == 0) goto LAB_00105b64;
              uVar8 = *puVar12;
              puVar7 = &DAT_0010dd3c;
              pcVar11 = "[%s:%d] init_over_irq err\n";
              pcVar9 = "aw9620x_update_work";
              uVar10 = 0xd58;
            }
            else {
              uVar8 = *puVar12;
              puVar7 = &DAT_0010dd3c;
              pcVar11 = "[%s:%d] read_chipid err\n";
              pcVar9 = "aw9620x_update_work";
              uVar10 = 0xd52;
            }
          }
          else {
            uVar8 = *puVar12;
            puVar7 = &DAT_0010dd3c;
            pcVar11 = "[%s:%d] soft_reset err\n";
            pcVar9 = "aw9620x_update_work";
            uVar10 = 0xd4b;
          }
        }
        else {
          uVar8 = *puVar12;
          puVar7 = &DAT_0010dd3c;
          pcVar11 = "[%s:%d] recover_fun err\n";
          pcVar9 = "aw9620x_update_work";
          uVar10 = 0xd46;
        }
      }
      else {
        uVar8 = *puVar12;
        puVar7 = &DAT_0010dd3c;
        pcVar11 = "[%s:%d] reg frimware load err!\n";
        pcVar9 = "aw9620x_update_work";
        uVar10 = 0xd40;
      }
    }
    else {
      puVar7 = &DAT_0010dd3c;
      pcVar11 = "[%s:%d] reg_update_boot err\n";
      pcVar9 = "aw9620x_update_work";
      uVar10 = 0xd36;
    }
  }
LAB_00105d94:
  _dev_printk(puVar7,uVar8,pcVar11,pcVar9,uVar10);
LAB_00105d98:
  mutex_unlock(aw_lock);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001060d8 aw9620x_check_isp_go_reg */

void aw9620x_check_isp_go_reg(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  int iVar6;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  iVar6 = 100;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  while( true ) {
    iVar2 = aw9620x_i2c_read(param_1,0x4714,&local_2c);
    if (iVar2 != 0) {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] write 0xff20 err\n";
      uVar5 = 0x42e;
      goto LAB_001061b0;
    }
    if (local_2c == 0) break;
    __const_udelay(0x418958);
    iVar6 = iVar6 + -1;
    if (iVar6 == -1) {
LAB_0010616c:
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] check_isp_go_reg err!\n";
      uVar5 = 0x437;
LAB_001061b0:
      _dev_printk(&DAT_0010dd3c,uVar3,pcVar4,"aw9620x_check_isp_go_reg",uVar5);
      uVar3 = 0xffffffff;
LAB_00106144:
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(uVar3);
      }
      return;
    }
  }
  if (-1 < iVar6) {
    uVar3 = 0;
    goto LAB_00106144;
  }
  goto LAB_0010616c;
}



/* 001061c0 aw9620x_reg_write_to_flash_once */

undefined8 aw9620x_reg_write_to_flash_once(long param_1,undefined2 param_2,undefined4 param_3)

{
  int iVar1;
  undefined8 uVar2;
  char *pcVar3;
  undefined8 uVar4;
  
  iVar1 = aw9620x_i2c_write(param_1,0x4704,param_2);
  if (iVar1 == 0) {
    iVar1 = aw9620x_i2c_write(param_1,0x4708,param_3);
    if (iVar1 == 0) {
      iVar1 = aw9620x_i2c_write(param_1,0x4710,0xc);
      if (iVar1 == 0) {
        iVar1 = aw9620x_i2c_write(param_1,0x4714,1);
        if (iVar1 == 0) {
          uVar2 = aw9620x_check_isp_go_reg(param_1);
          if ((int)uVar2 == 0) {
            return uVar2;
          }
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          pcVar3 = "[%s:%d] check_isp_go_reg err\n";
          uVar4 = 0x480;
        }
        else {
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          pcVar3 = "[%s:%d] write 0xff20 err\n";
          uVar4 = 0x47a;
        }
      }
      else {
        uVar2 = *(undefined8 *)(param_1 + 0x30);
        pcVar3 = "[%s:%d] write 0xff20 err\n";
        uVar4 = 0x473;
      }
    }
    else {
      uVar2 = *(undefined8 *)(param_1 + 0x30);
      pcVar3 = "[%s:%d] write 0xff20 err\n";
      uVar4 = 0x46c;
    }
  }
  else {
    uVar2 = *(undefined8 *)(param_1 + 0x30);
    pcVar3 = "[%s:%d] write 0xff20 err\n";
    uVar4 = 0x465;
  }
  _dev_printk(&DAT_0010dd3c,uVar2,pcVar3,"aw9620x_reg_write_to_flash_once",uVar4);
  return 0xffffffff;
}



/* 001062f8 aw9620x_reg_read_val */

undefined8 aw9620x_reg_read_val(long param_1,undefined8 param_2,uint param_3)

{
  int iVar1;
  undefined8 uVar2;
  char *pcVar3;
  undefined8 uVar4;
  undefined4 uVar5;
  
  iVar1 = aw9620x_i2c_write(param_1,0x4704,param_3 & 0xffff);
  if (iVar1 == 0) {
    uVar5 = 0x23;
    if ((param_3 >> 0xe & 3) == 0) {
      uVar5 = 3;
    }
    iVar1 = aw9620x_i2c_write(param_1,0x4710,uVar5);
    if (iVar1 == 0) {
      iVar1 = aw9620x_i2c_write(param_1,0x4714,1);
      if (iVar1 == 0) {
        iVar1 = aw9620x_check_isp_go_reg(param_1);
        if (iVar1 == 0) {
          uVar2 = aw9620x_i2c_read(param_1,0x470c,param_2);
          if ((int)uVar2 == 0) {
            return uVar2;
          }
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          pcVar3 = "[%s:%d] config ISP_CMD reg err\n";
          uVar4 = 0x4e9;
        }
        else {
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          pcVar3 = "[%s:%d] config check_isp_go_reg err\n";
          uVar4 = 0x4e3;
        }
      }
      else {
        uVar2 = *(undefined8 *)(param_1 + 0x30);
        pcVar3 = "[%s:%d] config ISP_CMD reg err\n";
        uVar4 = 0x4dd;
      }
    }
    else {
      uVar2 = *(undefined8 *)(param_1 + 0x30);
      pcVar3 = "[%s:%d] config ISP_CMD reg err\n";
      uVar4 = 0x4d7;
    }
  }
  else {
    uVar2 = *(undefined8 *)(param_1 + 0x30);
    pcVar3 = "[%s:%d] config PMU_CFG regerr\n";
    uVar4 = 0x4cd;
  }
  _dev_printk(&DAT_0010dd3c,uVar2,pcVar3,"aw9620x_reg_read_val",uVar4);
  return 0xffffffff;
}



/* 0010644c aw9620x_send_once_cmd */

undefined8
aw9620x_send_once_cmd
          (long param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4,undefined4 param_5)

{
  uint uVar1;
  int iVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_send_once_cmd",0x77b);
  iVar2 = dri_to_soc_pack_send(param_1,param_2,param_3,param_5,param_4);
  if (iVar2 == 0) {
    iVar2 = aw9620x_i2c_write(param_1,0x1c10,0x20000800);
    if (iVar2 == 0) {
      iVar2 = aw9620x_i2c_write(param_1,0x4408,0x15);
      if (iVar2 == 0) {
        uVar1 = *(int *)(param_1 + 0x24) - 1;
        if (uVar1 < 5) {
          uVar6 = *(undefined4 *)(&DAT_00110500 + (ulong)uVar1 * 4);
          uVar7 = *(undefined4 *)(&DAT_00110514 + (ulong)uVar1 * 4);
        }
        else {
          uVar6 = 0;
          uVar7 = 0;
        }
        _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] delay_ms_cnt = %d\n",
                    "aw9620x_send_once_cmd",0x7ad,uVar7);
        msleep(uVar7);
        iVar2 = aw9620x_read_ack_irq(param_1);
        if (iVar2 == 0) {
          uVar3 = soc_to_dri_pack_parse(param_1,uVar6,param_2,param_3);
          if ((int)uVar3 == 0) {
            return uVar3;
          }
          uVar3 = *(undefined8 *)(param_1 + 0x30);
          pcVar4 = "[%s:%d] soc_to_dri_pack_parse err\n";
          uVar5 = 0x7bb;
        }
        else {
          uVar3 = *(undefined8 *)(param_1 + 0x30);
          pcVar4 = "[%s:%d] read_ack_irq err\n";
          uVar5 = 0x7b4;
        }
      }
      else {
        uVar3 = *(undefined8 *)(param_1 + 0x30);
        pcVar4 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
        uVar5 = 0x78e;
      }
    }
    else {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
      uVar5 = 0x787;
    }
  }
  else {
    uVar3 = *(undefined8 *)(param_1 + 0x30);
    pcVar4 = "[%s:%d] UPDATE_START_CMD err\n";
    uVar5 = 0x781;
  }
  _dev_printk(&DAT_0010dd3c,uVar3,pcVar4,"aw9620x_send_once_cmd",uVar5);
  return 0xffffffff;
}



/* 00106640 aw9620x_cycle_write_firmware */

undefined8 aw9620x_cycle_write_firmware(long param_1,long param_2,uint param_3)

{
  undefined1 *puVar1;
  ulong uVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  uint uVar6;
  long lVar7;
  code *pcVar8;
  int iVar9;
  int iVar10;
  undefined1 *__s;
  undefined *puVar11;
  undefined8 uVar12;
  ulong extraout_x1;
  undefined8 uVar13;
  ulong uVar14;
  uint uVar15;
  ulong uVar16;
  ulong __n;
  ulong __n_00;
  ulong uVar17;
  uint uVar18;
  uint uVar19;
  ulong uVar20;
  
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_cycle_write_firmware",0x815);
  if ((param_3 & 3) == 0) {
    iVar10 = 0;
  }
  else {
    iVar10 = 4 - (param_3 & 3);
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] word_comp_len = %d\n",
                "aw9620x_cycle_write_firmware",0x819,iVar10);
  }
  param_3 = iVar10 + param_3;
  __n_00 = (ulong)(param_3 + 8);
  uVar14 = (ulong)(param_3 >> 6) / 0x3f;
  uVar6 = param_3 + ((param_3 >> 6) / 0x3f) * -0xfc0;
  __n = (ulong)uVar6;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] firmware_len = %d cycle_cnt = %d cycle_cnt_last_len = %d send_all_len = %d\n"
              ,"aw9620x_cycle_write_firmware",0x822,param_3,uVar14,__n,param_3 + 8);
  __s = (undefined1 *)__kmalloc_noprof(__n_00,0xdc0);
  do {
    if (__s == (undefined1 *)0x0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] devm_kzalloc err\n",
                  "aw9620x_cycle_write_firmware",0x826);
      return 0;
    }
    if (false) {
LAB_00106bec:
      __fortify_panic(0xf,__n_00,__n_00);
      uVar20 = extraout_x1;
    }
    else {
      iVar10 = 0x10002000;
      uVar20 = 1;
      memset(__s,1,__n_00);
      uVar15 = (uint)uVar14;
      if (0xfbf < param_3) {
        uVar17 = 0;
        uVar2 = 0;
        if (7 < __n_00) {
          uVar2 = __n_00 - 8;
        }
        param_3 = 0x10cfdf;
        uVar19 = uVar15;
        if (uVar15 < 2) {
          uVar19 = 1;
        }
        do {
          if (__n_00 == 0) goto LAB_00106bd8;
          *__s = (char)(uVar20 >> 0x18);
          if ((__n_00 == 1) || (__s[1] = (char)(uVar20 >> 0x10), __n_00 == 2)) goto LAB_00106bd8;
          __s[2] = (char)(uVar20 >> 8);
          if (__n_00 < 4) goto LAB_00106bd8;
          uVar18 = (uint)uVar20;
          __s[3] = (char)uVar20;
          if ((__n_00 == 4) || (__s[4] = (char)((uint)iVar10 >> 0x18), __n_00 == 5))
          goto LAB_00106bd8;
          __s[5] = (char)((uint)iVar10 >> 0x10);
          if ((__n_00 < 7) || (__s[6] = (char)((uint)iVar10 >> 8), __n_00 == 7)) goto LAB_00106bd8;
          uVar12 = *(undefined8 *)(param_1 + 0x30);
          __s[7] = (char)iVar10;
          _dev_printk(&DAT_0010eb37,uVar12,
                      "[%s:%d] cnt = %d tranfer head info 0x%02x 0x%02x 0x%02x 0x%02x\n",
                      "aw9620x_cycle_write_firmware",0x83c,uVar17 & 0xffffffff,uVar20 >> 0x18,
                      uVar18 >> 0x10 & 0xff,uVar18 >> 8 & 0xff,uVar18 & 0xff);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] cnt = %d tranfer head info 0x%02x 0x%02x 0x%02x 0x%02x\n",
                      "aw9620x_cycle_write_firmware",0x83c,uVar17 & 0xffffffff,__s[4],__s[5],__s[6],
                      __s[7]);
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] half_cache_len = %d\n",
                      "aw9620x_cycle_write_firmware",0x83f,0xfc0);
          if (uVar2 < 0xfc0) {
            __fortify_panic(0x11,uVar2,0xfc0);
            goto LAB_00106bec;
          }
          memcpy(__s + 8,(void *)(param_2 + uVar17 * 0xfc0),0xfc0);
          uVar20 = 0xb;
          do {
            if ((__n_00 <= uVar20 - 3) || (__n_00 <= uVar20)) goto LAB_00106bd8;
            puVar1 = __s + uVar20;
            uVar3 = __s[uVar20 - 3];
            uVar4 = puVar1[-1];
            __s[uVar20 - 3] = *puVar1;
            uVar16 = uVar20 - 0xb;
            uVar5 = puVar1[-2];
            uVar20 = uVar20 + 4;
            *puVar1 = uVar3;
            puVar1[-2] = uVar4;
            puVar1[-1] = uVar5;
          } while (uVar16 < 0xfbc);
          if (uVar17 == 2) {
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] flash addr write err, addr=0x%08X, len=0x%04X\n",
                        "aw9620x_cycle_write_firmware",0x847,0x10003f80,0xfc0);
            goto LAB_00106bc8;
          }
          iVar9 = aw9620x_send_once_cmd(param_1,1,2,__s,0xfc8);
          if (iVar9 != 0) {
            uVar12 = *(undefined8 *)(param_1 + 0x30);
            puVar11 = &DAT_0010dd3c;
            uVar13 = 0x84d;
            goto LAB_00106bc4;
          }
          uVar17 = uVar17 + 1;
          iVar10 = iVar10 + 0xfc0;
          uVar20 = (ulong)(uVar18 + 1);
        } while (uVar17 != uVar19);
      }
      if (uVar6 == 0) goto LAB_00106950;
      if (__n_00 == 0) goto LAB_00106bd8;
      *__s = (char)(uVar20 >> 0x18);
      if ((__n_00 == 1) || (__s[1] = (char)(uVar20 >> 0x10), __n_00 == 2)) goto LAB_00106bd8;
      __s[2] = (char)(uVar20 >> 8);
      if (__n_00 < 4) goto LAB_00106bd8;
      uVar19 = (uint)uVar20;
      __s[3] = (char)uVar20;
      if ((__n_00 == 4) || (__s[4] = (char)((uint)iVar10 >> 0x18), __n_00 == 5)) goto LAB_00106bd8;
      __s[5] = (char)((uint)iVar10 >> 0x10);
      if ((__n_00 < 7) || (__s[6] = (char)((uint)iVar10 >> 8), __n_00 == 7)) goto LAB_00106bd8;
      uVar12 = *(undefined8 *)(param_1 + 0x30);
      param_3 = 0x10eb37;
      __s[7] = (char)iVar10;
      _dev_printk(&DAT_0010eb37,uVar12,
                  "[%s:%d] last_len = %d tranfer head info 0x%02x 0x%02x 0x%02x 0x%02x\n",
                  "aw9620x_cycle_write_firmware",0x865,uVar6,uVar20 >> 0x18,uVar19 >> 0x10 & 0xff,
                  uVar19 >> 8 & 0xff,uVar19 & 0xff);
      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] last_len = %d tranfer head info 0x%02x 0x%02x 0x%02x 0x%02x\n",
                  "aw9620x_cycle_write_firmware",0x865,__n,__s[4],__s[5],__s[6],__s[7]);
      uVar20 = 0;
      if (7 < __n_00) {
        uVar20 = __n_00 - 8;
      }
      if (__n <= uVar20) {
        memcpy(__s + 8,(void *)(param_2 + (ulong)(uVar15 * 0xfc0)),__n);
        uVar14 = 0xb;
        do {
          if ((__n_00 <= uVar14 - 3) || (__n_00 <= uVar14)) {
LAB_00106bd8:
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(1,0x106bdc);
            (*pcVar8)();
          }
          puVar1 = __s + uVar14;
          uVar3 = __s[uVar14 - 3];
          uVar4 = puVar1[-1];
          __s[uVar14 - 3] = *puVar1;
          uVar20 = uVar14 - 7;
          uVar5 = puVar1[-2];
          uVar14 = uVar14 + 4;
          *puVar1 = uVar3;
          puVar1[-2] = uVar4;
          puVar1[-1] = uVar5;
        } while (uVar20 < __n);
        if (iVar10 + uVar6 < 0x10004000) {
          iVar10 = aw9620x_send_once_cmd(param_1,1,2,__s,uVar6 + 8);
          if (iVar10 == 0) {
LAB_00106950:
            kfree(__s);
            return 0;
          }
          uVar12 = *(undefined8 *)(param_1 + 0x30);
          puVar11 = &DAT_0010eb37;
          uVar13 = 0x876;
LAB_00106bc4:
          _dev_printk(puVar11,uVar12,"[%s:%d] send_transfer_cmd_once err\n",
                      "aw9620x_cycle_write_firmware",uVar13);
        }
        else {
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] flash addr write err, addr=0x%08X, len=0x%04X\n",
                      "aw9620x_cycle_write_firmware",0x86f,iVar10,uVar6);
        }
LAB_00106bc8:
        kfree(__s);
        return 0xffffffff;
      }
    }
    __fortify_panic(0x11,uVar20,__n);
    lVar7 = sp_el0;
    uVar12 = *(undefined8 *)(lVar7 + 0x50);
    *(undefined1 **)(lVar7 + 0x50) = aw9620x_cycle_write_firmware__alloc_tag;
    __s = (undefined1 *)__kmalloc_noprof(__n_00,0xdc0);
    *(undefined8 *)(lVar7 + 0x50) = uVar12;
  } while( true );
}



/* 00106c5c aw9620x_send_stop_cmd */

void aw9620x_send_stop_cmd(long param_1)

{
  long lVar1;
  uint uVar2;
  int iVar3;
  undefined8 uVar4;
  char *pcVar5;
  undefined8 uVar6;
  int iVar7;
  uint local_6c;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_send_stop_cmd",0x7c7);
  aw9620x_i2c_write(param_1,0x4444,0x10000);
  aw9620x_i2c_write(param_1,0xff20,0x3c00ffff);
  local_6c = 0;
  aw9620x_i2c_read(param_1,0x4744,&local_6c);
  aw9620x_i2c_write(param_1,0x4744,local_6c & 0xffffff);
  aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
  aw9620x_i2c_write(param_1,0x4444,0);
  msleep(0x19);
  iVar7 = 10;
  local_6c = 0;
  while( true ) {
    iVar3 = aw9620x_i2c_read(param_1,0x4410,&local_6c);
    uVar2 = local_6c;
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] REG_HOSTIRQSRC :0x%x\n",
                "aw9620x_read_init_comp_irq",0x75c,local_6c);
    if (iVar3 != 0) {
      uVar4 = *(undefined8 *)(param_1 + 0x30);
      pcVar5 = "[%s:%d] read REG_HOSTIRQSRC err\n";
      uVar6 = 0x75e;
      goto LAB_00106e20;
    }
    if (uVar2 == 1) break;
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] REG_HOSTIRQSRC val: 0x%x cnt: %d\n","aw9620x_read_init_comp_irq",0x766,
                uVar2,iVar7);
    usleep_range_state(1000,0x3f2,2);
    iVar7 = iVar7 + -1;
    if (iVar7 == -1) {
      uVar4 = *(undefined8 *)(param_1 + 0x30);
      pcVar5 = "[%s:%d] irq_stat != 0 cmd send err!\n";
      uVar6 = 0x76c;
LAB_00106e20:
      _dev_printk(&DAT_0010eb37,uVar4,pcVar5,"aw9620x_read_init_comp_irq",uVar6);
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] stop read_ack_irq err\n",
                  "aw9620x_send_stop_cmd",0x7d4);
      uVar4 = 0xffffffff;
LAB_00106e74:
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) == local_68) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar4);
    }
  }
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] stop_flag irq_stat = 1 cmd send success!\n","aw9620x_read_init_comp_irq",
              0x763);
  uVar4 = 0;
  goto LAB_00106e74;
}



/* 00106eb0 aw9620x_read_ack_irq */

void aw9620x_read_ack_irq(long param_1)

{
  long lVar1;
  uint uVar2;
  int iVar3;
  undefined8 uVar4;
  char *pcVar5;
  undefined8 uVar6;
  int iVar7;
  uint local_6c;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  local_6c = 0;
  iVar7 = 100;
  if (*(int *)(param_1 + 0x24) != 3) {
    iVar7 = 10;
  }
  while( true ) {
    iVar3 = aw9620x_i2c_read(param_1,0x4410,&local_6c);
    uVar2 = local_6c;
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] REG_HOSTIRQSRC :0x%x\n",
                "aw9620x_read_ack_irq",0x73f,local_6c);
    if (iVar3 != 0) {
      uVar4 = *(undefined8 *)(param_1 + 0x30);
      pcVar5 = "[%s:%d] read REG_HOSTIRQSRC err\n";
      uVar6 = 0x741;
      goto LAB_00106fe0;
    }
    if ((uVar2 >> 0x1d & 1) != 0) break;
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] REG_HOSTIRQSRC val: 0x%x cnt: %d\n","aw9620x_read_ack_irq",0x748,uVar2,
                iVar7);
    usleep_range_state(1000,0x3f2,2);
    iVar7 = iVar7 + -1;
    if (iVar7 == -1) {
      uVar4 = *(undefined8 *)(param_1 + 0x30);
      pcVar5 = "[%s:%d] irq_stat != 0 cmd send err!\n";
      uVar6 = 0x74d;
LAB_00106fe0:
      _dev_printk(&DAT_0010eb37,uVar4,pcVar5,"aw9620x_read_ack_irq",uVar6);
      uVar4 = 0xffffffff;
LAB_00107010:
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(uVar4);
      }
      return;
    }
  }
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] irq_stat bit29 = 1  cmd send success!\n","aw9620x_read_ack_irq",0x745);
  uVar4 = 0;
  goto LAB_00107010;
}



/* 0010704c aw9620x_reg_read_all_val */

undefined8 aw9620x_reg_read_all_val(long param_1,undefined4 *param_2,uint param_3)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_reg_read_all_val",0x7e4);
  iVar1 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
  if (iVar1 == 0) {
    iVar1 = aw9620x_i2c_write(param_1,0x4820,4);
    if (iVar1 == 0) {
      iVar1 = aw9620x_reg_read_val(param_1,param_2,param_3);
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      if (iVar1 == 0) {
        _dev_printk(&DAT_0010eb37,uVar3,"[%s:%d] addr = 0x%04x read data = 0x%08x\n",
                    "aw9620x_reg_read_all_val",0x7f9,param_3 & 0xffff,*param_2);
        uVar3 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
        if ((int)uVar3 == 0) {
          return uVar3;
        }
        uVar3 = *(undefined8 *)(param_1 + 0x30);
        puVar2 = &DAT_0010dd3c;
        pcVar4 = "[%s:%d] write 0xff20 err\n";
        uVar5 = 0x7fd;
      }
      else {
        puVar2 = &DAT_0010eb37;
        pcVar4 = "[%s:%d] reg_read_bin err\n";
        uVar5 = 0x7f5;
      }
    }
    else {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      puVar2 = &DAT_0010dd3c;
      pcVar4 = "[%s:%d] config PMU_CFG reg err\n";
      uVar5 = 0x7ef;
    }
  }
  else {
    uVar3 = *(undefined8 *)(param_1 + 0x30);
    puVar2 = &DAT_0010dd3c;
    pcVar4 = "[%s:%d] write 0xff20 err\n";
    uVar5 = 0x7e9;
  }
  _dev_printk(puVar2,uVar3,pcVar4,"aw9620x_reg_read_all_val",uVar5);
  return 0xffffffff;
}



/* 001071bc aw9620x_i2c_write_bits */

void aw9620x_i2c_write_bits(undefined8 param_1,ulong param_2,uint param_3,uint param_4)

{
  long lVar1;
  uint local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  aw9620x_i2c_read(param_1,param_2,&local_3c);
  aw9620x_i2c_write(param_1,param_2 & 0xffffffff,local_3c & param_3 | param_4);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00107244 aw9620x_update_firmware */

void aw9620x_update_firmware(long param_1,long param_2)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_2 + 0x54);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_update_firmware",0xca6);
  *(undefined4 *)(param_1 + 0x284) = *(undefined4 *)(param_2 + 100);
  aw9620x_fw_update(param_1,*(undefined1 *)(param_1 + 7),param_2 + 0x20e8 + (ulong)uVar1,
                    *(undefined4 *)(param_2 + 0x50));
  return;
}



/* 001072c0 aw9620x_read_init_over_irq */

void aw9620x_read_init_over_irq(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  int iVar4;
  uint local_4c;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_read_init_over_irq",0x40e);
  iVar4 = 100;
  while( true ) {
    iVar2 = aw9620x_i2c_read(param_1,0x4410,&local_4c);
    if (iVar2 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] read init irq reg err: %d cnt: %d\n","aw9620x_read_init_over_irq",0x413,
                  0xffffffff,iVar4);
      uVar3 = 0xffffffff;
      goto LAB_00107408;
    }
    if ((local_4c & 1) != 0) break;
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] init over irq no ok cnt: %d\n","aw9620x_read_init_over_irq",0x41a,iVar4);
    usleep_range_state(1000,0x3f2,2);
    iVar4 = iVar4 + -1;
    if (iVar4 == -1) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] init over irq err!\n",
                  "aw9620x_read_init_over_irq",0x41f);
      uVar3 = 0xfffffffd;
LAB_00107408:
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) == local_48) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar3);
    }
  }
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] init over irq ok cnt: %d\n",
              "aw9620x_read_init_over_irq",0x417,iVar4);
  uVar3 = 0;
  goto LAB_00107408;
}



/* 0010743c aw9620x_get_err_info */

void aw9620x_get_err_info(long param_1)

{
  long lVar1;
  undefined4 local_34;
  undefined4 uStack_30;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  local_34 = 0;
  uStack_30 = 0;
  aw9620x_i2c_write(param_1,0xff20,0x3c00f091);
  aw9620x_i2c_read(param_1,0x1c00,&local_2c);
  aw9620x_i2c_read(param_1,0x4744,&local_34);
  aw9620x_i2c_read(param_1,0x4444,&uStack_30);
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] 0x1c00:0x%x, 0x4744:0x%x, 0x4444:0x%x\n","aw9620x_get_err_info",0x377,
              local_2c,local_34,uStack_30);
  aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00107518 aw9620x_reg_update_boot_work */

void aw9620x_reg_update_boot_work(long param_1)

{
  ulong uVar1;
  ulong uVar2;
  uint uVar3;
  ulong *puVar4;
  code *pcVar5;
  int iVar6;
  long lVar7;
  undefined8 uVar8;
  ulong __n;
  char *pcVar9;
  undefined8 uVar10;
  ulong uVar11;
  ulong uVar12;
  ulong uVar13;
  ulong *local_90;
  undefined8 local_88;
  long lStack_80;
  undefined4 local_78;
  undefined4 uStack_74;
  undefined8 *local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar7 = sp_el0;
  local_58 = *(long *)(lVar7 + 0x710);
  local_90 = (ulong *)0x0;
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_reg_update_boot_work",0xc7f);
  snprintf((char *)(param_1 + 0x2dd),0x1e,"aw9620x_bt_%u.bin",(ulong)*(uint *)(param_1 + 8));
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] name :%s\n",
              "aw9620x_reg_update_boot_work",0xc84,param_1 + 0x2dd);
  iVar6 = request_firmware(&local_90,param_1 + 0x2dd,*(undefined8 *)(param_1 + 0x30));
  uVar8 = *(undefined8 *)(param_1 + 0x30);
  if (iVar6 == 0) {
    _dev_printk(&DAT_0010eb37,uVar8,"[%s:%d] parse %s ok!\n","aw9620x_reg_update_boot_work",0xc8b,
                param_1 + 0x2dd);
    puVar4 = local_90;
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                "aw9620x_reg_parse_boot",0xc4e);
    if (puVar4 == (ulong *)0x0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] frimware request failed\n",
                  "aw9620x_reg_parse_boot",0xc51);
LAB_0010798c:
      uVar8 = *(undefined8 *)(param_1 + 0x30);
      pcVar9 = "[%s:%d] boot %s err!\n";
      uVar10 = 0xc8f;
      goto LAB_001079b0;
    }
    _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] frimware request successfully\n","aw9620x_reg_parse_boot",0xc54);
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter, cont->size = %d\n",
                "aw9620x_reg_parse_boot",0xc56,(int)*puVar4);
    uVar11 = *puVar4;
    uVar1 = uVar11 + 0x20e8;
    lVar7 = __kmalloc_noprof(uVar1,0xdc0);
    if (lVar7 == 0) {
      kfree(0);
      release_firmware(puVar4);
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] failed to allcating memory!\n","aw9620x_reg_parse_boot",0xc5c);
      goto LAB_0010798c;
    }
    uVar13 = uVar1 >> 2;
    if (((uVar13 < 0x839) || (uVar12 = uVar1 & 0xfffffffffffffffc, uVar12 == 0x20e4)) ||
       (uVar13 == 0x839)) goto LAB_001079ec;
    __n = *puVar4;
    uVar2 = 0;
    if (0x20e7 < uVar1) {
      uVar2 = uVar11;
    }
    *(int *)(lVar7 + 0x20e4) = (int)__n;
    if (uVar2 < __n) {
      uVar8 = __fortify_panic(0x11);
      goto LAB_001079f8;
    }
    memcpy((void *)(lVar7 + 0x20e8),(void *)puVar4[1],__n);
    release_firmware(puVar4);
    iVar6 = aw_parsing_bin_file(lVar7);
    if (iVar6 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x parse bin fail! ret = %d\n","aw9620x_reg_parse_boot",0xc67,iVar6)
      ;
LAB_00107984:
      kfree(lVar7);
      goto LAB_0010798c;
    }
    if (((((uVar12 == 100) || (uVar13 < 0x839)) ||
         (((uVar1 & 0xfffffffffffffffc) == 0x20e4 ||
          (((uVar1 & 0xfffffffffffffffc) == 100 ||
           (_dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] chip name: %s, len = %d, version:0x%08x\n","aw9620x_reg_parse_boot"
                        ,0xc6d,lVar7 + 0x30,*(undefined4 *)(lVar7 + 0x20e4),
                        *(undefined4 *)(lVar7 + 100)), uVar12 == 0x54)))))) || (uVar1 < 0x54)) ||
       ((uVar1 & 0xfffffffffffffffc) == 0x54)) {
LAB_001079ec:
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(1,0x1079f0);
      (*pcVar5)();
    }
    uVar3 = *(uint *)(lVar7 + 0x54);
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
                "aw9620x_update_boot_to_flash",0xc44);
    if (((uVar12 == 0x50) || (uVar1 < 0x50)) || ((uVar1 & 0xfffffffffffffffc) == 0x50))
    goto LAB_001079ec;
    local_78 = *(undefined4 *)(lVar7 + 0x50);
    local_68 = 0x7f8;
    uStack_60 = 0x7fc000007f8;
    lStack_80 = lVar7 + 0x20e8 + (ulong)uVar3;
    local_88 = 0;
    local_70 = &local_68;
    uStack_74 = 0;
    if (lStack_80 == 0) {
      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] w_bin_offset is null err\n"
                  ,"aw9620x_update_bt_to_flash",0x623);
LAB_00107960:
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_firmware err!\n",
                  "aw9620x_reg_parse_boot",0xc71);
      goto LAB_00107984;
    }
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_data_len = %d\n",
                "aw9620x_update_bt_to_flash",0x627);
    iVar6 = aw9620x_flash_update(param_1,&local_88);
    if (iVar6 != 0) goto LAB_00107960;
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_firmware ok!\n",
                "aw9620x_reg_parse_boot",0xc73);
    kfree(lVar7);
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] boot %s ok!\n",
                "aw9620x_reg_update_boot_work",0xc92,param_1 + 0x2dd);
    uVar8 = 0;
  }
  else {
    pcVar9 = "[%s:%d] parse %s err!\n";
    uVar10 = 0xc88;
LAB_001079b0:
    _dev_printk(&DAT_0010dd3c,uVar8,pcVar9,"aw9620x_reg_update_boot_work",uVar10,param_1 + 0x2dd);
    uVar8 = 0xffffffff;
  }
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) == local_58) {
    return;
  }
LAB_001079f8:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar8);
}



/* 001079fc aw9620x_recover_fun */

void aw9620x_recover_fun(long param_1,int param_2)

{
  uint uVar1;
  long lVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  undefined8 uVar6;
  char *pcVar7;
  undefined8 uVar8;
  uint local_4c;
  long local_48;
  
  lVar2 = sp_el0;
  local_48 = *(long *)(lVar2 + 0x710);
  local_4c = 0;
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] %s enter\n",
              "aw9620x_recover_fun",900,"aw9620x_recover_fun");
  iVar4 = aw9620x_i2c_write(param_1,0xff20,0x3c00ffff);
  if (iVar4 == 0) {
    iVar4 = aw9620x_i2c_read(param_1,0x4744,&local_4c);
    uVar3 = local_4c;
    uVar6 = *(undefined8 *)(param_1 + 0x30);
    if (iVar4 < 0) {
      pcVar7 = "[%s:%d] read REG_UPDATA_DIS err: %d\n";
      uVar8 = 0x38d;
    }
    else {
      _dev_printk(&DAT_0010e5cb,uVar6,"[%s:%d] trim  reg_data:0x%08X\n","aw9620x_recover_fun",0x391,
                  local_4c);
      uVar1 = uVar3 & 0xffffff;
      if (uVar3 >> 0x18 < 0xff && param_2 != 0) {
        uVar1 = uVar3;
      }
      _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),"[%s:%d] trim new_reg_data:0x%08X\n"
                  ,"aw9620x_recover_fun",0x39e,uVar1);
      uVar6 = *(undefined8 *)(param_1 + 0x30);
      puVar5 = &DAT_0010e5cb;
      if (uVar1 == uVar3) {
        pcVar7 = "[%s:%d] trim reg_data ok, no need update\n";
        uVar8 = 0x3a7;
LAB_00107b70:
        _dev_printk(puVar5,uVar6,pcVar7,"aw9620x_recover_fun",uVar8);
      }
      else {
        _dev_printk(&DAT_0010e5cb,uVar6,"[%s:%d] trim reg_data error, need update\n",
                    "aw9620x_recover_fun",0x3a1);
        iVar4 = aw9620x_i2c_write(param_1,0x4744,uVar1);
        if (iVar4 != 0) {
          uVar6 = *(undefined8 *)(param_1 + 0x30);
          puVar5 = &DAT_0010dd3c;
          pcVar7 = "[%s:%d] write REG_UPDATA_DIS err\n";
          uVar8 = 0x3a4;
          goto LAB_00107b70;
        }
      }
      iVar4 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
      if (-1 < iVar4) {
        uVar6 = 0;
        goto LAB_00107bc0;
      }
      uVar6 = *(undefined8 *)(param_1 + 0x30);
      pcVar7 = "[%s:%d] write 0xff20 err: %d\n";
      uVar8 = 0x3ac;
    }
    _dev_printk(&DAT_0010dd3c,uVar6,pcVar7,"aw9620x_recover_fun",uVar8,0xffffffff);
  }
  else {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] write 0xff20 err\n",
                "aw9620x_recover_fun",0x387);
  }
  uVar6 = 0xffffffff;
LAB_00107bc0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar6);
}



/* 00107c3c aw9620x_soft_reset */

undefined8 aw9620x_soft_reset(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  char *pcVar3;
  undefined8 uVar4;
  
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","aw9620x_soft_reset",
              0x3b7);
  iVar1 = aw9620x_i2c_write(param_1,0xff20,0x3c00f191);
  if (iVar1 < 0) {
    uVar2 = *(undefined8 *)(param_1 + 0x30);
    pcVar3 = "[%s:%d] read REG_APB_ACCESS_EN err: %d\n";
    uVar4 = 0x3bb;
  }
  else {
    iVar1 = aw9620x_i2c_write(param_1,0x4700,0x110);
    if (iVar1 < 0) {
      uVar2 = *(undefined8 *)(param_1 + 0x30);
      pcVar3 = "[%s:%d] read REG_APB_ACCESS_EN err: %d\n";
      uVar4 = 0x3c1;
    }
    else {
      usleep_range_state(1000,0x3f2,2);
      aw9620x_i2c_write(param_1,0x4444,0);
      iVar1 = aw9620x_i2c_write(param_1,0xff18,0x3c);
      if (iVar1 < 0) {
        uVar2 = *(undefined8 *)(param_1 + 0x30);
        pcVar3 = "[%s:%d] read soft_reset err: %d\n";
        uVar4 = 0x3cc;
      }
      else {
        msleep(0x19);
        iVar1 = aw9620x_i2c_write(param_1,0x4700,0x102);
        if (iVar1 != 0) {
          if (*(short *)(*(long *)(param_1 + 0x28) + 2) == 0x12) {
            *(undefined2 *)(*(long *)(param_1 + 0x28) + 2) = 0x13;
          }
          iVar1 = aw9620x_i2c_write(param_1,0x4700,0x102);
          uVar2 = *(undefined8 *)(param_1 + 0x30);
          if (iVar1 < 0) {
            pcVar3 = "[%s:%d] read REG_APB_ACCESS_EN err1: %d\n";
            uVar4 = 0x3d8;
            goto LAB_00107df4;
          }
          _dev_printk(&DAT_0010dd3c,uVar2,"[%s:%d] AW_REG_FLASH_WAKE_UP ok\n","aw9620x_soft_reset",
                      0x3db);
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c->addr = 0x%x\n",
                      "aw9620x_soft_reset",0x3dc,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
        }
        iVar1 = aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
        if (-1 < iVar1) {
          return 0;
        }
        uVar2 = *(undefined8 *)(param_1 + 0x30);
        pcVar3 = "[%s:%d] write 0xff20 err: %d\n";
        uVar4 = 0x3e1;
      }
    }
  }
LAB_00107df4:
  _dev_printk(&DAT_0010dd3c,uVar2,pcVar3,"aw9620x_soft_reset",uVar4,0xffffffff);
  return 0xffffffff;
}



/* 00107e60 aw9620x_read_chipid */

undefined4 aw9620x_read_chipid(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined4 uVar7;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","aw9620x_read_chipid",
              0x326);
  iVar2 = aw9620x_i2c_read(param_1,0xff00,&local_2c);
  if (iVar2 < 0) {
    uVar7 = 0xffffffff;
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] read CHIP ID failed: %d\n",
                "aw9620x_read_chipid",0x32a,0xffffffff);
  }
  else {
    if (local_2c == 0x20226208) {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] AW96208CSR CHIP ID : 0x%x\n";
      *(undefined8 *)(param_1 + 0x2a1) = 0x38303236395741;
      uVar5 = 0x33a;
      uVar6 = 0x20226208;
    }
    else if (local_2c == 0x20226205) {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] AW96205DNR CHIP ID : 0x%x\n";
      *(undefined8 *)(param_1 + 0x2a1) = 0x35303236395741;
      uVar5 = 0x336;
      uVar6 = 0x20226205;
    }
    else {
      if (local_2c != 0x20226203) {
        _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                    "[%s:%d] no chipid,need update root and frimware,CHIP ID : 0x%x\n",
                    "aw9620x_read_chipid",0x33e);
        uVar7 = 0xfffffffe;
        goto LAB_00108028;
      }
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] AW96203CSR CHIP ID : 0x%x\n";
      uVar5 = 0x332;
      uVar6 = 0x20226203;
      *(undefined8 *)(param_1 + 0x2a1) = 0x33303236395741;
    }
    _dev_printk(&DAT_0010eb37,uVar3,pcVar4,"aw9620x_read_chipid",uVar5,uVar6);
    uVar7 = 0;
  }
LAB_00108028:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return uVar7;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00108058 aw9620x_load_def_reg_bin */

void aw9620x_load_def_reg_bin(long param_1)

{
  ulong uVar1;
  void *__dest;
  undefined4 uVar2;
  short sVar3;
  ulong *puVar4;
  code *pcVar5;
  int iVar6;
  int iVar7;
  long lVar8;
  undefined8 uVar9;
  ulong uVar10;
  char *pcVar11;
  undefined8 uVar12;
  ulong uVar13;
  ulong uVar14;
  ulong uVar15;
  ulong uVar16;
  ulong uVar17;
  uint uVar18;
  ulong *local_70;
  long local_68;
  
  lVar8 = sp_el0;
  local_68 = *(long *)(lVar8 + 0x710);
  local_70 = (ulong *)0x0;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_load_def_reg_bin",0xc28);
  snprintf((char *)(param_1 + 0x2fb),0x1e,"aw9620x_reg_%u.bin",(ulong)*(uint *)(param_1 + 8));
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] name :%s\n",
              "aw9620x_load_def_reg_bin",0xc2d,param_1 + 0x2fb);
  iVar6 = request_firmware(&local_70,param_1 + 0x2fb,*(undefined8 *)(param_1 + 0x30));
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] ret = %d\n",
              "aw9620x_load_def_reg_bin",0xc2f,iVar6);
  uVar9 = *(undefined8 *)(param_1 + 0x30);
  if (iVar6 == 0) {
    _dev_printk(&DAT_0010eb37,uVar9,"[%s:%d] parse %s ok!\n","aw9620x_load_def_reg_bin",0xc34,
                param_1 + 0x2fb);
    puVar4 = local_70;
    if (local_70 == (ulong *)0x0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] def_reg_bin request failed\n","aw9620x_parse_def_reg_bin",0xbe6);
LAB_00108614:
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      pcVar11 = "[%s:%d] reg_bin %s load err!\n";
      uVar12 = 0xc38;
      goto LAB_00108638;
    }
    _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] def_reg_bin request successfully\n","aw9620x_parse_def_reg_bin",0xbe9);
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter, cont->size = %d\n",
                "aw9620x_parse_def_reg_bin",0xbeb,(int)*puVar4);
    uVar13 = *puVar4;
    uVar1 = uVar13 + 0x20e8;
    lVar8 = __kmalloc_noprof(uVar1,0xdc0);
    if (lVar8 == 0) {
      kfree(0);
      release_firmware(puVar4);
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] failed to allcating memory!\n","aw9620x_parse_def_reg_bin",0xbf1);
      goto LAB_00108614;
    }
    uVar17 = uVar1 >> 2;
    if (((uVar17 < 0x839) || (uVar16 = uVar1 & 0xfffffffffffffffc, uVar16 == 0x20e4)) ||
       (uVar17 == 0x839)) goto LAB_001085a0;
    uVar10 = *puVar4;
    uVar14 = 0;
    if (0x20e7 < uVar1) {
      uVar14 = uVar13;
    }
    *(int *)(lVar8 + 0x20e4) = (int)uVar10;
    if (uVar14 < uVar10) {
      uVar9 = __fortify_panic(0x11);
      goto LAB_00108680;
    }
    __dest = (void *)(lVar8 + 0x20e8);
    memcpy(__dest,(void *)puVar4[1],uVar10);
    release_firmware(puVar4);
    iVar6 = aw_parsing_bin_file(lVar8);
    if (iVar6 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] aw9620x parse bin fail! ret = %d\n","aw9620x_parse_def_reg_bin",0xbfc,
                  iVar6);
LAB_0010860c:
      kfree(lVar8);
      goto LAB_00108614;
    }
    if ((uVar17 < 0x839) || ((uVar1 & 0xfffffffffffffffc) == 0x20e4)) {
LAB_001085a0:
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(1,0x1085a4);
      (*pcVar5)();
    }
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] reg chip name: %s, soc chip name: %s, len = %d\n",
                "aw9620x_parse_def_reg_bin",0xc01,param_1 + 0x2a1,lVar8 + 0x30,
                *(undefined4 *)(lVar8 + 0x20e4));
    iVar6 = strcmp((char *)(param_1 + 0x2a1),(char *)(lVar8 + 0x30));
    if (iVar6 != 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] chip name(%s) incompatible with chip type(%s)\n",
                  "aw9620x_parse_def_reg_bin",0xc07,param_1 + 0x2a1,lVar8 + 0x30);
      goto LAB_0010860c;
    }
    if (((uVar16 == 0x50) || (uVar1 < 0x50)) || ((uVar1 & 0xfffffffffffffffc) == 0x50))
    goto LAB_001085a0;
    if (*(int *)(lVar8 + 0x50) != 0) {
      if (((uVar16 == 0x54) || (uVar1 < 0x54)) || ((uVar1 & 0xfffffffffffffffc) == 0x54))
      goto LAB_001085a0;
      iVar6 = *(int *)(lVar8 + 0x54);
      uVar18 = 0;
      do {
        uVar13 = (ulong)(iVar6 + uVar18);
        if (((uVar1 <= uVar13 + 0x20e8) ||
            (uVar17 = (ulong)(iVar6 + uVar18 + 1), uVar1 <= uVar17 + 0x20e8)) ||
           ((uVar1 <= uVar13 + 0x20e8 || (uVar1 <= uVar17 + 0x20e8)))) goto LAB_001085a0;
        uVar16 = (ulong)(iVar6 + uVar18 + 2);
        if ((uVar1 <= uVar16 + 0x20e8) ||
           (uVar14 = (ulong)(iVar6 + uVar18 + 3), uVar1 <= uVar14 + 0x20e8)) goto LAB_001085a0;
        uVar10 = (ulong)(iVar6 + uVar18 + 4);
        if ((uVar1 <= uVar10 + 0x20e8) ||
           ((((uVar15 = (ulong)(iVar6 + uVar18 + 5), uVar1 <= uVar15 + 0x20e8 ||
              (uVar1 <= uVar14 + 0x20e8)) || (uVar1 <= uVar16 + 0x20e8)) ||
            ((uVar1 <= uVar10 + 0x20e8 || (uVar1 <= uVar15 + 0x20e8)))))) goto LAB_001085a0;
        sVar3 = CONCAT11(*(undefined1 *)((long)__dest + uVar17),
                         *(undefined1 *)((long)__dest + uVar13));
        uVar2 = CONCAT13(*(undefined1 *)((long)__dest + uVar15),
                         CONCAT12(*(undefined1 *)((long)__dest + uVar10),
                                  CONCAT11(*(undefined1 *)((long)__dest + uVar14),
                                           *(undefined1 *)((long)__dest + uVar16))));
        if (sVar3 == 0x4414) {
          *(undefined4 *)(param_1 + 0x14) = uVar2;
        }
        else {
          iVar7 = aw9620x_i2c_write(param_1,sVar3,uVar2);
          if (iVar7 < 0) {
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c write err\n",
                        "aw9620x_load_bin",0xbd4);
            uVar9 = *(undefined8 *)(param_1 + 0x30);
            pcVar11 = "[%s:%d] load_bin err\n";
            uVar12 = 0xc0d;
            goto LAB_00108608;
          }
          _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] reg_addr = 0x%04x, reg_data = 0x%08x\n","aw9620x_load_bin",0xbda,
                      sVar3,uVar2);
        }
        if ((uVar1 & 0xfffffffffffffffc) == 0x50) goto LAB_001085a0;
        uVar18 = uVar18 + 6;
      } while (uVar18 < *(uint *)(lVar8 + 0x50));
    }
    iVar6 = aw9620x_en_active(param_1);
    if (iVar6 != 0) {
      uVar9 = *(undefined8 *)(param_1 + 0x30);
      pcVar11 = "[%s:%d] en_active err\n";
      uVar12 = 0xc13;
LAB_00108608:
      _dev_printk(&DAT_0010dd3c,uVar9,pcVar11,"aw9620x_parse_def_reg_bin",uVar12);
      goto LAB_0010860c;
    }
    kfree(lVar8);
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] load_def_reg_bin ok!!!\n",
                "aw9620x_parse_def_reg_bin",0xc19);
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] reg_bin %s load ok!\n",
                "aw9620x_load_def_reg_bin",0xc3b,param_1 + 0x2fb);
    uVar9 = 0;
  }
  else {
    pcVar11 = "[%s:%d] parse %s err!\n";
    uVar12 = 0xc31;
LAB_00108638:
    _dev_printk(&DAT_0010dd3c,uVar9,pcVar11,"aw9620x_load_def_reg_bin",uVar12,param_1 + 0x2fb);
    uVar9 = 0xffffffff;
  }
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_68) {
    return;
  }
LAB_00108680:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar9);
}



/* 00108684 aw9620x_en_active */

undefined8 aw9620x_en_active(long param_1)

{
  int iVar1;
  
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","aw9620x_en_active",
              0xb85);
  iVar1 = aw9620x_i2c_write(param_1,0x4408,2);
  if (iVar1 == 0) {
    *(undefined4 *)(param_1 + 0x10) = 2;
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] addr: 0x%x data: 0x%x\n",
                "aw9620x_en_active",0xb8e,0x4408,1);
    iVar1 = aw9620x_i2c_write(param_1,0x4414,*(undefined4 *)(param_1 + 0x14));
    if (iVar1 == 0) {
      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] addr: 0x%x data: 0x%x\n",
                  "aw9620x_en_active",0xb96,0x4414,*(undefined4 *)(param_1 + 0x14));
      if (*(char *)(param_1 + 5) != '\x01') {
        return 0;
      }
      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enable_irq ok!!!\n",
                  "aw9620x_en_active",0xb99);
      enable_irq(*(undefined4 *)(param_1 + 0x1c));
      *(undefined1 *)(param_1 + 5) = 0;
      return 0;
    }
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] addr: 0x%x data: 0x%x\n",
                "aw9620x_en_active",0xb93,0x4414,*(undefined4 *)(param_1 + 0x14));
  }
  else {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] write REG_CMD err\n",
                "aw9620x_en_active",0xb8a);
  }
  return 0xffffffff;
}



/* 001087f4 aw9620x_i2c_probe */

ulong aw9620x_i2c_probe(long param_1)

{
  long lVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *pcVar10;
  undefined4 uVar11;
  undefined1 uVar12;
  code *pcVar13;
  undefined8 uVar14;
  byte local_64 [4];
  undefined8 local_60;
  undefined8 uStack_58;
  undefined4 local_50;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_64[0] = 0;
  _printk(&DAT_0010ef88,"aw9620x_i2c_probe");
  pcVar13 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar13 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar13 = (code *)SoftwareBreakpoint(0x8228,0x10885c);
    (*pcVar13)();
  }
  uVar5 = (*pcVar13)();
  lVar1 = param_1 + 0x20;
  if ((uVar5 & 1) == 0) {
    _dev_printk(&DAT_0010dd3c,lVar1,"[%s:%d] check_functionality failed\n","aw9620x_i2c_probe",
                0x10bb);
    uVar5 = 0xfffffffb;
    goto LAB_001089f8;
  }
  lVar6 = devm_kmalloc(lVar1,0x340,0xdc0);
  if (lVar6 == 0) {
    _dev_printk(&DAT_0010dd3c,lVar1,"[%s:%d] failed to malloc memory!\n","aw9620x_i2c_probe",0x10c1)
    ;
    uVar5 = 0xffffffff;
    goto LAB_001089f8;
  }
  *(long *)(lVar6 + 0x28) = param_1;
  *(long *)(lVar6 + 0x30) = lVar1;
  *(long *)(param_1 + 0xb8) = lVar6;
  __mutex_init(aw_lock,"&aw_lock",&aw9620x_i2c_probe___key);
  __mutex_init(aw_update_lock,"&aw_update_lock",&aw9620x_i2c_probe___key_285);
  uVar14 = *(undefined8 *)(param_1 + 0x308);
  iVar3 = of_property_read_variable_u32_array(uVar14,"sar-num",lVar6 + 8,1,0);
  uVar9 = *(undefined8 *)(lVar6 + 0x30);
  if (iVar3 < 0) {
    pcVar10 = "[%s:%d] multiple sar failed!\n";
    uVar14 = 0x2b9;
  }
  else {
    _dev_printk(&DAT_0010e5cb,uVar9,"[%s:%d] sar num = %d\n","aw9620x_parse_dt",700,
                *(undefined4 *)(lVar6 + 8));
    iVar3 = of_get_named_gpio(uVar14,"irq-gpio",0);
    *(int *)(lVar6 + 0xc) = iVar3;
    if (iVar3 < 0) {
      uVar9 = *(undefined8 *)(lVar6 + 0x30);
      *(undefined4 *)(lVar6 + 0xc) = 0xffffffff;
      pcVar10 = "[%s:%d] no irq gpio provided.\n";
      uVar14 = 0x2c1;
    }
    else {
      _dev_printk(&DAT_0010e5cb,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] irq gpio provided ok.\n",
                  "aw9620x_parse_dt",0x2c4);
      iVar3 = of_property_read_variable_u32_array(uVar14,"channel_use_flag",lVar6 + 0x18,1,0);
      uVar9 = *(undefined8 *)(lVar6 + 0x30);
      if (-1 < iVar3) {
        _dev_printk(&DAT_0010e5cb,uVar9,"[%s:%d] channel_use_flag = 0x%x\n","aw9620x_parse_dt",0x2cb
                    ,*(undefined4 *)(lVar6 + 0x18));
        lVar7 = of_find_property(uVar14,"aw9620x,using-arr-laod-reg",0);
        *(bool *)lVar6 = lVar7 != 0;
        _dev_printk(&DAT_0010e5cb,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] firmware_flag = <%d>\n",
                    "aw9620x_parse_dt",0x2ce);
        _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] %s enter\n",
                    "aw9620x_pinctrl_init",0x1068,"aw9620x_pinctrl_init");
        uVar5 = devm_pinctrl_get(*(undefined8 *)(lVar6 + 0x30));
        *(ulong *)(lVar6 + 800) = uVar5;
        if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] %s Target does not use pinctrl %d\n\n","aw9620x_pinctrl_init",0x106d,
                      "aw9620x_pinctrl_init");
LAB_00108db8:
          *(undefined8 *)(lVar6 + 800) = 0;
        }
        else {
          if (*(int *)(lVar6 + 8) == 1) {
            uVar5 = pinctrl_lookup_state(uVar5,"aw_int_default_sar1");
            *(ulong *)(lVar6 + 0x338) = uVar5;
            if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
              uVar9 = *(undefined8 *)(lVar6 + 0x30);
              uVar11 = *(undefined4 *)(lVar6 + 8);
              pcVar10 = "[%s:%d] %s Can not lookup aw_int_default_sar%d pinstate %d\n\n";
              uVar14 = 0x108f;
            }
            else {
              uVar5 = pinctrl_lookup_state(*(undefined8 *)(lVar6 + 800),"aw_int_active_sar1");
              *(ulong *)(lVar6 + 0x328) = uVar5;
              if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                uVar11 = *(undefined4 *)(lVar6 + 8);
                pcVar10 = "[%s:%d] %s Can not lookup aw_int_active_sar%d pinstate %d\n\n";
                uVar14 = 0x1098;
              }
              else {
                uVar5 = pinctrl_lookup_state(*(undefined8 *)(lVar6 + 800),"aw_int_suspend_sar1");
                *(ulong *)(lVar6 + 0x330) = uVar5;
                if ((uVar5 != 0) && (uVar5 < 0xfffffffffffff001)) goto LAB_00108c7c;
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                uVar11 = *(undefined4 *)(lVar6 + 8);
                pcVar10 = "[%s:%d] %s Can not lookup aw_int_suspend_sar%d pinstate %d\n\n";
                uVar14 = 0x10a0;
              }
            }
LAB_00108da8:
            _dev_printk(&DAT_0010dd3c,uVar9,pcVar10,"aw9620x_pinctrl_init",uVar14,
                        "aw9620x_pinctrl_init",uVar11);
            devm_pinctrl_put(*(undefined8 *)(lVar6 + 800));
            goto LAB_00108db8;
          }
          if (*(int *)(lVar6 + 8) == 0) {
            uVar5 = pinctrl_lookup_state(uVar5,"aw_int_default_sar0");
            *(ulong *)(lVar6 + 0x338) = uVar5;
            if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
              uVar9 = *(undefined8 *)(lVar6 + 0x30);
              uVar11 = *(undefined4 *)(lVar6 + 8);
              pcVar10 = "[%s:%d] %s Can not lookup aw_int_default_sar%d pinstate %d\n\n";
              uVar14 = 0x1075;
            }
            else {
              uVar5 = pinctrl_lookup_state(*(undefined8 *)(lVar6 + 800),"aw_int_active_sar0");
              *(ulong *)(lVar6 + 0x328) = uVar5;
              if ((uVar5 == 0) || (0xfffffffffffff000 < uVar5)) {
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                uVar11 = *(undefined4 *)(lVar6 + 8);
                pcVar10 = "[%s:%d] %s Can not lookup aw_int_active_sar%d pinstate %d\n\n";
                uVar14 = 0x107e;
              }
              else {
                uVar5 = pinctrl_lookup_state(*(undefined8 *)(lVar6 + 800),"aw_int_suspend_sar0");
                *(ulong *)(lVar6 + 0x330) = uVar5;
                if ((uVar5 != 0) && (uVar5 < 0xfffffffffffff001)) goto LAB_00108c7c;
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                uVar11 = *(undefined4 *)(lVar6 + 8);
                pcVar10 = "[%s:%d] %s Can not lookup aw_int_suspend_sar%d pinstate %d\n\n";
                uVar14 = 0x1086;
              }
            }
            goto LAB_00108da8;
          }
LAB_00108c7c:
          if (*(long *)(lVar6 + 800) != 0) {
            iVar3 = pinctrl_select_state(*(long *)(lVar6 + 800),*(undefined8 *)(lVar6 + 0x328));
            if (iVar3 < 0) {
              puVar8 = &DAT_0010dd3c;
              pcVar10 = "[%s:%d] %s: Failed to select aw_int_active_sar%d pinstate %d\n\n";
              uVar9 = 0x10d9;
            }
            else {
              puVar8 = &DAT_0010eb37;
              pcVar10 = "[%s:%d] %s: Successed to select aw_int_active_sar%d pinstate %d\n\n";
              uVar9 = 0x10db;
            }
            _dev_printk(puVar8,*(undefined8 *)(lVar6 + 0x30),pcVar10,"aw9620x_i2c_probe",uVar9,
                        "aw9620x_i2c_probe",*(undefined4 *)(lVar6 + 8),iVar3);
          }
        }
        local_50 = 0;
        local_60 = 0;
        uStack_58 = 0;
        _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] aw9620x power init enter\n"
                    ,"aw9620x_power_init",0x2d9);
        snprintf((char *)&local_60,0x14,"vcc%u",(ulong)*(uint *)(lVar6 + 8));
        _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] vcc_name = %s\n",
                    "aw9620x_power_init",0x2dc,&local_60);
        uVar5 = regulator_get(*(undefined8 *)(lVar6 + 0x30),&local_60);
        *(ulong *)(lVar6 + 0x1f8) = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          iVar3 = regulator_count_voltages(uVar5);
          if ((iVar3 < 1) ||
             (uVar4 = regulator_set_voltage(*(undefined8 *)(lVar6 + 0x1f8),1700000,3600000),
             uVar4 == 0)) goto LAB_00108ea0;
          uVar5 = (ulong)uVar4;
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] regulator set vol failed rc = %d\n","aw9620x_power_init",0x2ea,uVar5)
          ;
          regulator_put(*(undefined8 *)(lVar6 + 0x1f8));
LAB_00109334:
          _dev_printk(&DAT_0010dd3c,lVar1,"[%s:%d] aw9620x power init failed\n","aw9620x_i2c_probe",
                      0x10e3);
          cVar2 = *(char *)(lVar6 + 1);
        }
        else {
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] regulator get failed vcc rc = %d\n","aw9620x_power_init",0x2e1,
                      uVar5 & 0xffffffff);
          if ((int)uVar5 != 0) goto LAB_00109334;
LAB_00108ea0:
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] aw9620x power enable enter\n","aw9620x_power_enable",0x2fa);
          iVar3 = regulator_enable(*(undefined8 *)(lVar6 + 0x1f8));
          if (iVar3 == 0) {
            *(undefined1 *)(lVar6 + 1) = 1;
          }
          else {
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] regulator_enable vol failed rc = %d\n","aw9620x_power_enable",0x300
                        ,iVar3);
          }
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] enter\n",
                      "regulator_is_get_voltage",0x313);
          iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                      "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,iVar3)
          ;
          if (iVar3 < 1600000) {
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_001091f4;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_001091f4;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_001091f4;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_001091f4;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_001091f4;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_001091f4;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_001091f4;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_001091f4;
            __const_udelay(0x418958);
            iVar3 = regulator_get_voltage(*(undefined8 *)(lVar6 + 0x1f8));
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                        "[%s:%d] aw9620x voltage is : %d uv\n","regulator_is_get_voltage",0x317,
                        iVar3);
            if (1599999 < iVar3) goto LAB_001091f4;
            __const_udelay(0x418958);
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] get_voltage failed\n",
                        "aw9620x_i2c_probe",0x10ea);
            uVar5 = 0xffffffff;
            cVar2 = *(char *)(lVar6 + 1);
          }
          else {
LAB_001091f4:
            msleep(0x19);
            puVar8 = &DAT_0010f46e;
            if (*(int *)(lVar6 + 8) != 0) {
              puVar8 = &DAT_0010cab6;
            }
            *(undefined8 *)(lVar6 + 0x38) = puVar8;
            *(code **)(lVar6 + 0x58) = aw9620x_set_brightness;
            uVar4 = devm_led_classdev_register_ext
                              (*(undefined8 *)(lVar6 + 0x30),(undefined8 *)(lVar6 + 0x38),0);
            if ((int)uVar4 < 0) {
              uVar5 = (ulong)uVar4;
              _dev_err(*(undefined8 *)(lVar6 + 0x30),"unable to register led ret=%d\n",uVar5);
              goto LAB_001089f8;
            }
            uVar4 = sysfs_create_group(*(undefined8 *)(lVar6 + 0x88),aw9620x_touch_attribute_group);
            if ((int)uVar4 < 0) {
              uVar5 = (ulong)uVar4;
              _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar6 + 0x30),
                          "[%s:%d] error creating sysfs attr files\n","aw9620x_i2c_probe",0x1104);
            }
            else {
              iVar3 = aw9620x_input_init(lVar6,local_64);
              if (iVar3 == 0) {
                iVar3 = aw9620x_irq_init(lVar6);
                if (iVar3 != 0) {
                  uVar9 = *(undefined8 *)(lVar6 + 0x30);
                  pcVar10 = "[%s:%d] error irq init\n";
                  uVar14 = 0x1112;
                  goto LAB_001093c8;
                }
                iVar3 = aw9620x_old_boot_nvr_modify(lVar6);
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                if (iVar3 == -1) {
                  pcVar10 = "[%s:%d] i2c err!\n";
                  uVar14 = 0x111e;
                  goto LAB_001093c8;
                }
                if (iVar3 == 0) {
                  _dev_printk(&DAT_0010dd3c,uVar9,"[%s:%d] old boot\n","aw9620x_i2c_probe",0x1119);
                  *(undefined1 *)(lVar6 + 6) = 5;
                  *(undefined4 *)(lVar6 + 0x20) = 1;
LAB_00109544:
                  aw9620x_update(lVar6);
                  uVar5 = 0;
                  *(undefined1 *)(lVar6 + 0x2a0) = 2;
                  goto LAB_001089f8;
                }
                _dev_printk(&DAT_0010dd3c,uVar9,"[%s:%d] new boot\n","aw9620x_i2c_probe",0x1121);
                iVar3 = aw9620x_read_chipid(lVar6);
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                if (iVar3 == -2) {
                  _dev_printk(&DAT_0010dd3c,uVar9,"[%s:%d] read chipid failed, ret=%d, \n",
                              "aw9620x_i2c_probe",0x112a,0xfffffffe);
                  uVar12 = 2;
LAB_00109540:
                  *(undefined1 *)(lVar6 + 6) = uVar12;
                  goto LAB_00109544;
                }
                if (iVar3 != -1) {
                  _dev_printk(&DAT_0010dd3c,uVar9,"[%s:%d] read chipid ok!\n","aw9620x_i2c_probe",
                              0x112e);
                  iVar3 = aw9620x_recover_fun(lVar6,1);
                  if (iVar3 == 0) {
                    iVar3 = aw9620x_soft_reset(lVar6);
                    if (iVar3 != 0) {
                      uVar9 = *(undefined8 *)(lVar6 + 0x30);
                      pcVar10 = "[%s:%d] soft reset failed, ret=%d\n";
                      uVar14 = 0x113b;
                      goto LAB_00109504;
                    }
                    iVar3 = aw9620x_read_init_over_irq(lVar6);
                    uVar9 = *(undefined8 *)(lVar6 + 0x30);
                    if (iVar3 == -3) {
                      _dev_printk(&DAT_0010dd3c,uVar9,"[%s:%d] _read_init_over_irq, ret=%d, \n",
                                  "aw9620x_i2c_probe",0x1145,0xfffffffd);
                      aw9620x_get_err_info(lVar6);
                      uVar12 = 3;
                      goto LAB_00109540;
                    }
                    if (iVar3 != -1) {
                      _dev_printk(&DAT_0010dd3c,uVar9,"[%s:%d] read_init_over_irq ok!\n",
                                  "aw9620x_i2c_probe",0x114a);
                      *(undefined1 *)(lVar6 + 6) = 0;
                      goto LAB_00109544;
                    }
                    pcVar10 = "[%s:%d] read chipid failed\n";
                    uVar14 = 0x1142;
                  }
                  else {
                    uVar9 = *(undefined8 *)(lVar6 + 0x30);
                    pcVar10 = "[%s:%d] recover_fun err\n";
                    uVar14 = 0x1134;
                  }
                  goto LAB_001093c8;
                }
                pcVar10 = "[%s:%d] read chipid failed, ret=%d, \n";
                uVar14 = 0x1127;
LAB_00109504:
                _dev_printk(&DAT_0010dd3c,uVar9,pcVar10,"aw9620x_i2c_probe",uVar14,0xffffffff);
              }
              else {
                uVar9 = *(undefined8 *)(lVar6 + 0x30);
                pcVar10 = "[%s:%d] error inputs init\n";
                uVar14 = 0x110c;
LAB_001093c8:
                _dev_printk(&DAT_0010dd3c,uVar9,pcVar10,"aw9620x_i2c_probe",uVar14);
              }
              uVar5 = (ulong)local_64[0];
              if (uVar5 != 0) {
                lVar7 = 0;
                do {
                  input_unregister_device(*(undefined8 *)(*(long *)(lVar6 + 0x200) + lVar7 + 8));
                  lVar7 = lVar7 + 0x30;
                } while (uVar5 * 0x30 - lVar7 != 0);
              }
              lVar7 = *(long *)(lVar6 + 0x200);
              if (*(long *)(lVar7 + 8) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x38) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x68) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x98) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 200) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0xf8) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x128) != 0) {
                input_free_device();
                lVar7 = *(long *)(lVar6 + 0x200);
              }
              if (*(long *)(lVar7 + 0x158) != 0) {
                input_free_device();
              }
              uVar5 = 0xffffffff;
            }
            sysfs_remove_group(lVar1,aw9620x_touch_attribute_group);
            cVar2 = *(char *)(lVar6 + 1);
          }
        }
        if (cVar2 != '\0') {
          regulator_disable(*(undefined8 *)(lVar6 + 0x1f8));
          regulator_put(*(undefined8 *)(lVar6 + 0x1f8));
        }
        goto LAB_001089f8;
      }
      pcVar10 = "[%s:%d] channel_use_flag failed!\n";
      uVar14 = 0x2c8;
    }
  }
  _dev_printk(&DAT_0010dd3c,uVar9,pcVar10,"aw9620x_parse_dt",uVar14);
  uVar5 = 0xffffffff;
  _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] irq gpio error!, ret = %d\n",
              "aw9620x_i2c_probe",0x10cf,0xffffffff);
LAB_001089f8:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return uVar5 & 0xffffffff;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001096c0 aw9620x_i2c_remove */

void aw9620x_i2c_remove(long param_1)

{
  long lVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xb8);
  input_unregister_device(*(undefined8 *)(*(long *)(lVar2 + 0x200) + 8));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 8) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x38));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0x38) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x68));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0x68) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x98));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0x98) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 200));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 200) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0xf8));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0xf8) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x128));
  lVar1 = *(long *)(lVar2 + 0x200);
  if (*(long *)(lVar1 + 0x128) != 0) {
    input_free_device();
    lVar1 = *(long *)(lVar2 + 0x200);
  }
  input_unregister_device(*(undefined8 *)(lVar1 + 0x158));
  if (*(long *)(*(long *)(lVar2 + 0x200) + 0x158) != 0) {
    input_free_device();
  }
  sysfs_remove_group(param_1 + 0x20,aw9620x_touch_attribute_group);
  if (*(char *)(lVar2 + 1) != '\0') {
    regulator_disable(*(undefined8 *)(lVar2 + 0x1f8));
    regulator_put(*(undefined8 *)(lVar2 + 0x1f8));
  }
  return;
}



/* 001097f4 aw9620x_i2c_shutdown */

void aw9620x_i2c_shutdown(long param_1)

{
  long lVar1;
  undefined1 auStack_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  lVar1 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_0010ef88,"aw9620x_i2c_shutdown");
  if (*(char *)(lVar1 + 5) == '\0') {
    disable_irq(*(undefined4 *)(lVar1 + 0x1c));
    *(undefined1 *)(lVar1 + 5) = 1;
  }
  aw9620x_i2c_read(lVar1,0x4410,auStack_2c);
  aw9620x_i2c_write(lVar1,0x4408,2);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00109894 aw9620x_set_brightness */

void aw9620x_set_brightness(void)

{
  return;
}



/* 00109898 aw9620x_input_init */

undefined8 aw9620x_input_init(long param_1,undefined1 *param_2)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  char *pcVar4;
  long lVar5;
  long *plVar6;
  ulong uVar7;
  ulong uVar8;
  
  lVar2 = devm_kmalloc(*(undefined8 *)(param_1 + 0x30),0x180,0xdc0);
  *(long *)(param_1 + 0x200) = lVar2;
  if (lVar2 == 0) {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] devm_kzalloc err\n",
                "aw9620x_input_init",0xa21);
LAB_00109ae4:
    uVar3 = 0xffffffff;
  }
  else {
    uVar8 = 0;
    lVar2 = 0x10;
    do {
      iVar1 = snprintf((char *)(*(long *)(param_1 + 0x200) + lVar2),0x1e,"nubia_tgk_aw_sar%u_ch%u",
                       (ulong)*(uint *)(param_1 + 8),uVar8 & 0xffffffff);
      *(undefined4 *)(*(long *)(param_1 + 0x200) + lVar2 + -0xc) = 0;
      lVar5 = *(long *)(param_1 + 0x200) + lVar2;
      if ((*(uint *)(param_1 + 0x18) >> (ulong)((uint)uVar8 & 0x1f) & 1) != 0) {
        *(undefined1 *)(lVar5 + -0x10) = 1;
        uVar3 = input_allocate_device(iVar1);
        *(undefined8 *)(*(long *)(param_1 + 0x200) + lVar2 + -8) = uVar3;
        lVar5 = *(long *)(param_1 + 0x200) + lVar2;
        plVar6 = *(long **)(lVar5 + -8);
        if (plVar6 == (long *)0x0) {
          *param_2 = (char)uVar8;
        }
        else {
          *plVar6 = lVar5;
          lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
          *(ulong *)(lVar5 + 0x28) = *(ulong *)(lVar5 + 0x28) | 2;
          lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
          *(ulong *)(lVar5 + 0x28) = *(ulong *)(lVar5 + 0x28) | 1;
          lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
          *(ulong *)(lVar5 + 0x30) = *(ulong *)(lVar5 + 0x30) | 0x800000000000000;
          if (*(int *)(param_1 + 8) == 1) {
            uVar3 = 0xa3e;
            lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
            uVar7 = *(ulong *)(lVar5 + 0x38) | 4;
            pcVar4 = "[%s:%d] F8 event init\n";
LAB_00109a74:
            *(ulong *)(lVar5 + 0x38) = uVar7;
            _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),pcVar4,"aw9620x_input_init",
                        uVar3);
          }
          else if (*(int *)(param_1 + 8) == 0) {
            uVar3 = 0xa3a;
            lVar5 = *(long *)(*(long *)(param_1 + 0x200) + lVar2 + -8);
            uVar7 = *(ulong *)(lVar5 + 0x38) | 2;
            pcVar4 = "[%s:%d] F7 event init\n";
            goto LAB_00109a74;
          }
          input_set_abs_params
                    (*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar2 + -8),0x19,0xffffffff,100,0,
                     0);
          iVar1 = input_register_device(*(undefined8 *)(*(long *)(param_1 + 0x200) + lVar2 + -8));
          if (iVar1 == 0) goto LAB_00109920;
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] failed to register input device\n","aw9620x_input_init",0xa44);
        }
        if ((int)lVar2 != 0x10) {
          lVar2 = 8;
          do {
            if (*(long *)(*(long *)(param_1 + 0x200) + lVar2) != 0) {
              input_free_device();
            }
            uVar8 = uVar8 - 1;
            lVar2 = lVar2 + 0x30;
          } while (uVar8 != 0);
        }
        goto LAB_00109ae4;
      }
      *(undefined1 *)(lVar5 + -0x10) = 0;
      *(undefined8 *)(*(long *)(param_1 + 0x200) + lVar2 + -8) = 0;
LAB_00109920:
      lVar2 = lVar2 + 0x30;
      uVar8 = uVar8 + 1;
    } while (lVar2 != 400);
    uVar3 = 0;
  }
  return uVar3;
}



/* 00109b38 aw9620x_irq_init */

undefined4 aw9620x_irq_init(long param_1)

{
  long lVar1;
  undefined4 uVar2;
  int iVar3;
  char local_58 [32];
  long local_38;
  
  lVar1 = sp_el0;
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
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n","aw9620x_irq_init",
              0xaac);
  snprintf(local_58,0x1e,"aw_sar%u_irq",(ulong)*(uint *)(param_1 + 8));
  if (*(int *)(param_1 + 0xc) < 0) {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] irq gpio invalid!\n",
                "aw9620x_irq_init",0xad2);
    uVar2 = 0xffffffff;
    goto LAB_00109d5c;
  }
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] gpio_is_valid-sar%d\n",
              "aw9620x_irq_init",0xab2,*(undefined4 *)(param_1 + 8));
  gpio_to_desc(*(undefined4 *)(param_1 + 0xc));
  uVar2 = gpiod_to_irq();
  *(undefined4 *)(param_1 + 0x1c) = uVar2;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] gpio_to_irq-sar%d\n",
              "aw9620x_irq_init",0xab4,*(undefined4 *)(param_1 + 8));
  iVar3 = devm_gpio_request_one
                    (*(undefined8 *)(param_1 + 0x30),*(undefined4 *)(param_1 + 0xc),3,local_58);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] devm_gpio_request_one-sar%d\n",
              "aw9620x_irq_init",0xab9,*(undefined4 *)(param_1 + 8));
  if (iVar3 == 0) {
    iVar3 = devm_request_threaded_irq
                      (*(undefined8 *)(param_1 + 0x30),*(undefined4 *)(param_1 + 0x1c),0,aw9620x_irq
                       ,0x2002,"aw9620x_irq",param_1);
    if (iVar3 != 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] failed to request IRQ %d: %d\n","aw9620x_irq_init",0xac9,
                  *(undefined4 *)(param_1 + 0x1c),iVar3);
      goto LAB_00109d24;
    }
    _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),"[%s:%d] IRQ request successfully!\n",
                "aw9620x_irq_init",0xacd);
    uVar2 = 0;
  }
  else {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] request irq gpio failed, ret = %d\n","aw9620x_irq_init",0xabc,iVar3);
LAB_00109d24:
    uVar2 = 0xffffffff;
  }
  _dev_printk(&DAT_0010e5cb,*(undefined8 *)(param_1 + 0x30),"[%s:%d] disable_irq\n",
              "aw9620x_irq_init",0xad6);
  disable_irq(*(undefined4 *)(param_1 + 0x1c));
  *(undefined1 *)(param_1 + 5) = 1;
LAB_00109d5c:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return uVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00109d90 aw9620x_old_boot_nvr_modify */

void aw9620x_old_boot_nvr_modify(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined2 uVar4;
  int local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_old_boot_nvr_modify",0x102c);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c addr0: 0x%x\n",
              "aw9620x_old_boot_nvr_modify",0x102f,*(undefined2 *)(*(long *)(param_1 + 0x28) + 2));
  iVar2 = aw9620x_i2c_write(param_1,0x4444,0x10000);
  if (iVar2 != 0) {
    uVar4 = 0x12;
    if (*(short *)(*(long *)(param_1 + 0x28) + 2) != 0x12) {
      *(undefined2 *)(*(long *)(param_1 + 0x28) + 2) = 0x12;
      uVar4 = *(undefined2 *)(*(long *)(param_1 + 0x28) + 2);
    }
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] i2c addr0: 0x%x\n",
                "aw9620x_old_boot_nvr_modify",0x1035,uVar4);
    iVar2 = aw9620x_i2c_write(param_1,0x4444,0x10000);
    if (iVar2 != 0) {
      _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] REG_MCFG00 err!\n",
                  "aw9620x_old_boot_nvr_modify",0x1038);
      uVar3 = 0xffffffff;
      goto LAB_0010a004;
    }
  }
  aw9620x_i2c_write(param_1,0xff20,0x3cffffff);
  aw9620x_i2c_read(param_1,0x4748,&local_3c);
  iVar2 = local_3c;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] 0x4748 = 0x%08x\n",
              "aw9620x_old_boot_nvr_modify",0x103f,local_3c);
  if (iVar2 == 0) {
    aw9620x_i2c_write(param_1,0x4444,0);
    aw9620x_i2c_write(param_1,0xff18,0x3c);
    msleep(0x19);
    uVar3 = 1;
  }
  else {
    aw9620x_i2c_write(param_1,0x4748,0);
    aw9620x_i2c_write(param_1,0x4788,0x5a637922);
    aw9620x_i2c_write(param_1,0x4820,6);
    aw9620x_i2c_write(param_1,0x4700,0x110);
    aw9620x_i2c_write(param_1,0x4734,18000);
    aw9620x_i2c_write(param_1,0x4704,0x4100);
    aw9620x_i2c_write(param_1,0x4710,0x25);
    aw9620x_i2c_write(param_1,0x472c,0xf0);
    aw9620x_i2c_write(param_1,0x4714,1);
    usleep_range_state(5000,0x1392,2);
    aw9620x_i2c_write(param_1,0x4704,0x4100);
    aw9620x_i2c_write(param_1,0x4708,0);
    aw9620x_i2c_write(param_1,0x4710,0x2c);
    aw9620x_i2c_write(param_1,0x4714,1);
    uVar3 = 0;
  }
LAB_0010a004:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 0010a038 aw9620x_awrw_get */

long aw9620x_awrw_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  lVar2 = *(long *)(param_1 + 0x98);
  if (*(long *)(lVar2 + 0x240) == 0) {
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar2 + -8),"[%s:%d] p_i2c_tranfar_data is NULL\n",
                "aw9620x_awrw_get",0xb29);
    lVar2 = 0;
  }
  else {
    if ((uint)*(byte *)(lVar2 + 0x23b) * (uint)*(byte *)(lVar2 + 0x23a) == 0) {
      lVar3 = 0;
    }
    else {
      lVar4 = 0;
      lVar3 = 0;
      do {
        iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"0x%02x,",
                         (ulong)*(byte *)(*(long *)(lVar2 + 0x240) + (ulong)*(byte *)(lVar2 + 0x239)
                                         + lVar4));
        lVar4 = lVar4 + 1;
        lVar3 = lVar3 + iVar1;
      } while ((uint)lVar4 < (uint)*(byte *)(lVar2 + 0x23b) * (uint)*(byte *)(lVar2 + 0x23a));
    }
    iVar1 = snprintf((char *)(param_3 + lVar3 + -1),0x1000 - lVar3,"\n");
    devm_kfree(*(undefined8 *)(lVar2 + -8),*(undefined8 *)(lVar2 + 0x240));
    *(undefined8 *)(lVar2 + 0x240) = 0;
    lVar2 = lVar3 + iVar1 + -1;
  }
  return lVar2;
}



/* 0010a14c aw9620x_awrw_set */

undefined8 aw9620x_awrw_set(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  byte bVar1;
  byte bVar2;
  undefined2 uVar3;
  int iVar4;
  long lVar5;
  long lVar6;
  size_t sVar7;
  undefined8 uVar8;
  char *pcVar9;
  ulong uVar10;
  char *pcVar11;
  undefined8 uVar12;
  ulong uVar13;
  ulong __n;
  ulong uVar14;
  uint uVar15;
  long lVar16;
  uint uVar17;
  undefined1 auVar18 [16];
  undefined4 uStack_120;
  undefined2 auStack_11c [2];
  long lStack_118;
  undefined1 *puStack_110;
  code *pcStack_108;
  ulong uStack_100;
  undefined8 uStack_f0;
  long lStack_e8;
  char *pcStack_e0;
  char *pcStack_d8;
  undefined *puStack_d0;
  ulong uStack_c8;
  ulong uStack_c0;
  undefined8 uStack_b8;
  undefined4 local_b0;
  long local_a0;
  undefined8 local_98;
  undefined8 local_90;
  ulong local_88;
  long local_80;
  undefined8 local_78;
  long local_70;
  long local_68;
  
  lVar16 = sp_el0;
  local_68 = *(long *)(lVar16 + 0x710);
  lVar16 = *(long *)(param_1 + 0x98);
  local_98 = 0;
  local_90 = 0;
  iVar4 = sscanf(param_3,"0x%02x 0x%02x 0x%02x 0x%02x",(long)&local_90 + 4,&local_90,
                 (long)&local_98 + 4,&local_98);
  uVar8 = *(undefined8 *)(lVar16 + -8);
  if (iVar4 == 4) {
    local_b0 = (uint)local_98;
    _dev_printk(&DAT_0010eb37,uVar8,"[%s:%d] aw9620x 0x%02x 0x%02x 0x%02x 0x%02x\n",
                "aw9620x_awrw_set",0xb4f,local_90._4_4_,local_90 & 0xffffffff,local_98._4_4_);
    if (local_90._4_4_ < 2) {
      *(char *)(lVar16 + 0x238) = (char)(local_90 >> 0x20);
      *(char *)(lVar16 + 0x239) = (char)local_90;
      *(char *)(lVar16 + 0x23a) = (char)((ulong)local_98 >> 0x20);
      *(char *)(lVar16 + 0x23b) = (char)local_98;
      uVar15 = ((uint)local_98 & 0xff) * (local_98._4_4_ & 0xff) + ((uint)local_90 & 0xff);
      *(uint *)(lVar16 + 0x23c) = uVar15;
      if (*(long *)(lVar16 + 0x240) != 0) {
        devm_kfree(*(undefined8 *)(lVar16 + -8));
        uVar15 = *(uint *)(lVar16 + 0x23c);
        *(undefined8 *)(lVar16 + 0x240) = 0;
      }
      uVar13 = (ulong)uVar15;
      lVar5 = devm_kmalloc(*(undefined8 *)(lVar16 + -8),uVar13,0xdc0);
      *(long *)(lVar16 + 0x240) = lVar5;
      if (lVar5 == 0) {
        uVar8 = *(undefined8 *)(lVar16 + -8);
        pcVar9 = "[%s:%d] devm_kzalloc error\n";
        uVar12 = 0xb69;
      }
      else {
        if (*(char *)(lVar16 + 0x238) != '\x01') {
          if (*(char *)(lVar16 + 0x238) == '\0') {
            iVar4 = aw9620x_awrw_data_analysis
                              (lVar16 + -0x38,param_3,*(undefined4 *)(lVar16 + 0x23c));
            if (iVar4 == 0) {
              uVar15 = 5;
              do {
                local_80 = *(long *)(lVar16 + 0x240);
                local_88 = (ulong)(ushort)*(undefined4 *)(lVar16 + 0x23c) << 0x20;
                local_88 = CONCAT62(local_88._2_6_,*(undefined2 *)(*(long *)(lVar16 + -0x10) + 2));
                iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar16 + -0x10) + 0x18),&local_88,1);
                if (-1 < iVar4) {
                  if ((uVar15 >> 7 & 1) == 0) {
                    if (*(long *)(lVar16 + 0x240) == 0) goto LAB_0010a328;
                    goto LAB_0010a44c;
                  }
                  break;
                }
                _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar16 + -8),
                            "[%s:%d] aw9620x i2c write seq error %d\n","i2c_write_seq",0x28a,iVar4);
                usleep_range_state(2000,3000,2);
                uVar17 = uVar15 & 0xff;
                uVar15 = uVar15 - 1;
              } while (uVar17 != 0);
              uVar8 = *(undefined8 *)(lVar16 + -8);
              pcVar9 = "[%s:%d] i2c write error!\n";
              pcVar11 = "i2c_write_seq";
              uVar12 = 0x291;
            }
            else {
              uVar8 = *(undefined8 *)(lVar16 + -8);
              pcVar9 = "[%s:%d] awrw_write error\n";
              pcVar11 = "aw9620x_awrw_set";
              uVar12 = 0xb70;
            }
            _dev_printk(&DAT_0010dd3c,uVar8,pcVar9,pcVar11,uVar12);
            if (*(long *)(lVar16 + 0x240) != 0) {
LAB_0010a44c:
              devm_kfree(*(undefined8 *)(lVar16 + -8));
              *(undefined8 *)(lVar16 + 0x240) = 0;
            }
          }
          goto LAB_0010a328;
        }
        uVar14 = (ulong)*(byte *)(lVar16 + 0x239);
        bVar1 = *(byte *)(lVar16 + 0x23a);
        bVar2 = *(byte *)(lVar16 + 0x23b);
        local_a0 = lVar5;
        iVar4 = aw9620x_awrw_data_analysis(lVar16 + -0x38,param_3,uVar14);
        if (iVar4 == 0) {
          __n = (ulong)bVar2 * (ulong)bVar1;
          uVar15 = 5;
          do {
            local_80 = *(long *)(lVar16 + 0x240);
            uVar3 = *(undefined2 *)(*(long *)(lVar16 + -0x10) + 2);
            local_70 = local_80 + (ulong)*(byte *)(lVar16 + 0x239);
            local_88 = (ulong)CONCAT32((int3)(((uint5)*(byte *)(lVar16 + 0x239) << 0x20) >> 0x10),
                                       uVar3);
            local_78 = (ulong)CONCAT24((ushort)*(byte *)(lVar16 + 0x23b) *
                                       (ushort)*(byte *)(lVar16 + 0x23a),CONCAT22(1,uVar3));
            iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar16 + -0x10) + 0x18),&local_88,2);
            if (-1 < iVar4) {
              if ((uVar15 >> 7 & 1) == 0) goto LAB_0010a328;
              break;
            }
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar16 + -8),
                        "[%s:%d] aw9620x i2c write error %d\n","i2c_read_seq",0x2a4,iVar4);
            usleep_range_state(2000,3000,2);
            uVar17 = uVar15 & 0xff;
            uVar15 = uVar15 - 1;
          } while (uVar17 != 0);
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar16 + -8),"[%s:%d] i2c write error!\n",
                      "i2c_read_seq",0x2ab);
          uVar10 = 0;
          if (uVar14 <= uVar13) {
            uVar10 = uVar13 - uVar14;
          }
          if (uVar10 < __n) {
            uVar10 = __n;
            auVar18 = __fortify_panic(0xf);
            lVar6 = auVar18._0_8_;
            pcStack_108 = aw9620x_awrw_data_analysis;
            uStack_f0 = 1;
            pcStack_e0 = "i2c_read_seq";
            pcStack_d8 = "[%s:%d] aw9620x i2c write error %d\n";
            puStack_d0 = &DAT_0010dd3c;
            lVar5 = sp_el0;
            lStack_118 = *(long *)(lVar5 + 0x710);
            uVar15 = ((uint)uVar10 & 0xff) + ((uint)uVar10 & 0xff) * 4;
            iVar4 = uVar15 + 0x14;
            uStack_120 = 0;
            puStack_110 = &stack0xffffffffffffffa0;
            uStack_100 = uVar14;
            lStack_e8 = lVar16;
            uStack_c8 = uVar13;
            uStack_c0 = __n;
            uStack_b8 = param_4;
            sVar7 = strlen(auVar18._8_8_);
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] enter\n",
                        "aw9620x_awrw_data_analysis",0xae9);
            if (iVar4 == (int)sVar7) {
              if ((uVar10 & 0xff) != 0) {
                uVar17 = 0;
                uVar13 = 0;
                do {
                  auStack_11c[0] = *(undefined2 *)(auVar18._8_8_ + (ulong)uVar17 + 0x16);
                  iVar4 = sscanf((char *)auStack_11c,"%02x",&uStack_120);
                  if (iVar4 == 1) {
                    *(char *)(*(long *)(lVar6 + 0x278) + (uVar13 & 0xff)) = (char)uStack_120;
                    _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                                "[%s:%d] tranfar_data = 0x%2x\n","aw9620x_awrw_data_analysis",0xafb,
                                *(undefined1 *)(*(long *)(lVar6 + 0x278) + (uVar13 & 0xff)));
                  }
                  uVar13 = (ulong)((int)uVar13 + 1);
                  uVar17 = uVar17 + 5 & 0xff;
                } while (uVar17 < uVar15);
              }
              uVar8 = 0;
            }
            else {
              _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                          "[%s:%d] error theory_len = %d actual_len = %d\n",
                          "aw9620x_awrw_data_analysis",0xaee,iVar4,sVar7 & 0xffffffff);
              uVar8 = 0xffffffff;
            }
            lVar16 = sp_el0;
            if (*(long *)(lVar16 + 0x710) != lStack_118) {
                    /* WARNING: Subroutine does not return */
              __stack_chk_fail(uVar8);
            }
            return uVar8;
          }
          memset((void *)(local_a0 + uVar14),0xff,__n);
        }
        uVar8 = *(undefined8 *)(lVar16 + -8);
        pcVar9 = "[%s:%d] awrw_read error\n";
        uVar12 = 0xb79;
      }
    }
    else {
      uVar8 = *(undefined8 *)(lVar16 + -8);
      pcVar9 = "[%s:%d] parameter err\n";
      uVar12 = 0xb52;
    }
  }
  else {
    pcVar9 = "[%s:%d] sscanf parse err\n";
    uVar12 = 0xb4a;
  }
  _dev_printk(&DAT_0010dd3c,uVar8,pcVar9,"aw9620x_awrw_set",uVar12);
LAB_0010a328:
  lVar16 = sp_el0;
  if (*(long *)(lVar16 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}



/* 0010a578 aw9620x_awrw_data_analysis */

void aw9620x_awrw_data_analysis(long param_1,char *param_2,byte param_3)

{
  uint uVar1;
  long lVar2;
  int iVar3;
  size_t sVar4;
  undefined8 uVar5;
  ulong uVar6;
  uint uVar7;
  undefined4 local_70;
  undefined2 local_6c [2];
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  uVar1 = (uint)param_3 + (uint)param_3 * 4;
  iVar3 = uVar1 + 0x14;
  local_70 = 0;
  sVar4 = strlen(param_2);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_awrw_data_analysis",0xae9);
  if (iVar3 == (int)sVar4) {
    if (param_3 != 0) {
      uVar7 = 0;
      uVar6 = 0;
      do {
        local_6c[0] = *(undefined2 *)(param_2 + (ulong)uVar7 + 0x16);
        iVar3 = sscanf((char *)local_6c,"%02x",&local_70);
        if (iVar3 == 1) {
          *(char *)(*(long *)(param_1 + 0x278) + (uVar6 & 0xff)) = (char)local_70;
          _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] tranfar_data = 0x%2x\n"
                      ,"aw9620x_awrw_data_analysis",0xafb,
                      *(undefined1 *)(*(long *)(param_1 + 0x278) + (uVar6 & 0xff)));
        }
        uVar6 = (ulong)((int)uVar6 + 1);
        uVar7 = uVar7 + 5 & 0xff;
      } while (uVar7 < uVar1);
    }
    uVar5 = 0;
  }
  else {
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] error theory_len = %d actual_len = %d\n","aw9620x_awrw_data_analysis",0xaee
                ,iVar3,sVar4 & 0xffffffff);
    uVar5 = 0xffffffff;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar5);
}



/* 0010a714 aw9620x_soft_rst_set */

undefined8
aw9620x_soft_rst_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = kstrtouint(param_3,0,&local_2c);
  if ((iVar1 == 0) && (local_2c == 1)) {
    aw9620x_soft_reset(lVar2 + -0x38);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a7a0 aw9620x_mode_operation_get */

long aw9620x_mode_operation_get(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  aw9620x_i2c_read(lVar2 + -0x38,0x1a14,&local_2c);
  iVar1 = snprintf(param_3,0x1000,"mode : %u, REG_WST(0x1a14) :0x%x \n",
                   (ulong)*(uint *)(lVar2 + -0x28),(ulong)local_2c);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return (long)iVar1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a82c aw9620x_mode_operation_set */

undefined8
aw9620x_mode_operation_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  char *pcVar5;
  undefined8 uVar6;
  long lVar7;
  long lVar8;
  undefined1 auStack_44 [4];
  uint local_40;
  int local_3c;
  long local_38;
  
  lVar8 = sp_el0;
  local_38 = *(long *)(lVar8 + 0x710);
  lVar8 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  local_40 = 0;
  iVar3 = kstrtouint(param_3,0,&local_3c);
  if (iVar3 != 0) goto LAB_0010a878;
  lVar7 = lVar8 + -0x38;
  if (local_3c == 3) {
    if (*(int *)(lVar8 + -0x28) == 3) goto LAB_0010a9c0;
    aw9620x_i2c_write(lVar7,0x4408,3);
  }
  else {
    if (local_3c == 2) {
      if (*(int *)(lVar8 + -0x28) != 2) {
        if (*(int *)(lVar8 + -0x28) == 3) {
          aw9620x_i2c_write(lVar7,0xff10,1);
        }
        iVar3 = aw9620x_i2c_read(lVar7,0x1a18,&local_40);
        uVar1 = local_40;
        uVar4 = *(undefined8 *)(lVar8 + -8);
        if (iVar3 < 0) {
          pcVar5 = "[%s:%d] i2c IO error\n";
          uVar6 = 0xdb6;
          goto LAB_0010a9a8;
        }
        _dev_printk(&DAT_0010eb37,uVar4,"[%s:%d] REG_STAT0 = 0x%x!\n","aw9620x_mode_operation_set",
                    0xdb9,local_40);
        if ((uVar1 & 0xffff) != 0) {
          if (*(int *)(lVar8 + -0x30) == 1) {
            input_event(*(undefined8 *)(*(long *)(lVar8 + 0x1c8) + 8),1,0x42,0);
            uVar4 = *(undefined8 *)(lVar8 + -8);
            pcVar5 = "[%s:%d] operation: F8 event report\n";
            uVar6 = 0xdc3;
LAB_0010ab2c:
            _dev_printk(&DAT_0010e5cb,uVar4,pcVar5,"aw9620x_mode_operation_set",uVar6);
          }
          else if (*(int *)(lVar8 + -0x30) == 0) {
            input_event(*(undefined8 *)(*(long *)(lVar8 + 0x1c8) + 8),1,0x41,0);
            uVar4 = *(undefined8 *)(lVar8 + -8);
            pcVar5 = "[%s:%d] operation: F7 event report\n";
            uVar6 = 0xdbf;
            goto LAB_0010ab2c;
          }
          input_event(*(undefined8 *)(*(long *)(lVar8 + 0x1c8) + 8),0,0,0);
        }
        aw9620x_i2c_write(lVar7,0x4408,2);
        goto LAB_0010a9e4;
      }
    }
    else if (local_3c == 1) {
      if (*(int *)(lVar8 + -0x28) != 1) {
        if (*(int *)(lVar8 + -0x28) == 3) {
          aw9620x_i2c_write(lVar7,0xff10,1);
        }
        uVar1 = *(uint *)(lVar8 + -0x30);
        if (1 < uVar1) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x10ab64);
          (*pcVar2)();
        }
        if ((&aw_init_irq_flag)[uVar1] == '\x01') {
          (&aw_init_irq_flag)[uVar1] = 0;
          aw9620x_load_def_reg_bin(lVar7);
        }
        iVar3 = aw9620x_i2c_read(lVar7,0x4410,auStack_44);
        if (-1 < iVar3) {
          aw9620x_i2c_write(lVar7,0x4408,1);
          aw9620x_i2c_write_bits(lVar7,0x1a00,0xffff00ff,0xff00);
          goto LAB_0010a9e4;
        }
        uVar4 = *(undefined8 *)(lVar8 + -8);
        pcVar5 = "[%s:%d] i2c1 IO error\n";
        uVar6 = 0xda5;
LAB_0010a9a8:
        _dev_printk(&DAT_0010dd3c,uVar4,pcVar5,"aw9620x_mode_operation_set",uVar6);
        param_4 = 0xffffffffffffffff;
        goto LAB_0010a878;
      }
    }
LAB_0010a9c0:
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar8 + -8),
                "[%s:%d]  repeat write failed to operation mode!\n","aw9620x_mode_operation_set",
                0xdce);
  }
LAB_0010a9e4:
  *(int *)(lVar8 + -0x28) = local_3c;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar8 + -8),"[%s:%d] mode = %d!\n",
              "aw9620x_mode_operation_set",0xdd2);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar8 + -8),"[%s:%d] aw9620x->old_mode = %d!\n",
              "aw9620x_mode_operation_set",0xdd3,*(undefined4 *)(lVar8 + -0x28));
LAB_0010a878:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010ab68 aw9620x_update_fw_get */

long aw9620x_update_fw_get(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = aw9620x_i2c_read(lVar2 + -0x38,0x1a10,&local_2c);
  if (iVar1 < 0) {
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar2 + -8),"[%s:%d] read firmware version err\n",
                "aw9620x_update_fw_get",0xdf5);
  }
  iVar1 = snprintf(param_3,0x1000,"reg firmware_version:0x%08x\n",(ulong)local_2c);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return (long)iVar1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010ac1c aw9620x_update_fw_set */

undefined8
aw9620x_update_fw_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 == 0) {
    mutex_lock(aw_update_lock);
    if (local_3c == 1) {
      *(undefined1 *)(lVar2 + -0x35) = 0;
      *(undefined1 *)(lVar2 + -0x31) = 1;
      if (*(char *)(lVar2 + -0x33) == '\0') {
        disable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 1;
      }
      aw9620x_load_frimware_work(lVar2 + -0x38);
      if (*(char *)(lVar2 + -0x33) == '\x01') {
        enable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 0;
      }
    }
    mutex_unlock(aw_update_lock);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010ad04 aw9620x_update_reg_set */

undefined8
aw9620x_update_reg_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 == 0) {
    mutex_lock(aw_update_lock);
    if (local_3c == 1) {
      if (*(char *)(lVar2 + -0x33) == '\0') {
        disable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 1;
      }
      aw9620x_load_def_reg_bin(lVar2 + -0x38);
      if (*(char *)(lVar2 + -0x33) == '\x01') {
        enable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 0;
      }
    }
    mutex_unlock(aw_update_lock);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010ade4 aw9620x_reg_update_bt_set */

undefined8
aw9620x_reg_update_bt_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 == 0) {
    mutex_lock(aw_update_lock);
    if (local_3c == 1) {
      if (*(char *)(lVar2 + -0x33) == '\0') {
        disable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 1;
      }
      aw9620x_reg_update_boot_work(lVar2 + -0x38);
      if (*(char *)(lVar2 + -0x33) == '\x01') {
        enable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 0;
      }
    }
    mutex_unlock(aw_update_lock);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010aec4 aw9620x_reg_update_fw_set */

undefined8
aw9620x_reg_update_fw_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtoint(param_3,0,&local_3c);
  if (iVar1 == 0) {
    mutex_lock(aw_update_lock);
    if (local_3c == 1) {
      *(undefined1 *)(lVar2 + -0x35) = 1;
      if (*(char *)(lVar2 + -0x33) == '\0') {
        disable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 1;
      }
      aw9620x_load_frimware_work(lVar2 + -0x38);
      if (*(char *)(lVar2 + -0x33) == '\x01') {
        enable_irq(*(undefined4 *)(lVar2 + -0x1c));
        *(undefined1 *)(lVar2 + -0x33) = 0;
      }
    }
    mutex_unlock(aw_update_lock);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010afa8 aw9620x_raw_get */

long aw9620x_raw_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  int local_5c;
  long local_58;
  
  lVar3 = sp_el0;
  uVar4 = 0;
  local_58 = *(long *)(lVar3 + 0x710);
  lVar3 = 0;
  lVar2 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  do {
    aw9620x_i2c_read(lVar2 + -0x38,uVar4 * 0x54 + 0x1a74,&local_5c);
    iVar1 = local_5c + 0x3ff;
    if (-1 < local_5c) {
      iVar1 = local_5c;
    }
    iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"(ch%d):%d\n",(ulong)uVar4,
                     (ulong)(uint)(iVar1 >> 10));
    uVar4 = uVar4 + 1;
    lVar3 = lVar3 + iVar1;
  } while (uVar4 != 8);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b088 aw9620x_lpf_get */

long aw9620x_lpf_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  int local_5c;
  long local_58;
  
  lVar3 = sp_el0;
  uVar4 = 0;
  local_58 = *(long *)(lVar3 + 0x710);
  lVar3 = 0;
  lVar2 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  do {
    aw9620x_i2c_read(lVar2 + -0x38,uVar4 * 0x54 + 0x1a78,&local_5c);
    iVar1 = local_5c + 0x3ff;
    if (-1 < local_5c) {
      iVar1 = local_5c;
    }
    iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"(ch%d):%d\n",(ulong)uVar4,
                     (ulong)(uint)(iVar1 >> 10));
    uVar4 = uVar4 + 1;
    lVar3 = lVar3 + iVar1;
  } while (uVar4 != 8);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b168 aw9620x_valid_get */

long aw9620x_valid_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  int local_5c;
  long local_58;
  
  lVar3 = sp_el0;
  uVar4 = 0;
  local_58 = *(long *)(lVar3 + 0x710);
  lVar3 = 0;
  lVar2 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  do {
    aw9620x_i2c_read(lVar2 + -0x38,uVar4 * 0x54 + 0x1a7c,&local_5c);
    iVar1 = local_5c + 0x3ff;
    if (-1 < local_5c) {
      iVar1 = local_5c;
    }
    iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"(ch%d):%d\n",(ulong)uVar4,
                     (ulong)(uint)(iVar1 >> 10));
    uVar4 = uVar4 + 1;
    lVar3 = lVar3 + iVar1;
  } while (uVar4 != 8);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b248 aw9620x_diff_get */

long aw9620x_diff_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  int local_5c;
  long local_58;
  
  lVar3 = sp_el0;
  uVar4 = 0;
  local_58 = *(long *)(lVar3 + 0x710);
  lVar3 = 0;
  lVar2 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  do {
    aw9620x_i2c_read(lVar2 + -0x38,uVar4 * 0x54 + 0x1a84,&local_5c);
    iVar1 = local_5c + 0x3ff;
    if (-1 < local_5c) {
      iVar1 = local_5c;
    }
    iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"(ch%d):%d\n",(ulong)uVar4,
                     (ulong)(uint)(iVar1 >> 10));
    uVar4 = uVar4 + 1;
    lVar3 = lVar3 + iVar1;
  } while (uVar4 != 8);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b328 aw9620x_deltavalid_get */

long aw9620x_deltavalid_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  int local_5c;
  long local_58;
  
  lVar3 = sp_el0;
  uVar4 = 0;
  local_58 = *(long *)(lVar3 + 0x710);
  lVar3 = 0;
  lVar2 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  do {
    aw9620x_i2c_read(lVar2 + -0x38,uVar4 * 0x54 + 0x1a88,&local_5c);
    iVar1 = local_5c + 0x3ff;
    if (-1 < local_5c) {
      iVar1 = local_5c;
    }
    iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"(ch%d):%d\n",(ulong)uVar4,
                     (ulong)(uint)(iVar1 >> 10));
    uVar4 = uVar4 + 1;
    lVar3 = lVar3 + iVar1;
  } while (uVar4 != 8);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b408 aw9620x_baseline_get */

long aw9620x_baseline_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  int local_5c;
  long local_58;
  
  lVar3 = sp_el0;
  uVar4 = 0;
  local_58 = *(long *)(lVar3 + 0x710);
  lVar3 = 0;
  lVar2 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  do {
    aw9620x_i2c_read(lVar2 + -0x38,uVar4 * 0x54 + 0x1a80,&local_5c);
    iVar1 = local_5c + 0x3ff;
    if (-1 < local_5c) {
      iVar1 = local_5c;
    }
    iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"(ch%d):%d\n",(ulong)uVar4,
                     (ulong)(uint)(iVar1 >> 10));
    uVar4 = uVar4 + 1;
    lVar3 = lVar3 + iVar1;
  } while (uVar4 != 8);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b4e8 aw9620x_initial_get */

long aw9620x_initial_get(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  int local_5c;
  long local_58;
  
  lVar3 = sp_el0;
  uVar4 = 0;
  local_58 = *(long *)(lVar3 + 0x710);
  lVar3 = 0;
  lVar2 = *(long *)(param_1 + 0x98);
  local_5c = 0;
  do {
    aw9620x_i2c_read(lVar2 + -0x38,uVar4 * 0x54 + 0x1a8c,&local_5c);
    iVar1 = local_5c + 0x3ff;
    if (-1 < local_5c) {
      iVar1 = local_5c;
    }
    iVar1 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"(ch%d):%d\n",(ulong)uVar4,
                     (ulong)(uint)(iVar1 >> 10));
    uVar4 = uVar4 + 1;
    lVar3 = lVar3 + iVar1;
  } while (uVar4 != 8);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return lVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b5c8 aw9620x_reg_get */

long aw9620x_reg_get(long param_1,undefined8 param_2,long param_3)

{
  ushort uVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  long lVar5;
  uint local_6c;
  long local_68;
  
  lVar4 = sp_el0;
  lVar5 = 0;
  local_68 = *(long *)(lVar4 + 0x710);
  lVar4 = 0;
  lVar3 = *(long *)(param_1 + 0x98);
  local_6c = 0;
  do {
    if (((&aw9620x_reg_access)[lVar5] & 1) != 0) {
      uVar1 = *(ushort *)((long)&DAT_001101f2 + lVar5);
      iVar2 = aw9620x_i2c_read(lVar3 + -0x38,(ulong)uVar1,&local_6c);
      if (iVar2 < 0) {
        iVar2 = snprintf((char *)(param_3 + lVar4),0x1000 - lVar4,"i2c read error ret = %d\n",
                         0xffffffff);
        lVar4 = lVar4 + iVar2;
      }
      iVar2 = snprintf((char *)(param_3 + lVar4),0x1000 - lVar4,"0x%04x,0x%08x\n",(ulong)uVar1,
                       (ulong)local_6c);
      lVar4 = lVar4 + iVar2;
    }
    lVar5 = lVar5 + 4;
  } while (lVar5 != 0x310);
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_68) {
    return lVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b6dc aw9620x_reg_set */

undefined8 aw9620x_reg_set(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    lVar2 = 0;
    do {
      if ((uint)*(ushort *)((long)&DAT_001101f2 + lVar2) == ((uint)local_30 & 0xffff)) {
        if (((byte)(&aw9620x_reg_access)[lVar2] >> 1 & 1) != 0) {
          aw9620x_i2c_write(lVar3 + -0x38,local_30 & 0xffffffff,local_30._4_4_);
        }
        break;
      }
      lVar2 = lVar2 + 4;
    } while (lVar2 != 0x310);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}



/* 0010b7a8 aw9620x_aot_cail_set */

undefined8
aw9620x_aot_cail_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_30;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = kstrtouint(param_3,0,&local_30);
  if (iVar1 == 0) {
    if (local_30 == 1) {
      lVar2 = lVar2 + -0x38;
      local_2c = 0;
      aw9620x_i2c_read(lVar2,0x1a00,&local_2c);
      aw9620x_i2c_write(lVar2,0x1a00,local_2c | 0xff00);
    }
    else {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar2 + -8),"[%s:%d] fail to set aot cali\n",
                  "aw9620x_aot_cail_set",0xf6a);
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b880 aw9620x_parasitic_data_get */

long aw9620x_parasitic_data_get(long param_1,undefined8 param_2,long param_3)

{
  uint uVar1;
  bool bVar2;
  int iVar3;
  int iVar4;
  long lVar5;
  uint uVar6;
  int iVar7;
  long lVar8;
  uint local_6c;
  long local_68;
  
  lVar8 = sp_el0;
  lVar5 = 0;
  local_68 = *(long *)(lVar8 + 0x710);
  uVar6 = 0;
  iVar7 = 0x1a48;
  lVar8 = *(long *)(param_1 + 0x98);
  local_6c = 0;
  do {
    aw9620x_i2c_read(lVar8 + -0x38,iVar7,&local_6c);
    uVar1 = local_6c;
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar8 + -8),"[%s:%d] ch%d addr:0x%08x val=0x%08x\n",
                "aw9620x_parasitic_data_get",0xf81,uVar6,iVar7,local_6c);
    bVar2 = (uVar1 & 0x400) != 0;
    iVar3 = 0x26ac;
    if (bVar2) {
      iVar3 = 0x4d58;
    }
    iVar4 = 0xa5;
    if (bVar2) {
      iVar4 = 0x14a;
    }
    uVar1 = (uVar1 >> 0x18) * iVar3 + (uVar1 >> 0x10 & 0xff) * iVar4;
    iVar3 = snprintf((char *)(param_3 + lVar5),0x1000 - lVar5,"ch%u parasitic_data %u.%u pf\n",
                     (ulong)uVar6,(ulong)uVar1 / 10000,(ulong)(uVar1 % 10000));
    uVar6 = uVar6 + 1;
    lVar5 = lVar5 + iVar3;
    iVar7 = iVar7 + 0x54;
  } while (uVar6 != 8);
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_68) {
    return lVar5;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010b9cc aw9620x_chip_info_get */

long aw9620x_chip_info_get(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  uint local_4c;
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_4c = 0;
  lVar2 = lVar3 + -0x38;
  iVar1 = snprintf(param_3,0x1000,"sar%u , driver version %s\n",(ulong)*(uint *)(lVar3 + -0x30),
                   "v0.3.0");
  lVar4 = (long)iVar1;
  aw9620x_i2c_read(lVar2,0xff00,&local_4c);
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"chipid is 0x%08x\n",(ulong)local_4c);
  lVar4 = lVar4 + iVar1;
  aw9620x_i2c_read(lVar2,0x1a10,lVar3 + 0x250);
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"chip firmware ver is 0x%08x\n",
                   (ulong)*(uint *)(lVar3 + 0x250));
  lVar4 = lVar4 + iVar1;
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"bin  firmware ver is 0x%08x\n",
                   (ulong)*(uint *)(lVar3 + 0x24c));
  lVar4 = lVar4 + iVar1;
  aw9620x_i2c_read(lVar2,0x4414,&local_4c);
  iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"REG_HOSTIRQEN is 0x%08x\n",(ulong)local_4c);
  lVar4 = lVar4 + iVar1;
  if (*(char *)(lVar3 + -0x34) == '\x01') {
    iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,
                     "Error updating register bin file, update with default array\n");
    lVar4 = lVar4 + iVar1;
  }
  if (*(char *)(lVar3 + 0x248) == '\x01') {
    iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,
                     "boot ver is 0x%08x, date is 0x%08x, checksum is 0x%08x\n",
                     (ulong)*(uint *)(lVar3 + 600),(ulong)*(uint *)(lVar3 + 0x25c),
                     (ulong)*(uint *)(lVar3 + 0x260));
    lVar4 = lVar4 + iVar1;
    iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"fw checksum is 0x%08x\n",
                     (ulong)*(uint *)(lVar3 + 0x254));
    lVar4 = lVar4 + iVar1;
  }
  if (*(int *)(lVar3 + 0x264) != 0) {
    iVar1 = snprintf(param_3 + lVar4,0x1000 - lVar4,"boot bin ver is 0x%08x\n");
    lVar4 = lVar4 + iVar1;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_48) {
    return lVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010bba4 aw9620x_sensy_config_get */

long aw9620x_sensy_config_get(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"%d\n",(ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x268));
  return (long)iVar1;
}



/* 0010bbe0 aw9620x_sensy_config_set */

undefined8
aw9620x_sensy_config_set(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  undefined1 uVar2;
  long lVar3;
  long lVar4;
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = kstrtouint(param_3,0,&local_3c);
  if (iVar1 != 0) goto LAB_0010bc28;
  lVar3 = lVar4 + -0x38;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar4 + -8),"[%s:%d] flag = %d\n",
              "aw9620x_sensy_config_set",0xfe2,local_3c);
  mutex_lock(aw_update_lock);
  if (local_3c == 3) {
    aw9620x_i2c_write(lVar3,0x1d20,0xb);
    uVar2 = 3;
LAB_0010bcf0:
    *(undefined1 *)(lVar4 + 0x268) = uVar2;
  }
  else {
    if (local_3c == 2) {
      aw9620x_i2c_write(lVar3,0x1d20,0xc);
      uVar2 = 2;
      goto LAB_0010bcf0;
    }
    if (local_3c == 1) {
      aw9620x_i2c_write(lVar3,0x1d20,0xd);
      uVar2 = 1;
      goto LAB_0010bcf0;
    }
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar4 + -8),"[%s:%d] input err\n",
                "aw9620x_sensy_config_set",0xfef);
  }
  mutex_unlock(aw_update_lock);
LAB_0010bc28:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010bd34 aw9620x_irq */

undefined8 aw9620x_irq(undefined8 param_1,undefined8 param_2)

{
  aw9620x_irq_handle_func(param_2);
  return 1;
}



/* 0010bd5c init_module */

int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_0010ea76,"v0.3.0");
  iVar1 = i2c_register_driver(&__this_module,&aw9620x_i2c_driver);
  if (iVar1 != 0) {
    _printk(&DAT_0010e29c);
  }
  return iVar1;
}



/* 0010bdc4 cleanup_module */

void cleanup_module(void)

{
  i2c_del_driver(&aw9620x_i2c_driver);
  return;
}



