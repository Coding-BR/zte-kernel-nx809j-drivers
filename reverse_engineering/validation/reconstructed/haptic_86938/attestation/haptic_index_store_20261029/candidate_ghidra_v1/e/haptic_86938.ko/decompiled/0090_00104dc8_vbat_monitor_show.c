
long vbat_monitor_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar3 + 0x248);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x40);
  if (*(int *)(pcVar2 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x104e14);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8);
  iVar1 = snprintf(param_3,0x1000,"vbat_monitor = %d\n",(ulong)*(uint *)(lVar3 + -0x40));
  mutex_unlock(lVar3 + 0x248);
  return (long)iVar1;
}

