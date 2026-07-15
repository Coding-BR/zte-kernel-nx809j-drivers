
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_irq_v15(undefined8 param_1,long param_2)

{
  long lVar1;
  byte local_44 [4];
  byte local_40 [4];
  byte local_3c [4];
  byte local_38 [4];
  byte local_34 [4];
  byte local_30 [4];
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_44[0] = 0;
  aw22xxx_i2c_read(param_2,10,local_44);
  _printk(&DAT_0010d12b,"aw22xxx_irq_v15",local_44[0]);
  if ((local_44[0] & 1) != 0) {
    _printk(&DAT_0010d34a,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    local_40[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_40);
    local_40[0] = local_40[0] & 0xfd;
    aw22xxx_i2c_write(param_2,4);
    local_3c[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_3c);
    local_3c[0] = local_3c[0] & 0xfe;
    aw22xxx_i2c_write(param_2,4);
    _printk(&DAT_0010e230,"aw22xxx_chip_enable",0x1aa,0);
    local_38[0] = 0;
    aw22xxx_i2c_read(param_2,2,local_38);
    local_38[0] = local_38[0] & 0xfe;
    aw22xxx_i2c_write(param_2,2);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_0010d555,"aw22xxx_irq_v15");
  }
  if ((local_44[0] >> 4 & 1) != 0) {
    _printk(&DAT_0010d68e,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    local_34[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_34);
    local_34[0] = local_34[0] & 0xfd;
    aw22xxx_i2c_write(param_2,4);
    local_30[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_30);
    local_30[0] = local_30[0] | 2;
    aw22xxx_i2c_write(param_2,4);
    local_2c[0] = 0;
    aw22xxx_i2c_read(param_2,4,local_2c);
    local_2c[0] = local_2c[0] | 1;
    aw22xxx_i2c_write(param_2,4);
    if (*(int *)(param_2 + 0x300) != 0) {
      queue_work_on(0x20,_system_wq,param_2 + 0x230);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

