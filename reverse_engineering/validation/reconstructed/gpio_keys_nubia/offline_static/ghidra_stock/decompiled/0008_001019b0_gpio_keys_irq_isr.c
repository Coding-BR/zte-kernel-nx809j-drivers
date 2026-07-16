
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 gpio_keys_irq_isr(int param_1,long *param_2)

{
  code *pcVar1;
  undefined8 uVar2;
  long lVar3;
  long lVar4;
  
  if (*(int *)((long)param_2 + 0xbc) != param_1) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x800,0x101ac8);
    (*pcVar1)();
  }
  lVar4 = param_2[1];
  uVar2 = _raw_spin_lock_irqsave((long)param_2 + 0x104);
  if ((*(byte *)((long)param_2 + 0x109) & 1) == 0) {
    if (*(int *)(*param_2 + 0x1c) != 0) {
      pm_wakeup_dev_event(*(undefined8 *)(param_2[1] + 0x290),0,0);
    }
    input_event(lVar4,1,*(undefined2 *)param_2[3],1);
    input_event(lVar4,0,0,0);
    if ((int)param_2[9] == 0) {
      input_event(lVar4,1,*(undefined2 *)param_2[3],0);
      input_event(lVar4,0,0,0);
      goto LAB_00101aa0;
    }
    *(undefined1 *)((long)param_2 + 0x109) = 1;
  }
  else if ((int)param_2[9] == 0) goto LAB_00101aa0;
  lVar4 = _jiffies;
  lVar3 = __msecs_to_jiffies();
  mod_timer(param_2 + 4,lVar3 + lVar4);
LAB_00101aa0:
  _raw_spin_unlock_irqrestore((long)param_2 + 0x104,uVar2);
  return 1;
}

