
void ufp_report_lcd_state(void)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined *puVar4;
  char *local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar2 = ufp_tp_ops;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  if (ufp_tp_ops == 0) {
    puVar4 = &DAT_00138864;
  }
  else {
    local_38 = "aod=true";
    uStack_30 = 0;
    _printk(&DAT_001369ee);
    iVar3 = kobject_uevent_env(lVar2 + 0x10,2,&local_38);
    if (iVar3 == 0) goto LAB_00110f48;
    puVar4 = &DAT_001388bd;
  }
  _printk(puVar4);
LAB_00110f48:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

