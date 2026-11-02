
void richtap_file_unlocked_ioctl(long param_1,int param_2,ulong param_3)

{
  undefined8 *puVar1;
  size_t __n;
  undefined8 uVar2;
  code *pcVar3;
  ulong uVar4;
  ulong uVar5;
  long lVar6;
  long lVar7;
  int local_3c;
  long local_38;
  
  lVar6 = sp_el0;
  local_38 = *(long *)(lVar6 + 0x710);
  lVar6 = *(long *)(param_1 + 0x20);
  local_3c = 0;
  _printk(&DAT_001119bb,"richtap_file_unlocked_ioctl",param_2,param_3);
  if (param_2 < 0x5209) {
    if (param_2 == 0x5203) {
      puVar1 = (undefined8 *)sp_el0;
      local_3c = 5;
      if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
         (uVar5 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
        uVar5 = param_3 & (long)(param_3 << 8) >> 8;
      }
      if (uVar5 < 0x7ffffffffd) {
        uVar2 = daif;
        uVar5 = daif;
        daif = uVar5 | 0xc0;
        uVar4 = puVar1[1];
        uVar5 = ttbr1_el1;
        ttbr1_el1 = uVar4 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
        ttbr0_el1 = uVar4;
        InstructionSynchronizationBarrier();
        daif = uVar2;
        lVar6 = __arch_copy_to_user(uVar4,param_3 & 0xff7fffffffffffff,&local_3c,4);
        uVar2 = daif;
        uVar5 = daif;
        daif = uVar5 | 0xc0;
        uVar5 = ttbr1_el1;
        ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar5 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar2;
LAB_0010e740:
        uVar2 = 0;
        if (lVar6 != 0) {
          uVar2 = 0xfffffffffffffff2;
        }
        goto LAB_0010e76c;
      }
      goto LAB_0010e768;
    }
    if (param_2 == 0x5205) {
      if (0x7f < param_3) {
        param_3 = 0x80;
      }
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x88);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e698);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,param_3);
    }
    else if (param_2 != 0x5206) goto LAB_0010e8f0;
  }
  else {
    if (param_2 < 0x5211) {
      if (param_2 == 0x5209) {
        mutex_lock(lVar6 + 0x2f0);
        pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x38);
        if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e468);
          (*pcVar3)();
        }
        (*pcVar3)(lVar6);
        mutex_unlock(lVar6 + 0x2f0);
        puVar1 = (undefined8 *)sp_el0;
        lVar7 = *(long *)(lVar6 + 0x608);
        if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
           (uVar5 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
          uVar5 = param_3 & (long)(param_3 << 8) >> 8;
        }
        if (uVar5 < 0x7fffffc181) {
          uVar2 = daif;
          uVar5 = daif;
          daif = uVar5 | 0xc0;
          uVar4 = puVar1[1];
          uVar5 = ttbr1_el1;
          ttbr1_el1 = uVar4 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
          ttbr0_el1 = uVar4;
          InstructionSynchronizationBarrier();
          daif = uVar2;
          __n = __arch_copy_from_user(uVar4,lVar7,param_3 & 0xff7fffffffffffff,16000);
          uVar2 = daif;
          uVar5 = daif;
          daif = uVar5 | 0xc0;
          uVar5 = ttbr1_el1;
          ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
          ttbr1_el1 = uVar5 & 0xffffffffffff;
          InstructionSynchronizationBarrier();
          daif = uVar2;
          if (__n == 0) {
            local_3c = **(int **)(lVar6 + 0x608);
            if (0x3e7c < local_3c) {
              _dev_err(*(undefined8 *)(lVar6 + 800),"rtp mode date len error %d\n");
              uVar2 = 0xffffffffffffffea;
              goto LAB_0010e76c;
            }
            pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x118);
            if (*(int *)(pcVar3 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
              pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e554);
              (*pcVar3)();
            }
            (*pcVar3)(lVar6,2);
            pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xa0);
            if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
              pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e580);
              (*pcVar3)();
            }
            (*pcVar3)(lVar6,*(undefined4 *)(lVar6 + 0x30));
            uVar5 = richtap_rtp_start(lVar6);
            if ((uVar5 & 1) != 0) {
              pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xd0);
              if (*(int *)(pcVar3 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
                pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e5c0);
                (*pcVar3)();
              }
              (*pcVar3)(lVar6,*(long *)(lVar6 + 0x608) + 4,local_3c);
            }
            goto LAB_0010e69c;
          }
        }
        else {
          __n = 16000;
        }
        memset((void *)((lVar7 - __n) + 16000),0,__n);
        goto LAB_0010e768;
      }
      if (param_2 != 0x520a) goto LAB_0010e8f0;
      _printk(&DAT_0010fd17,"haptic_hv",0x5d9,"richtap_file_unlocked_ioctl");
      richtap_clean_buf(lVar6);
      mutex_lock(lVar6 + 0x2f0);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xf0);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e828);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x38);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e850);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6);
      mutex_unlock(lVar6 + 0x2f0);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x110);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e884);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,0);
      *(undefined4 *)(lVar6 + 0x6bc) = 0;
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x118);
      if (*(int *)(pcVar3 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e8b4);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,2);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xa0);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10e8e0);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,*(undefined4 *)(lVar6 + 0x30));
      uVar2 = *(undefined8 *)(lVar6 + 0x448);
      lVar6 = lVar6 + 0x648;
    }
    else {
      if (param_2 == 0x5211) {
        puVar1 = (undefined8 *)sp_el0;
        local_3c = *(int *)(lVar6 + 0x60);
        if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
           (uVar5 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
          uVar5 = param_3 & (long)(param_3 << 8) >> 8;
        }
        if (uVar5 < 0x7ffffffffd) {
          uVar2 = daif;
          uVar5 = daif;
          daif = uVar5 | 0xc0;
          uVar4 = puVar1[1];
          uVar5 = ttbr1_el1;
          ttbr1_el1 = uVar4 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
          ttbr0_el1 = uVar4;
          InstructionSynchronizationBarrier();
          daif = uVar2;
          lVar6 = __arch_copy_to_user(uVar4,param_3 & 0xff7fffffffffffff,&local_3c,4);
          uVar2 = daif;
          uVar5 = daif;
          daif = uVar5 | 0xc0;
          uVar5 = ttbr1_el1;
          ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
          ttbr1_el1 = uVar5 & 0xffffffffffff;
          InstructionSynchronizationBarrier();
          daif = uVar2;
          goto LAB_0010e740;
        }
LAB_0010e768:
        uVar2 = 0xfffffffffffffff2;
        goto LAB_0010e76c;
      }
      if (param_2 != 0x5212) {
        if (param_2 == 0x5213) {
          _printk(&DAT_0010f89e,"haptic_hv",0x5f2,"richtap_file_unlocked_ioctl");
          goto LAB_0010e69c;
        }
LAB_0010e8f0:
        _dev_err(*(undefined8 *)(lVar6 + 800),"%s, unknown cmd\n","richtap_file_unlocked_ioctl");
        goto LAB_0010e69c;
      }
      uVar2 = *(undefined8 *)(lVar6 + 0x448);
      lVar6 = lVar6 + 0x668;
    }
    queue_work_on(0x20,uVar2,lVar6);
  }
LAB_0010e69c:
  uVar2 = 0;
LAB_0010e76c:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

