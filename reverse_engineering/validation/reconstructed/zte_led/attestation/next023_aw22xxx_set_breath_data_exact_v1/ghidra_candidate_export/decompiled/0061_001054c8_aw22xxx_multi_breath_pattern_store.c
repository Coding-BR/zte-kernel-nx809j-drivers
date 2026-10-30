
undefined8
aw22xxx_multi_breath_pattern_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  int local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    lVar2 = lVar3 + -0x10;
    *(int *)(lVar3 + 0x2f8) = local_3c;
    if (local_3c == 0) {
      read_idx = 0;
      write_idx = 0;
      if (kthread_status == 1) {
        kthread_status = 0;
      }
      aw22xxx_i2c_write(lVar2,0xff,0);
      aw22xxx_i2c_write(lVar2,5,0);
      aw22xxx_i2c_write(lVar2,4,1);
      aw22xxx_i2c_write(lVar2,2,0);
    }
    else if (((local_3c == 1) && (read_idx = 0, (kthread_status & 1) == 0)) && (write_idx != 0)) {
      cfg_update_kthread = kthread_create_on_node(aw22xxx_play,lVar2,0xffffffff,"aw22xxx_play");
      if (cfg_update_kthread < 0xfffffffffffff001) {
        wake_up_process();
        kthread_status = 1;
        _printk(&DAT_00108909);
      }
      else {
        kthread_status = 0;
        _printk(&DAT_0010991a);
      }
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

