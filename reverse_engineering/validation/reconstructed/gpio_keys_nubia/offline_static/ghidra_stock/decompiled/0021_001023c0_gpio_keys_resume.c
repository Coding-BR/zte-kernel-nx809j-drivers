
int gpio_keys_resume(long param_1)

{
  int iVar1;
  code *pcVar2;
  long *plVar3;
  long *plVar4;
  long lVar5;
  long lVar6;
  long lVar7;
  undefined4 *puVar8;
  long *plVar9;
  long lVar10;
  
  plVar4 = *(long **)(param_1 + 0x98);
  lVar5 = plVar4[1];
  if (((*(ushort *)(param_1 + 0x10c) & 1) == 0) || (*(long *)(param_1 + 0x148) == 0)) {
    mutex_lock(lVar5 + 0x1f8);
    if (*(int *)(lVar5 + 0x228) != 0) {
      plVar9 = *(long **)(lVar5 + 0x2c8);
      lVar6 = *plVar9;
      pcVar2 = *(code **)(lVar6 + 0x18);
      if (pcVar2 != (code *)0x0) {
        if (*(int *)(pcVar2 + -4) != 0x2a703c0b) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x8229,0x1024e8);
          (*pcVar2)();
        }
        iVar1 = (*pcVar2)(*(undefined8 *)(lVar5 + 0x290));
        if (iVar1 != 0) {
          mutex_unlock(lVar5 + 0x1f8);
          return iVar1;
        }
        lVar6 = *plVar9;
      }
      lVar7 = plVar9[1];
      if (0 < *(int *)(lVar6 + 8)) {
        lVar10 = 0;
        plVar3 = plVar9 + 9;
        do {
          if (plVar3[2] != 0) {
            gpio_keys_gpio_report_event(plVar3);
            lVar6 = *plVar9;
          }
          lVar10 = lVar10 + 1;
          plVar3 = plVar3 + 0x22;
        } while (lVar10 < *(int *)(lVar6 + 8));
      }
      input_event(lVar7,0,0,0);
    }
    mutex_unlock(lVar5 + 0x1f8);
    lVar5 = *plVar4;
    iVar1 = *(int *)(lVar5 + 8);
  }
  else {
    if (*(int *)(*plVar4 + 8) < 1) {
      lVar6 = plVar4[1];
      goto LAB_001025c0;
    }
    lVar6 = 0;
    puVar8 = (undefined4 *)((long)plVar4 + 0x104);
    do {
      *(undefined1 *)((long)puVar8 + 0x4e) = 0;
      lVar5 = irq_get_irq_data(*puVar8);
      if ((*(byte *)(*(long *)(lVar5 + 0x10) + 1) >> 6 & 1) != 0) {
        if ((puVar8[0x11] != 0) && (iVar1 = irq_set_irq_type(*puVar8,3), iVar1 != 0)) {
          _dev_warn(*(undefined8 *)(*(long *)(puVar8 + -0x2d) + 0x290),
                    "failed to restore interrupt trigger for IRQ %d: %d\n",*puVar8,iVar1);
        }
        iVar1 = irq_set_irq_wake(*puVar8,0);
        if (iVar1 != 0) {
          _dev_warn(*(undefined8 *)(*(long *)(puVar8 + -0x2d) + 0x290),
                    "failed to disable IRQ %d as wake source: %d\n",*puVar8,iVar1);
        }
      }
      lVar5 = *plVar4;
      lVar6 = lVar6 + 1;
      puVar8 = puVar8 + 0x44;
      iVar1 = *(int *)(lVar5 + 8);
    } while (lVar6 < iVar1);
  }
  lVar6 = plVar4[1];
  if (0 < iVar1) {
    lVar7 = 0;
    plVar9 = plVar4 + 9;
    do {
      if (plVar9[2] != 0) {
        gpio_keys_gpio_report_event(plVar9);
        lVar5 = *plVar4;
      }
      lVar7 = lVar7 + 1;
      plVar9 = plVar9 + 0x22;
    } while (lVar7 < *(int *)(lVar5 + 8));
  }
LAB_001025c0:
  input_event(lVar6,0,0,0);
  return 0;
}

