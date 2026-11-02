
/* WARNING: Possible PIC construction at 0x0010a5fc: Changing call to branch */
/* WARNING: Possible PIC construction at 0x0010a4a0: Changing call to branch */
/* WARNING: Removing unreachable block (ram,0x0010a600) */
/* WARNING: Removing unreachable block (ram,0x0010a604) */
/* WARNING: Removing unreachable block (ram,0x0010a634) */
/* WARNING: Removing unreachable block (ram,0x0010a630) */
/* WARNING: Removing unreachable block (ram,0x0010a4a0) */

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
  _printk(&haptic_86938_richtap_str_2cdb,"richtap_file_unlocked_ioctl",param_2,param_3);
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
LAB_0010a7b4:
        uVar2 = 0;
        if (lVar6 != 0) {
          uVar2 = 0xfffffffffffffff2;
        }
        goto LAB_0010a7e0;
      }
      goto LAB_0010a7dc;
    }
    if (param_2 == 0x5205) {
      if (0x7f < param_3) {
        param_3 = 0x80;
      }
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x88);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a70c);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,param_3);
    }
    else if (param_2 != 0x5206) goto SUB_0010a964;
  }
  else {
    if (param_2 < 0x5211) {
      if (param_2 == 0x5209) {
        mutex_lock(lVar6 + 0x2f0);
        pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x38);
        if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a4dc);
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
            if (local_3c < 0x3e7d) {
              pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x118);
              if (*(int *)(pcVar3 + -4) == -0x2c84916b) {
                (*pcVar3)(lVar6,2);
                pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xa0);
                if (*(int *)(pcVar3 + -4) == 0x1d0adf6e) {
                  (*pcVar3)(lVar6,*(undefined4 *)(lVar6 + 0x30));
                }
                    /* WARNING: Does not return */
                pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a5f4);
                (*pcVar3)();
              }
                    /* WARNING: Does not return */
              pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a5c8);
              (*pcVar3)();
            }
            _dev_err(*(undefined8 *)(lVar6 + 800),"rtp mode date len error %d\n");
            uVar2 = 0xffffffffffffffea;
            goto LAB_0010a7e0;
          }
        }
        else {
          __n = 16000;
        }
        memset((void *)((lVar7 - __n) + 16000),0,__n);
        goto LAB_0010a7dc;
      }
      if (param_2 != 0x520a) goto SUB_0010a964;
      _printk(&haptic_86938_richtap_str_1037,"haptic_hv",0x5d9,"richtap_file_unlocked_ioctl");
      func_0x00104858(lVar6);
      mutex_lock(lVar6 + 0x2f0);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xf0);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a89c);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x38);
      if (*(int *)(pcVar3 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a8c4);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6);
      mutex_unlock(lVar6 + 0x2f0);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x110);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a8f8);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,0);
      *(undefined4 *)(lVar6 + 0x6bc) = 0;
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0x118);
      if (*(int *)(pcVar3 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a928);
        (*pcVar3)();
      }
      (*pcVar3)(lVar6,2);
      pcVar3 = *(code **)(*(long *)(lVar6 + 0x5c8) + 0xa0);
      if (*(int *)(pcVar3 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10a954);
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
          goto LAB_0010a7b4;
        }
LAB_0010a7dc:
        uVar2 = 0xfffffffffffffff2;
        goto LAB_0010a7e0;
      }
      if (param_2 != 0x5212) {
        if (param_2 == 0x5213) {
          _printk(&haptic_86938_richtap_str_0bbe,"haptic_hv",0x5f2,"richtap_file_unlocked_ioctl");
          goto LAB_0010a710;
        }
SUB_0010a964:
        _dev_err(*(undefined8 *)(lVar6 + 800),"%s, unknown cmd\n","richtap_file_unlocked_ioctl");
        goto LAB_0010a710;
      }
      uVar2 = *(undefined8 *)(lVar6 + 0x448);
      lVar6 = lVar6 + 0x668;
    }
    queue_work_on(0x20,uVar2,lVar6);
  }
LAB_0010a710:
  uVar2 = 0;
LAB_0010a7e0:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

