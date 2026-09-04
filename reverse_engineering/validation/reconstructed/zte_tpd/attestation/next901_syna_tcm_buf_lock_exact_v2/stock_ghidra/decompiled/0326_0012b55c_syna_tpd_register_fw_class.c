
void syna_tpd_register_fw_class(long param_1)

{
  code *pcVar1;
  bool bVar2;
  long lVar3;
  int iVar4;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  _printk(&DAT_00139de3,"syna_tpd_register_fw_class");
  lVar3 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"syna_charger_detect");
  *(long *)(param_1 + 0x688) = lVar3;
  if (lVar3 == 0) {
    _printk(&DAT_0013e3be,"syna_tpd_register_fw_class");
  }
  else {
    local_30 = 0;
    if ((syna_get_charger_status_batt_psy == (long *)0x0) &&
       (syna_get_charger_status_batt_psy = (long *)power_supply_get_by_name("battery"),
       syna_get_charger_status_batt_psy == (long *)0x0)) {
      iVar4 = 0;
    }
    else {
      if (*(int *)(*(code **)(*syna_get_charger_status_batt_psy + 0x28) + -4) != -0x1766f32d) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12b628);
        (*pcVar1)();
      }
      (**(code **)(*syna_get_charger_status_batt_psy + 0x28))
                (syna_get_charger_status_batt_psy,0,&local_30);
      iVar4 = (int)local_30;
    }
    bVar2 = iVar4 == 4 || iVar4 == 1;
    _printk(&DAT_0013b3ce,"syna_get_charger_status",bVar2);
    syna_usb_detect_flag = bVar2;
    *(undefined8 *)(param_1 + 0x620) = 0xfffffffe00000;
    *(long *)(param_1 + 0x628) = param_1 + 0x628;
    *(long *)(param_1 + 0x630) = param_1 + 0x628;
    *(code **)(param_1 + 0x638) = syna_work_charger_detect_work;
    init_timer_key(param_1 + 0x640,&delayed_work_timer_fn,0x200000,0,0);
    _printk(&DAT_00137f73,"syna_init_charger_notifier");
    *(code **)(param_1 + 0x690) = syna_charger_notify_call;
    power_supply_reg_notifier(param_1 + 0x690);
  }
  lVar3 = tpd_cdev;
  *(code **)(tpd_cdev + 0xe20) = tpd_init_tpinfo;
  *(code **)(lVar3 + 0xe28) = tpd_get_wakegesture;
  *(code **)(lVar3 + 0xe30) = tpd_enable_wakegesture;
  *(code **)(lVar3 + 0xed8) = tpd_get_singlegamegesture;
  *(code **)(lVar3 + 0xee0) = tpd_set_singlegamegesture;
  *(code **)(lVar3 + 0xec8) = tpd_get_singleaodgesture;
  *(code **)(lVar3 + 0xed0) = tpd_set_singleaodgesture;
  *(code **)(lVar3 + 0xeb8) = tpd_get_singlefpgesture;
  *(code **)(lVar3 + 0xec0) = tpd_set_singlefpgesture;
  *(code **)(lVar3 + 0xef8) = tpd_set_one_key;
  *(code **)(lVar3 + 0xef0) = tpd_get_one_key;
  *(code **)(lVar3 + 4000) = tpd_test_cmd_store;
  *(code **)(lVar3 + 0xf98) = tpd_test_cmd_show;
  *(code **)(lVar3 + 0xf18) = tpd_get_tp_report_rate;
  *(code **)(lVar3 + 0xf10) = tpd_set_tp_report_rate;
  *(code **)(lVar3 + 0xf60) = tpd_get_sensibility_level;
  *(code **)(lVar3 + 0xf68) = tpd_set_sensibility_level;
  *(code **)(lVar3 + 0xf28) = tpd_get_follow_hand_level;
  *(code **)(lVar3 + 0xf20) = tpd_set_follow_hand_level;
  *(code **)(lVar3 + 0xf38) = tpd_get_stability_level;
  *(code **)(lVar3 + 0xf30) = tpd_set_stability_level;
  *(code **)(lVar3 + 0xe88) = tpd_get_rotation_limit_level;
  *(code **)(lVar3 + 0xe80) = tpd_set_rotation_limit_level;
  *(code **)(lVar3 + 0xe90) = tpd_set_display_rotation;
  *(code **)(lVar3 + 0xf00) = tpd_get_play_game;
  *(code **)(lVar3 + 0xf08) = tpd_set_play_game;
  *(code **)(lVar3 + 0xf50) = tpd_set_game_partition;
  *(code **)(lVar3 + 0x1000) = tpd_get_frame_data;
  *(code **)(lVar3 + 0xff8) = tpd_set_frame_data;
  *(code **)(lVar3 + 0xfa8) = tpd_get_palm_mode;
  *(code **)(lVar3 + 0xfb0) = tpd_set_palm_mode;
  *(code **)(lVar3 + 0xff0) = syna_ghost_check_reset;
  *(code **)(lVar3 + 0xfd0) = tpd_set_fake_sleep;
  *(code **)(lVar3 + 0xfc8) = tpd_get_fake_sleep;
  *(code **)(lVar3 + 0xfe0) = tpd_set_screen_off_awake;
  *(long *)(lVar3 + 0xdb8) = param_1;
  *(code **)(lVar3 + 0xfd8) = tpd_get_screen_off_awake;
  *(short *)(lVar3 + 0x442) = (short)*(undefined4 *)(param_1 + 0x3b8);
  *(short *)(lVar3 + 0x444) = (short)*(undefined4 *)(param_1 + 0x3bc);
  _printk(&DAT_0013bc56,"syna_tpd_register_fw_class");
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

