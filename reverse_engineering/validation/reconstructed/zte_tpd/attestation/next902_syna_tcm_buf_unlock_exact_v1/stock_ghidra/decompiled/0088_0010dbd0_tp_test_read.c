
void tp_test_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    if (*(char *)(tpd_cdev + 0xc00) == -1) {
      _printk(&DAT_0013d992,*(undefined1 *)(tpd_cdev + 0x446));
      if ((*(byte *)(lVar2 + 0x1d) & 1) == 0) {
        _printk(&DAT_00139fb8);
        uVar4 = 2;
      }
      else {
        _printk(&DAT_001380e2);
        uVar4 = 0;
      }
    }
    else {
      _printk(&DAT_00134a44);
      uVar4 = 1;
    }
    iVar3 = snprintf(local_48,10,"%d\n",uVar4);
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}

