
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 gpio_keys_gpio_isr(int param_1,undefined8 *param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  undefined8 uVar3;
  undefined4 *puVar4;
  
  if ((*(int *)((long)param_2 + 0xbc) != param_1) && (*(int *)(param_2 + 0x18) != param_1)) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x800,0x101924);
    (*pcVar2)();
  }
  puVar4 = (undefined4 *)*param_2;
  if (((puVar4[7] != 0) &&
      (pm_stay_awake(*(undefined8 *)(param_2[1] + 0x290)),
      *(char *)((long)param_2 + 0x10a) == '\x01')) && ((uint)puVar4[6] < 2)) {
    input_event(param_2[1],1,*puVar4,1);
  }
  uVar1 = _system_wq;
  uVar3 = __msecs_to_jiffies(*(undefined4 *)(param_2 + 0x17));
  mod_delayed_work_on(0x20,uVar1,param_2 + 10,uVar3);
  return 1;
}

