
void syna_dev_do_reflash(long *param_1,uint param_2)

{
  long lVar1;
  int iVar2;
  undefined4 *local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_30 = (undefined4 *)0x0;
  if (param_1 == (long *)0x0) {
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == local_28) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0xffffffea);
  }
  lVar1 = *param_1;
  iVar2 = request_firmware(&local_30,"syna_firmware.img",*(undefined8 *)(param_1[1] + 0x70));
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180758,"syna_dev_do_reflash","syna_firmware.img");
  }
  iVar2 = syna_tcm_do_fw_update(lVar1,*(undefined8 *)(local_30 + 2),*local_30,0,param_2 & 1);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e18a,"syna_dev_do_reflash");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f2b4,"syna_dev_do_reflash",*(undefined1 *)(lVar1 + 9));
}

