
void syna_tcm_v1_read_message(long param_1,undefined1 *param_2)

{
  undefined1 *puVar1;
  uint uVar2;
  
  if (param_1 == 0) {
    puVar1 = &DAT_00168ac4;
  }
  else {
    if (*(long *)(param_1 + 0x48) != 0) {
      uVar2 = (uint)*(byte *)(param_1 + 0x37a);
      if (*(byte *)(param_1 + 0x37a) == 1) {
        uVar2 = *(uint *)(param_1 + 0x1f8);
      }
      if (param_2 != (undefined1 *)0x0) {
        uVar2 = 0xff;
        *param_2 = 0xff;
      }
      *(undefined1 *)(param_1 + 0x1fd) = 0;
                    /* WARNING: Subroutine does not return */
      mutex_lock(uVar2,param_1 + 0x348);
    }
    puVar1 = &DAT_00172270;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar1,"syna_tcm_v1_read_message");
}

