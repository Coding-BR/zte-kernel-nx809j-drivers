
void aw9620x_update_fw_to_flash(long param_1,undefined8 param_2,undefined4 param_3)

{
  long lVar1;
  undefined1 local_58;
  undefined4 local_57;
  undefined3 uStack_53;
  undefined8 local_50;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined8 *local_40;
  undefined8 local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_38 = 0x800000037f8;
  uStack_30 = 0x3ffc00003ff8;
  local_58 = 1;
  uStack_44 = 0x2000;
  local_40 = &local_38;
  local_57 = 0;
  uStack_53 = 0;
  local_50 = param_2;
  local_48 = param_3;
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_data_len = %d\n",
              "aw9620x_update_fw_to_flash",0x63c,param_3);
  aw9620x_flash_update(param_1,&local_58);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

