
long syna_cdev_ioctls(undefined8 param_1,byte param_2,ulong param_3)

{
  undefined8 *puVar1;
  ulong uVar2;
  ulong uVar3;
  int iVar4;
  ulong uVar5;
  ulong uVar6;
  undefined *puVar7;
  undefined8 uVar8;
  char *pcVar9;
  code *pcVar10;
  ulong uVar11;
  long *plVar12;
  long lVar13;
  undefined8 local_188;
  ulong local_180;
  undefined1 auStack_178 [8];
  uint local_170 [64];
  long local_70;
  
  lVar13 = sp_el0;
  local_70 = *(long *)(lVar13 + 0x710);
  local_188 = 0;
  local_180 = 0;
  plVar12 = *(long **)(g_cdev_data + 0xa8);
  mutex_lock(&DAT_0015eb00);
  if (0xf < param_2) {
    if (param_2 == 0x10) {
      iVar4 = 1;
      goto LAB_001557b4;
    }
    puVar1 = (undefined8 *)sp_el0;
    uVar2 = (long)(param_3 << 8) >> 8;
    if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
       (uVar11 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
      uVar11 = param_3 & uVar2;
    }
    if (uVar11 < 0x7ffffffff1) {
      uVar8 = daif;
      uVar11 = daif;
      daif = uVar11 | 0xc0;
      uVar11 = ttbr1_el1;
      ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar11 & 0xffffffffffff;
      ttbr0_el1 = puVar1[1];
      InstructionSynchronizationBarrier();
      daif = uVar8;
      uVar5 = __arch_copy_from_user(uVar8,&local_188,param_3 & 0xff7fffffffffffff,0x10);
      uVar3 = local_180;
      uVar11 = daif;
      uVar6 = daif;
      daif = uVar6 | 0xc0;
      uVar6 = ttbr1_el1;
      ttbr0_el1 = (uVar6 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar6 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar11;
      if (uVar5 == 0) {
        uVar11 = (ulong)local_188._4_4_;
        if (0x1000 < local_188._4_4_) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00180939,"syna_cdev_ioctls");
        }
        if (param_2 - 0x11 < 0x12) {
switchD_00154150_caseD_2:
                    /* WARNING: Could not find normalized switch variable to match jumptable */
          switch(param_2) {
          case 0:
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00180c88,"syna_cdev_ioctl_store_pid");
          case 1:
            goto switchD_00154150_caseD_1;
          default:
            goto switchD_00154150_caseD_2;
          }
        }
        pcVar9 = "syna_cdev_ioctl_dispatch";
        goto LAB_001551d0;
      }
    }
    else {
      uVar5 = 0x10;
    }
    if (0x10 < uVar5) {
                    /* WARNING: Subroutine does not return */
      __fortify_panic(uVar11,0xf,0,uVar5);
    }
    memset(auStack_178 + -uVar5,0,uVar5);
    puVar7 = &DAT_0017f150;
    uVar5 = uVar5 & 0xffffffff;
    goto LAB_00155810;
  }
  if (param_2 < 2) {
    if (param_2 == 0) {
      iVar4 = syna_tcm_reset(*plVar12,*(undefined4 *)(*plVar12 + 0x20c));
      if (iVar4 < 0) {
        puVar7 = &DAT_00181a01;
LAB_001551e8:
                    /* WARNING: Subroutine does not return */
        _printk(puVar7,"syna_cdev_ioctl_old_dispatch");
      }
      if (*(char *)(*plVar12 + 9) == '\x01') {
        if (*(int *)((code *)plVar12[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
          pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x154264);
          (*pcVar10)();
        }
        iVar4 = (*(code *)plVar12[0xd7])(plVar12);
        if (iVar4 < 0) {
          puVar7 = &DAT_0017e3aa;
          goto LAB_001551e8;
        }
      }
      goto LAB_001557b4;
    }
    if (param_2 == 1) {
      pcVar10 = *(code **)(plVar12[0x4e] + 0x40);
      if (pcVar10 == (code *)0x0) {
        iVar4 = -0x16;
        goto LAB_001557b4;
      }
      if (param_3 == 1) {
        uVar8 = 1;
      }
      else {
        if (param_3 != 0) goto LAB_001557b0;
        uVar8 = 0;
      }
      if (*(int *)(pcVar10 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x1542a4);
        (*pcVar10)();
      }
      iVar4 = (*pcVar10)(plVar12[0x4e] + 8,uVar8);
      goto LAB_001557b4;
    }
  }
  else {
    if (param_2 == 2) {
LAB_001557b0:
      iVar4 = 0;
LAB_001557b4:
      mutex_unlock(&DAT_0015eb00);
      lVar13 = sp_el0;
      if (*(long *)(lVar13 + 0x710) != local_70) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      return (long)iVar4;
    }
    if (param_2 == 3) {
      iVar4 = 0;
      *(undefined1 *)((long)plVar12 + 0x584) = 1;
      goto LAB_001557b4;
    }
  }
  pcVar9 = "syna_cdev_ioctl_old_dispatch";
LAB_001551d0:
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017fa0a,pcVar9,param_2);
switchD_00154150_caseD_1:
  local_170[0] = 0;
  if ((*(byte *)((long)plVar12 + 0x582) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00183267,"syna_cdev_ioctl_enable_irq");
  }
  if (*(int *)((long)plVar12 + 0x57c) == 3) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180eb1,"syna_cdev_ioctl_enable_irq");
  }
  if ((local_188._4_4_ < 4) || ((uint)local_188 < 4)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001817e0,"syna_cdev_ioctl_enable_irq",local_188._4_4_);
  }
  lVar13 = plVar12[0x4e];
  if (*(long *)(lVar13 + 0x40) == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017ef62,"syna_cdev_ioctl_enable_irq");
  }
  if (4 < local_188._4_4_) {
    __copy_overflow(4,uVar11);
    goto LAB_00154208;
  }
  __check_object_size(local_170,uVar11,0);
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar5 = uVar3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar5 = uVar3 & (long)(uVar3 << 8) >> 8;
  }
  uVar6 = uVar11;
  if (0x8000000000 - uVar11 < uVar5) {
LAB_001541d4:
    uVar11 = uVar11 - uVar6;
    uVar5 = 0;
    if (uVar11 < 5) {
      uVar5 = 4 - uVar11;
    }
    if (uVar5 < uVar6) {
                    /* WARNING: Subroutine does not return */
      __fortify_panic(0xf,uVar5,uVar6);
    }
    memset((void *)((long)local_170 + uVar11),0,uVar6);
    uVar11 = uVar6 & 0xffffffff;
    if ((int)uVar6 != 0) {
LAB_00154208:
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017f576,"syna_cdev_ioctl_enable_irq",uVar11);
    }
  }
  else {
    uVar8 = daif;
    uVar5 = daif;
    daif = uVar5 | 0xc0;
    uVar5 = ttbr1_el1;
    ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar5 & 0xffffffffffff;
    ttbr0_el1 = puVar1[1];
    InstructionSynchronizationBarrier();
    daif = uVar8;
    uVar6 = __arch_copy_from_user(uVar8,local_170,uVar3 & 0xff7fffffffffffff,uVar11);
    uVar8 = daif;
    uVar5 = daif;
    daif = uVar5 | 0xc0;
    uVar5 = ttbr1_el1;
    ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar5 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar8;
    if (uVar6 != 0) goto LAB_001541d4;
  }
  if (local_170[0] == 1) {
    if ((*(byte *)(plVar12[0x4e] + 0xbc) & 1) == 0) {
      if (*(int *)(*(code **)(lVar13 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x155ed8);
        (*pcVar10)();
      }
      iVar4 = (**(code **)(lVar13 + 0x40))(lVar13 + 8,1);
      if (-1 < iVar4) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001824a5,"syna_cdev_ioctl_enable_irq");
      }
      goto LAB_00155ee0;
    }
  }
  else {
    if (local_170[0] != 0) {
      if (*(int *)(*(code **)(lVar13 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x155e4c);
        (*pcVar10)();
      }
      iVar4 = (**(code **)(lVar13 + 0x40))(lVar13 + 8,1);
      if (-1 < iVar4) {
        if (local_170[0] < *(uint *)(*plVar12 + 0x20c)) {
          local_170[0] = *(uint *)(*plVar12 + 0x20c);
        }
        DAT_0015eb60 = local_170[0];
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001824a5,"syna_cdev_ioctl_enable_irq");
      }
LAB_00155ee0:
      puVar7 = &DAT_0017ef0c;
LAB_00155eec:
                    /* WARNING: Subroutine does not return */
      _printk(puVar7,"syna_cdev_ioctl_enable_irq");
    }
    if (*(char *)(plVar12[0x4e] + 0xbc) == '\x01') {
      if (*(int *)(*(code **)(lVar13 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x155344);
        (*pcVar10)();
      }
      iVar4 = (**(code **)(lVar13 + 0x40))(lVar13 + 8,0);
      if (-1 < iVar4) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0018095c,"syna_cdev_ioctl_enable_irq");
      }
      puVar7 = &DAT_0017e9fd;
      goto LAB_00155eec;
    }
  }
  iVar4 = 0;
  if (false) goto LAB_001557b4;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar11 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar11 = param_3 & uVar2;
  }
  if (uVar11 < 0x7ffffffff1) {
    uVar8 = daif;
    uVar2 = daif;
    daif = uVar2 | 0xc0;
    uVar2 = ttbr1_el1;
    ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar2 & 0xffffffffffff;
    ttbr0_el1 = puVar1[1];
    InstructionSynchronizationBarrier();
    daif = uVar8;
    uVar5 = __arch_copy_to_user(uVar8,param_3 & 0xff7fffffffffffff,&local_188,0x10);
    uVar8 = daif;
    uVar2 = daif;
    daif = uVar2 | 0xc0;
    uVar2 = ttbr1_el1;
    ttbr0_el1 = (uVar2 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar2 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar8;
    if ((int)uVar5 == 0) goto LAB_001557b0;
  }
  else {
    uVar5 = 0x10;
  }
  puVar7 = &DAT_00182811;
LAB_00155810:
                    /* WARNING: Subroutine does not return */
  _printk(puVar7,"syna_cdev_ioctls",uVar5);
}

