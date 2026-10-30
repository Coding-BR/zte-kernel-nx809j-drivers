
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_irq(undefined8 param_1,long param_2)

{
  long lVar1;
  byte local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  _printk(&DAT_0010d681,"aw22xxx_irq");
  aw22xxx_i2c_read(param_2,10,local_2c);
  _printk(&DAT_0010d12b,"aw22xxx_irq",local_2c[0]);
  if ((local_2c[0] >> 4 & 1) != 0) {
    queue_work_on(0x20,_system_wq,param_2 + 0x250);
    _printk(&DAT_0010d26c,"aw22xxx_irq",0x625,*(undefined4 *)(param_2 + 0x2f8));
    zlog_client_record(*(undefined8 *)(param_2 + 0x350),
                       "LED WATCHDOG recover cfg warnning,count:%d\n",
                       *(undefined4 *)(param_2 + 0x2f8));
    zlog_client_notify(*(undefined8 *)(param_2 + 0x350),0x400259);
  }
  _printk(&DAT_0010e1c7,"aw22xxx_irq");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

