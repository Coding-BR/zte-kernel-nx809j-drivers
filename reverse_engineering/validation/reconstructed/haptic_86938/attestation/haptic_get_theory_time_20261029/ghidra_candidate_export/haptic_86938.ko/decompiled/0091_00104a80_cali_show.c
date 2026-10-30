
long cali_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x98);
  mutex_lock(lVar3 + 0x248);
  pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0x118);
  if (*(int *)(pcVar2 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x104ad0);
    (*pcVar2)();
  }
  (*pcVar2)(lVar3 + -0xa8,1);
  if (*(int *)((code *)**(undefined8 **)(lVar3 + 0x520) + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x104af8);
    (*pcVar2)();
  }
  (*(code *)**(undefined8 **)(lVar3 + 0x520))(lVar3 + -0xa8);
  mutex_unlock(lVar3 + 0x248);
  iVar1 = snprintf(param_3,0x1000,"lra_f0 = %d cont_f0 = %d\n",(ulong)*(uint *)(lVar3 + -0x48),
                   (ulong)*(uint *)(lVar3 + -0x38));
  return (long)iVar1;
}

