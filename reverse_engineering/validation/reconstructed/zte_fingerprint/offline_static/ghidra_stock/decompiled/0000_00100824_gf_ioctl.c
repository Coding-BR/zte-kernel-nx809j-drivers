
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
LAB_00100b70:
    uVar1 = 0xffffffffffffffed;
    goto LAB_00100b74;
  }
  local_48 = 0;
  local_40 = 0;
  if ((int)uVar4 < 0) {
    puVar6 = (undefined8 *)sp_el0;
LAB_00100880:
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
       (uVar7 = param_3, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar7 = param_3 & (long)(param_3 << 8) >> 8;
    }
    if (uVar7 <= 0x8000000000 - (ulong)(uVar4 >> 0x10 & 0x3fff)) goto LAB_001008b8;
LAB_001008b0:
    uVar1 = 0xfffffffffffffff2;
    goto LAB_00100b74;
  }
  if (uVar4 >> 0x1e != 0) {
    puVar6 = (undefined8 *)sp_el0;
    goto LAB_00100880;
  }
LAB_001008b8:
  if (DAT_00104248 == '\0') {
    if (1 < uVar4 - 0x6707) {
      _printk(&DAT_00102d5e);
      goto LAB_00100b70;
    }
    param_2 = param_2 & 0xffffffff;
    _printk(&DAT_00103bec);
  }
  uVar1 = 0;
  iVar5 = (int)param_2;
  if (iVar5 < 0x6707) {
    if (iVar5 < 0x6703) {
      if (iVar5 < 0x6701) {
        if (iVar5 == -0x7ffe9900) {
          _printk(&DAT_00102d91,"gf_ioctl");
          lVar2 = _inline_copy_to_user(param_3,local_50);
          uVar1 = 0;
          if (lVar2 != 0) {
            uVar1 = 0xfffffffffffffff2;
          }
          goto LAB_00100b74;
        }
        if (iVar5 != -0x7ffe98f5) goto LAB_00100ba0;
        puVar3 = &DAT_00102c7e;
      }
      else {
        if (iVar5 != 0x6701) {
          if (iVar5 != 0x6702) goto LAB_00100ba0;
          _printk(&DAT_00103347,"gf_ioctl");
          gf_hw_reset(&gf,5);
          goto LAB_00100c00;
        }
        puVar3 = &DAT_00103a6a;
      }
LAB_00100bf4:
      _printk(puVar3,"gf_ioctl");
    }
    else {
      if (iVar5 == 0x6706) goto LAB_00100b74;
      if (iVar5 == 0x6703) {
        _printk(&DAT_00102ff4,"gf_ioctl");
        gf_enable_irq();
      }
      else {
        if (iVar5 != 0x6704) goto LAB_00100ba0;
        _printk(&DAT_0010331d,"gf_ioctl");
        gf_disable_irq(&gf);
      }
    }
    goto LAB_00100c00;
  }
  if (iVar5 < 0x40046705) {
    if (iVar5 < 0x670a) {
      if (iVar5 == 0x6707) {
        _printk(&DAT_00103787,"gf_ioctl");
        if (DAT_00104248 == '\x01') {
          _printk(&DAT_0010397c);
        }
        else {
          gf_power_on(&gf);
        }
        uVar1 = 0;
        DAT_00104248 = '\x01';
        goto LAB_00100b74;
      }
      if (iVar5 == 0x6708) {
        _printk(&DAT_001033c3,"gf_ioctl");
        if (DAT_00104248 == '\0') {
          _printk(&DAT_001035e4);
        }
        else {
          gf_power_off(&gf);
        }
        uVar1 = 0;
        DAT_00104248 = '\0';
        goto LAB_00100b74;
      }
    }
    else {
      if (iVar5 == 0x670a) {
        puVar3 = &DAT_001034f4;
        goto LAB_00100bf4;
      }
      if (iVar5 == 0x670c) {
        _printk(&DAT_00103a39,"gf_ioctl");
        gf_cleanup(&gf);
        goto LAB_00100c00;
      }
    }
LAB_00100ba0:
    puVar3 = &DAT_00103d4a;
LAB_00100ba8:
    _printk(puVar3,param_2);
  }
  else {
    if (iVar5 < 0x4004670e) {
      if (iVar5 == 0x40046705) goto LAB_00100b74;
      goto LAB_00100ba0;
    }
    if (iVar5 != 0x4004670e) {
      if (iVar5 == 0x40086709) {
        lVar2 = _inline_copy_from_user(&local_48,param_3,8);
        if (lVar2 != 0) {
          puVar3 = &DAT_00103ff3;
          goto LAB_00100c9c;
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
        _printk(&DAT_0010341a,"gf_kernel_key_input",iVar5,local_48 & 0xffffffff,local_48._4_4_);
        if (((int)local_48 == 5) || ((int)local_48 == 2)) {
          if (local_48._4_4_ != 1) goto LAB_00100c00;
          input_event(DAT_00104208,1,iVar5,1);
          input_event(DAT_00104208,0,0,0);
          input_event(DAT_00104208,1,iVar5,0);
          input_event(DAT_00104208,0,0,0);
        }
        if ((int)local_48 == 1) {
          input_event(DAT_00104208,1,iVar5,local_48._4_4_ != 0);
          input_event(DAT_00104208,0,0,0);
        }
        goto LAB_00100c00;
      }
      if (iVar5 != 0x4008670d) goto LAB_00100ba0;
      _printk(&DAT_00103d22,"gf_ioctl");
      lVar2 = _inline_copy_from_user(&local_40,param_3,8);
      if (lVar2 != 0) goto LAB_001008b0;
      _printk(&DAT_00102eb7,local_40 & 0xff);
      _printk(&DAT_00103068,local_40._1_1_);
      param_2 = local_40 >> 0x10 & 0xff;
      puVar3 = &DAT_0010336b;
      goto LAB_00100ba8;
    }
    _printk(&DAT_00103c13,"gf_ioctl");
    lVar2 = _inline_copy_from_user(&local_4c,param_3,4);
    if (lVar2 != 0) {
      puVar3 = &DAT_00103b02;
LAB_00100c9c:
      _printk(puVar3);
      uVar1 = 0xfffffffffffffff2;
      goto LAB_00100b74;
    }
    nav_event_input(local_4c);
  }
LAB_00100c00:
  uVar1 = 0;
LAB_00100b74:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar1);
  }
  return;
}

