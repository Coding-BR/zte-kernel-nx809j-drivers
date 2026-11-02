
int i2c_w_bytes(long param_1,undefined1 param_2,void *param_3,uint param_4)

{
  ulong uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *puVar4;
  ulong uVar5;
  
  uVar5 = (ulong)(param_4 + 1);
  puVar4 = (undefined1 *)__kmalloc_noprof(uVar5,0xcc0);
  if (uVar5 == 0) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(1,0x104668);
    (*pcVar2)();
  }
  *puVar4 = param_2;
  uVar1 = 0;
  if (uVar5 != 0) {
    uVar1 = uVar5 - 1;
  }
  if (param_4 <= uVar1) {
    memcpy(puVar4 + 1,param_3,(ulong)param_4);
    iVar3 = i2c_transfer_buffer_flags(*(undefined8 *)(param_1 + 0x328),puVar4,param_4 + 1,0);
    if (iVar3 < 0) {
      _printk(&DAT_001108a9,"haptic_hv",0x7a,"i2c_w_bytes",param_2);
    }
    kfree(puVar4);
    return iVar3;
  }
                    /* WARNING: Subroutine does not return */
  __fortify_panic(0x11);
}

