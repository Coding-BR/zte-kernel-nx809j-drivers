
void aw9620x_update_firmware(long param_1,long param_2)

{
  uint uVar1;
  
  uVar1 = *(uint *)(param_2 + 0x54);
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_update_firmware",0xca6);
  *(undefined4 *)(param_1 + 0x284) = *(undefined4 *)(param_2 + 100);
  aw9620x_fw_update(param_1,*(undefined1 *)(param_1 + 7),param_2 + 0x20e8 + (ulong)uVar1,
                    *(undefined4 *)(param_2 + 0x50));
  return;
}

