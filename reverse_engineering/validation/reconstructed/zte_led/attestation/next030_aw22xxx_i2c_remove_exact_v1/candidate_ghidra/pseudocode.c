/* 00101654 aw22xxx_fw_loaded */

void aw22xxx_fw_loaded(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0010742d,"aw22xxx_fw_loaded");
}



/* 00102290 aw22xxx_init_cfg_update_array */

void aw22xxx_init_cfg_update_array(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0010735e,"aw22xxx_init_cfg_update_array",0x1ca);
}



/* 001023e4 aw22xxx_set_breath_data */

void aw22xxx_set_breath_data(undefined8 param_1,long param_2)

{
  bool bVar1;
  ulong uVar2;
  
  DAT_0010006f = *(undefined1 *)(param_2 + 8);
  uVar2 = 0;
  DAT_00100075 = *(undefined1 *)(param_2 + 9);
  DAT_0010007b = *(undefined1 *)(param_2 + 10);
  DAT_00100081 = *(undefined1 *)(param_2 + 0xb);
  DAT_00100087 = *(undefined1 *)(param_2 + 0xc);
  DAT_0010008d = *(undefined1 *)(param_2 + 0xd);
  DAT_00100093 = *(undefined1 *)(param_2 + 0xe);
  DAT_00100099 = *(undefined1 *)(param_2 + 0xf);
  DAT_0010009f = *(undefined1 *)(param_2 + 0x10);
  DAT_001000a5 = *(undefined1 *)(param_2 + 0x11);
  DAT_001000ab = *(undefined1 *)(param_2 + 0x12);
  DAT_001000b1 = *(undefined1 *)(param_2 + 0x13);
  DAT_001000b7 = *(undefined1 *)(param_2 + 0x14);
  DAT_001000c9 = *(undefined1 *)(param_2 + 0x15);
  DAT_001000db = *(undefined1 *)(param_2 + 0x16);
  DAT_001000ed = *(undefined1 *)(param_2 + 0x17);
  duration = *(undefined1 *)(param_2 + 0x18);
  DAT_001000bd = DAT_001000b7;
  DAT_001000c3 = DAT_001000b7;
  DAT_001000cf = DAT_001000c9;
  DAT_001000d5 = DAT_001000c9;
  DAT_001000e1 = DAT_001000db;
  DAT_001000e7 = DAT_001000db;
  DAT_001000f3 = DAT_001000ed;
  DAT_001000f9 = DAT_001000ed;
  do {
    aw22xxx_i2c_write(param_1,(&aw22xxx_blink_cfg)[uVar2],(&DAT_00100069)[uVar2]);
    bVar1 = uVar2 < 0x92;
    uVar2 = uVar2 + 2;
  } while (bVar1);
  return;
}



/* 001024f4 aw22xxx_play */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_play(long param_1)

{
  code *pcVar1;
  
  aw22xxx_init_cfg_update_array();
  aw22xxx_set_breath_data(param_1,&user_para_data);
  while( true ) {
    msleep(duration / 0x1e);
    if (read_idx == write_idx) {
      kthread_status = 0;
      read_idx = 0;
      write_idx = 0;
      queue_work_on(0x20,_system_wq,param_1 + 0x230);
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001079ee,"aw22xxx_play");
    }
    if ((kthread_status & 1) == 0) break;
    if (25000 < (uint)(read_idx * 0x19)) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x102638);
      (*pcVar1)();
    }
    aw22xxx_set_breath_data(param_1,(long)&user_para_data + (ulong)(uint)(read_idx * 0x19));
    read_idx = read_idx + 1;
  }
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,5,0);
  aw22xxx_i2c_write(param_1,4,1);
  aw22xxx_i2c_write(param_1,2,0);
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00107643,"aw22xxx_play");
}



/* 0010263c aw22xxx_led_imax_cfg */

void aw22xxx_led_imax_cfg(long param_1)

{
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,0xb,7);
  *(undefined4 *)(param_1 + 0x2f0) = 7;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00107244,"aw22xxx_led_imax_cfg",
          *(undefined8 *)(aw22xxx_cfg_name + (ulong)*(uint *)(param_1 + 0x300) * 8),7);
}



/* 001026ac aw22xxx_i2c_write */

void aw22xxx_i2c_write(undefined8 *param_1,undefined1 param_2,undefined1 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 local_3c;
  undefined1 local_3b;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = param_2;
  local_3b = param_3;
  iVar2 = i2c_transfer_buffer_flags(*param_1,&local_3c,2,0);
  if (iVar2 < 0) {
    gpio_to_desc(*(undefined4 *)(param_1 + 0x5c));
    uVar3 = gpiod_get_raw_value();
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00106dd3,"aw22xxx_i2c_write",0,iVar2,uVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001027dc aw22xxx_i2c_read */

void aw22xxx_i2c_read(undefined8 *param_1,undefined1 param_2,undefined1 *param_3)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined1 local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = param_2;
  iVar2 = i2c_transfer_buffer_flags(*param_1,local_2c,1,0);
  if (iVar2 < 0) {
    puVar3 = &DAT_00107cb8;
  }
  else {
    iVar2 = i2c_transfer_buffer_flags(*param_1,param_3,1,1);
    if (-1 < iVar2) {
      lVar1 = sp_el0;
      if (*(long *)(lVar1 + 0x710) == local_28) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    puVar3 = &DAT_00107267;
    *param_3 = (char)iVar2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"aw22xxx_i2c_read",iVar2);
}



/* 00102918 aw22xxx_i2c_probe */

void aw22xxx_i2c_probe(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00107a0f,"aw22xxx_i2c_probe",0x9d9);
}



/* 00102c04 FUN_00102c04 */

undefined8 FUN_00102c04(void)

{
  _dev_err();
  _dev_err();
  devm_kfree();
  return 0xffffffea;
}



/* 00102c30 FUN_00102c30 */

undefined4 FUN_00102c30(void)

{
  undefined4 unaff_w23;
  
  devm_kfree();
  return unaff_w23;
}



/* 00102fb4 aw22xxx_i2c_remove */

void aw22xxx_i2c_remove(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0010742d,"aw22xxx_i2c_remove");
}



/* 0010307c aw22xxx_hw_reset */

void aw22xxx_hw_reset(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_hw_reset");
}



/* 00103124 aw22xxx_read_chipid */

void aw22xxx_read_chipid(long param_1)

{
  long lVar1;
  undefined *puVar2;
  undefined1 auVar3 [16];
  char local_2c [4];
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c[0] = '\0';
  aw22xxx_i2c_write(param_1,0xff,0);
  aw22xxx_i2c_write(param_1,1,0x55);
  usleep_range_state(2000,3000,2);
  auVar3 = aw22xxx_i2c_read(param_1,1,local_2c);
  if (-1 < auVar3._0_4_) {
    if (local_2c[0] != 'v') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00108c33,auVar3._8_8_,auVar3._0_8_ & 0xffffffff);
    }
    aw22xxx_i2c_read(param_1,0,local_2c);
    if (local_2c[0] == '\'') {
      *(undefined1 *)(param_1 + 0x2ed) = 2;
      puVar2 = &DAT_00109164;
      g_chip_id = 0x37323132327761;
    }
    else {
      if (local_2c[0] != '\x18') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00108ac1);
      }
      puVar2 = &DAT_00108d64;
      *(undefined1 *)(param_1 + 0x2ed) = 1;
      g_chip_id = 0x38313132327761;
    }
                    /* WARNING: Subroutine does not return */
    _printk(puVar2);
  }
  _dev_err(*(undefined8 *)(param_1 + 8),"aw22xxx: failed to read AW22XXX_REG_ID: %d\n");
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0xfffffffb);
}



/* 001032d8 aw22xxx_interrupt_setup */

void aw22xxx_interrupt_setup(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_interrupt_setup");
}



/* 001033b8 aw22xxx_irq */

void aw22xxx_irq(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001090da,"aw22xxx_irq");
}



/* 001034b4 aw22xxx_irq_v15 */

void aw22xxx_irq_v15(undefined8 param_1,undefined8 param_2)

{
  long lVar1;
  undefined1 local_2c [4];
  undefined8 local_28;
  
  lVar1 = sp_el0;
  local_28 = *(undefined8 *)(lVar1 + 0x710);
  local_2c[0] = 0;
  aw22xxx_i2c_read(param_2,10,local_2c);
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00108c58,"aw22xxx_irq_v15",local_2c[0]);
}



/* 001036c0 aw22xxx_led_init */

void aw22xxx_led_init(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_led_init");
}



/* 00103840 aw22xxx_fw_init */

void aw22xxx_fw_init(long param_1)

{
  bool bVar1;
  
  hrtimer_init(param_1 + 0x270,1,1);
  *(code **)(param_1 + 0x298) = aw22xxx_fw_timer_func;
  *(undefined8 *)(param_1 + 0x210) = 0xfffffffe00000;
  *(long *)(param_1 + 0x218) = param_1 + 0x218;
  *(long *)(param_1 + 0x220) = param_1 + 0x218;
  *(code **)(param_1 + 0x228) = aw22xxx_fw_work_routine;
  *(undefined8 *)(param_1 + 0x230) = 0xfffffffe00000;
  *(long *)(param_1 + 0x238) = param_1 + 0x238;
  *(long *)(param_1 + 0x240) = param_1 + 0x238;
  bVar1 = g_ver_var == 0xb;
  *(code **)(param_1 + 0x248) = aw22xxx_cfg_work_routine;
  if (bVar1) {
    *(undefined8 *)(param_1 + 0x250) = 0xfffffffe00000;
    *(long *)(param_1 + 600) = param_1 + 600;
    *(long *)(param_1 + 0x260) = param_1 + 600;
    *(code **)(param_1 + 0x268) = aw22xxx_recover_work_routine;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001085e4,"aw22xxx_fw_init");
}



/* 00103918 aw22xxx_fw_timer_func */

void aw22xxx_fw_timer_func(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_fw_timer_func");
}



/* 0010396c aw22xxx_fw_work_routine */

void aw22xxx_fw_work_routine(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_fw_work_routine");
}



/* 001039d0 FUN_001039d0 */

void FUN_001039d0(void)

{
  undefined1 in_w9;
  long unaff_x19;
  
  *(undefined1 *)(unaff_x19 + 0xdf) = in_w9;
  request_firmware_nowait();
  return;
}



/* 001039f0 aw22xxx_cfg_work_routine */

void aw22xxx_cfg_work_routine(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_cfg_work_routine");
}



/* 00103ab4 aw22xxx_recover_work_routine */

void aw22xxx_recover_work_routine(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_recover_work_routine");
}



/* 00103ca0 aw22xxx_alloc_name_array */

void aw22xxx_alloc_name_array(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_alloc_name_array");
}



/* 00103f1c aw22xxx_parse_led_cdev */

void aw22xxx_parse_led_cdev(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_parse_led_cdev");
}



/* 00104188 aw22xxx_brightness_work */

void aw22xxx_brightness_work(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_brightness_work");
}



/* 001043c0 aw22xxx_task_work */

void aw22xxx_task_work(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_task_work");
}



/* 00104604 aw22xxx_set_brightness */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_set_brightness(long param_1,undefined4 param_2)

{
  *(undefined4 *)(param_1 + 8) = param_2;
  queue_work_on(0x20,_system_wq,param_1 + 0x1c0);
  return;
}



/* 0010463c aw22xxx_create_proc_entry */

void aw22xxx_create_proc_entry(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_create_proc_entry");
}



/* 00104c20 aw22xxx_cfg_show */

size_t aw22xxx_cfg_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  size_t sVar2;
  
  uVar1 = *(uint *)(*(long *)(param_1 + 0x98) + 0x2f0);
  if (uVar1 < 0xb) {
    uVar1 = snprintf(param_3,0x1000,"current cfg = %s\n",
                     *(undefined8 *)(aw22xxx_cfg_name + (ulong)uVar1 * 8));
    if (uVar1 < 0x1000) {
      sVar2 = strlen(param_3);
    }
    else {
      sVar2 = 0xfffffffffffffff2;
    }
    return sVar2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0010855a);
}



/* 00104c9c aw22xxx_cfg_store */

void aw22xxx_cfg_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%u",&local_2c);
  if (iVar1 == 1) {
    *(byte *)(lVar2 + 0x2f4) = (byte)local_2c & 0xf;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0010881f,"aw22xxx_cfg_store");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00108a0c,"aw22xxx_cfg_store");
}



/* 00104d58 aw22xxx_effect_show */

long aw22xxx_effect_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"effect = 0x%02x\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f0));
  return (long)iVar1;
}



/* 00104d94 aw22xxx_effect_store */

void aw22xxx_effect_store(undefined8 param_1,undefined8 param_2,char *param_3)

{
  long lVar1;
  int iVar2;
  undefined4 local_4c;
  undefined8 local_48;
  
  lVar1 = sp_el0;
  local_48 = *(undefined8 *)(lVar1 + 0x710);
  local_4c = 0;
  iVar2 = sscanf(param_3,"%x",&local_4c);
  if (iVar2 == 1) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001091fe,"aw22xxx_effect_store",local_4c);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00108a0c,"aw22xxx_effect_store");
}



/* 00105020 aw22xxx_get_fwname */

void aw22xxx_get_fwname(ulong param_1)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00108c75,"aw22xxx_get_fwname",param_1 >> 0x18 & 0xff);
}



/* 0010519c aw22xxx_cfg_update_wait_from_dyn_name */

void aw22xxx_cfg_update_wait_from_dyn_name(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_cfg_update_wait_from_dyn_name");
}



/* 001053c0 aw22xxx_fw_show */

long aw22xxx_fw_show(undefined8 param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"firmware name = %s\n",&aw22xxx_fw_name);
  return (long)iVar1;
}



/* 001053fc aw22xxx_fw_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_fw_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  int local_2c;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if ((iVar1 == 1) && (*(char *)(lVar2 + 0x2de) = (char)local_2c, local_2c == 1)) {
    queue_work_on(0x20,_system_wq,lVar2 + 0x200);
  }
  g_init_flg = 0;
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001054a8 aw22xxx_hwen_show */

long aw22xxx_hwen_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  ulong uVar2;
  
  gpio_to_desc(*(undefined4 *)(*(long *)(param_1 + 0x98) + 0x2d0));
  uVar2 = gpiod_get_raw_value();
  iVar1 = snprintf(param_3,0x1000,"hwen=%d\n",uVar2 & 0xffffffff);
  return (long)iVar1;
}



/* 001054fc aw22xxx_hwen_store */

undefined8 aw22xxx_hwen_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

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
    if (local_2c < 2) {
      if (local_2c != 1) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00108d07);
      }
      aw22xxx_hw_reset(lVar2 + -0x10);
      lVar2 = sp_el0;
      if (*(long *)(lVar2 + 0x710) == local_28) {
        return param_4;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001094b7,"aw22xxx_hwen_store");
}



/* 001055fc aw22xxx_imax_show */

long aw22xxx_imax_show(long param_1,undefined8 param_2,char *param_3)

{
  uint uVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(param_1 + 0x98);
  iVar2 = snprintf(param_3,0x1000,"imax[%x] = %s\n",0,"AW22XXX_IMAX_2mA");
  lVar4 = (long)iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",1,"AW22XXX_IMAX_3mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",2,"AW22XXX_IMAX_4mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",3,"AW22XXX_IMAX_6mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",4,"AW22XXX_IMAX_9mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",5,"AW22XXX_IMAX_10mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",6,"AW22XXX_IMAX_15mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",7,"AW22XXX_IMAX_20mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",8,"AW22XXX_IMAX_30mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",9,"AW22XXX_IMAX_40mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",10,"AW22XXX_IMAX_45mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",0xb,"AW22XXX_IMAX_60mA");
  lVar4 = lVar4 + iVar2;
  iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"imax[%x] = %s\n",0xc,"AW22XXX_IMAX_75mA");
  uVar1 = *(uint *)(lVar3 + 0x2e0);
  lVar4 = lVar4 + iVar2;
  if (uVar1 < 0xd) {
    iVar2 = snprintf(param_3 + lVar4,0x1000 - lVar4,"current id = 0x%02x, imax = %s\n",(ulong)uVar1,
                     *(undefined8 *)(aw22xxx_imax_name + (ulong)uVar1 * 8));
    lVar4 = lVar4 + iVar2;
  }
  return lVar4;
}



/* 0010581c aw22xxx_imax_store */

undefined8 aw22xxx_imax_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  uint uVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  uint local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  lVar4 = *(long *)(param_1 + 0x98);
  local_3c = 0;
  iVar2 = sscanf(param_3,"%x",&local_3c);
  uVar1 = local_3c;
  if ((iVar2 == 1) && (local_3c < 0xd)) {
    lVar3 = lVar4 + -0x10;
    *(uint *)(lVar4 + 0x2e0) = local_3c;
    aw22xxx_i2c_write(lVar3,0xff,0);
    aw22xxx_i2c_write(lVar3,0xb,(&aw22xxx_imax_code)[uVar1]);
    lVar4 = sp_el0;
    if (*(long *)(lVar4 + 0x710) == local_38) {
      return param_4;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0010862d,"aw22xxx_imax_store");
}



/* 001058fc aw22xxx_para_show */

long aw22xxx_para_show(undefined8 param_1,undefined8 param_2,long param_3)

{
  code *pcVar1;
  int iVar2;
  long lVar3;
  ulong uVar4;
  
  if (write_idx == 0) {
    lVar3 = 0;
  }
  else {
    if (write_idx * 0x19 < 1) {
      lVar3 = 0;
    }
    else {
      uVar4 = 0;
      lVar3 = 0;
      do {
        if ((uVar4 != 0) && ((int)uVar4 + (int)((uVar4 & 0xffffffff) / 0x19) * -0x19 == 0)) {
          iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
          lVar3 = lVar3 + iVar2;
        }
        if (uVar4 == 25000) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x105a1c);
          (*pcVar1)();
        }
        iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"%d  ",
                         (ulong)(uint)(&user_para_data)[uVar4]);
        uVar4 = uVar4 + 1;
        lVar3 = lVar3 + iVar2;
      } while ((long)uVar4 < (long)(write_idx * 0x19));
    }
    iVar2 = snprintf((char *)(param_3 + lVar3),0x1000 - lVar3,"\r\n");
    lVar3 = lVar3 + iVar2;
  }
  return lVar3;
}



/* 00105a20 aw22xxx_para_store */

void aw22xxx_para_store(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"aw22xxx_para_store");
}



/* 00105c98 aw22xxx_multi_breath_pattern_show */

long aw22xxx_multi_breath_pattern_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000," pattern_status = %d\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2f8));
  return (long)iVar1;
}



/* 00105cd4 aw22xxx_multi_breath_pattern_store */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

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
      if (_kthread_status == 1) {
        _kthread_status = 0;
      }
      aw22xxx_i2c_write(lVar2,0xff,0);
      aw22xxx_i2c_write(lVar2,5,0);
      aw22xxx_i2c_write(lVar2,4,1);
      aw22xxx_i2c_write(lVar2,2,0);
    }
    else if (((local_3c == 1) && (read_idx = 0, _kthread_status == 0)) && (write_idx != 0)) {
      cfg_update_kthread = kthread_create_on_node(aw22xxx_play,lVar2,0xffffffff,"aw22xxx_play");
      if (0xfffffffffffff000 < cfg_update_kthread) {
        _kthread_status = 0;
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00109397);
      }
      wake_up_process();
      _kthread_status = 1;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001087b0);
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



/* 00105e5c aw22xxx_reg_show */

long aw22xxx_reg_show(long param_1,undefined8 param_2,long param_3)

{
  int iVar1;
  size_t sVar2;
  long lVar3;
  long lVar4;
  ulong uVar5;
  ulong __maxlen;
  byte local_60 [4];
  char local_5c [4];
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_5c[0] = '\0';
  local_60[0] = 0;
  lVar4 = *(long *)(param_1 + 0x98) + -0x10;
  aw22xxx_i2c_read(lVar4,0xff,local_5c);
  uVar5 = 0;
  lVar3 = 0;
  do {
    if ((local_5c[0] != '\0') || (((&aw22xxx_reg_access)[uVar5] & 1) != 0)) {
      aw22xxx_i2c_read(lVar4,uVar5 & 0xffffffff,local_60);
      __maxlen = 0x1000 - lVar3;
      if (__maxlen < 0x21) goto LAB_00105f34;
      iVar1 = snprintf((char *)(param_3 + lVar3),__maxlen,"reg:0x%02x=0x%02x \n",uVar5 & 0xffffffff,
                       (ulong)local_60[0]);
      if (__maxlen <= (ulong)(long)iVar1) {
        lVar3 = -0xe;
        goto LAB_00105f34;
      }
      sVar2 = strlen((char *)(param_3 + lVar3));
      lVar3 = sVar2 + lVar3;
    }
    uVar5 = uVar5 + 1;
    if (uVar5 == 0x100) {
LAB_00105f34:
      lVar4 = sp_el0;
      if (*(long *)(lVar4 + 0x710) == local_58) {
        return lVar3;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  } while( true );
}



/* 00105f74 aw22xxx_reg_store */

undefined8 aw22xxx_reg_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",(long)&local_30 + 4,&local_30);
  if ((iVar1 == 2) && (local_30._4_4_ < 0x100)) {
    aw22xxx_i2c_write(lVar2 + -0x10,local_30._4_4_,local_30 & 0xffffffff);
    lVar2 = sp_el0;
    if (*(long *)(lVar2 + 0x710) == local_28) {
      return param_4;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001090b2,"aw22xxx_reg_store");
}



/* 0010602c aw22xxx_rgb_show */

long aw22xxx_rgb_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  long lVar3;
  
  lVar2 = *(long *)(param_1 + 0x98);
  iVar1 = snprintf(param_3,0x1000,"rgb[%d] = 0x%06x\n",0,(ulong)*(uint *)(lVar2 + 0x2fc));
  lVar3 = (long)iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",1,
                   (ulong)*(uint *)(lVar2 + 0x300));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",2,
                   (ulong)*(uint *)(lVar2 + 0x304));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",3,
                   (ulong)*(uint *)(lVar2 + 0x308));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",4,
                   (ulong)*(uint *)(lVar2 + 0x30c));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",5,
                   (ulong)*(uint *)(lVar2 + 0x310));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",6,
                   (ulong)*(uint *)(lVar2 + 0x314));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",7,
                   (ulong)*(uint *)(lVar2 + 0x318));
  lVar3 = lVar3 + iVar1;
  iVar1 = snprintf(param_3 + lVar3,0x1000 - lVar3,"rgb[%d] = 0x%06x\n",8,
                   (ulong)*(uint *)(lVar2 + 0x31c));
  return lVar3 + iVar1;
}



/* 00106170 aw22xxx_rgb_store */

void aw22xxx_rgb_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_30 = 0;
  iVar1 = sscanf(param_3,"%x %x",(long)&local_30 + 4,&local_30);
  if ((iVar1 == 2) && (local_30._4_4_ < 9)) {
    *(undefined4 *)(lVar2 + (ulong)local_30._4_4_ * 4 + 0x2fc) = (undefined4)local_30;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001085a2);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0xffffffffffffffea);
}



/* 00106220 aw22xxx_task0_show */

long aw22xxx_task0_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task0 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ec));
  return (long)iVar1;
}



/* 0010625c aw22xxx_task0_store */

void aw22xxx_task0_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ec) = (char)local_2c;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001085ca,"aw22xxx_task0_store");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00108a0c,"aw22xxx_task0_store");
}



/* 00106328 aw22xxx_task1_show */

long aw22xxx_task1_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task1 = 0x%02x\n",
                   (ulong)*(byte *)(*(long *)(param_1 + 0x98) + 0x2ed));
  return (long)iVar1;
}



/* 00106364 aw22xxx_task1_store */

void aw22xxx_task1_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%x",&local_2c);
  if (iVar1 == 1) {
    *(char *)(lVar2 + 0x2ed) = (char)local_2c;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00108c19,"aw22xxx_task1_store");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00108a0c,"aw22xxx_task1_store");
}



/* 0010641c aw22xxx_task_irq_show */

long aw22xxx_task_irq_show(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  
  iVar1 = snprintf(param_3,0x1000,"task_irq = %u\n",
                   (ulong)*(uint *)(*(long *)(param_1 + 0x98) + 0x2e8));
  return (long)iVar1;
}



/* 00106458 aw22xxx_task_irq_store */

void aw22xxx_task_irq_store(long param_1,undefined8 param_2,char *param_3)

{
  int iVar1;
  long lVar2;
  undefined4 local_2c;
  undefined8 local_28;
  
  lVar2 = sp_el0;
  local_28 = *(undefined8 *)(lVar2 + 0x710);
  lVar2 = *(long *)(param_1 + 0x98);
  local_2c = 0;
  iVar1 = sscanf(param_3,"%u",&local_2c);
  if (iVar1 == 1) {
    *(undefined4 *)(lVar2 + 0x2e8) = local_2c;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0010951f,"aw22xxx_task_irq_store");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00108a0c,"aw22xxx_task_irq_store");
}



/* 00106510 get_aw22xxx_id */

undefined8 get_aw22xxx_id(void)

{
  long *in_x3;
  
  if (*in_x3 != 0) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001091d3,"get_aw22xxx_id");
}



/* 0010fa5c init_module */

void init_module(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00109578);
}



/* 0010fad4 cleanup_module */

void cleanup_module(void)

{
  i2c_del_driver(aw22xxx_i2c_driver);
  return;
}



