
undefined8 irq_handle(undefined8 param_1,long param_2)

{
  uint uVar1;
  int iVar2;
  uint uVar3;
  char cVar4;
  int iVar5;
  uint uVar6;
  undefined *puVar7;
  undefined8 uVar8;
  code *pcVar9;
  
  _printk(&haptic_86938_cb_enter,"haptic_hv",0x665,"irq_handle");
  iVar2 = *(int *)(param_2 + 0x6bc);
  pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x18);
  if (*(int *)(pcVar9 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10d4c8);
    (*pcVar9)();
  }
  iVar5 = (*pcVar9)(param_2);
  if (iVar2 == 1) {
    if (iVar5 == 0) {
      _printk(&DAT_001140dc,"haptic_hv",0x66a,"irq_handle","irq_handle");
      uVar6 = *(uint *)(param_2 + 0x458) >> 1;
      while( true ) {
        FUN_0010aa44(param_2,uVar6);
        pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x180);
        if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10d6d4);
          (*pcVar9)();
        }
        cVar4 = (*pcVar9)(param_2);
        if (((cVar4 != '\0') || (*(int *)(param_2 + 0x6bc) == 0)) ||
           (**(char **)(param_2 + 0x620) != 'U')) break;
        uVar6 = *(uint *)(param_2 + 0x458) >> 2;
      }
    }
    if (**(char **)(param_2 + 0x620) == -1) {
      _printk(&DAT_00112dd0,"haptic_hv",0x675,"irq_handle");
      pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x110);
      if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10d530);
        (*pcVar9)();
      }
      (*pcVar9)(param_2,0);
      *(undefined4 *)(param_2 + 0x6bc) = 0;
    }
  }
  else {
    if (iVar5 == 0) {
      if (*(char *)(param_2 + 5) == '\x01') {
        pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x170);
        if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10d570);
          (*pcVar9)();
        }
        cVar4 = (*pcVar9)(param_2);
        while( true ) {
          if ((cVar4 != '\0') || (*(char *)(param_2 + 0x17) != '\x02')) goto LAB_0010d7f4;
          mutex_lock(param_2 + 0x370);
          uVar6 = *(uint *)(param_2 + 0x74);
          if (uVar6 == 0) break;
          if (aw_rtp == (int *)0x0) {
            puVar7 = &DAT_00113454;
            uVar8 = 0x68d;
            goto LAB_0010d764;
          }
          uVar3 = *(uint *)(param_2 + 0x458) >> 2;
          pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0xd0);
          uVar1 = *aw_rtp - uVar6;
          if (uVar3 <= *aw_rtp - uVar6) {
            uVar1 = uVar3;
          }
          if (*(int *)(pcVar9 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
            pcVar9 = (code *)SoftwareBreakpoint(0x822c,0x10d5ec);
            (*pcVar9)();
          }
          (*pcVar9)(param_2,(long)aw_rtp + (ulong)uVar6 + 4,uVar1);
          *(uint *)(param_2 + 0x74) = *(int *)(param_2 + 0x74) + uVar1;
          pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x160);
          if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
            pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10d620);
            (*pcVar9)();
          }
          uVar6 = (*pcVar9)(param_2);
          if ((*(int *)(param_2 + 0x74) == *aw_rtp) || ((uVar6 & 0xf) == 0)) {
            if (*(int *)(param_2 + 0x74) == *aw_rtp) {
              puVar7 = &DAT_00114400;
              uVar8 = 0x6a8;
            }
            else {
              puVar7 = &DAT_0011375c;
              uVar8 = 0x6a5;
            }
            _printk(puVar7,"haptic_hv",uVar8,"irq_handle");
            *(undefined1 *)(param_2 + 0x1d) = 0;
            pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x110);
            if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
              pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10d7e0);
              (*pcVar9)();
            }
            (*pcVar9)(param_2,0);
            *(undefined4 *)(param_2 + 0x74) = 0;
            *(undefined1 *)(param_2 + 5) = 0;
            goto LAB_0010d7ec;
          }
          mutex_unlock(param_2 + 0x370);
          pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x170);
          if (*(int *)(pcVar9 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
            pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10d66c);
            (*pcVar9)();
          }
          cVar4 = (*pcVar9)(param_2);
        }
        puVar7 = &DAT_00112dfe;
        uVar8 = 0x684;
LAB_0010d764:
        _printk(puVar7,"haptic_hv",uVar8,"irq_handle");
LAB_0010d7ec:
        mutex_unlock(param_2 + 0x370);
      }
      else {
        _printk(&DAT_00113eb8,"haptic_hv",0x6b5,"irq_handle");
      }
    }
LAB_0010d7f4:
    if (*(char *)(param_2 + 0x17) != '\x02') {
      pcVar9 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x110);
      if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10d828);
        (*pcVar9)();
      }
      (*pcVar9)(param_2,0);
    }
  }
  return 1;
}

