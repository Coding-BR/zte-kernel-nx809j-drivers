
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_touch_probe(long param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  uint uVar6;
  undefined1 uVar7;
  uint local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  _printk(&DAT_00132b38,"zte_touch_probe",0xb2a);
  lVar2 = devm_kmalloc(param_1 + 0x10,0x1008,0xdc0);
  if (lVar2 == 0) {
    _printk(&DAT_0013d819);
  }
  else {
    *(long *)(lVar2 + 0xdc8) = param_1;
    tpd_cdev = lVar2;
    *(long *)(param_1 + 0xa8) = lVar2;
    zte_touch_pdev_register();
    uVar5 = *(undefined8 *)(param_1 + 0x2f8);
    local_3c = 0;
    lVar3 = of_find_property(uVar5,"zte,tp_algo",0);
    *(bool *)(lVar2 + 0x1b) = lVar3 != 0;
    if (lVar3 != 0) {
      _printk(&DAT_00133d1a);
    }
    lVar3 = of_find_property(uVar5,"zte,tp_long_press",0);
    *(bool *)(lVar2 + 0x25) = lVar3 != 0;
    if (lVar3 != 0) {
      _printk(&DAT_0013ae16);
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_timer",&local_3c,1,0);
      if (-1 < iVar1) {
        *(short *)(lVar2 + 0x3c) = (short)local_3c;
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_left_v",&local_3c,1,0);
      if (-1 < iVar1) {
        *(char *)(lVar2 + 0x34) = (char)local_3c;
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_right_v",&local_3c,1,0);
      if (-1 < iVar1) {
        *(char *)(lVar2 + 0x35) = (char)local_3c;
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_left_h",&local_3c,1,0);
      if (-1 < iVar1) {
        *(char *)(lVar2 + 0x36) = (char)local_3c;
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_right_h",&local_3c,1,0);
      if (-1 < iVar1) {
        *(char *)(lVar2 + 0x37) = (char)local_3c;
      }
    }
    lVar3 = of_find_property(uVar5,"zte,ghost_check_config",0);
    *(bool *)(lVar2 + 0x490) = lVar3 != 0;
    if (lVar3 == 0) {
      uVar7 = 0x19;
      *(undefined1 *)(lVar2 + 0x495) = 0x23;
      *(undefined4 *)(lVar2 + 0x491) = 0x8051419;
      *(undefined8 *)(lVar2 + 0x498) = 0xc81ffffffff;
      *(undefined4 *)(lVar2 + 0x4a0) = 0x321;
      uVar6 = 0x321;
    }
    else {
      _printk(&DAT_001379bf);
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_single_time",&local_3c,1,0)
      ;
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 0x19;
      }
      *(undefined1 *)(lVar2 + 0x491) = uVar7;
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_multi_time",&local_3c,1,0);
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 0x14;
      }
      *(undefined1 *)(lVar2 + 0x492) = uVar7;
      iVar1 = of_property_read_variable_u32_array
                        (uVar5,"zte,ghost_check_single_count",&local_3c,1,0);
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 5;
      }
      *(undefined1 *)(lVar2 + 0x493) = uVar7;
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_multi_count",&local_3c,1,0)
      ;
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 8;
      }
      *(undefined1 *)(lVar2 + 0x494) = uVar7;
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_start_time",&local_3c,1,0);
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 0x23;
      }
      *(undefined1 *)(lVar2 + 0x495) = uVar7;
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_ignore_id",&local_3c,1,0);
      uVar6 = local_3c;
      if (iVar1 < 0) {
        uVar6 = 0xffffffff;
      }
      *(uint *)(lVar2 + 0x498) = uVar6;
      iVar1 = of_property_read_variable_u32_array
                        (uVar5,"zte,ghost_check_ignore_edge_area",&local_3c,1,0);
      uVar6 = local_3c;
      if (iVar1 < 0) {
        uVar6 = 0x1401;
      }
      *(uint *)(lVar2 + 0x49c) = uVar6;
      iVar1 = of_property_read_variable_u32_array
                        (uVar5,"zte,ghost_check_ignore_corner_x",&local_3c,1,0);
      uVar6 = local_3c;
      if (iVar1 < 0) {
        uVar6 = 0x321;
      }
      *(uint *)(lVar2 + 0x4a0) = uVar6;
      iVar1 = of_property_read_variable_u32_array
                        (uVar5,"zte,ghost_check_ignore_corner_y",&local_3c,1,0);
      uVar7 = *(undefined1 *)(lVar2 + 0x491);
      uVar6 = local_3c;
      if (iVar1 < 0) {
        uVar6 = 0x321;
      }
    }
    *(uint *)(lVar2 + 0x4a4) = uVar6;
    _printk(&DAT_00133d35,uVar7);
    _printk(&DAT_00136921,*(undefined1 *)(lVar2 + 0x492));
    _printk(&DAT_00133d5a,*(undefined1 *)(lVar2 + 0x493));
    _printk(&DAT_0013440b,*(undefined1 *)(lVar2 + 0x494));
    _printk(&DAT_0013a419,*(undefined1 *)(lVar2 + 0x495));
    _printk(&DAT_00139922,*(undefined4 *)(lVar2 + 0x498));
    _printk(&DAT_0013700e,*(undefined4 *)(lVar2 + 0x49c));
    _printk(&DAT_0013258f,*(undefined4 *)(lVar2 + 0x4a0));
    _printk(&DAT_00134430,*(undefined4 *)(lVar2 + 0x4a4));
    iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_jitter_check",&local_3c,1,0);
    if (-1 < iVar1) {
      *(char *)(lVar2 + 0x24) = (char)local_3c;
      _printk(&DAT_0013d846,local_3c & 0xff);
      if ((*(char *)(lVar2 + 0x24) != '\0') &&
         (iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_jitter_timer",&local_3c,1,0),
         -1 < iVar1)) {
        *(short *)(lVar2 + 0x3e) = (short)local_3c;
        _printk(&DAT_00136945,local_3c & 0xffff);
      }
    }
    iVar1 = of_property_read_variable_u32_array
                      (uVar5,"zte,tp_edge_click_suppression_pixel",&local_3c,1,0);
    if (-1 < iVar1) {
      *(char *)(lVar2 + 0x26) = (char)local_3c;
      _printk(&DAT_001379e1,local_3c & 0xff);
      *(uint *)(lVar2 + 0x27) = (uint)*(byte *)(lVar2 + 0x26) * 0x1010101;
    }
    lVar3 = of_find_property(uVar5,"zte,ufp_enable",0);
    *(bool *)(lVar2 + 0x1c) = lVar3 != 0;
    if (lVar3 != 0) {
      _printk(&DAT_00139326);
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ufp_circle_center_x",&local_3c,1,0);
      if (-1 < iVar1) {
        *(short *)(lVar2 + 0x1e) = (short)local_3c;
        _printk(&DAT_00138038,local_3c & 0xffff);
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ufp_circle_center_y",&local_3c,1,0);
      if (-1 < iVar1) {
        *(short *)(lVar2 + 0x20) = (short)local_3c;
        _printk(&DAT_0013373a,local_3c & 0xffff);
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ufp_circle_radius",&local_3c,1,0);
      if (-1 < iVar1) {
        *(short *)(lVar2 + 0x22) = (short)local_3c;
        _printk(&DAT_00133148,local_3c & 0xffff);
      }
    }
    __mutex_init(lVar2 + 0xc60,"&ztp_dev->cmd_mutex",&zte_touch_probe___key);
    __mutex_init(lVar2 + 0xc90,"&ztp_dev->report_mutex",&zte_touch_probe___key_136);
    __mutex_init(lVar2 + 0xcc0,"&ztp_dev->tp_resume_mutex",&zte_touch_probe___key_138);
    tpd_proc_dir = proc_mkdir("touchscreen",0);
    if (tpd_proc_dir == 0) {
      _printk(&DAT_0013ae3b,"create_tpd_proc_entry");
    }
    else {
      lVar3 = proc_create("ts_information",0x1b4,tpd_proc_dir,proc_ops_tp_module_Info);
      if (lVar3 == 0) {
        _printk(&DAT_0013704c);
      }
      lVar3 = proc_create("wake_gesture",0x1b4,tpd_proc_dir,proc_ops_wake_gesture);
      if (lVar3 == 0) {
        _printk(&DAT_0013569b);
      }
      lVar3 = proc_create("smart_cover",0x1b4,tpd_proc_dir,proc_ops_smart_cover);
      if (lVar3 == 0) {
        _printk(&DAT_00138cd4);
      }
      lVar3 = proc_create("glove_mode",0x1b4,tpd_proc_dir,proc_ops_glove);
      if (lVar3 == 0) {
        _printk(&DAT_0013d240);
      }
      lVar3 = proc_create("FW_upgrade",0x1b4,tpd_proc_dir,proc_ops_tpfwupgrade);
      if (lVar3 == 0) {
        _printk(&DAT_00132bc0);
      }
      lVar3 = proc_create("suspend",0x1b4,tpd_proc_dir,proc_ops_suspend);
      if (lVar3 == 0) {
        _printk(&DAT_00139ecc);
      }
      lVar3 = proc_create("headset_state",0x1b4,tpd_proc_dir,proc_ops_headset_state);
      if (lVar3 == 0) {
        _printk(&DAT_00139eeb);
      }
      lVar3 = proc_create("rotation_limit_level",0x1b4,tpd_proc_dir,proc_ops_rotation_limit_level);
      if (lVar3 == 0) {
        _printk(&DAT_00131fe5);
      }
      lVar3 = proc_create("mRotation",0x1b4,tpd_proc_dir,proc_ops_mrotation);
      if (lVar3 == 0) {
        _printk(&DAT_0013c45e);
      }
      lVar3 = proc_create("single_tap",0x1b4,tpd_proc_dir,proc_ops_single_tap);
      if (lVar3 == 0) {
        _printk(&DAT_0013bcfb);
      }
      lVar3 = proc_create("single_aod",0x1b4,tpd_proc_dir,proc_ops_single_aod);
      if (lVar3 == 0) {
        _printk(&DAT_00137501);
      }
      lVar3 = proc_create("single_game",0x1b4,tpd_proc_dir,proc_ops_single_game);
      if (lVar3 == 0) {
        _printk(&DAT_00139340);
      }
      lVar3 = proc_create("get_noise",0x1b4,tpd_proc_dir,proc_ops_get_noise);
      if (lVar3 == 0) {
        _printk(&DAT_0013806f);
      }
      lVar3 = proc_create("edge_report_limit",0x1b4,tpd_proc_dir,proc_ops_edge_report_limit);
      if (lVar3 == 0) {
        _printk(&DAT_0013a43d);
      }
      lVar3 = proc_create("one_key",0x1b4,tpd_proc_dir,proc_ops_onekey);
      if (lVar3 == 0) {
        _printk(&DAT_001349fa);
      }
      lVar3 = proc_create("play_game",0x1b4,tpd_proc_dir,proc_ops_playgame);
      if (lVar3 == 0) {
        _printk(&DAT_00135d7d);
      }
      lVar3 = proc_create("tp_report_rate",0x1b4,tpd_proc_dir,proc_ops_tp_report_rate);
      if (lVar3 == 0) {
        _printk(&DAT_00136962);
      }
      lVar3 = proc_create("follow_hand_level",0x1b4,tpd_proc_dir,proc_ops_follow_hand_level);
      if (lVar3 == 0) {
        _printk(&DAT_0013d87b);
      }
      lVar3 = proc_create("stability_level",0x1b4,tpd_proc_dir,proc_ops_stability_level);
      if (lVar3 == 0) {
        _printk(&DAT_00139945);
      }
      lVar3 = proc_create("sensibility",0x1b4,tpd_proc_dir,proc_ops_sensibility_level);
      if (lVar3 == 0) {
        _printk(&DAT_00136397);
      }
      lVar3 = proc_create("game_partition",0x1b4,tpd_proc_dir,proc_ops_game_partition);
      if (lVar3 == 0) {
        _printk(&DAT_0013d262);
      }
      lVar3 = proc_create("pen_only",0x1b4,tpd_proc_dir,proc_ops_pen_only);
      if (lVar3 == 0) {
        _printk(&DAT_0013ddf5);
      }
      lVar3 = proc_create("finger_lock_flag",0x1b4,tpd_proc_dir,proc_ops_finger_lock_flag);
      if (lVar3 == 0) {
        _printk(&DAT_001387c3);
      }
      lVar3 = proc_create("tp_self_test",0x1b4,tpd_proc_dir,proc_ops_tp_self_test);
      if (lVar3 == 0) {
        _printk(&DAT_001387eb);
      }
      lVar3 = proc_create("tp_palm_mode",0x1b4,tpd_proc_dir,proc_ops_palm_mode);
      if (lVar3 == 0) {
        _printk(&DAT_001356bf);
      }
      lVar3 = proc_create("fold_state",0x1b4,tpd_proc_dir,proc_ops_fold_state);
      if (lVar3 == 0) {
        _printk(&DAT_0013447d);
      }
      lVar3 = proc_create("fake_sleep",0x1b4,tpd_proc_dir,proc_ops_fake_sleep);
      if (lVar3 == 0) {
        _printk(&DAT_0013996c);
      }
      lVar3 = proc_create("screen_off_awake",0x1b4,tpd_proc_dir,proc_ops_screen_off_awake);
      if (lVar3 == 0) {
        _printk(&DAT_00139363);
      }
      lVar3 = proc_create("zlog_debug",0x1b4,tpd_proc_dir,proc_ops_zlog_debug);
      if (lVar3 == 0) {
        _printk(&DAT_001356e0);
      }
      lVar3 = proc_create("ghost_debug",0x1b4,tpd_proc_dir,proc_ops_ghost_debug);
      if (lVar3 == 0) {
        _printk(&DAT_0013ae5c);
      }
      lVar3 = proc_create("BBAT_test",0x1b4,tpd_proc_dir,proc_ops_BBAT_test);
      if (lVar3 == 0) {
        _printk(&DAT_00137a19);
      }
      lVar3 = proc_create("tp_test",0x1b4,tpd_proc_dir,proc_ops_tp_test);
      if (lVar3 == 0) {
        _printk(&DAT_00137072);
      }
      lVar3 = proc_create("frame_data",0x1b4,tpd_proc_dir,proc_ops_frame_data);
      if (lVar3 == 0) {
        _printk(&DAT_0013449f);
      }
    }
    lVar3 = tpd_cdev;
    if (*(long *)(tpd_cdev + 0xdd0) == 0) {
      _printk(&DAT_00137a7f);
    }
    else {
      lVar4 = kobject_create_and_add("fwupdate",*(long *)(tpd_cdev + 0xdd0) + 0x10);
      *(long *)(lVar3 + 0xc50) = lVar4;
      if (lVar4 == 0) {
        _printk(&DAT_00133e38);
      }
      else {
        iVar1 = sysfs_create_bin_file(lVar4,fwimage_attr);
        if (iVar1 != 0) {
          _printk(&DAT_00135e39,iVar1);
          kobject_put(*(undefined8 *)(lVar3 + 0xc50));
        }
      }
    }
    tpd_clean_all_event();
    ghost_check_reset();
    ufp_mac_init();
    iVar1 = tpd_workqueue_init();
    if (iVar1 == 0) {
      queue_delayed_work_on(0x20,*(undefined8 *)(lVar2 + 0x4b0),lVar2 + 0x8d0,0x177);
      lVar3 = tpd_cdev;
      *(undefined8 *)(tpd_cdev + 0xbe8) = 0;
      *(undefined1 *)(lVar3 + 0xbf0) = 0;
      *(undefined8 *)(lVar3 + 0xbf8) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb50) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb58) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb60) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb68) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb70) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb78) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb80) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb88) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb90) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb98) = _jiffies;
      *(undefined8 *)(lVar3 + 0xba0) = _jiffies;
      *(undefined8 *)(lVar3 + 0xba8) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbb0) = _jiffies;
      *(undefined8 *)(lVar3 + 3000) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbc0) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbc8) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbd0) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbd8) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbe0) = _jiffies;
      queue_delayed_work_on(0x20,*(undefined8 *)(lVar2 + 0x4b8),lVar2 + 0xa50,0x4e2);
      *(undefined1 *)(lVar2 + 0x1d) = 0;
      *(undefined1 *)(lVar2 + 0xc00) = 0xff;
      *(undefined4 *)(lVar2 + 0x4a8) = 0;
      *(undefined4 *)(lVar2 + 0xde0) = 0;
      __init_swait_queue_head(lVar2 + 0xde8,"&x->wait",&init_completion___key);
      *(undefined1 *)(lVar2 + 0xe01) = 0;
      _printk(&DAT_00139313,"zte_touch_probe",0xb51);
      uVar5 = 0;
      goto LAB_00109160;
    }
  }
  uVar5 = 0xfffffff4;
LAB_00109160:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  return;
}

