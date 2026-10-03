
long syna_cdev_ioctls(undefined8 param_1,byte param_2,ulong param_3)

{
  undefined8 *puVar1;
  ulong uVar2;
  ulong uVar3;
  int iVar4;
  ulong uVar5;
  long lVar6;
  ulong uVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *pcVar10;
  code *pcVar11;
  ulong uVar12;
  long *plVar13;
  undefined8 local_188;
  ulong local_180;
  undefined1 auStack_178 [8];
  uint local_170 [64];
  long local_70;
  
  lVar6 = sp_el0;
  local_70 = *(long *)(lVar6 + 0x710);
  local_188 = 0;
  local_180 = 0;
  plVar13 = *(long **)(g_cdev_data + 0xa8);
  mutex_lock(&DAT_0015eb00);
  if (0xf < param_2) {
    if (param_2 == 0x10) {
      iVar4 = 1;
      goto LAB_001557b4;
    }
    puVar1 = (undefined8 *)sp_el0;
    uVar2 = (long)(param_3 << 8) >> 8;
    if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
       (uVar12 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
      uVar12 = param_3 & uVar2;
    }
    if (uVar12 < 0x7ffffffff1) {
      uVar9 = daif;
      uVar12 = daif;
      daif = uVar12 | 0xc0;
      uVar12 = ttbr1_el1;
      ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar12 & 0xffffffffffff;
      ttbr0_el1 = puVar1[1];
      InstructionSynchronizationBarrier();
      daif = uVar9;
      uVar5 = __arch_copy_from_user(uVar9,&local_188,param_3 & 0xff7fffffffffffff,0x10);
      uVar3 = local_180;
      uVar12 = daif;
      uVar7 = daif;
      daif = uVar7 | 0xc0;
      uVar7 = ttbr1_el1;
      ttbr0_el1 = (uVar7 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar7 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar12;
      if (uVar5 == 0) {
        uVar12 = (ulong)local_188._4_4_;
        if (0x1000 < local_188._4_4_) {
          lVar6 = _printk(&DAT_00180939,"syna_cdev_ioctls");
          return lVar6;
        }
        if (param_2 - 0x11 < 0x12) {
switchD_00154150_caseD_2:
                    /* WARNING: Could not find normalized switch variable to match jumptable */
          switch(param_2) {
          case 0:
            lVar6 = _printk(&DAT_00180c88,"syna_cdev_ioctl_store_pid");
            return lVar6;
          case 1:
            goto switchD_00154150_caseD_1;
          default:
            goto switchD_00154150_caseD_2;
          }
        }
        pcVar10 = "syna_cdev_ioctl_dispatch";
        goto LAB_001551d0;
      }
    }
    else {
      uVar5 = 0x10;
    }
    if (0x10 < uVar5) {
                    /* WARNING: Subroutine does not return */
      __fortify_panic(uVar12,0xf,0,uVar5);
    }
    memset(auStack_178 + -uVar5,0,uVar5);
    puVar8 = &DAT_0017f150;
    uVar5 = uVar5 & 0xffffffff;
    goto LAB_00155810;
  }
  if (param_2 < 2) {
    if (param_2 == 0) {
      iVar4 = syna_tcm_reset(*plVar13,*(undefined4 *)(*plVar13 + 0x20c));
      if (iVar4 < 0) {
        puVar8 = &DAT_00181a01;
LAB_001551e8:
        lVar6 = _printk(puVar8,"syna_cdev_ioctl_old_dispatch");
        return lVar6;
      }
      if (*(char *)(*plVar13 + 9) == '\x01') {
        if (*(int *)((code *)plVar13[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
          pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x154264);
          (*pcVar11)();
        }
        iVar4 = (*(code *)plVar13[0xd7])(plVar13);
        if (iVar4 < 0) {
          puVar8 = &DAT_0017e3aa;
          goto LAB_001551e8;
        }
      }
      goto LAB_001557b4;
    }
    if (param_2 == 1) {
      pcVar11 = *(code **)(plVar13[0x4e] + 0x40);
      if (pcVar11 == (code *)0x0) {
        iVar4 = -0x16;
        goto LAB_001557b4;
      }
      if (param_3 == 1) {
        uVar9 = 1;
      }
      else {
        if (param_3 != 0) goto LAB_001557b0;
        uVar9 = 0;
      }
      if (*(int *)(pcVar11 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x1542a4);
        (*pcVar11)();
      }
      iVar4 = (*pcVar11)(plVar13[0x4e] + 8,uVar9);
      goto LAB_001557b4;
    }
  }
  else {
    if (param_2 == 2) {
LAB_001557b0:
      iVar4 = 0;
LAB_001557b4:
      mutex_unlock(&DAT_0015eb00);
      lVar6 = sp_el0;
      if (*(long *)(lVar6 + 0x710) != local_70) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      return (long)iVar4;
    }
    if (param_2 == 3) {
      iVar4 = 0;
      *(undefined1 *)((long)plVar13 + 0x584) = 1;
      goto LAB_001557b4;
    }
  }
  pcVar10 = "syna_cdev_ioctl_old_dispatch";
LAB_001551d0:
  lVar6 = _printk(&DAT_0017fa0a,pcVar10,param_2);
  return lVar6;
switchD_00154150_caseD_1:
  local_170[0] = 0;
  if ((*(byte *)((long)plVar13 + 0x582) & 1) == 0) {
    lVar6 = _printk(&DAT_00183267,"syna_cdev_ioctl_enable_irq");
    return lVar6;
  }
  if (*(int *)((long)plVar13 + 0x57c) == 3) {
    lVar6 = _printk(&DAT_00180eb1,"syna_cdev_ioctl_enable_irq");
    return lVar6;
  }
  if ((local_188._4_4_ < 4) || ((uint)local_188 < 4)) {
    lVar6 = _printk(&DAT_001817e0,"syna_cdev_ioctl_enable_irq",local_188._4_4_);
    return lVar6;
  }
  lVar6 = plVar13[0x4e];
  if (*(long *)(lVar6 + 0x40) == 0) {
    lVar6 = _printk(&DAT_0017ef62,"syna_cdev_ioctl_enable_irq");
    return lVar6;
  }
  if (4 < local_188._4_4_) {
    __copy_overflow(4,uVar12);
    goto LAB_00154208;
  }
  __check_object_size(local_170,uVar12,0);
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar5 = uVar3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar5 = uVar3 & (long)(uVar3 << 8) >> 8;
  }
  uVar7 = uVar12;
  if (0x8000000000 - uVar12 < uVar5) {
LAB_001541d4:
    uVar12 = uVar12 - uVar7;
    uVar5 = 0;
    if (uVar12 < 5) {
      uVar5 = 4 - uVar12;
    }
    if (uVar5 < uVar7) {
                    /* WARNING: Subroutine does not return */
      __fortify_panic(0xf,uVar5,uVar7);
    }
    memset((void *)((long)local_170 + uVar12),0,uVar7);
    uVar12 = uVar7 & 0xffffffff;
    if ((int)uVar7 != 0) {
LAB_00154208:
      lVar6 = _printk(&DAT_0017f576,"syna_cdev_ioctl_enable_irq",uVar12);
      return lVar6;
    }
  }
  else {
    uVar9 = daif;
    uVar5 = daif;
    daif = uVar5 | 0xc0;
    uVar5 = ttbr1_el1;
    ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar5 & 0xffffffffffff;
    ttbr0_el1 = puVar1[1];
    InstructionSynchronizationBarrier();
    daif = uVar9;
    uVar7 = __arch_copy_from_user(uVar9,local_170,uVar3 & 0xff7fffffffffffff,uVar12);
    uVar9 = daif;
    uVar5 = daif;
    daif = uVar5 | 0xc0;
    uVar5 = ttbr1_el1;
    ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar5 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar9;
    if (uVar7 != 0) goto LAB_001541d4;
  }
  if (local_170[0] == 1) {
    if ((*(byte *)(plVar13[0x4e] + 0xbc) & 1) == 0) {
      if (*(int *)(*(code **)(lVar6 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x155ed8);
        (*pcVar11)();
      }
      iVar4 = (**(code **)(lVar6 + 0x40))(lVar6 + 8,1);
      if (-1 < iVar4) {
        lVar6 = _printk(&DAT_001824a5,"syna_cdev_ioctl_enable_irq");
        return lVar6;
      }
      goto LAB_00155ee0;
    }
  }
  else {
    if (local_170[0] != 0) {
      if (*(int *)(*(code **)(lVar6 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x155e4c);
        (*pcVar11)();
      }
      iVar4 = (**(code **)(lVar6 + 0x40))(lVar6 + 8,1);
      if (-1 < iVar4) {
        if (local_170[0] < *(uint *)(*plVar13 + 0x20c)) {
          local_170[0] = *(uint *)(*plVar13 + 0x20c);
        }
        DAT_0015eb60 = local_170[0];
        lVar6 = _printk(&DAT_001824a5,"syna_cdev_ioctl_enable_irq");
        return lVar6;
      }
LAB_00155ee0:
      puVar8 = &DAT_0017ef0c;
LAB_00155eec:
      lVar6 = _printk(puVar8,"syna_cdev_ioctl_enable_irq");
      return lVar6;
    }
    if (*(char *)(plVar13[0x4e] + 0xbc) == '\x01') {
      if (*(int *)(*(code **)(lVar6 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x155344);
        (*pcVar11)();
      }
      iVar4 = (**(code **)(lVar6 + 0x40))(lVar6 + 8,0);
      if (-1 < iVar4) {
        lVar6 = _printk(&DAT_0018095c,"syna_cdev_ioctl_enable_irq");
        return lVar6;
      }
      puVar8 = &DAT_0017e9fd;
      goto LAB_00155eec;
    }
  }
  iVar4 = 0;
  if (false) goto LAB_001557b4;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar12 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar12 = param_3 & uVar2;
  }
  if (uVar12 < 0x7ffffffff1) {
    uVar9 = daif;
    uVar2 = daif;
    daif = uVar2 | 0xc0;
    uVar2 = ttbr1_el1;
    ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar2 & 0xffffffffffff;
    ttbr0_el1 = puVar1[1];
    InstructionSynchronizationBarrier();
    daif = uVar9;
    uVar5 = __arch_copy_to_user(uVar9,param_3 & 0xff7fffffffffffff,&local_188,0x10);
    uVar9 = daif;
    uVar2 = daif;
    daif = uVar2 | 0xc0;
    uVar2 = ttbr1_el1;
    ttbr0_el1 = (uVar2 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar2 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar9;
    if ((int)uVar5 == 0) goto LAB_001557b0;
  }
  else {
    uVar5 = 0x10;
  }
  puVar8 = &DAT_00182811;
LAB_00155810:
  lVar6 = _printk(puVar8,"syna_cdev_ioctls",uVar5);
  return lVar6;
}

