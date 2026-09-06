
void syna_spi_power_on(undefined8 param_1,ulong param_2)

{
  char *pcVar1;
  
  pcVar1 = "enable";
  if ((param_2 & 1) == 0) {
    pcVar1 = "disable";
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017efab,"syna_spi_power_on",pcVar1);
}

