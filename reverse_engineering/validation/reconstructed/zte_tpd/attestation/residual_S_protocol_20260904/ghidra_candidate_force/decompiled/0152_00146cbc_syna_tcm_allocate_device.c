
void syna_tcm_allocate_device(undefined8 param_1,long param_2)

{
  undefined *puVar1;
  
  if (param_2 == 0) {
    puVar1 = &DAT_00170698;
  }
  else if (*(long *)(param_2 + 0x20) == 0) {
    puVar1 = &DAT_0016dce4;
  }
  else {
    if (*(long *)(param_2 + 0x28) != 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016be48,"syna_tcm_allocate_device");
    }
    puVar1 = &DAT_00169886;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar1,"syna_tcm_allocate_device");
}

