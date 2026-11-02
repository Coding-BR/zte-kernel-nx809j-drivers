
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
  _printk(&DAT_00104e9c,"aw86320","aw_i2c_probe");
  pcVar8 = *(code **)(*(long *)(*(long *)(param_1 + 0x18) + 0x10) + 0x20);
  if (*(int *)(pcVar8 + -4) != 0x7cc2eb16) {
                    /* WARNING: Does not return */
    pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x101310);
    (*pcVar8)();
  }
  uVar4 = (*pcVar8)();
  if ((uVar4 & 1) == 0) {
    _printk(&DAT_00104348,"aw86320","aw_i2c_probe");
    iVar3 = -5;
    goto LAB_00101334;
  }
  lVar1 = param_1 + 0x20;
  lVar5 = devm_kmalloc(lVar1,0x378,0xdc0);
  if (lVar5 == 0) {
    iVar3 = -0xc;
    goto LAB_00101334;
  }
  *(long *)(lVar5 + 0x1e0) = lVar1;
  *(long *)(lVar5 + 0x1e8) = param_1;
  *(long *)(param_1 + 0xb8) = lVar5;
  iVar3 = of_get_named_gpio(uVar9,"power-en",0);
  *(int *)(lVar5 + 0x18) = iVar3;
  if (iVar3 < 0) {
    _printk(&DAT_00104185,"aw86320",0x269,"aw86320_parse_dt");
    *(undefined4 *)(lVar5 + 0x18) = 0xffffffea;
LAB_00101458:
    iVar3 = -0x205;
LAB_0010145c:
    _printk(&DAT_001046a4,"aw86320",0x44a,"aw_i2c_probe",iVar3);
    iVar2 = *(int *)(lVar5 + 0x18);
  }
  else {
    iVar3 = gpio_request(iVar3,"awp86320_power_en");
    _printk(&DAT_001041bb,"aw86320",0x26e,"aw86320_parse_dt",*(undefined4 *)(lVar5 + 0x18),iVar3);
    if (iVar3 < 0) {
      _printk(&DAT_001042ae,"aw86320",0x270,"aw86320_parse_dt",*(undefined4 *)(lVar5 + 0x18),iVar3);
      *(undefined4 *)(lVar5 + 0x18) = 0xffffffea;
      goto LAB_0010145c;
    }
    _printk(&DAT_0010456d,"aw86320",0x274,"aw86320_parse_dt");
    uVar6 = gpio_to_desc(*(undefined4 *)(lVar5 + 0x18));
    gpiod_direction_output_raw(uVar6,1);
    iVar3 = of_get_named_gpio(uVar9,"irq-gpio",0);
    *(int *)(lVar5 + 4) = iVar3;
    if (iVar3 < 0) {
      _printk(&DAT_001048be,"aw86320",0x27c,"aw86320_parse_dt",iVar3);
      *(undefined4 *)(lVar5 + 4) = 0xffffffea;
      goto LAB_00101458;
    }
    _printk(&DAT_00104d45,"aw86320",0x280,"aw86320_parse_dt",iVar3);
    *(undefined8 *)(lVar5 + 8) = 0x3ff00000050;
    *(undefined2 *)(lVar5 + 0x14) = 0x1c2;
    _printk(&DAT_00104a94,"aw86320",0x286,"aw86320_parse_dt",0x3ff,0x50,0x1c2);
    lVar7 = of_find_property(uVar9,"is_fifo_method_play",0);
    *(bool *)(lVar5 + 0x345) = lVar7 != 0;
    _printk(&DAT_00104ead,"aw86320",0x289,"aw86320_parse_dt");
    lVar7 = of_find_property(uVar9,"is_reg_method_play",0);
    *(bool *)(lVar5 + 0x346) = lVar7 != 0;
    _printk(&DAT_00104ace,"aw86320",0x28c,"aw86320_parse_dt");
    iVar3 = of_property_read_variable_u32_array(uVar9,"atsin0_polor",lVar5 + 0x348,1,0);
    if (iVar3 < 0) {
      _printk(&DAT_00104e3b,"aw86320",0x290,"aw86320_parse_dt");
    }
    iVar3 = of_property_read_variable_u32_array(uVar9,"atsin0_phase",lVar5 + 0x34c,1,0);
    if (iVar3 < 0) {
      _printk(&DAT_001048f1,"aw86320",0x293,"aw86320_parse_dt");
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
      _printk(&DAT_001044c7,"aw86320",0xcd,"read_chipid",iVar3);
      iVar3 = -5;
      _printk(&DAT_00104d74,"aw86320",0xde,"parse_chipid",0xfffffffb);
    }
    if (local_4c[0] == 0x6027) {
      *(undefined2 *)(lVar5 + 2) = 0x6027;
      g_chip_id = 0x30323336387761;
      _printk(&DAT_001040fb,"aw86320",0xe3,"parse_chipid");
      if (-1 < iVar3) {
        g_aw86320 = lVar5;
        create_pump_proc_entry();
        __mutex_init(lVar5 + 0x1f0,"&aw_haptic->lock",&aw_i2c_probe___key);
        aw86320_misc_para_init(lVar5);
        haptic_i2c_write_bits(lVar5,1,0xffffffcf,0x10);
        aw86320_play_mode(lVar5,0);
        aw86320_interrupt_setup(lVar5);
        ram_work_init(lVar5);
        _printk(&DAT_001049ba,"aw86320",0x46c,"aw_i2c_probe");
        enableMicroPump(lVar5,0);
        iVar3 = 0;
        goto LAB_00101334;
      }
    }
    else {
      _printk(&DAT_00104493,"aw86320",0xe6,"parse_chipid");
      usleep_range_state(2000,0x9c4,2);
      iVar3 = -0x16;
    }
    _printk(&DAT_00104467,"aw86320",0x45a,"aw_i2c_probe",iVar3);
    uVar9 = gpio_to_desc(*(undefined4 *)(lVar5 + 0x18));
    gpiod_direction_output_raw(uVar9,0);
    iVar2 = *(int *)(lVar5 + 0x18);
  }
  if (-1 < iVar2) {
    gpio_free();
    *(undefined4 *)(lVar5 + 0x18) = 0xffffffea;
  }
LAB_00101334:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar3);
  }
  return;
}

