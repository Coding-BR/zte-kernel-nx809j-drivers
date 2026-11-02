
void aw9620x_update_bt_to_flash(long param_1,long param_2,undefined4 param_3)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 local_58;
  long lStack_50;
  undefined4 local_48;
  undefined4 uStack_44;
  undefined8 *local_40;
  undefined8 local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_58 = 0;
  local_38 = 0x7f8;
  uStack_30 = 0x7fc000007f8;
  local_40 = &local_38;
  uStack_44 = 0;
  lStack_50 = param_2;
  local_48 = param_3;
  if (param_2 == 0) {
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] w_bin_offset is null err\n",
                "aw9620x_update_bt_to_flash",0x623);
    uVar2 = 0xffffffff;
  }
  else {
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] update_data_len = %d\n",
                "aw9620x_update_bt_to_flash",0x627,param_3);
    uVar2 = aw9620x_flash_update(param_1,&local_58);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}

