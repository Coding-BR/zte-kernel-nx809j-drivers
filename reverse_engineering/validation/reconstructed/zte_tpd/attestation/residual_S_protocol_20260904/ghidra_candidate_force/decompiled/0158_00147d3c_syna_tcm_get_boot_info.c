
undefined8 syna_tcm_get_boot_info(long param_1,void *param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  uint uVar3;
  ulong __n;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168a84,"syna_tcm_get_boot_info");
  }
  if (*(char *)(param_1 + 9) != '\v') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170e54,"syna_tcm_get_boot_info");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171524,"syna_tcm_get_boot_info");
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147db4);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x10,0,0,0,param_3);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f442,"syna_tcm_get_boot_info",0x10);
  }
  uVar3 = *(uint *)(param_1 + 0x154);
  if (0x1f < uVar3) {
    uVar3 = 0x20;
  }
  __n = (ulong)uVar3;
  if (*(char *)(param_1 + 0x188) != '\0') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x158);
  *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
  if (*(void **)(param_1 + 0x148) == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016efee,"syna_tcm_get_boot_info");
  }
  if (uVar3 <= *(uint *)(param_1 + 0x150)) {
    memcpy((void *)(param_1 + 0xe0),*(void **)(param_1 + 0x148),__n);
    if (*(char *)(param_1 + 0x188) == '\x01') {
      *(undefined1 *)(param_1 + 0x188) = 0;
      mutex_unlock(param_1 + 0x158);
      if (param_2 != (void *)0x0) {
        memcpy(param_2,(void *)(param_1 + 0xe0),__n);
      }
      return 0;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x20,__n);
}

