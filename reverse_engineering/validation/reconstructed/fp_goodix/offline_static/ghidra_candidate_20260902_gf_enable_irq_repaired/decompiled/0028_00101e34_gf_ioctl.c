
void gf_ioctl(undefined8 param_1,ulong param_2,ulong param_3)

{
  undefined8 uVar1;
  long lVar2;
  undefined *puVar3;
  uint uVar4;
  int iVar5;
  undefined8 *puVar6;
  ulong uVar7;
  undefined1 local_50 [4];
  undefined4 local_4c;
  undefined8 local_48;
  undefined8 local_40;
  long local_38;
  
  lVar2 = sp_el0;
  uVar4 = (uint)param_2;
  local_38 = *(long *)(lVar2 + 0x710);
  local_4c = 0;
  local_50[0] = 0x19;
  if ((uVar4 & 0xff00) != 0x6700) {
LAB_00102180:
    uVar1 = 0xffffffffffffffed;
    goto LAB_00102184;
  }
  local_48 = 0;
  local_40 = 0;
  if ((int)uVar4 < 0) {
    puVar6 = (undefined8 *)sp_el0;
LAB_00101e90:
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
       (uVar7 = param_3, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar7 = param_3 & (long)(param_3 << 8) >> 8;
    }
    if (uVar7 <= 0x8000000000 - (ulong)(uVar4 >> 0x10 & 0x3fff)) goto LAB_00101ec8;
LAB_00101ec0:
    uVar1 = 0xfffffffffffffff2;
    goto LAB_00102184;
  }
  if (uVar4 >> 0x1e != 0) {
    puVar6 = (undefined8 *)sp_el0;
    goto LAB_00101e90;
  }
LAB_00101ec8:
  if (DAT_00103e30 == '\0') {
    if (1 < uVar4 - 0x6707) {
      _printk(&fp_goodix_exact_rodata_0078);
      goto LAB_00102180;
    }
    param_2 = param_2 & 0xffffffff;
    _printk(&fp_goodix_exact_rodata_0131);
  }
  uVar1 = 0;
  iVar5 = (int)param_2;
  if (iVar5 < 0x6707) {
    if (iVar5 < 0x6703) {
      if (iVar5 < 0x6701) {
        if (iVar5 == -0x7ffe9900) {
          _printk(&fp_goodix_exact_rodata_00a5,fp_goodix_exact_rodata_0fc3);
          lVar2 = FUN_00102950(param_3,local_50);
          uVar1 = 0;
          if (lVar2 != 0) {
            uVar1 = 0xfffffffffffffff2;
          }
          goto LAB_00102184;
        }
        if (iVar5 != -0x7ffe98f5) goto LAB_001021b0;
        puVar3 = &fp_goodix_exact_rodata_04b3;
      }
      else {
        if (iVar5 != 0x6701) {
          if (iVar5 != 0x6702) goto LAB_001021b0;
          _printk(&fp_goodix_exact_rodata_0149,fp_goodix_exact_rodata_0fc3);
          gf_hw_reset(&gf,5);
          goto LAB_00102210;
        }
        puVar3 = &fp_goodix_exact_rodata_09c7;
      }
LAB_00102204:
      _printk(puVar3,fp_goodix_exact_rodata_0fc3);
    }
    else {
      if (iVar5 == 0x6706) goto LAB_00102184;
      if (iVar5 == 0x6703) {
        _printk(&fp_goodix_exact_rodata_0c97,fp_goodix_exact_rodata_0fc3);
        gf_enable_irq();
      }
      else {
        if (iVar5 != 0x6704) goto LAB_001021b0;
        _printk(&fp_goodix_exact_rodata_0bba,fp_goodix_exact_rodata_0fc3);
        FUN_00100f00(&gf);
      }
    }
    goto LAB_00102210;
  }
  if (iVar5 < 0x40046705) {
    if (iVar5 < 0x670a) {
      if (iVar5 == 0x6707) {
        _printk(&fp_goodix_exact_rodata_037c,fp_goodix_exact_rodata_0fc3);
        if (DAT_00103e30 == '\x01') {
          _printk(&fp_goodix_exact_rodata_06dd);
        }
        else {
          gf_power_on(&gf);
        }
        uVar1 = 0;
        DAT_00103e30 = '\x01';
        goto LAB_00102184;
      }
      if (iVar5 == 0x6708) {
        _printk(&fp_goodix_exact_rodata_0167,fp_goodix_exact_rodata_0fc3);
        if (DAT_00103e30 == '\0') {
          _printk(&fp_goodix_exact_rodata_0000);
        }
        else {
          gf_power_off(&gf);
        }
        uVar1 = 0;
        DAT_00103e30 = '\0';
        goto LAB_00102184;
      }
    }
    else {
      if (iVar5 == 0x670a) {
        puVar3 = &fp_goodix_exact_rodata_048a;
        goto LAB_00102204;
      }
      if (iVar5 == 0x670c) {
        _printk(&fp_goodix_exact_rodata_00c2,fp_goodix_exact_rodata_0fc3);
        gf_cleanup(&gf);
        goto LAB_00102210;
      }
    }
LAB_001021b0:
    puVar3 = &fp_goodix_exact_rodata_0e21;
LAB_001021b8:
    _printk(puVar3,param_2);
  }
  else {
    if (iVar5 < 0x4004670e) {
      if (iVar5 == 0x40046705) goto LAB_00102184;
      goto LAB_001021b0;
    }
    if (iVar5 != 0x4004670e) {
      if (iVar5 == 0x40086709) {
        lVar2 = FUN_00102a00(&local_48,param_3,8);
        if (lVar2 != 0) {
          puVar3 = &fp_goodix_exact_rodata_10a9;
          goto LAB_001022ac;
        }
        if ((int)local_48 == 1) {
          iVar5 = 0x66;
        }
        else if ((int)local_48 == 5) {
          iVar5 = 0xd4;
        }
        else {
          iVar5 = (int)local_48;
          if ((int)local_48 == 2) {
            iVar5 = 0x74;
          }
        }
        _printk(&fp_goodix_exact_rodata_023e,"gf_kernel_key_input",iVar5,local_48 & 0xffffffff,
                local_48._4_4_);
        if (((int)local_48 == 5) || ((int)local_48 == 2)) {
          if (local_48._4_4_ != 1) goto LAB_00102210;
          input_event(DAT_00103df0,1,iVar5,1);
          input_event(DAT_00103df0,0,0,0);
          input_event(DAT_00103df0,1,iVar5,0);
          input_event(DAT_00103df0,0,0,0);
        }
        if ((int)local_48 == 1) {
          input_event(DAT_00103df0,1,iVar5,local_48._4_4_ != 0);
          input_event(DAT_00103df0,0,0,0);
        }
        goto LAB_00102210;
      }
      if (iVar5 != 0x4008670d) goto LAB_001021b0;
      _printk(&fp_goodix_exact_rodata_0fcc,fp_goodix_exact_rodata_0fc3);
      lVar2 = FUN_00102ffc(&local_40,param_3,8);
      if (lVar2 != 0) goto LAB_00101ec0;
      _printk(&fp_goodix_exact_rodata_018d,local_40 & 0xff);
      _printk(&fp_goodix_exact_rodata_0e07,local_40._1_1_);
      param_2 = local_40 >> 0x10 & 0xff;
      puVar3 = &fp_goodix_exact_rodata_09e4;
      goto LAB_001021b8;
    }
    _printk(&fp_goodix_exact_rodata_0468,fp_goodix_exact_rodata_0fc3);
    lVar2 = FUN_00102a40(&local_4c,param_3,4);
    if (lVar2 != 0) {
      puVar3 = &fp_goodix_exact_rodata_0dcc;
LAB_001022ac:
      _printk(puVar3);
      uVar1 = 0xfffffffffffffff2;
      goto LAB_00102184;
    }
    FUN_0010087c(local_4c);
  }
LAB_00102210:
  uVar1 = 0;
LAB_00102184:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}

