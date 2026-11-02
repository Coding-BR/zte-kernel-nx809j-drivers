
void FUN_0010cf6c(void)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  code *pcVar4;
  int iVar5;
  undefined *puVar6;
  long lVar7;
  undefined8 uVar8;
  undefined4 in_w8;
  long lVar9;
  long lVar10;
  long unaff_x19;
  long unaff_x29;
  
  *(undefined4 *)(unaff_x19 + 0x48) = in_w8;
  *(undefined1 *)(unaff_x19 + 0x16) = 0;
  _printk(&UNK_00113360,"haptic_hv",0x206,"parse_chipid");
  i2c_w_bytes();
  usleep_range_state(3000,0xdac,2);
  puVar6 = PTR_aw8693x_check_qualify_00100438;
  if (*(int *)(unaff_x19 + 0x48) < 1) {
    _printk(&DAT_001124ce,"haptic_hv",0x21f,"ctrl_init");
    puVar6 = &DAT_00111d88;
    uVar8 = 0x220;
LAB_0010d0e4:
    _printk(puVar6,"haptic_hv",uVar8,"ctrl_init");
    puVar6 = &DAT_00113f78;
    uVar8 = 0x1144;
    iVar5 = -0x16;
LAB_0010d10c:
    _printk(puVar6,"haptic_hv",uVar8,"aw_i2c_probe",iVar5);
  }
  else {
    if (*(int *)(unaff_x19 + 0x48) != 0x9380) {
      puVar6 = &DAT_001121b0;
      uVar8 = 0x240;
      goto LAB_0010d0e4;
    }
    *(undefined ***)(unaff_x19 + 0x5c8) = &aw8693x_func_list;
    if (*(int *)(puVar6 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8229,0x10d094);
      (*pcVar4)();
    }
    iVar5 = (*(code *)puVar6)();
    if (iVar5 < 0) {
      puVar6 = &DAT_001122e4;
      uVar8 = 0x114b;
      goto LAB_0010d10c;
    }
    pcVar4 = *(code **)(*(long *)(unaff_x19 + 0x5c8) + 0xe0);
    if (*(int *)(pcVar4 + -4) != 0x2e77d32a) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10d168);
      (*pcVar4)();
    }
    (*pcVar4)();
    iVar5 = FUN_0010c76c();
    if (iVar5 != 0) {
      puVar6 = &DAT_00111d34;
      uVar8 = 0x1159;
      goto LAB_0010d10c;
    }
    FUN_0010c96c();
    FUN_0010cccc();
    lVar7 = alloc_workqueue(&DAT_00112812,0x6000a,1,"aw_haptic_vibrator_work_queue");
    *(long *)(unaff_x19 + 0x448) = lVar7;
    if (lVar7 == 0) {
      _printk(&DAT_0011251e,"haptic_hv",0x116d,"aw_i2c_probe");
      iVar5 = 0;
    }
    else {
      pcVar4 = *(code **)(*(long *)(unaff_x19 + 0x5c8) + 8);
      if (*(int *)(pcVar4 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10d24c);
        (*pcVar4)();
      }
      (*pcVar4)();
      FUN_00105c10();
      _printk(&DAT_00113330,"haptic_hv",0x1172,"aw_i2c_probe");
      lVar7 = __kmalloc_large_noprof(16000,0xcc0);
      *(long *)(unaff_x19 + 0x608) = lVar7;
      if (lVar7 == 0) {
        _dev_err();
      }
      else {
        lVar7 = get_free_pages_noprof(0xcc0,2);
        *(long *)(unaff_x19 + 0x610) = lVar7;
        if (lVar7 != 0) {
          puVar1 = (ulong *)((((lVar7 << 8) >> 8) + 0x8000000000U >> 6 & 0x3ffffffffffffc0) -
                            0x140000000);
          Hint_Prefetch(puVar1,2,0,1);
          do {
            cVar2 = '\x01';
            bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
            if (bVar3) {
              *puVar1 = *puVar1 | 0x4000;
              cVar2 = ExclusiveMonitorsStatus();
            }
          } while (cVar2 != '\0');
          lVar7 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar7 + 8) = lVar7 + 0x400;
          lVar9 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar7 + 0x408) = lVar9 + 0x800;
          lVar7 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar9 + 0x808) = lVar7 + 0xc00;
          lVar9 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar7 + 0xc08) = lVar9 + 0x1000;
          lVar7 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar9 + 0x1008) = lVar7 + 0x1400;
          lVar9 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar7 + 0x1408) = lVar9 + 0x1800;
          lVar7 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar9 + 0x1808) = lVar7 + 0x1c00;
          lVar9 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar7 + 0x1c08) = lVar9 + 0x2000;
          lVar7 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar9 + 0x2008) = lVar7 + 0x2400;
          lVar9 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar7 + 0x2408) = lVar9 + 0x2800;
          lVar7 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar9 + 0x2808) = lVar7 + 0x2c00;
          lVar9 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar7 + 0x2c08) = lVar9 + 0x3000;
          lVar7 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar9 + 0x3008) = lVar7 + 0x3400;
          lVar9 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar7 + 0x3408) = lVar9 + 0x3800;
          lVar7 = *(long *)(unaff_x19 + 0x610);
          *(long *)(lVar9 + 0x3808) = lVar7 + 0x3c00;
          *(undefined8 *)(lVar7 + 0x3c08) = *(undefined8 *)(unaff_x19 + 0x610);
          lVar7 = *(long *)(*(long *)(unaff_x19 + 0x610) + 8);
          *(undefined1 *)(*(long *)(unaff_x19 + 0x610) + 1) = 0;
          lVar9 = *(long *)(lVar7 + 8);
          *(undefined1 *)(lVar7 + 1) = 1;
          lVar10 = *(long *)(lVar9 + 8);
          *(undefined1 *)(lVar9 + 1) = 2;
          lVar7 = *(long *)(lVar10 + 8);
          *(undefined1 *)(lVar10 + 1) = 3;
          lVar9 = *(long *)(lVar7 + 8);
          *(undefined1 *)(lVar7 + 1) = 4;
          lVar7 = *(long *)(lVar9 + 8);
          *(undefined1 *)(lVar9 + 1) = 5;
          lVar9 = *(long *)(lVar7 + 8);
          *(undefined1 *)(lVar7 + 1) = 6;
          lVar7 = *(long *)(lVar9 + 8);
          *(undefined1 *)(lVar9 + 1) = 7;
          lVar9 = *(long *)(lVar7 + 8);
          *(undefined1 *)(lVar7 + 1) = 8;
          lVar7 = *(long *)(lVar9 + 8);
          *(undefined1 *)(lVar9 + 1) = 9;
          lVar9 = *(long *)(lVar7 + 8);
          *(undefined1 *)(lVar7 + 1) = 10;
          lVar7 = *(long *)(lVar9 + 8);
          *(undefined1 *)(lVar9 + 1) = 0xb;
          lVar9 = *(long *)(lVar7 + 8);
          *(undefined1 *)(lVar7 + 1) = 0xc;
          lVar7 = *(long *)(lVar9 + 8);
          *(undefined1 *)(lVar9 + 1) = 0xd;
          *(undefined1 *)(lVar7 + 1) = 0xe;
          *(undefined1 *)(*(long *)(lVar7 + 8) + 1) = 0xf;
          *(undefined2 *)(unaff_x19 + 0x618) = 1;
          *(undefined8 *)(unaff_x19 + 0x648) = 0xfffffffe00000;
          *(long *)(unaff_x19 + 0x650) = unaff_x19 + 0x650;
          *(long *)(unaff_x19 + 0x658) = unaff_x19 + 0x650;
          *(code **)(unaff_x19 + 0x660) = richtap_rtp_work;
          *(undefined8 *)(unaff_x19 + 0x668) = 0xfffffffe00000;
          *(long *)(unaff_x19 + 0x670) = unaff_x19 + 0x670;
          *(long *)(unaff_x19 + 0x678) = unaff_x19 + 0x670;
          *(code **)(unaff_x19 + 0x680) = richtap_stop_work;
          *(undefined8 *)(unaff_x19 + 0x628) = 0xfffffffe00000;
          *(long *)(unaff_x19 + 0x630) = unaff_x19 + 0x630;
          *(long *)(unaff_x19 + 0x638) = unaff_x19 + 0x630;
          *(code **)(unaff_x19 + 0x640) = tiktap_work_routine;
          *(undefined4 *)(unaff_x19 + 0x6bc) = 0;
          misc_register(richtap_misc);
          iVar5 = 0;
          g_aw_haptic = unaff_x19;
          goto LAB_0010c7d0;
        }
        _dev_err();
        kfree(*(undefined8 *)(unaff_x19 + 0x608));
      }
      gpio_to_desc(*(undefined4 *)(unaff_x19 + 0x50));
      gpiod_to_irq();
      devm_free_irq();
      iVar5 = 0;
    }
  }
  if (-1 < *(int *)(unaff_x19 + 0x50)) {
    gpio_free();
  }
  if (-1 < *(int *)(unaff_x19 + 0x5c)) {
    gpio_free();
  }
  devm_kfree();
LAB_0010c7d0:
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) == *(long *)(unaff_x29 + -8)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar5);
}

