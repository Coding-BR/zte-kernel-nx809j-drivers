
int aw_parsing_bin_file(undefined8 *param_1)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  undefined *puVar4;
  ulong uVar5;
  undefined8 *puVar6;
  
  _printk(&DAT_0010e4b2,"aw_parsing_bin_file",0x1c6,"V0.0.7-V1.0.4");
  if (param_1 == (undefined8 *)0x0) {
    _printk(&DAT_0010cc5a,"aw_parsing_bin_file",0x1c8);
    iVar2 = -8;
  }
  else {
    iVar2 = *(int *)((long)param_1 + 0x20ec);
    *param_1 = param_1 + 0x41d;
    param_1[1] = 0;
    *(undefined4 *)(param_1 + 2) = 0;
    _printk(&DAT_0010d8a7,"aw_check_bin_header_version",0x1b3,iVar2);
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
              puVar4 = &DAT_0010c6f4;
              uVar3 = 0x1dd;
              goto LAB_00101150;
            }
            _printk(&DAT_0010c498,"aw_check_data_version",0x86);
            if (uVar5 == 100) {
                    /* WARNING: Does not return */
              pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x1012e8);
              (*pcVar1)();
            }
            if (*(int *)((long)puVar6 + -4) != 1) {
              _printk(&DAT_0010ca7c,"aw_check_data_version",0x8c);
              _printk(&DAT_0010b093,"aw_parsing_bin_file",0x1e3);
              return -4;
            }
            iVar2 = *(int *)(puVar6 + -1);
            if (iVar2 == 0x21) {
              iVar2 = aw_check_soc_app_num_v1(param_1,uVar5 & 0xffffffff);
              if (iVar2 < 0) {
                puVar4 = &DAT_0010b608;
                uVar3 = 0x200;
                goto LAB_00101150;
              }
            }
            else if (iVar2 == 0x10) {
              iVar2 = aw_check_dsp_reg_num_v1(param_1,uVar5 & 0xffffffff);
              if (iVar2 < 0) {
                puVar4 = &DAT_0010e4e9;
                uVar3 = 0x1f7;
                goto LAB_00101150;
              }
            }
            else if (iVar2 == 0) {
              iVar2 = aw_check_register_num_v1(param_1,uVar5 & 0xffffffff);
              if (iVar2 < 0) {
                puVar4 = &DAT_0010cfda;
                uVar3 = 0x1ee;
                goto LAB_00101150;
              }
            }
            else {
              *(undefined4 *)(puVar6 + 5) = *(undefined4 *)puVar6;
            }
            uVar5 = uVar5 + 1;
            puVar6 = (undefined8 *)((long)puVar6 + 0x54);
          } while (uVar5 < *(uint *)(param_1 + 1));
        }
        _printk(&DAT_0010daa7,"aw_parsing_bin_file",0x209);
        return 0;
      }
    }
    else {
      _printk(&DAT_0010be58,"aw_check_bin_header_version",0x1bc);
      iVar2 = -1;
    }
    puVar4 = &DAT_0010d38a;
    uVar3 = 0x1d3;
LAB_00101150:
    _printk(puVar4,"aw_parsing_bin_file",uVar3);
  }
  return iVar2;
}

