
undefined8 aw22xxx_hwen_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  uint local_3c;
  long local_38;
  
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar1 = sscanf(param_3,"%x",&local_3c);
  if (iVar1 == 1) {
    if (local_3c < 2) {
      if (local_3c == 1) {
        aw22xxx_hw_reset();
      }
      else {
        _printk(&DAT_0010d681,"aw22xxx_hw_off");
        if ((lVar3 == 0x10) || (*(int *)(lVar3 + 0x2d0) < 0)) {
          _dev_err(*(undefined8 *)(lVar3 + -8),"%s:  failed\n","aw22xxx_hw_off");
        }
        else {
          uVar2 = gpio_to_desc();
          gpiod_set_raw_value_cansleep(uVar2,0);
          usleep_range_state(1000,0x5dc,2);
        }
      }
      goto LAB_001036a8;
    }
  }
  _printk(&DAT_0010d2ac,"aw22xxx_hwen_store",0x7b9);
  param_4 = 0xffffffffffffffea;
LAB_001036a8:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

