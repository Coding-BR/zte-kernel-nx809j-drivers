
undefined8 syna_dev_isr(undefined8 param_1,undefined8 *param_2)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined1 local_2c [4];
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = param_2[0x4e];
  local_2c[0] = 0;
  if (((*(int *)((long)param_2 + 0x57c) == 1) || (*(char *)(param_2 + 0xaf) != '\x01')) ||
     (iVar1 = wait_for_completion_timeout(param_2 + 0xab,0xaf), iVar1 != 0)) {
    gpio_to_desc(*(undefined4 *)(lVar3 + 0xa8));
    iVar1 = gpiod_get_raw_value();
    if (iVar1 != *(int *)(lVar3 + 0xac)) goto LAB_00114240;
    lVar3 = sp_el0;
    *(undefined4 *)(param_2 + 0x5e) = *(undefined4 *)(lVar3 + 0x708);
    iVar1 = syna_tcm_get_event_data(*param_2,local_2c,param_2 + 0x55);
    if (-1 < iVar1) goto LAB_00114240;
    puVar2 = &DAT_001364d5;
  }
  else {
    puVar2 = &DAT_00133eec;
  }
  _printk(puVar2,"syna_dev_isr");
LAB_00114240:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

