
void aw9620x_send_stop_cmd(long param_1)

{
  long lVar1;
  uint uVar2;
  int iVar3;
  undefined8 uVar4;
  char *pcVar5;
  undefined8 uVar6;
  int iVar7;
  uint local_6c;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_send_stop_cmd",0x7c7);
  aw9620x_i2c_write(param_1,0x4444,0x10000);
  aw9620x_i2c_write(param_1,0xff20,0x3c00ffff);
  local_6c = 0;
  aw9620x_i2c_read(param_1,0x4744,&local_6c);
  aw9620x_i2c_write(param_1,0x4744,local_6c & 0xffffff);
  aw9620x_i2c_write(param_1,0xff20,0x3c00f011);
  aw9620x_i2c_write(param_1,0x4444,0);
  msleep(0x19);
  iVar7 = 10;
  local_6c = 0;
  while( true ) {
    iVar3 = aw9620x_i2c_read(param_1,0x4410,&local_6c);
    uVar2 = local_6c;
    _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] REG_HOSTIRQSRC :0x%x\n",
                "aw9620x_read_init_comp_irq",0x75c,local_6c);
    if (iVar3 != 0) {
      uVar4 = *(undefined8 *)(param_1 + 0x30);
      pcVar5 = "[%s:%d] read REG_HOSTIRQSRC err\n";
      uVar6 = 0x75e;
      goto LAB_00105b34;
    }
    if (uVar2 == 1) break;
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] REG_HOSTIRQSRC val: 0x%x cnt: %d\n","aw9620x_read_init_comp_irq",0x766,
                uVar2,iVar7);
    usleep_range_state(1000,0x3f2,2);
    iVar7 = iVar7 + -1;
    if (iVar7 == -1) {
      uVar4 = *(undefined8 *)(param_1 + 0x30);
      pcVar5 = "[%s:%d] irq_stat != 0 cmd send err!\n";
      uVar6 = 0x76c;
LAB_00105b34:
      _dev_printk(&DAT_0010d797,uVar4,pcVar5,"aw9620x_read_init_comp_irq",uVar6);
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] stop read_ack_irq err\n",
                  "aw9620x_send_stop_cmd",0x7d4);
      uVar4 = 0xffffffff;
LAB_00105b88:
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) == local_68) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar4);
    }
  }
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] stop_flag irq_stat = 1 cmd send success!\n","aw9620x_read_init_comp_irq",
              0x763);
  uVar4 = 0;
  goto LAB_00105b88;
}

