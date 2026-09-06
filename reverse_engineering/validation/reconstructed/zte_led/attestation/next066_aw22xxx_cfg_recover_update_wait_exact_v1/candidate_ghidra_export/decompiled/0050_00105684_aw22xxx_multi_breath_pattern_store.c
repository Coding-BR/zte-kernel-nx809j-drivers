
undefined8
aw22xxx_multi_breath_pattern_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  long lVar4;
  long lVar5;
  int local_3c;
  long local_38;
  
  lVar5 = sp_el0;
  local_38 = *(long *)(lVar5 + 0x710);
  lVar5 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    lVar4 = lVar5 + -0x10;
    *(int *)(lVar5 + 0x2f8) = local_3c;
    if (local_3c == 0) {
      read_idx = 0;
      write_idx = 0;
      if (kthread_status == 1) {
        kthread_status = 0;
      }
      aw22xxx_i2c_write(lVar4,0xff,0);
      aw22xxx_i2c_write(lVar4,5,0);
      aw22xxx_i2c_write(lVar4,4,1);
      aw22xxx_i2c_write(lVar4,2,0);
    }
    else if (((local_3c == 1) && (read_idx = 0, (kthread_status & 1) == 0)) && (write_idx != 0)) {
      uVar2 = kthread_create_on_node(aw22xxx_play,lVar4,0xffffffff,&DAT_0010713a,"aw22xxx_play");
      if (0xfffffffffffff000 < uVar2) {
        kthread_status = 0;
        cfg_update_kthread = uVar2;
        uVar3 = _printk("kthread_create error\n");
        return uVar3;
      }
      wake_up_process();
      kthread_status = 1;
      cfg_update_kthread = uVar2;
      uVar3 = _printk("kthread_create done\n");
      return uVar3;
    }
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

