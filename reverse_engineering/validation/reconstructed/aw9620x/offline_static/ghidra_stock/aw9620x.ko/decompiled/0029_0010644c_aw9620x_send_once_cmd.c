
undefined8
aw9620x_send_once_cmd
          (long param_1,undefined4 param_2,undefined4 param_3,undefined8 param_4,undefined4 param_5)

{
  uint uVar1;
  int iVar2;
  undefined8 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_send_once_cmd",0x77b);
  iVar2 = dri_to_soc_pack_send(param_1,param_2,param_3,param_5,param_4);
  if (iVar2 == 0) {
    iVar2 = aw9620x_i2c_write(param_1,0x1c10,0x20000800);
    if (iVar2 == 0) {
      iVar2 = aw9620x_i2c_write(param_1,0x4408,0x15);
      if (iVar2 == 0) {
        uVar1 = *(int *)(param_1 + 0x24) - 1;
        if (uVar1 < 5) {
          uVar6 = *(undefined4 *)(&DAT_00110500 + (ulong)uVar1 * 4);
          uVar7 = *(undefined4 *)(&DAT_00110514 + (ulong)uVar1 * 4);
        }
        else {
          uVar6 = 0;
          uVar7 = 0;
        }
        _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] delay_ms_cnt = %d\n",
                    "aw9620x_send_once_cmd",0x7ad,uVar7);
        msleep(uVar7);
        iVar2 = aw9620x_read_ack_irq(param_1);
        if (iVar2 == 0) {
          uVar3 = soc_to_dri_pack_parse(param_1,uVar6,param_2,param_3);
          if ((int)uVar3 == 0) {
            return uVar3;
          }
          uVar3 = *(undefined8 *)(param_1 + 0x30);
          pcVar4 = "[%s:%d] soc_to_dri_pack_parse err\n";
          uVar5 = 0x7bb;
        }
        else {
          uVar3 = *(undefined8 *)(param_1 + 0x30);
          pcVar4 = "[%s:%d] read_ack_irq err\n";
          uVar5 = 0x7b4;
        }
      }
      else {
        uVar3 = *(undefined8 *)(param_1 + 0x30);
        pcVar4 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
        uVar5 = 0x78e;
      }
    }
    else {
      uVar3 = *(undefined8 *)(param_1 + 0x30);
      pcVar4 = "[%s:%d] REG_CMD_SEND_TIRG err\n";
      uVar5 = 0x787;
    }
  }
  else {
    uVar3 = *(undefined8 *)(param_1 + 0x30);
    pcVar4 = "[%s:%d] UPDATE_START_CMD err\n";
    uVar5 = 0x781;
  }
  _dev_printk(&DAT_0010dd3c,uVar3,pcVar4,"aw9620x_send_once_cmd",uVar5);
  return 0xffffffff;
}

