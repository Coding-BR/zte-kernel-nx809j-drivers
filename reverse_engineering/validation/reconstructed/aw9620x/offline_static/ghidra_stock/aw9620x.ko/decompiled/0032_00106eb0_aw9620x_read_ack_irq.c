
void aw9620x_read_ack_irq(long param_1)

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
  local_6c = 0;
  iVar7 = 100;
  if (*(int *)(param_1 + 0x24) != 3) {
    iVar7 = 10;
  }
  while( true ) {
    iVar3 = aw9620x_i2c_read(param_1,0x4410,&local_6c);
    uVar2 = local_6c;
    _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] REG_HOSTIRQSRC :0x%x\n",
                "aw9620x_read_ack_irq",0x73f,local_6c);
    if (iVar3 != 0) {
      uVar4 = *(undefined8 *)(param_1 + 0x30);
      pcVar5 = "[%s:%d] read REG_HOSTIRQSRC err\n";
      uVar6 = 0x741;
      goto LAB_00106fe0;
    }
    if ((uVar2 >> 0x1d & 1) != 0) break;
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] REG_HOSTIRQSRC val: 0x%x cnt: %d\n","aw9620x_read_ack_irq",0x748,uVar2,
                iVar7);
    usleep_range_state(1000,0x3f2,2);
    iVar7 = iVar7 + -1;
    if (iVar7 == -1) {
      uVar4 = *(undefined8 *)(param_1 + 0x30);
      pcVar5 = "[%s:%d] irq_stat != 0 cmd send err!\n";
      uVar6 = 0x74d;
LAB_00106fe0:
      _dev_printk(&DAT_0010eb37,uVar4,pcVar5,"aw9620x_read_ack_irq",uVar6);
      uVar4 = 0xffffffff;
LAB_00107010:
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(uVar4);
      }
      return;
    }
  }
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] irq_stat bit29 = 1  cmd send success!\n","aw9620x_read_ack_irq",0x745);
  uVar4 = 0;
  goto LAB_00107010;
}

