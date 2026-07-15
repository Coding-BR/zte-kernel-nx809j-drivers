
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_task0_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  uint local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ec) = (char)local_2c;
    _printk(&DAT_0010d583,"aw22xxx_task0_store",0x8f4,local_2c & 0xff);
    queue_work_on(0x20,_system_wq,lVar2 + 0x1e0);
  }
  else {
    _printk(&DAT_0010ceff,"aw22xxx_task0_store",0x8ef);
    param_4 = 0xffffffffffffffea;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

