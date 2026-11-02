
void syna_spi_read(undefined8 *param_1)

{
  undefined8 uVar1;
  undefined *puVar2;
  long *plVar3;
  
  uVar1 = sp_el0;
  plVar3 = (long *)*param_1;
  if (plVar3 == (long *)0x0) {
    puVar2 = &DAT_00181dbe;
  }
  else {
    if (*plVar3 != 0) {
                    /* WARNING: Subroutine does not return */
      mutex_lock(plVar3 + 0xe);
    }
    puVar2 = &DAT_00181cbf;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_spi_read");
}

