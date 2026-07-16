
int gpio_keys_suspend(long param_1)

{
  int iVar1;
  int iVar2;
  long lVar3;
  code *pcVar4;
  long lVar5;
  long *plVar6;
  long lVar7;
  
  plVar6 = *(long **)(param_1 + 0x98);
  lVar5 = plVar6[1];
  if (((*(ushort *)(param_1 + 0x10c) & 1) == 0) || (*(long *)(param_1 + 0x148) == 0)) {
    mutex_lock(lVar5 + 0x1f8);
    if ((*(int *)(lVar5 + 0x228) != 0) &&
       (pcVar4 = *(code **)(**(long **)(lVar5 + 0x2c8) + 0x20), pcVar4 != (code *)0x0)) {
      if (*(int *)(pcVar4 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x101c20);
        (*pcVar4)();
      }
      (*pcVar4)(*(undefined8 *)(lVar5 + 0x290));
    }
    mutex_unlock(lVar5 + 0x1f8);
  }
  else if (0 < *(int *)(*plVar6 + 8)) {
    lVar7 = 0;
    lVar5 = 0;
    do {
      if (*(int *)(*(long *)((long)plVar6 + lVar7 + 0x48) + 0x1c) != 0) {
        iVar1 = irq_set_irq_wake(*(undefined4 *)((long)plVar6 + lVar7 + 0x104),1);
        if (iVar1 != 0) {
          _dev_err(*(undefined8 *)(*(long *)((long)plVar6 + lVar7 + 0x50) + 0x290),
                   "failed to configure IRQ %d as wakeup source: %d\n",
                   *(undefined4 *)((long)plVar6 + lVar7 + 0x104),iVar1);
joined_r0x00101c74:
          for (; lVar7 != 0; lVar7 = lVar7 + -0x110) {
            if (*(int *)(*(long *)((long)plVar6 + lVar7 + -200) + 0x1c) != 0) {
              if ((*(int *)((long)plVar6 + lVar7 + 0x38) != 0) &&
                 (iVar2 = irq_set_irq_type(*(undefined4 *)((long)plVar6 + lVar7 + -0xc),3),
                 iVar2 != 0)) {
                _dev_warn(*(undefined8 *)(*(long *)((long)plVar6 + lVar7 + -0xc0) + 0x290),
                          "failed to restore interrupt trigger for IRQ %d: %d\n",
                          *(undefined4 *)((long)plVar6 + lVar7 + -0xc),iVar2);
              }
              iVar2 = irq_set_irq_wake(*(undefined4 *)((long)plVar6 + lVar7 + -0xc),0);
              if (iVar2 != 0) {
                _dev_warn(*(undefined8 *)(*(long *)((long)plVar6 + lVar7 + -0xc0) + 0x290),
                          "failed to disable IRQ %d as wake source: %d\n",
                          *(undefined4 *)((long)plVar6 + lVar7 + -0xc));
              }
            }
            *(undefined1 *)((long)plVar6 + lVar7 + 0x42) = 0;
          }
          return iVar1;
        }
        if ((*(int *)((long)plVar6 + lVar7 + 0x148) != 0) &&
           (iVar1 = irq_set_irq_type(*(undefined4 *)((long)plVar6 + lVar7 + 0x104)), iVar1 != 0)) {
          _dev_err(*(undefined8 *)(*(long *)((long)plVar6 + lVar7 + 0x50) + 0x290),
                   "failed to set wakeup trigger %08x for IRQ %d: %d\n",
                   *(undefined4 *)((long)plVar6 + lVar7 + 0x148),
                   *(undefined4 *)((long)plVar6 + lVar7 + 0x104),iVar1);
          irq_set_irq_wake(*(undefined4 *)((long)plVar6 + lVar7 + 0x104),0);
          goto joined_r0x00101c74;
        }
      }
      lVar3 = *plVar6;
      *(undefined1 *)((long)plVar6 + lVar7 + 0x152) = 1;
      lVar5 = lVar5 + 1;
      lVar7 = lVar7 + 0x110;
    } while (lVar5 < *(int *)(lVar3 + 8));
  }
  return 0;
}

