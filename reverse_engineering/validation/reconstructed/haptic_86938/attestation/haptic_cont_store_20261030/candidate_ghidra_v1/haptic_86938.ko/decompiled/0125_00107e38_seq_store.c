
undefined8 seq_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",&local_30,(ulong)&local_30 | 4);
  if (iVar1 == 2) {
    if ((uint)local_30 < 8) {
      if (local_30._4_4_ <= *(byte *)(lVar3 + 0x3b4)) {
        _printk(&DAT_001097cb,"haptic_hv",0x9d6,"seq_store");
        mutex_lock(lVar3 + 0x248);
        if (7 < (uint)local_30) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x107f74);
          (*pcVar2)();
        }
        *(char *)(lVar3 + (local_30 & 0xffffffff) + -0x8a) = (char)(local_30 >> 0x20);
        pcVar2 = *(code **)(*(long *)(lVar3 + 0x520) + 0xc0);
        if (*(int *)(pcVar2 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x107f5c);
          (*pcVar2)();
        }
        (*pcVar2)(lVar3 + -0xa8);
        mutex_unlock(lVar3 + 0x248);
        goto LAB_00107e8c;
      }
    }
    _printk(&DAT_001093ae,"haptic_hv",0x9d3,"seq_store");
  }
LAB_00107e8c:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

