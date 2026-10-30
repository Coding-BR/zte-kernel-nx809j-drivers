
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
  if (iVar3 != 0) goto LAB_0010958c;
  lVar7 = lVar8 + -0x38;
  if (local_3c == 3) {
    if (*(int *)(lVar8 + -0x28) == 3) goto LAB_001096d4;
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
          goto LAB_001096bc;
        }
        _dev_printk(&DAT_0010d797,uVar4,"[%s:%d] REG_STAT0 = 0x%x!\n","aw9620x_mode_operation_set",
                    0xdb9,local_40);
        if ((uVar1 & 0xffff) != 0) {
          if (*(int *)(lVar8 + -0x30) == 1) {
            input_event(*(undefined8 *)(*(long *)(lVar8 + 0x1c8) + 8),1,0x42,0);
            uVar4 = *(undefined8 *)(lVar8 + -8);
            pcVar5 = "[%s:%d] operation: F8 event report\n";
            uVar6 = 0xdc3;
LAB_00109840:
            _dev_printk(&DAT_0010d22b,uVar4,pcVar5,"aw9620x_mode_operation_set",uVar6);
          }
          else if (*(int *)(lVar8 + -0x30) == 0) {
            input_event(*(undefined8 *)(*(long *)(lVar8 + 0x1c8) + 8),1,0x41,0);
            uVar4 = *(undefined8 *)(lVar8 + -8);
            pcVar5 = "[%s:%d] operation: F7 event report\n";
            uVar6 = 0xdbf;
            goto LAB_00109840;
          }
          input_event(*(undefined8 *)(*(long *)(lVar8 + 0x1c8) + 8),0,0,0);
        }
        aw9620x_i2c_write(lVar7,0x4408,2);
        goto LAB_001096f8;
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
          pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x109878);
          (*pcVar2)();
        }
        if ((&aw9620x_bss_base)[uVar1] == '\x01') {
          (&aw9620x_bss_base)[uVar1] = 0;
          aw9620x_load_def_reg_bin(lVar7);
        }
        iVar3 = aw9620x_i2c_read(lVar7,0x4410,auStack_44);
        if (-1 < iVar3) {
          aw9620x_i2c_write(lVar7,0x4408,1);
          aw9620x_i2c_write_bits(lVar7,0x1a00,0xffff00ff,0xff00);
          goto LAB_001096f8;
        }
        uVar4 = *(undefined8 *)(lVar8 + -8);
        pcVar5 = "[%s:%d] i2c1 IO error\n";
        uVar6 = 0xda5;
LAB_001096bc:
        _dev_printk(&DAT_0010c99c,uVar4,pcVar5,"aw9620x_mode_operation_set",uVar6);
        param_4 = 0xffffffffffffffff;
        goto LAB_0010958c;
      }
    }
LAB_001096d4:
    _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar8 + -8),
                "[%s:%d]  repeat write failed to operation mode!\n","aw9620x_mode_operation_set",
                0xdce);
  }
LAB_001096f8:
  *(int *)(lVar8 + -0x28) = local_3c;
  _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar8 + -8),"[%s:%d] mode = %d!\n",
              "aw9620x_mode_operation_set",0xdd2);
  _dev_printk(&DAT_0010d797,*(undefined8 *)(lVar8 + -8),"[%s:%d] aw9620x->old_mode = %d!\n",
              "aw9620x_mode_operation_set",0xdd3,*(undefined4 *)(lVar8 + -0x28));
LAB_0010958c:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

