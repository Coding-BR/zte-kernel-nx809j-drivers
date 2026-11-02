
void aw9620x_read_init_over_irq(long param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  int iVar4;
  uint local_4c;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_read_init_over_irq",0x40e);
  iVar4 = 100;
  while( true ) {
    iVar2 = aw9620x_i2c_read(param_1,0x4410,&local_4c);
    if (iVar2 < 0) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] read init irq reg err: %d cnt: %d\n","aw9620x_read_init_over_irq",0x413,
                  0xffffffff,iVar4);
      uVar3 = 0xffffffff;
      goto LAB_00107408;
    }
    if ((local_4c & 1) != 0) break;
    _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),
                "[%s:%d] init over irq no ok cnt: %d\n","aw9620x_read_init_over_irq",0x41a,iVar4);
    usleep_range_state(1000,0x3f2,2);
    iVar4 = iVar4 + -1;
    if (iVar4 == -1) {
      _dev_printk(&DAT_0010dd3c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] init over irq err!\n",
                  "aw9620x_read_init_over_irq",0x41f);
      uVar3 = 0xfffffffd;
LAB_00107408:
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) == local_48) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail(uVar3);
    }
  }
  _dev_printk(&DAT_0010eb37,*(undefined8 *)(param_1 + 0x30),"[%s:%d] init over irq ok cnt: %d\n",
              "aw9620x_read_init_over_irq",0x417,iVar4);
  uVar3 = 0;
  goto LAB_00107408;
}

