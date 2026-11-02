/* 00100188 aw86320_play_atsin0 */

void aw86320_play_atsin0(uint param_1,uint param_2,uint param_3)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  long lVar4;
  ulong uVar5;
  
  param_2 = param_2 & 0xffff;
  _printk(&DAT_00103c4b,"aw86320",0x236,"aw86320_play_atsin0",param_1 & 0xffff,param_2,
          param_3 & 0xffff);
  if (((param_2 < 0x5b) && ((param_1 & 0xffff) != 0)) && ((param_3 & 0xffff) < 0x1f5)) {
    piVar1 = (int *)(g_aw86320 + 0x34c);
    piVar2 = (int *)(g_aw86320 + 0x348);
    *(undefined4 *)(g_aw86320 + 0x10) = 1;
    uVar5 = (ulong)(param_2 * 0x35ff94) / 0x2800;
    uVar3 = 0x2bff;
    if ((param_1 & 0xffff) < 0x3ff) {
      uVar3 = param_1 | 0x2800;
    }
    param_3 = *piVar1 << 0xc | *piVar2 << 0xe | param_3;
    _printk(&DAT_001042e6,"aw86320",0x24c,"aw86320_play_atsin0",uVar3 & 0xffff,uVar5,
            param_3 & 0xffff);
    lVar4 = g_aw86320;
    _printk(&DAT_00103e43,"aw86320",0x129,"aw86320_play_mode");
    if (*(char *)(lVar4 + 0x346) == '\x01') {
      *(undefined1 *)(lVar4 + 1) = 1;
    }
    if (*(char *)(lVar4 + 0x345) == '\x01') {
      *(undefined1 *)(lVar4 + 1) = 2;
    }
    if (*(char *)(g_aw86320 + 1) == '\x01') {
      _printk(&DAT_00103d90,"aw86320",0x250,"aw86320_play_atsin0",1);
      aw86320_play_stop(g_aw86320);
      if (*(int *)(g_aw86320 + 0x10) == 1) {
        _printk(&DAT_00104680,"aw86320",0x253,"aw86320_play_atsin0");
        aw86320_timecheck_work_init(g_aw86320);
        haptic_i2c_write(g_aw86320,0x25,0);
        haptic_i2c_write(g_aw86320,0x23,uVar5);
        haptic_i2c_write(g_aw86320,0x24,param_3);
        haptic_i2c_write(g_aw86320,0x25,uVar3);
      }
    }
  }
  return;
}



/* 00100398 aw86320_play_mode */

void aw86320_play_mode(long param_1,char param_2)

{
  if (param_2 == '\0') {
    _printk(&DAT_0010377d,"aw86320",0x123,"aw86320_play_mode");
    haptic_i2c_write(param_1,0x1b,0xe0e);
    haptic_i2c_write(param_1,0x25,0);
    __const_udelay(0xc49c08);
  }
  else {
    _printk(&DAT_00103e43,"aw86320",0x129,"aw86320_play_mode");
    if (*(char *)(param_1 + 0x346) == '\x01') {
      *(undefined1 *)(param_1 + 1) = 1;
    }
    if (*(char *)(param_1 + 0x345) == '\x01') {
      *(undefined1 *)(param_1 + 1) = 2;
    }
  }
  return;
}



/* 00100458 aw86320_play_stop */

void aw86320_play_stop(undefined8 param_1)

{
  long lVar1;
  bool bVar2;
  undefined1 *puVar3;
  undefined8 uVar4;
  int iVar5;
  ushort local_2c [2];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  aw86320_play_mode(param_1,0);
  iVar5 = -100;
  do {
    local_2c[0] = 0;
    haptic_i2c_read(param_1,0x14,local_2c);
    if ((local_2c[0] & 0xf00) == 0) {
      puVar3 = &DAT_00104404;
      uVar4 = 0x220;
      goto LAB_001004fc;
    }
    usleep_range_state(2000,0x9c4,2);
    bVar2 = iVar5 != -1;
    iVar5 = iVar5 + 1;
  } while (bVar2);
  puVar3 = &aw86320_rodata_str_base;
  uVar4 = 0x226;
LAB_001004fc:
  _printk(puVar3,"aw86320",uVar4,"aw86320_wait_enter_standby");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010052c aw86320_timecheck_work_init */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw86320_timecheck_work_init(long param_1)

{
  undefined8 uVar1;
  
  if (0x3ff < *(int *)(param_1 + 0xc)) {
    cancel_delayed_work_sync(param_1 + 0x2c8);
    *(undefined8 *)(param_1 + 0x2c8) = 0xfffffffe00000;
    *(long *)(param_1 + 0x2d0) = param_1 + 0x2d0;
    *(long *)(param_1 + 0x2d8) = param_1 + 0x2d0;
    *(code **)(param_1 + 0x2e0) = aw86320_timecheck_work_handle;
    init_timer_key(param_1 + 0x2e8,&delayed_work_timer_fn,0x200000,0,0);
    uVar1 = __msecs_to_jiffies(*(undefined4 *)(param_1 + 0xc));
    queue_delayed_work_on(0x20,_system_wq,param_1 + 0x2c8,uVar1);
  }
  return;
}



/* 001005c0 haptic_i2c_write */

void haptic_i2c_write(undefined8 param_1,ulong param_2,uint param_3)

{
  long lVar1;
  uint uVar2;
  ulong uVar3;
  ulong uVar4;
  ushort local_2c [2];
  long local_28;
  
  lVar1 = sp_el0;
  local_2c[0] = (ushort)(param_3 >> 8) & 0xff | (ushort)((param_3 & 0xff00ff) << 8);
  local_28 = *(long *)(lVar1 + 0x710);
  uVar4 = param_2 & 0xffffffff;
  uVar3 = haptic_i2c_writes(param_1,param_2,local_2c,2);
  if ((int)uVar3 < 0) {
    _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",0,uVar3 & 0xffffffff);
    uVar3 = haptic_i2c_writes(param_1,uVar4,local_2c,2);
    if ((int)uVar3 < 0) {
      _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",1,uVar3 & 0xffffffff);
      uVar3 = haptic_i2c_writes(param_1,uVar4,local_2c,2);
      if ((int)uVar3 < 0) {
        _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",2,uVar3 & 0xffffffff);
        uVar3 = haptic_i2c_writes(param_1,uVar4,local_2c,2);
        if ((int)uVar3 < 0) {
          _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",3,uVar3 & 0xffffffff);
          uVar2 = haptic_i2c_writes(param_1,uVar4,local_2c,2);
          uVar3 = (ulong)uVar2;
          if ((int)uVar2 < 0) {
            _printk(&DAT_00103e66,"aw86320",0x66,"haptic_i2c_write",4,uVar3);
          }
        }
      }
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  return;
}



/* 00100778 haptic_i2c_read */

int haptic_i2c_read(long param_1,undefined1 param_2,ushort *param_3)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined1 local_90 [4];
  ushort local_8c [2];
  undefined2 local_88;
  undefined4 local_86;
  undefined2 local_82;
  undefined1 *local_80;
  undefined2 local_78;
  undefined4 local_76;
  undefined2 local_72;
  ushort *local_70;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  iVar3 = 0;
  local_8c[0] = 0;
  do {
    local_88 = *(undefined2 *)(*(long *)(param_1 + 0x1e8) + 2);
    local_86 = 0x10000;
    local_82 = 0;
    local_76 = 0x20001;
    local_72 = 0;
    local_90[0] = param_2;
    local_80 = local_90;
    local_78 = local_88;
    local_70 = local_8c;
    iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(param_1 + 0x1e8) + 0x18),&local_88,2);
    if (iVar2 < 0) {
      _printk(&DAT_00103b04,"aw86320",0x86,"i2c_reads");
    }
    else {
      if (iVar2 == 2) {
        *param_3 = local_8c[0] >> 8 | local_8c[0] << 8;
        break;
      }
      _printk(&DAT_00103f45,"aw86320",0x89,"i2c_reads");
      iVar2 = -6;
    }
    _printk(&DAT_001036b0,"aw86320",0x99,"haptic_i2c_read",iVar3,iVar2);
    iVar3 = iVar3 + 1;
  } while (iVar3 != 5);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar2;
}



/* 001008ec aw86320_timecheck_work_handle */

void aw86320_timecheck_work_handle(void)

{
  long lVar1;
  
  lVar1 = g_aw86320;
  *(undefined4 *)(g_aw86320 + 0x10) = 0;
  _printk(&DAT_001037a1,"aw86320",0x202,"aw86320_timecheck_work_handle");
  haptic_i2c_write(lVar1,0x25,0);
  return;
}



/* 00100948 haptic_i2c_writes */

int haptic_i2c_writes(long param_1,undefined1 param_2,void *param_3,uint param_4)

{
  ulong uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined1 *puVar5;
  ulong uVar6;
  undefined8 uVar7;
  
  uVar6 = (ulong)(param_4 + 1);
  puVar5 = (undefined1 *)__kmalloc_noprof(uVar6,0xcc0);
  while( true ) {
    if (puVar5 == (undefined1 *)0x0) {
      return -0xc;
    }
    if (uVar6 == 0) break;
    *puVar5 = param_2;
    uVar1 = 0;
    if (uVar6 != 0) {
      uVar1 = uVar6 - 1;
    }
    if (param_4 <= uVar1) {
      memcpy(puVar5 + 1,param_3,(ulong)param_4);
      iVar4 = i2c_transfer_buffer_flags(*(undefined8 *)(param_1 + 0x1e8),puVar5,param_4 + 1,0);
      if (iVar4 < 0) {
        _printk(&DAT_00103f73,"aw86320",0x34,"haptic_i2c_writes",param_2);
      }
      kfree(puVar5);
      return iVar4;
    }
    __fortify_panic(0x11);
    uVar6 = (ulong)(param_4 + 1);
    lVar2 = sp_el0;
    uVar7 = *(undefined8 *)(lVar2 + 0x50);
    *(undefined1 **)(lVar2 + 0x50) = &aw86320_codetag_base;
    puVar5 = (undefined1 *)__kmalloc_noprof(uVar6,0xcc0);
    *(undefined8 *)(lVar2 + 0x50) = uVar7;
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(1,0x100a0c);
  (*pcVar3)();
}



/* 00100a6c aw_i2c_probe */

void aw_i2c_probe(long param_1)

{
  long lVar1;
  int iVar2;
  int iVar3;
  ulong uVar4;
  long lVar5;
  undefined8 uVar6;
  long lVar7;
  code *pcVar8;
  undefined8 uVar9;
  short local_4c [2];
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  uVar9 = *(undefined8 *)(param_1 + 0x308);
  _printk(&DAT_001045ae,"aw86320","aw_i2c_probe");
  pcVar8 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar8 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x100adc);
    (*pcVar8)();
  }
  uVar4 = (*pcVar8)();
  if ((uVar4 & 1) == 0) {
    _printk(&DAT_00103a5a,"aw86320","aw_i2c_probe");
    iVar3 = -5;
    goto LAB_00100b00;
  }
  lVar1 = param_1 + 0x20;
  lVar5 = devm_kmalloc(lVar1,0x378,0xdc0);
  if (lVar5 == 0) {
    iVar3 = -0xc;
    goto LAB_00100b00;
  }
  *(long *)(lVar5 + 0x1e0) = lVar1;
  *(long *)(lVar5 + 0x1e8) = param_1;
  *(long *)(param_1 + 0xb8) = lVar5;
  iVar3 = of_get_named_gpio(uVar9,"power-en",0);
  *(int *)(lVar5 + 0x18) = iVar3;
  if (iVar3 < 0) {
    _printk(&DAT_00103897,"aw86320",0x269,"aw86320_parse_dt");
    *(undefined4 *)(lVar5 + 0x18) = 0xffffffea;
LAB_00100c24:
    iVar3 = -0x205;
LAB_00100c28:
    _printk(&DAT_00103db6,"aw86320",0x44a,"aw_i2c_probe",iVar3);
    iVar2 = *(int *)(lVar5 + 0x18);
  }
  else {
    iVar3 = gpio_request(iVar3,"awp86320_power_en");
    _printk(&DAT_001038cd,"aw86320",0x26e,"aw86320_parse_dt",*(undefined4 *)(lVar5 + 0x18),iVar3);
    if (iVar3 < 0) {
      _printk(&DAT_001039c0,"aw86320",0x270,"aw86320_parse_dt",*(undefined4 *)(lVar5 + 0x18),iVar3);
      *(undefined4 *)(lVar5 + 0x18) = 0xffffffea;
      goto LAB_00100c28;
    }
    _printk(&DAT_00103c7f,"aw86320",0x274,"aw86320_parse_dt");
    uVar6 = gpio_to_desc(*(undefined4 *)(lVar5 + 0x18));
    gpiod_direction_output_raw(uVar6,1);
    iVar3 = of_get_named_gpio(uVar9,"irq-gpio",0);
    *(int *)(lVar5 + 4) = iVar3;
    if (iVar3 < 0) {
      _printk(&DAT_00103fd0,"aw86320",0x27c,"aw86320_parse_dt",iVar3);
      *(undefined4 *)(lVar5 + 4) = 0xffffffea;
      goto LAB_00100c24;
    }
    _printk(&DAT_00104457,"aw86320",0x280,"aw86320_parse_dt",iVar3);
    *(undefined8 *)(lVar5 + 8) = 0x3ff00000050;
    *(undefined2 *)(lVar5 + 0x14) = 0x1c2;
    _printk(&DAT_001041a6,"aw86320",0x286,"aw86320_parse_dt",0x3ff,0x50,0x1c2);
    lVar7 = of_find_property(uVar9,"is_fifo_method_play",0);
    *(bool *)(lVar5 + 0x345) = lVar7 != 0;
    _printk(&DAT_001045bf,"aw86320",0x289,"aw86320_parse_dt");
    lVar7 = of_find_property(uVar9,"is_reg_method_play",0);
    *(bool *)(lVar5 + 0x346) = lVar7 != 0;
    _printk(&DAT_001041e0,"aw86320",0x28c,"aw86320_parse_dt");
    iVar3 = of_property_read_variable_u32_array(uVar9,"atsin0_polor",lVar5 + 0x348,1,0);
    if (iVar3 < 0) {
      _printk(&DAT_0010454d,"aw86320",0x290,"aw86320_parse_dt");
    }
    iVar3 = of_property_read_variable_u32_array(uVar9,"atsin0_phase",lVar5 + 0x34c,1,0);
    if (iVar3 < 0) {
      _printk(&DAT_00104003,"aw86320",0x293,"aw86320_parse_dt");
    }
    iVar3 = devm_request_threaded_irq
                      (lVar1,*(undefined4 *)(param_1 + 0x3b4),0,irq_handle,0x2002,"aw86320",lVar5);
    if (iVar3 != 0) {
      _dev_err(lVar1,"Unable to request IRQ.\n");
    }
    local_4c[0] = 0;
    haptic_i2c_write(lVar5,0,0xaaaa);
    usleep_range_state(3000,0xdac,2);
    iVar3 = haptic_i2c_read(lVar5,0,local_4c);
    if (iVar3 < 0) {
      _printk(&DAT_00103bd9,"aw86320",0xcd,"read_chipid",iVar3);
      iVar3 = -5;
      _printk(&DAT_00104486,"aw86320",0xde,"parse_chipid",0xfffffffb);
    }
    if (local_4c[0] == 0x6027) {
      *(undefined2 *)(lVar5 + 2) = 0x6027;
      g_chip_id = 0x30323336387761;
      _printk(&DAT_0010380d,"aw86320",0xe3,"parse_chipid");
      if (-1 < iVar3) {
        g_aw86320 = lVar5;
        create_pump_proc_entry();
        __mutex_init(lVar5 + 0x1f0,"&aw_haptic->lock",&aw_i2c_probe___key);
        aw86320_misc_para_init(lVar5);
        haptic_i2c_write_bits(lVar5,1,0xffffffcf,0x10);
        aw86320_play_mode(lVar5,0);
        aw86320_interrupt_setup(lVar5);
        ram_work_init(lVar5);
        _printk(&DAT_001040cc,"aw86320",0x46c,"aw_i2c_probe");
        enableMicroPump(lVar5,0);
        iVar3 = 0;
        goto LAB_00100b00;
      }
    }
    else {
      _printk(&DAT_00103ba5,"aw86320",0xe6,"parse_chipid");
      usleep_range_state(2000,0x9c4,2);
      iVar3 = -0x16;
    }
    _printk(&DAT_00103b79,"aw86320",0x45a,"aw_i2c_probe",iVar3);
    uVar9 = gpio_to_desc(*(undefined4 *)(lVar5 + 0x18));
    gpiod_direction_output_raw(uVar9,0);
    iVar2 = *(int *)(lVar5 + 0x18);
  }
  if (-1 < iVar2) {
    gpio_free();
    *(undefined4 *)(lVar5 + 0x18) = 0xffffffea;
  }
LAB_00100b00:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar3);
  }
  return;
}



/* 00101060 aw_remove */

void aw_remove(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xb8);
  _printk(&DAT_00103c0a,"aw86320",0x482,"aw_remove");
  remove_proc_entry("enable",micro_pump_proc_entry);
  remove_proc_entry("speed",micro_pump_proc_entry);
  remove_proc_entry(&DAT_00103f9f,micro_pump_proc_entry);
  remove_proc_entry(&DAT_00103906,micro_pump_proc_entry);
  remove_proc_entry("update",micro_pump_proc_entry);
  remove_proc_entry(&DAT_00103961,micro_pump_proc_entry);
  remove_proc_entry("driver/micropump",0);
  cancel_delayed_work_sync(lVar1 + 0x260);
  cancel_delayed_work_sync(lVar1 + 0x2c8);
  return;
}



/* 0010112c aw_shutdown */

void aw_shutdown(void)

{
  _printk(&DAT_00103c0a,"aw86320",0x491,"aw_shutdown");
  return;
}



/* 00101168 irq_handle */

undefined8 irq_handle(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  ushort uVar2;
  ushort local_2c [2];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  _printk(&DAT_00103f02,"aw86320",0x197,"irq_handle");
  local_2c[0] = 0;
  haptic_i2c_read(param_2,4,local_2c);
  uVar2 = local_2c[0];
  _printk(&DAT_00103a80,"aw86320",0x181,"aw86320_get_irq_state",local_2c[0]);
  if ((uVar2 >> 9 & 1) != 0) {
    _printk(&DAT_00104386,"aw86320",0x184,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 8 & 1) != 0) {
    _printk(&DAT_00103df6,"aw86320",0x186,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 7 & 1) != 0) {
    _printk(&DAT_00103aaa,"aw86320",0x188,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 6 & 1) != 0) {
    _printk(&DAT_00103ac5,"aw86320",0x18a,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 5 & 1) != 0) {
    _printk(&DAT_001046d6,"aw86320",0x18c,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 4 & 1) != 0) {
    _printk(&DAT_00104575,"aw86320",0x18e,"aw86320_get_irq_state");
  }
  if ((uVar2 >> 3 & 1) != 0) {
    _printk(&DAT_001037e3,"aw86320",400,"aw86320_get_irq_state");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return 1;
}



/* 00101330 create_pump_proc_entry */

void create_pump_proc_entry(void)

{
  long lVar1;
  
  micro_pump_proc_entry = proc_mkdir("driver/micropump",0);
  if (micro_pump_proc_entry == 0) {
    _printk(&DAT_001039f5,"aw86320",0x3fe,"create_pump_proc_entry","create_pump_proc_entry");
  }
  else {
    lVar1 = proc_create(&DAT_0010384c,0x1b4,micro_pump_proc_entry,&proc_ops_icid);
    if (lVar1 == 0) {
      _printk(&DAT_001044ad,"aw86320",0x405,"create_pump_proc_entry");
    }
    lVar1 = proc_create("enable",0x1b4,micro_pump_proc_entry,&proc_ops_enable);
    if (lVar1 == 0) {
      _printk(&DAT_001036da,"aw86320",0x40a,"create_pump_proc_entry");
    }
    lVar1 = proc_create("speed",0x1b4,micro_pump_proc_entry,&proc_ops_speed);
    if (lVar1 == 0) {
      _printk(&DAT_00103707,"aw86320",0x40f,"create_pump_proc_entry");
    }
    lVar1 = proc_create(&DAT_00103f9f,0x1b4,micro_pump_proc_entry,&proc_ops_freq);
    if (lVar1 == 0) {
      _printk(&DAT_00103e91,"aw86320",0x414,"create_pump_proc_entry");
    }
    lVar1 = proc_create(&DAT_00103906,0x92,micro_pump_proc_entry,&proc_ops_reg);
    if (lVar1 == 0) {
      _printk(&DAT_0010390a,"aw86320",0x419,"create_pump_proc_entry");
    }
    lVar1 = proc_create("update",0x92,micro_pump_proc_entry,&proc_ops_update);
    if (lVar1 == 0) {
      _printk(&DAT_00103934,"aw86320",0x41e,"create_pump_proc_entry");
    }
    lVar1 = proc_create(&DAT_00103961,0x92,micro_pump_proc_entry,&proc_ops_duration);
    if (lVar1 == 0) {
      _printk(&DAT_001044ad,"aw86320",0x423,"create_pump_proc_entry");
    }
  }
  return;
}



/* 00101570 aw86320_misc_para_init */

void aw86320_misc_para_init(undefined8 param_1)

{
  haptic_i2c_write(param_1,0,0xaaaa);
  haptic_i2c_write(param_1,0x40,0x7d7d);
  haptic_i2c_write(param_1,0x12,0x1108);
  haptic_i2c_write(param_1,0x36,0x2825);
  haptic_i2c_write(param_1,0x42,0x1800);
  haptic_i2c_write(param_1,0x46,0x103a);
  haptic_i2c_write(param_1,0x47,0x13e5);
  haptic_i2c_write(param_1,0x48,0x869c);
  haptic_i2c_write(param_1,0x4a,0x805);
  haptic_i2c_write(param_1,0x4b,0x8000);
  return;
}



/* 00101630 aw86320_interrupt_setup */

void aw86320_interrupt_setup(undefined8 param_1)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  ushort local_2c [2];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_001042b4;
    uVar4 = 0xaf;
LAB_001018e4:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xfdff);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104524;
      uVar4 = 0xb8;
      goto LAB_001018e4;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_001042b4;
    uVar4 = 0xaf;
LAB_0010190c:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xfeff);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104524;
      uVar4 = 0xb8;
      goto LAB_0010190c;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_001042b4;
    uVar4 = 0xaf;
LAB_00101934:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xff7f);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104524;
      uVar4 = 0xb8;
      goto LAB_00101934;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_001042b4;
    uVar4 = 0xaf;
LAB_0010195c:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xffbf);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104524;
      uVar4 = 0xb8;
      goto LAB_0010195c;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_001042b4;
    uVar4 = 0xaf;
LAB_00101984:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xffdf);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104524;
      uVar4 = 0xb8;
      goto LAB_00101984;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_001042b4;
    uVar4 = 0xaf;
LAB_001019ac:
    _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xffef);
    if (iVar2 < 0) {
      puVar3 = &DAT_00104524;
      uVar4 = 0xb8;
      goto LAB_001019ac;
    }
  }
  local_2c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,5,local_2c);
  if (iVar2 < 0) {
    puVar3 = &DAT_001042b4;
    uVar4 = 0xaf;
  }
  else {
    iVar2 = haptic_i2c_write(param_1,5,local_2c[0] & 0xfff7);
    if (-1 < iVar2) goto LAB_001017a0;
    puVar3 = &DAT_00104524;
    uVar4 = 0xb8;
  }
  _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
LAB_001017a0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001019e0 ram_work_init */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ram_work_init(long param_1)

{
  *(undefined8 *)(param_1 + 0x260) = 0xfffffffe00000;
  *(long *)(param_1 + 0x268) = param_1 + 0x268;
  *(long *)(param_1 + 0x270) = param_1 + 0x268;
  *(code **)(param_1 + 0x278) = ram_work_routine;
  init_timer_key(param_1 + 0x280,&delayed_work_timer_fn,0x200000,0,0);
  queue_delayed_work_on(0x20,_system_wq,param_1 + 0x260,2000);
  return;
}



/* 00101a58 enableMicroPump */

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



/* 00101cf0 get_ic_id */

/* WARNING: Control flow encountered bad instruction data */

undefined8 get_ic_id(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  size_t sVar1;
  undefined8 uVar2;
  
  if (*param_4 != 0) {
    return 0;
  }
  _printk(&DAT_00104032,"aw86320",0x2e5,"get_ic_id",&g_chip_id);
  sVar1 = strnlen((char *)&g_chip_id,0x20);
  if (sVar1 < 0x21) {
    if (sVar1 != 0x20) {
      uVar2 = simple_read_from_buffer(param_2,param_3,param_4,&g_chip_id);
      return uVar2;
    }
  }
  else {
    __fortify_panic(2,0x20,sVar1 + 1);
  }
  __fortify_panic(4,0x20,0x21);
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* 00101dbc enable_show */

void enable_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  char local_58 [32];
  long local_38;
  
  lVar2 = g_aw86320;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_58[0x18] = '\0';
  local_58[0x19] = '\0';
  local_58[0x1a] = '\0';
  local_58[0x1b] = '\0';
  local_58[0x1c] = '\0';
  local_58[0x1d] = '\0';
  local_58[8] = '\0';
  local_58[9] = '\0';
  local_58[10] = '\0';
  local_58[0xb] = '\0';
  local_58[0xc] = '\0';
  local_58[0xd] = '\0';
  local_58[0xe] = '\0';
  local_58[0xf] = '\0';
  local_58[0x10] = '\0';
  local_58[0x11] = '\0';
  local_58[0x12] = '\0';
  local_58[0x13] = '\0';
  local_58[0x14] = '\0';
  local_58[0x15] = '\0';
  local_58[0x16] = '\0';
  local_58[0x17] = '\0';
  local_58[0] = '\0';
  local_58[1] = '\0';
  local_58[2] = '\0';
  local_58[3] = '\0';
  local_58[4] = '\0';
  local_58[5] = '\0';
  local_58[6] = '\0';
  local_58[7] = '\0';
  if (*param_4 == 0) {
    _printk(&DAT_00103c9f,"aw86320",0x2f6,"enable_show","enable_show",
            *(undefined4 *)(g_aw86320 + 0x10));
    iVar3 = snprintf(local_58,0x1e,"%u\n",(ulong)*(uint *)(lVar2 + 0x10));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_58,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 00101ea0 enable_store */

ulong enable_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  undefined8 uVar2;
  int iVar3;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  uVar2 = g_aw86320;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    _printk(&DAT_00103cf8,"aw86320",0x30b,"enable_store","enable_store",local_4c);
    if (1 < local_4c) {
      local_4c = 1;
    }
    enableMicroPump(uVar2);
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101fa0 _inline_copy_from_user */

size_t _inline_copy_from_user(long param_1,ulong param_2,ulong param_3)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  ulong uVar4;
  
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar4 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar4 = param_2 & (long)(param_2 << 8) >> 8;
  }
  uVar3 = param_3;
  if ((param_3 < 0x8000000001) && (uVar4 <= 0x8000000000 - param_3)) {
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar3 = puVar1[1];
    uVar4 = ttbr1_el1;
    ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar4 & 0xffffffffffff;
    ttbr0_el1 = uVar3;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    uVar3 = __arch_copy_from_user(uVar3,param_1,param_2 & 0xff7fffffffffffff,param_3);
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar4 = ttbr1_el1;
    ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar4 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    if (uVar3 == 0) {
      return 0;
    }
  }
  memset((void *)(param_1 + (param_3 - uVar3)),0,uVar3);
  return uVar3;
}



/* 00102098 speed_show */

void speed_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  char local_58 [32];
  long local_38;
  
  lVar2 = g_aw86320;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_58[0x18] = '\0';
  local_58[0x19] = '\0';
  local_58[0x1a] = '\0';
  local_58[0x1b] = '\0';
  local_58[0x1c] = '\0';
  local_58[0x1d] = '\0';
  local_58[8] = '\0';
  local_58[9] = '\0';
  local_58[10] = '\0';
  local_58[0xb] = '\0';
  local_58[0xc] = '\0';
  local_58[0xd] = '\0';
  local_58[0xe] = '\0';
  local_58[0xf] = '\0';
  local_58[0x10] = '\0';
  local_58[0x11] = '\0';
  local_58[0x12] = '\0';
  local_58[0x13] = '\0';
  local_58[0x14] = '\0';
  local_58[0x15] = '\0';
  local_58[0x16] = '\0';
  local_58[0x17] = '\0';
  local_58[0] = '\0';
  local_58[1] = '\0';
  local_58[2] = '\0';
  local_58[3] = '\0';
  local_58[4] = '\0';
  local_58[5] = '\0';
  local_58[6] = '\0';
  local_58[7] = '\0';
  if (*param_4 == 0) {
    _printk(&DAT_001046fb,"aw86320",0x325,"speed_show",*(undefined4 *)(g_aw86320 + 8));
    iVar3 = snprintf(local_58,0x1e,"%u\n",(ulong)*(uint *)(lVar2 + 8));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_58,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010217c speed_store */

ulong speed_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  uint uVar4;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = g_aw86320;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if (iVar3 == 0) {
    _printk(&DAT_00103fa4,"aw86320",0x33b,"speed_store",&local_48);
    if ((int)local_48 == 0x68676968 && local_48._4_2_ == 10) {
      local_4c = 0x50;
      uVar4 = local_4c;
    }
    else if ((int)local_48 == 0xa64696d && local_48._4_1_ == '\0') {
      local_4c = 0x46;
      uVar4 = local_4c;
    }
    else if ((int)local_48 == 0xa776f6c && local_48._4_1_ == '\0') {
      local_4c = 0x3c;
      uVar4 = local_4c;
    }
    else {
      iVar3 = kstrtouint(&local_48,0,&local_4c);
      if (iVar3 != 0) goto LAB_001021e8;
      uVar4 = local_4c;
      if (0x59 < local_4c) {
        uVar4 = 0x5a;
      }
    }
    *(uint *)(lVar2 + 8) = uVar4;
    _printk(&DAT_00103851,"aw86320",0x351,"speed_store",local_4c);
    if (0 < *(int *)(lVar2 + 0x10)) {
      aw86320_play_atsin0(*(undefined4 *)(lVar2 + 0xc),*(undefined4 *)(lVar2 + 8),
                          *(undefined2 *)(lVar2 + 0x14));
    }
  }
  else {
LAB_001021e8:
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102328 freq_show */

void freq_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  char local_58 [32];
  long local_38;
  
  lVar2 = g_aw86320;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_58[0x18] = '\0';
  local_58[0x19] = '\0';
  local_58[0x1a] = '\0';
  local_58[0x1b] = '\0';
  local_58[0x1c] = '\0';
  local_58[0x1d] = '\0';
  local_58[8] = '\0';
  local_58[9] = '\0';
  local_58[10] = '\0';
  local_58[0xb] = '\0';
  local_58[0xc] = '\0';
  local_58[0xd] = '\0';
  local_58[0xe] = '\0';
  local_58[0xf] = '\0';
  local_58[0x10] = '\0';
  local_58[0x11] = '\0';
  local_58[0x12] = '\0';
  local_58[0x13] = '\0';
  local_58[0x14] = '\0';
  local_58[0x15] = '\0';
  local_58[0x16] = '\0';
  local_58[0x17] = '\0';
  local_58[0] = '\0';
  local_58[1] = '\0';
  local_58[2] = '\0';
  local_58[3] = '\0';
  local_58[4] = '\0';
  local_58[5] = '\0';
  local_58[6] = '\0';
  local_58[7] = '\0';
  if (*param_4 == 0) {
    _printk(&DAT_001044de,"aw86320",0x3ce,"freq_show",*(undefined2 *)(g_aw86320 + 0x14));
    iVar3 = snprintf(local_58,0x1e,"%u\n",(ulong)*(ushort *)(lVar2 + 0x14));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_58,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010240c freq_store */

ulong freq_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  uint uVar4;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = g_aw86320;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    uVar4 = local_4c;
    if (499 < local_4c) {
      uVar4 = 500;
    }
    *(short *)(lVar2 + 0x14) = (short)uVar4;
    _printk(&DAT_001043e1,"aw86320",0x3ed,"freq_store");
    if (0 < *(int *)(lVar2 + 0x10)) {
      aw86320_play_atsin0(*(undefined4 *)(lVar2 + 0xc),*(undefined4 *)(lVar2 + 8),
                          *(undefined2 *)(lVar2 + 0x14));
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102518 reg_show */

void reg_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  ulong uVar5;
  uint uVar6;
  ushort local_580 [2];
  char acStack_57c [1300];
  long local_68;
  
  uVar4 = g_aw86320;
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  local_580[0] = 0;
  memset(acStack_57c,0,0x514);
  if (*param_4 == 0) {
    uVar6 = 0;
    uVar5 = 0;
    do {
      haptic_i2c_read(uVar4,uVar6,local_580);
      if (0x514 < uVar5) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x102650);
        (*pcVar2)();
      }
      iVar3 = snprintf(acStack_57c + uVar5,0x1000 - uVar5,"reg:0x%02x=0x%04x\n",(ulong)uVar6,
                       (ulong)local_580[0]);
      uVar6 = uVar6 + 1;
      uVar5 = uVar5 + (long)iVar3;
    } while (uVar6 != 0x39);
    _printk(&DAT_00104337,"aw86320",0x3a2,"reg_show",acStack_57c);
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,acStack_57c,uVar5);
  }
  else {
    uVar4 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 00102658 reg_store */

ulong reg_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  undefined8 uVar2;
  undefined2 uVar3;
  int iVar4;
  undefined8 local_50;
  char acStack_48 [16];
  long local_38;
  
  uVar2 = g_aw86320;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (0xd < param_3) {
    param_3 = 0xe;
  }
  acStack_48[8] = '\0';
  acStack_48[9] = '\0';
  acStack_48[10] = '\0';
  acStack_48[0xb] = '\0';
  acStack_48[0xc] = '\0';
  acStack_48[0xd] = '\0';
  acStack_48[0xe] = '\0';
  local_50 = 0;
  acStack_48[0] = '\0';
  acStack_48[1] = '\0';
  acStack_48[2] = '\0';
  acStack_48[3] = '\0';
  acStack_48[4] = '\0';
  acStack_48[5] = '\0';
  acStack_48[6] = '\0';
  acStack_48[7] = 0;
  _printk(&DAT_00104609,"aw86320",0x3af,"reg_store","reg_store",param_3,0xf);
  __check_object_size(acStack_48,param_3,0);
  iVar4 = _inline_copy_from_user(acStack_48,param_2,param_3);
  if (iVar4 == 0) {
    iVar4 = sscanf(acStack_48,"%x %x",&local_50,(ulong)&local_50 | 4);
    if (iVar4 == 2) {
      uVar3 = local_50._4_2_;
      _printk(&DAT_00104251,"aw86320",0x3b7,"reg_store","reg_store",local_50 & 0xff,local_50._4_2_);
      haptic_i2c_write(uVar2,local_50 & 0xffffffff,uVar3);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00102794 ram_update_store */

ulong ram_update_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  undefined1 *puVar2;
  int iVar3;
  int local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  puVar2 = g_aw86320;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    _printk(&DAT_00103cf8,"aw86320",0x2d4,"ram_update_store","ram_update_store",local_4c);
    if (local_4c != 0) {
      *puVar2 = 0;
      request_firmware_nowait
                (&__this_module,1,"micop_ram.bin",*(undefined8 *)(puVar2 + 0x1e0),0xcc0,puVar2,
                 ram_load);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001028b4 ram_load */

void ram_load(ulong *param_1,undefined1 *param_2)

{
  int *piVar1;
  uint uVar2;
  char cVar3;
  undefined2 uVar4;
  undefined2 uVar5;
  ushort uVar6;
  code *pcVar7;
  int iVar8;
  uint *puVar9;
  undefined *puVar10;
  undefined8 uVar11;
  long lVar12;
  byte *pbVar13;
  int iVar14;
  ulong uVar15;
  ulong uVar16;
  int iVar17;
  ulong uVar18;
  ulong uVar19;
  ulong uVar20;
  ulong uVar21;
  ulong uVar22;
  undefined1 local_338 [4];
  byte local_334 [700];
  ushort local_78 [4];
  undefined1 *local_70;
  ushort local_68;
  undefined2 local_66;
  undefined2 local_64;
  undefined2 local_62;
  byte *local_60;
  long local_58;
  
  lVar12 = sp_el0;
  local_58 = *(long *)(lVar12 + 0x710);
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_00103d15,"aw86320",0x1ba,"ram_load","micop_ram.bin");
    release_firmware(0);
    goto LAB_00103234;
  }
  _printk(&DAT_00104275,"aw86320",0x1be,"ram_load","micop_ram.bin",*param_1);
  uVar18 = *param_1;
  piVar1 = (int *)param_1[1];
  uVar22 = (ulong)*(byte *)(piVar1 + 3);
  uVar21 = uVar22 + 0x15;
  if (uVar21 < uVar18) {
    uVar16 = (uVar18 - uVar22) - 0x15;
    if (uVar16 < 2) {
LAB_00102974:
      iVar8 = 0;
      uVar15 = uVar21;
    }
    else {
      uVar15 = (uVar18 - uVar22) - 0x16;
      iVar8 = (int)uVar15;
      iVar14 = (int)uVar21;
      if (((iVar14 + iVar8 < iVar14) ||
          (iVar17 = *(byte *)(piVar1 + 3) + 0x16, iVar17 + iVar8 < iVar17)) || (uVar15 >> 0x20 != 0)
         ) goto LAB_00102974;
      uVar19 = uVar16 & 0xfffffffffffffffe;
      iVar17 = 0;
      iVar8 = 0;
      uVar15 = uVar19 + uVar21;
      uVar21 = (ulong)(uint)(iVar14 + (int)uVar19);
      pbVar13 = (byte *)((long)piVar1 + uVar22 + 0x16);
      uVar20 = uVar19;
      do {
        uVar20 = uVar20 - 2;
        iVar17 = iVar17 + (uint)pbVar13[-1];
        iVar8 = iVar8 + (uint)*pbVar13;
        pbVar13 = pbVar13 + 2;
      } while (uVar20 != 0);
      iVar8 = iVar8 + iVar17;
      if (uVar16 == uVar19) goto LAB_0010299c;
    }
    iVar14 = (int)uVar21;
    do {
      iVar14 = iVar14 + 1;
      pbVar13 = (byte *)((long)piVar1 + uVar15);
      uVar15 = (ulong)iVar14;
      iVar8 = iVar8 + (uint)*pbVar13;
    } while (uVar15 < uVar18);
  }
  else {
    iVar8 = 0;
  }
LAB_0010299c:
  if (iVar8 != *piVar1) {
    _printk(&DAT_00103733,"aw86320",0x1c8,"ram_load",iVar8);
    release_firmware(param_1);
    goto LAB_00103234;
  }
  _printk(&DAT_001043af,"aw86320",0x1cc,"ram_load",iVar8);
  *(int *)(param_2 + 0x334) = iVar8;
  *(undefined2 *)(param_2 + 0x350) = *(undefined2 *)(param_1[1] + 4);
  *(undefined2 *)(param_2 + 0x352) = *(undefined2 *)(param_1[1] + 6);
  *(undefined2 *)(param_2 + 0x354) = *(undefined2 *)(param_1[1] + 8);
  *(undefined2 *)(param_2 + 0x356) = *(undefined2 *)(param_1[1] + 10);
  cVar3 = *(char *)(param_1[1] + 0xc);
  param_2[0x358] = cVar3;
  if (cVar3 != '\0') {
    param_2[0x35a] = *(undefined1 *)(param_1[1] + 0xd);
    _printk(&DAT_00103d38,"aw86320",0x1aa,"haptic_parsing_bin_file",cVar3,1);
    if (1 < (byte)param_2[0x358]) {
      param_2[0x35b] = *(undefined1 *)(param_1[1] + 0xe);
      _printk(&DAT_00103d38,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],2);
      if (2 < (byte)param_2[0x358]) {
        param_2[0x35c] = *(undefined1 *)(param_1[1] + 0xf);
        _printk(&DAT_00103d38,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],3);
        if (3 < (byte)param_2[0x358]) {
          param_2[0x35d] = *(undefined1 *)(param_1[1] + 0x10);
          _printk(&DAT_00103d38,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],4);
          if (4 < (byte)param_2[0x358]) {
            param_2[0x35e] = *(undefined1 *)(param_1[1] + 0x11);
            _printk(&DAT_00103d38,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],5);
            if (5 < (byte)param_2[0x358]) {
              param_2[0x35f] = *(undefined1 *)(param_1[1] + 0x12);
              _printk(&DAT_00103d38,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],6);
              if (6 < (byte)param_2[0x358]) {
                param_2[0x360] = *(undefined1 *)(param_1[1] + 0x13);
                _printk(&DAT_00103d38,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],7);
                if (7 < (byte)param_2[0x358]) {
                  param_2[0x361] = *(undefined1 *)(param_1[1] + 0x14);
                  _printk(&DAT_00103d38,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],8);
                  if (8 < (byte)param_2[0x358]) {
                    param_2[0x362] = *(undefined1 *)(param_1[1] + 0x15);
                    _printk(&DAT_00103d38,"aw86320",0x1aa,"haptic_parsing_bin_file",param_2[0x358],9
                           );
                    if (9 < (byte)param_2[0x358]) goto LAB_00103274;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  uVar21 = (ulong)*(ushort *)(param_2 + 0x356);
  puVar9 = (uint *)__kmalloc_noprof(uVar21 + 4,0xdc0);
  if (puVar9 == (uint *)0x0) {
    release_firmware(param_1);
    _printk(&DAT_00103a31,"aw86320",0x1d5,"ram_load");
    goto LAB_00103234;
  }
  *puVar9 = (uint)*(ushort *)(param_2 + 0x356);
  _printk(&DAT_00103973,"aw86320",0x1da,"ram_load");
  if (uVar21 < (ulong)(long)(int)*puVar9) {
    __fortify_panic(0x11,uVar21);
    goto LAB_00103274;
  }
  memcpy(puVar9 + 1,(void *)(param_1[1] + uVar22 + 0x15),(long)(int)*puVar9);
  release_firmware(param_1);
  memset(local_334,0,700);
  mutex_lock(param_2 + 0x1f0);
  local_78[0] = 0;
  iVar8 = haptic_i2c_read(param_2,0x11,local_78);
  if (iVar8 < 0) {
    puVar10 = &DAT_001042b4;
    uVar11 = 0xaf;
LAB_00102e2c:
    _printk(puVar10,"aw86320",uVar11,"haptic_i2c_write_bits",iVar8);
  }
  else {
    iVar8 = haptic_i2c_write(param_2,0x11,local_78[0] | 0x10);
    if (iVar8 < 0) {
      puVar10 = &DAT_00104524;
      uVar11 = 0xb8;
      goto LAB_00102e2c;
    }
  }
  usleep_range_state(1000,0x41a,2);
  uVar4 = *(undefined2 *)(param_2 + 0x354);
  uVar5 = *(undefined2 *)(param_2 + 0x352);
  *(undefined2 *)(param_2 + 0x338) = *(undefined2 *)(param_2 + 0x350);
  _printk(&DAT_00104156,"aw86320",0x146,"aw86320_container_update",*(undefined2 *)(param_2 + 0x350),
          uVar4,uVar5);
  uVar6 = *(ushort *)(param_2 + 0x338);
  local_78[0] = 0;
  iVar8 = haptic_i2c_read(param_2,0x17,local_78);
  if (iVar8 < 0) {
    puVar10 = &DAT_001042b4;
    uVar11 = 0xaf;
LAB_00102ef0:
    _printk(puVar10,"aw86320",uVar11,"haptic_i2c_write_bits",iVar8);
  }
  else {
    iVar8 = haptic_i2c_write(param_2,0x17,local_78[0] & 0xfc00 | uVar6 & 0x3ff);
    if (iVar8 < 0) {
      puVar10 = &DAT_00104524;
      uVar11 = 0xb8;
      goto LAB_00102ef0;
    }
  }
  haptic_i2c_write(param_2,0x18,uVar4);
  haptic_i2c_write(param_2,0x19,uVar5);
  _printk(&DAT_00103f24,"aw86320",0x14e,"aw86320_container_update",*puVar9);
  haptic_i2c_writes(param_2,0x20,puVar9 + 1,*puVar9);
  __const_udelay(0x147aeb8);
  haptic_i2c_write(param_2,0x1f,0x200);
  local_338[0] = 0x20;
  local_78[0] = *(ushort *)(*(long *)(param_2 + 0x1e8) + 2);
  local_78[1] = 0;
  local_78[2] = 1;
  local_70 = local_338;
  local_66 = 1;
  local_60 = local_334;
  local_78[3] = 0;
  local_64 = (undefined2)*puVar9;
  local_62 = 0;
  local_68 = local_78[0];
  iVar8 = i2c_transfer(*(undefined8 *)(*(long *)(param_2 + 0x1e8) + 0x18),local_78,2);
  if (iVar8 < 0) {
    puVar10 = &DAT_00103b04;
    uVar11 = 0x4e;
LAB_00103008:
    _printk(puVar10,"aw86320",uVar11,"haptic_i2c_reads");
  }
  else if (iVar8 != 2) {
    puVar10 = &DAT_00103f45;
    uVar11 = 0x51;
    goto LAB_00103008;
  }
  uVar2 = *puVar9;
  uVar21 = (ulong)uVar2;
  if ((int)uVar2 < 1) {
    iVar8 = 0;
  }
  else {
    if (uVar2 - 0x2bd < 0xfffffd44) {
LAB_00103274:
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x103278);
      (*pcVar7)();
    }
    if (uVar2 == 1) {
      uVar22 = 0;
      iVar8 = 0;
    }
    else {
      uVar22 = uVar21 & 0x3fe;
      iVar14 = 0;
      iVar8 = 0;
      pbVar13 = local_334 + 1;
      uVar18 = uVar22;
      do {
        uVar18 = uVar18 - 2;
        iVar14 = iVar14 + (uint)pbVar13[-1];
        iVar8 = iVar8 + (uint)*pbVar13;
        pbVar13 = pbVar13 + 2;
      } while (uVar18 != 0);
      iVar8 = iVar8 + iVar14;
      if (uVar22 == uVar21) goto LAB_00103098;
    }
    lVar12 = uVar21 - uVar22;
    pbVar13 = local_334 + uVar22;
    do {
      lVar12 = lVar12 + -1;
      iVar8 = iVar8 + (uint)*pbVar13;
      pbVar13 = pbVar13 + 1;
    } while (lVar12 != 0);
  }
LAB_00103098:
  if (*(int *)(param_2 + 0x334) == iVar8) {
    _printk(&DAT_00104637,"aw86320",0x15a,"aw86320_container_update");
    local_78[0] = 0;
    iVar8 = haptic_i2c_read(param_2,0x11,local_78);
    if (iVar8 < 0) {
      puVar10 = &DAT_001042b4;
      uVar11 = 0xaf;
LAB_00103174:
      _printk(puVar10,"aw86320",uVar11,"haptic_i2c_write_bits",iVar8);
    }
    else {
      iVar8 = haptic_i2c_write(param_2,0x11,local_78[0] & 0xffef);
      if (iVar8 < 0) {
        puVar10 = &DAT_00104524;
        uVar11 = 0xb8;
        goto LAB_00103174;
      }
    }
    mutex_unlock(param_2 + 0x1f0);
    puVar10 = &DAT_0010405d;
    *param_2 = 1;
    uVar11 = 0x1e2;
  }
  else {
    local_78[0] = 0;
    iVar8 = haptic_i2c_read(param_2,0x11,local_78);
    if (iVar8 < 0) {
      puVar10 = &DAT_001042b4;
      uVar11 = 0xaf;
LAB_001031e0:
      _printk(puVar10,"aw86320",uVar11,"haptic_i2c_write_bits",iVar8);
    }
    else {
      iVar8 = haptic_i2c_write(param_2,0x11,local_78[0] & 0xffef);
      if (iVar8 < 0) {
        puVar10 = &DAT_00104524;
        uVar11 = 0xb8;
        goto LAB_001031e0;
      }
    }
    mutex_unlock(param_2 + 0x1f0);
    _printk(&DAT_00103c21,"aw86320",0x15f,"aw86320_container_update");
    puVar10 = &DAT_00104350;
    uVar11 = 0x1df;
  }
  _printk(puVar10,"aw86320",uVar11,"ram_load");
  kfree(puVar9);
LAB_00103234:
  lVar12 = sp_el0;
  if (*(long *)(lVar12 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 0010327c haptic_i2c_write_bits */

void haptic_i2c_write_bits(undefined8 param_1,ulong param_2,uint param_3,uint param_4)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  ushort local_3c [2];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c[0] = 0;
  iVar2 = haptic_i2c_read(param_1,param_2,local_3c);
  if (iVar2 < 0) {
    puVar3 = &DAT_001042b4;
    uVar4 = 0xaf;
  }
  else {
    iVar2 = haptic_i2c_write(param_1,param_2 & 0xffffffff,
                             local_3c[0] & param_3 | param_4 & (param_3 ^ 0xffffffff));
    if (-1 < iVar2) goto LAB_001032e0;
    puVar3 = &DAT_00104524;
    uVar4 = 0xb8;
  }
  _printk(puVar3,"aw86320",uVar4,"haptic_i2c_write_bits",iVar2);
LAB_001032e0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103360 duration_show */

void duration_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  char local_58 [32];
  long local_38;
  
  lVar2 = g_aw86320;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_58[0x18] = '\0';
  local_58[0x19] = '\0';
  local_58[0x1a] = '\0';
  local_58[0x1b] = '\0';
  local_58[0x1c] = '\0';
  local_58[0x1d] = '\0';
  local_58[8] = '\0';
  local_58[9] = '\0';
  local_58[10] = '\0';
  local_58[0xb] = '\0';
  local_58[0xc] = '\0';
  local_58[0xd] = '\0';
  local_58[0xe] = '\0';
  local_58[0xf] = '\0';
  local_58[0x10] = '\0';
  local_58[0x11] = '\0';
  local_58[0x12] = '\0';
  local_58[0x13] = '\0';
  local_58[0x14] = '\0';
  local_58[0x15] = '\0';
  local_58[0x16] = '\0';
  local_58[0x17] = '\0';
  local_58[0] = '\0';
  local_58[1] = '\0';
  local_58[2] = '\0';
  local_58[3] = '\0';
  local_58[4] = '\0';
  local_58[5] = '\0';
  local_58[6] = '\0';
  local_58[7] = '\0';
  if (*param_4 == 0) {
    _printk(&DAT_00103eda,"aw86320",0x367,"duration_show",*(undefined4 *)(g_aw86320 + 0xc));
    iVar3 = snprintf(local_58,0x1e,"%u\n",(ulong)*(uint *)(lVar2 + 0xc));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_58,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 00103444 duration_store */

ulong duration_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  uint uVar4;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = g_aw86320;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    uVar4 = local_4c;
    if (0x3fe < local_4c) {
      uVar4 = 0x3ff;
    }
    *(uint *)(lVar2 + 0xc) = uVar4;
    _printk(&DAT_00103851,"aw86320",0x386,"duration_store");
    if (0 < *(int *)(lVar2 + 0x10)) {
      aw86320_play_atsin0(*(undefined4 *)(lVar2 + 0xc),*(undefined4 *)(lVar2 + 8),
                          *(undefined2 *)(lVar2 + 0x14));
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00103550 ram_work_routine */

void ram_work_routine(long param_1)

{
  *(undefined1 *)(param_1 + -0x260) = 0;
  request_firmware_nowait
            (&__this_module,1,"micop_ram.bin",*(undefined8 *)(param_1 + -0x80),0xcc0,
             (undefined1 *)(param_1 + -0x260),ram_load);
  return;
}



/* 0010359c aw_i2c_suspend */

undefined8 aw_i2c_suspend(long param_1)

{
  aw86320_play_stop(*(undefined8 *)(param_1 + 0x98));
  return 0;
}



/* 001035c4 aw_i2c_resume */

undefined8 aw_i2c_resume(void)

{
  return 0;
}



/* 001035d0 init_module */

int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_0010421e,"aw86320","aw_i2c_init","V0.0.1");
  iVar1 = i2c_register_driver(&__this_module,0x100000);
  if (iVar1 != 0) {
    _printk(&DAT_00104426,"aw86320","aw_i2c_init");
  }
  return iVar1;
}



/* 00103658 cleanup_module */

void cleanup_module(void)

{
  i2c_del_driver(0x100000);
  return;
}



