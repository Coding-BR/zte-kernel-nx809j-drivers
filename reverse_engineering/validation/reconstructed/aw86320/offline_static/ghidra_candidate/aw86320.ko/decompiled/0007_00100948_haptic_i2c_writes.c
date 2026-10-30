
int haptic_i2c_writes(long param_1,undefined1 param_2,void *param_3,uint param_4)

{
  ulong uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined1 *puVar5;
  ulong uVar6;
  undefined8 uVar7;
  
  uVar6 = (ulong)(param_4 + 1);
  puVar5 = (undefined1 *)__kmalloc_noprof(uVar6,0xcc0);
  while( true ) {
    if (puVar5 == (undefined1 *)0x0) {
      return -0xc;
    }
    if (uVar6 == 0) break;
    *puVar5 = param_2;
    uVar1 = 0;
    if (uVar6 != 0) {
      uVar1 = uVar6 - 1;
    }
    if (param_4 <= uVar1) {
      memcpy(puVar5 + 1,param_3,(ulong)param_4);
      iVar4 = i2c_transfer_buffer_flags(*(undefined8 *)(param_1 + 0x1e8),puVar5,param_4 + 1,0);
      if (iVar4 < 0) {
        _printk(&DAT_00103f73,"aw86320",0x34,"haptic_i2c_writes",param_2);
      }
      kfree(puVar5);
      return iVar4;
    }
    __fortify_panic(0x11);
    uVar6 = (ulong)(param_4 + 1);
    lVar2 = sp_el0;
    uVar7 = *(undefined8 *)(lVar2 + 0x50);
    *(undefined1 **)(lVar2 + 0x50) = &aw86320_codetag_base;
    puVar5 = (undefined1 *)__kmalloc_noprof(uVar6,0xcc0);
    *(undefined8 *)(lVar2 + 0x50) = uVar7;
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(1,0x100a0c);
  (*pcVar3)();
}

