
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void enableMicroPump(long param_1,int param_2)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined *puVar4;
  ushort local_2c [2];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_00103879,"aw86320",0x29c,"enableMicroPump",param_2);
  if (param_2 == 0) {
    *(undefined4 *)(param_1 + 0x10) = 0;
    _printk(&DAT_0010377d,"aw86320",0x123,"aw86320_play_mode");
    haptic_i2c_write(param_1,0x1b,0xe0e);
    haptic_i2c_write(param_1,0x25,0);
    __const_udelay(0xc49c08);
    if (-1 < *(int *)(param_1 + 0x18)) {
      uVar3 = gpio_to_desc();
      gpiod_direction_output_raw(uVar3,0);
      _printk(&DAT_0010409b,"aw86320",700,"enableMicroPump");
    }
    _printk(&DAT_00103e1a,"aw86320",0x2be,"enableMicroPump");
    goto LAB_00101cc0;
  }
  if (-1 < *(int *)(param_1 + 0x18)) {
    _printk(&DAT_00104660,"aw86320",0x2ab,"enableMicroPump");
    uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0x18));
    gpiod_direction_output_raw(uVar3,1);
  }
  aw86320_misc_para_init(param_1);
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,1,local_2c);
  if (iVar2 < 0) {
    puVar4 = &DAT_001042b4;
    uVar3 = 0xaf;
LAB_00101c08:
    _printk(puVar4,"aw86320",uVar3,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,1,local_2c[0] & 0xffcf | 0x10);
    if (iVar2 < 0) {
      puVar4 = &DAT_00104524;
      uVar3 = 0xb8;
      goto LAB_00101c08;
    }
  }
  _printk(&DAT_0010377d,"aw86320",0x123,"aw86320_play_mode");
  haptic_i2c_write(param_1,0x1b,0xe0e);
  haptic_i2c_write(param_1,0x25,0);
  __const_udelay(0xc49c08);
  aw86320_interrupt_setup(param_1);
  *(undefined8 *)(param_1 + 0x260) = 0xfffffffe00000;
  *(long *)(param_1 + 0x268) = param_1 + 0x268;
  *(long *)(param_1 + 0x270) = param_1 + 0x268;
  *(code **)(param_1 + 0x278) = ram_work_routine;
  init_timer_key(param_1 + 0x280,&delayed_work_timer_fn,0x200000,0,0);
  queue_delayed_work_on(0x20,_system_wq,param_1 + 0x260,2000);
  aw86320_play_atsin0(*(undefined4 *)(param_1 + 0xc),*(undefined4 *)(param_1 + 8),
                      *(undefined2 *)(param_1 + 0x14));
LAB_00101cc0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

