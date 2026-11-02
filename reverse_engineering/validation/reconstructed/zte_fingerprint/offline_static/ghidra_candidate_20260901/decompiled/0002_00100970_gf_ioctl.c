
void gf_ioctl(long param_1,uint param_2,undefined8 param_3)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  long lVar4;
  ulong uVar5;
  ulong uVar6;
  undefined8 local_50;
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x20);
  if (lVar4 == 0) {
    lVar4 = -0x16;
    goto LAB_00100d4c;
  }
  if ((param_2 & 0xff00) != 0x6700) {
    lVar4 = -0x19;
    goto LAB_00100d4c;
  }
  if (*(char *)(lVar4 + 0x70) == '\0') {
    if (param_2 - 0x6709 < 0xfffffffe) {
      _printk(&DAT_0010358e,"gf_ioctl");
      lVar4 = -0x13;
      goto LAB_00100d4c;
    }
    _printk(&DAT_00103169,"gf_ioctl");
  }
  if (0x4004670d < (int)param_2) {
    if (param_2 == 0x4008670d) {
      local_50 = 0;
      lVar4 = _inline_copy_from_user(&local_50,param_3,8);
      if (lVar4 == 0) {
        _printk(&DAT_0010371e,"gf_ioctl",local_50 & 0xff);
        _printk(&DAT_00103742,"gf_ioctl",local_50._1_1_);
        _printk(&DAT_00102ff6,"gf_ioctl",local_50._2_1_);
        goto LAB_00100d44;
      }
    }
    else if (param_2 == 0x4004670e) {
      local_50 = local_50 & 0xffffffff00000000;
      _printk(&DAT_00103087,"gf_ioctl");
      lVar4 = _inline_copy_from_user(&local_50,param_3,4);
      if (lVar4 == 0) {
        nav_event_input(local_50 & 0xffffffff);
        goto LAB_00100d44;
      }
    }
    else {
      if (param_2 != 0x40086709) goto LAB_00100c74;
      local_50 = 0;
      _printk(&DAT_001037a1,"gf_ioctl");
      lVar2 = _inline_copy_from_user(&local_50,param_3,8);
      if (lVar2 == 0) {
        iVar1 = (int)local_50;
        if (iVar1 == 5) {
          uVar5 = 0xd4;
        }
        else if (iVar1 == 2) {
          uVar5 = 0x74;
        }
        else {
          uVar5 = local_50 & 0xffffffff;
          if (iVar1 == 1) {
            uVar5 = 0x66;
          }
        }
        uVar6 = local_50 >> 0x20;
        _printk(&DAT_001030a5,"gf_ioctl",local_50 & 0xffffffff,uVar5,uVar6 != 0);
        if ((((int)uVar5 == 0xd4) || ((int)uVar5 == 0x74)) && (uVar6 != 0)) {
          input_event(*(undefined8 *)(lVar4 + 0x28),1,uVar5,1);
          input_event(*(undefined8 *)(lVar4 + 0x28),0,0,0);
          input_event(*(undefined8 *)(lVar4 + 0x28),1,uVar5,0);
          input_event(*(undefined8 *)(lVar4 + 0x28),0,0,0);
        }
        if (iVar1 == 1) {
          input_event(*(undefined8 *)(lVar4 + 0x28),1,uVar5,uVar6 != 0);
          input_event(*(undefined8 *)(lVar4 + 0x28),0,0,0);
        }
        goto LAB_00100d44;
      }
    }
LAB_001009f0:
    lVar4 = -0xe;
    goto LAB_00100d4c;
  }
  if ((int)param_2 < 0x6704) {
    if ((int)param_2 < 0x6702) {
      if (param_2 == 0x80046700) {
        local_50 = CONCAT71(local_50._1_7_,0x19);
        _printk(&DAT_00103af5,"gf_ioctl");
        lVar4 = _inline_copy_to_user(param_3,&local_50);
        if (lVar4 != 0) goto LAB_001009f0;
        iVar1 = 0;
        goto LAB_00100d48;
      }
      if (param_2 == 0x6701) {
        puVar3 = &DAT_001034cf;
        goto LAB_00100c38;
      }
LAB_00100c74:
      _printk(&DAT_00102b94,"gf_ioctl",param_2);
      lVar4 = -0x16;
      goto LAB_00100d4c;
    }
    if (param_2 == 0x6702) {
      _printk(&DAT_00102c0b,"gf_ioctl");
      gf_hw_reset(lVar4);
    }
    else {
      if (param_2 != 0x6703) goto LAB_00100c74;
      _printk(&DAT_00102eb5,"gf_ioctl");
      gf_enable_irq(lVar4);
    }
LAB_00100d44:
    iVar1 = 0;
  }
  else if ((int)param_2 < 0x6708) {
    if (param_2 == 0x6704) {
      _printk(&DAT_00103781,"gf_ioctl");
      gf_disable_irq(lVar4);
      goto LAB_00100d44;
    }
    if (param_2 != 0x6707) goto LAB_00100c74;
    _printk(&DAT_00103524,"gf_ioctl");
    if (*(char *)(lVar4 + 0x70) == '\0') {
      iVar1 = gf_power_on(lVar4);
    }
    else {
      _printk(&DAT_001031d0,"gf_ioctl");
      iVar1 = 0;
    }
    *(undefined1 *)(lVar4 + 0x70) = 1;
  }
  else {
    if (param_2 != 0x6708) {
      if (param_2 == 0x670a) {
        puVar3 = &DAT_00103b15;
LAB_00100c38:
        _printk(puVar3,"gf_ioctl");
      }
      else {
        if (param_2 != 0x670c) goto LAB_00100c74;
        _printk(&DAT_00103871,"gf_ioctl");
        gf_cleanup(lVar4);
      }
      goto LAB_00100d44;
    }
    _printk(&DAT_00103700,"gf_ioctl");
    if (*(char *)(lVar4 + 0x70) == '\0') {
      _printk(&DAT_00103265,"gf_ioctl");
      iVar1 = 0;
      *(undefined1 *)(lVar4 + 0x70) = 0;
    }
    else {
      iVar1 = gf_power_off(lVar4);
      *(undefined1 *)(lVar4 + 0x70) = 0;
    }
  }
LAB_00100d48:
  lVar4 = (long)iVar1;
LAB_00100d4c:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(lVar4);
}

