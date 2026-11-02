
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_irq_v15(undefined8 param_1,long param_2)

{
  long lVar1;
  byte local_30 [4];
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  local_30[0] = 0;
  aw22xxx_i2c_read(param_2,10,local_2c);
  _printk(&DAT_00108e44,"aw22xxx_irq_v15",local_2c[0]);
  if ((local_2c[0] & 1) != 0) {
    _printk(&DAT_00109780,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] & 0xfd);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] & 0xfe);
    _printk(&DAT_0010921d);
    aw22xxx_i2c_read(param_2,2,local_30);
    aw22xxx_i2c_write(param_2,2,local_30[0] & 0xfe);
    usleep_range_state(2000,3000,2);
    _printk(&DAT_001086bf,"aw22xxx_irq_v15");
  }
  if ((local_2c[0] >> 4 & 1) != 0) {
    _printk(&DAT_001098b6,"aw22xxx_irq_v15");
    aw22xxx_i2c_write(param_2,0xff,0);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] & 0xfd);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] | 2);
    aw22xxx_i2c_read(param_2,4,local_30);
    aw22xxx_i2c_write(param_2,4,local_30[0] | 1);
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

