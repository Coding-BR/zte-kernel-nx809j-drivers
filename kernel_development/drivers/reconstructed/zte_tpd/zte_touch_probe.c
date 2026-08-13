/* Stock uses three distinct lockdep class keys for these probe-local mutexes. */
#undef zte_touch_probe___key
#undef zte_touch_probe___key_92
#undef zte_touch_probe___key_94
static struct lock_class_key zte_touch_probe___key;
static struct lock_class_key zte_touch_probe___key_136;
static struct lock_class_key zte_touch_probe___key_138;

int zte_touch_probe(struct platform_device *pdev)
{
  __int64 a1 = (__int64)pdev;
  __int64 v2; // x0
  __int64 v3; // x1
  __int64 v4; // x2
  __int64 v5; // x19
  __int64 v6; // x20
  __int64 property; // x0
  __int64 v8; // x1
  __int64 v9; // x2
  __int64 v10; // x0
  __int64 v11; // x1
  __int64 v12; // x2
  __int64 v13; // x0
  __int64 v14; // x1
  __int64 v15; // x2
  char v16; // w8
  char v17; // w8
  char v18; // w8
  char v19; // w8
  char v20; // w8
  int v21; // w8
  int v22; // w8
  int v23; // w8
  int v24; // w0
  int v25; // w8
  __int64 v26; // x1
  __int64 v27; // x2
  __int64 v28; // x2
  __int64 v29; // x2
  __int64 v30; // x2
  __int64 v31; // x2
  __int64 v32; // x2
  __int64 v33; // x2
  __int64 v34; // x2
  __int64 v35; // x2
  __int64 v36; // x2
  __int64 v37; // x0
  __int64 v38; // x1
  __int64 v39; // x2
  __int64 v40; // x0
  __int64 v41; // x2
  __int64 v42; // x1
  __int64 v43; // x2
  __int64 v44; // x1
  __int64 v45; // x2
  __int64 v46; // x1
  __int64 v47; // x2
  __int64 v48; // x1
  __int64 v49; // x2
  __int64 v50; // x1
  __int64 v51; // x2
  __int64 v52; // x1
  __int64 v53; // x2
  __int64 v54; // x1
  __int64 v55; // x2
  __int64 v56; // x1
  __int64 v57; // x2
  __int64 v58; // x1
  __int64 v59; // x2
  __int64 v60; // x1
  __int64 v61; // x2
  __int64 v62; // x1
  __int64 v63; // x2
  __int64 v64; // x1
  __int64 v65; // x2
  __int64 v66; // x1
  __int64 v67; // x2
  __int64 v68; // x1
  __int64 v69; // x2
  __int64 v70; // x1
  __int64 v71; // x2
  __int64 v72; // x1
  __int64 v73; // x2
  __int64 v74; // x1
  __int64 v75; // x2
  __int64 v76; // x1
  __int64 v77; // x2
  __int64 v78; // x1
  __int64 v79; // x2
  __int64 v80; // x1
  __int64 v81; // x2
  __int64 v82; // x1
  __int64 v83; // x2
  __int64 v84; // x1
  __int64 v85; // x2
  __int64 v86; // x1
  __int64 v87; // x2
  __int64 v88; // x1
  __int64 v89; // x2
  __int64 v90; // x1
  __int64 v91; // x2
  __int64 v92; // x1
  __int64 v93; // x2
  __int64 v94; // x1
  __int64 v95; // x2
  __int64 v96; // x1
  __int64 v97; // x2
  __int64 v98; // x1
  __int64 v99; // x2
  __int64 v100; // x1
  __int64 v101; // x2
  __int64 v102; // x1
  __int64 v103; // x2
  __int64 v104; // x1
  __int64 v105; // x2
  __int64 v106; // x20
  __int64 v107; // x8
  __int64 v108; // x0
  __int64 v109; // x1
  __int64 v110; // x2
  unsigned int bin_file; // w0
  __int64 v112; // x2
  __int64 v113; // x0
  __int64 v114; // x0
  __int64 v115; // x0
  __int64 v116; // x1
  __int64 v117; // x2
  __int64 result; // x0
  __int64 v119; // x1
  __int64 v120; // x2
  __int64 v121; // x1
  __int64 v122; // x1
  __int64 v123; // x2
  __int64 v124; // x2
  __int64 v125; // x2
  __int64 v126; // x1
  __int64 v127; // x1
  __int64 v128; // x1
  int v129 __uninitialized; // [xsp+4h] [xbp-Ch] BYREF
  printk("\0015tpd: enter %s, %d\n", "zte_touch_probe", 2858);
  v2 = devm_kmalloc(a1 + 16, 4104, 3520);
  if ( v2 )
  {
    v5 = v2;
    *(_QWORD *)(v2 + 3528) = a1;
    tpd_cdev = v2;
    *(_QWORD *)(a1 + 168) = v2;
    zte_touch_pdev_register();
    v6 = *(_QWORD *)(a1 + 760);
    v129 = 0;
    property = of_find_property(v6, "zte,tp_algo", 0);
    *(_BYTE *)(v5 + 27) = property != 0;
    if ( property )
      printk("\0015tpd: zte_tp_algo enabled");
    v10 = of_find_property(v6, "zte,tp_long_press", 0);
    *(_BYTE *)(v5 + 37) = v10 != 0;
    if ( v10 )
    {
      printk("\0015tpd: edge_long_press_check enabled");
      if ( (of_property_read_variable_u32_array(v6, "zte,tp_long_press_timer", &v129, 1, 0) & 0x80000000) == 0 )
        *(_WORD *)(v5 + 60) = v129;
      if ( (of_property_read_variable_u32_array(v6, "zte,tp_long_press_left_v", &v129, 1, 0) & 0x80000000) == 0 )
        *(_BYTE *)(v5 + 52) = v129;
      if ( (of_property_read_variable_u32_array(v6, "zte,tp_long_press_right_v", &v129, 1, 0) & 0x80000000) == 0 )
        *(_BYTE *)(v5 + 53) = v129;
      if ( (of_property_read_variable_u32_array(v6, "zte,tp_long_press_left_h", &v129, 1, 0) & 0x80000000) == 0 )
        *(_BYTE *)(v5 + 54) = v129;
      if ( (of_property_read_variable_u32_array(v6, "zte,tp_long_press_right_h", &v129, 1, 0) & 0x80000000) == 0 )
        *(_BYTE *)(v5 + 55) = v129;
    }
    v13 = of_find_property(v6, "zte,ghost_check_config", 0);
    *(_BYTE *)(v5 + 1168) = v13 != 0;
    if ( v13 )
    {
      printk("\0015tpd: ghost_check_config enabled");
      v24 = of_property_read_variable_u32_array(v6, "zte,ghost_check_single_time", &v129, 1, 0);
      v16 = v24 >= 0 ? v129 : 25;
      *(_BYTE *)(v5 + 1169) = v16;
      v24 = of_property_read_variable_u32_array(v6, "zte,ghost_check_multi_time", &v129, 1, 0);
      v17 = v24 >= 0 ? v129 : 20;
      *(_BYTE *)(v5 + 1170) = v17;
      v24 = of_property_read_variable_u32_array(v6, "zte,ghost_check_single_count", &v129, 1, 0);
      v18 = v24 >= 0 ? v129 : 5;
      *(_BYTE *)(v5 + 1171) = v18;
      v24 = of_property_read_variable_u32_array(v6, "zte,ghost_check_multi_count", &v129, 1, 0);
      v19 = v24 >= 0 ? v129 : 8;
      *(_BYTE *)(v5 + 1172) = v19;
      v24 = of_property_read_variable_u32_array(v6, "zte,ghost_check_start_time", &v129, 1, 0);
      v20 = v24 >= 0 ? v129 : 35;
      *(_BYTE *)(v5 + 1173) = v20;
      v24 = of_property_read_variable_u32_array(v6, "zte,ghost_check_ignore_id", &v129, 1, 0);
      v21 = v24 >= 0 ? v129 : -1;
      *(_DWORD *)(v5 + 1176) = v21;
      v24 = of_property_read_variable_u32_array(v6, "zte,ghost_check_ignore_edge_area", &v129, 1, 0);
      v22 = v24 >= 0 ? v129 : 5121;
      *(_DWORD *)(v5 + 1180) = v22;
      v24 = of_property_read_variable_u32_array(v6, "zte,ghost_check_ignore_corner_x", &v129, 1, 0);
      v23 = v24 >= 0 ? v129 : 801;
      *(_DWORD *)(v5 + 1184) = v23;
      v24 = of_property_read_variable_u32_array(v6, "zte,ghost_check_ignore_corner_y", &v129, 1, 0);
      v25 = v24 >= 0 ? v129 : 801;
      v26 = *(unsigned __int8 *)(v5 + 1169);
    }
    else
    {
      v26 = 25;
      *(_BYTE *)(v5 + 1173) = 35;
      *(_DWORD *)(v5 + 1169) = 134550553;
      *(_QWORD *)(v5 + 1176) = 0xC81FFFFFFFFLL;
      *(_DWORD *)(v5 + 1184) = 801;
      v25 = 801;
    }
    *(_DWORD *)(v5 + 1188) = v25;
    printk("\0015tpd: ghost_check_single_time is %d", (int)v26);
    printk("\0015tpd: ghost_check_multi_time is %d", *(unsigned __int8 *)(v5 + 1170));
    printk("\0015tpd: ghost_check_single_count is %d", *(unsigned __int8 *)(v5 + 1171));
    printk("\0015tpd: ghost_check_multi_count is %d", *(unsigned __int8 *)(v5 + 1172));
    printk("\0015tpd: ghost_check_start_time is %d", *(unsigned __int8 *)(v5 + 1173));
    printk("\0015tpd: ghost_check_ignore_id is %d", *(unsigned int *)(v5 + 1176));
    printk("\0015tpd: ghost_check_ignore_edge_area is %d", *(unsigned int *)(v5 + 1180));
    printk("\0015tpd: ghost_check_ignore_corner_x is %d", *(unsigned int *)(v5 + 1184));
    printk("\0015tpd: ghost_check_ignore_corner_y is %d", *(unsigned int *)(v5 + 1188));
    if ( (of_property_read_variable_u32_array(v6, "zte,tp_jitter_check", &v129, 1, 0) & 0x80000000) == 0 )
    {
      v119 = (unsigned __int8)v129;
      *(_BYTE *)(v5 + 36) = v129;
      printk("\0015tpd: tp_jitter_check is %d", (int)v119);
      if ( *(_BYTE *)(v5 + 36) )
      {
        if ( (of_property_read_variable_u32_array(v6, "zte,tp_jitter_timer", &v129, 1, 0) & 0x80000000) == 0 )
        {
          v121 = (unsigned __int16)v129;
          *(_WORD *)(v5 + 62) = v129;
          printk("\0015tpd: tp_jitter_timer is %d", (int)v121);
        }
      }
    }
    if ( (of_property_read_variable_u32_array(v6, "zte,tp_edge_click_suppression_pixel", &v129, 1, 0) & 0x80000000) == 0 )
    {
      v122 = (unsigned __int8)v129;
      *(_BYTE *)(v5 + 38) = v129;
      printk("\0015tpd: tp_edge_click_suppression_pixel is %d", (int)v122);
      *(_DWORD *)(v5 + 39) = 16843009 * *(unsigned __int8 *)(v5 + 38);
    }
    v37 = of_find_property(v6, "zte,ufp_enable", 0);
    *(_BYTE *)(v5 + 28) = v37 != 0;
    if ( v37 )
    {
      printk("\0015tpd: ufp_enable enabled");
      if ( (of_property_read_variable_u32_array(v6, "zte,ufp_circle_center_x", &v129, 1, 0) & 0x80000000) == 0 )
      {
        v127 = (unsigned __int16)v129;
        *(_WORD *)(v5 + 30) = v129;
        printk("\0015tpd: ufp_circle_center_x is %d", (int)v127);
      }
      if ( (of_property_read_variable_u32_array(v6, "zte,ufp_circle_center_y", &v129, 1, 0) & 0x80000000) == 0 )
      {
        v128 = (unsigned __int16)v129;
        *(_WORD *)(v5 + 32) = v129;
        printk("\0015tpd: ufp_circle_center_y is %d", (int)v128);
      }
      if ( (of_property_read_variable_u32_array(v6, "zte,ufp_circle_radius", &v129, 1, 0) & 0x80000000) == 0 )
      {
        v126 = (unsigned __int16)v129;
        *(_WORD *)(v5 + 34) = v129;
        printk("\0015tpd: ufp_circle_radius is %d", (int)v126);
      }
    }
    _mutex_init(v5 + 3168, "&ztp_dev->cmd_mutex", &zte_touch_probe___key);
    _mutex_init(v5 + 3216, "&ztp_dev->report_mutex", &zte_touch_probe___key_136);
    _mutex_init(v5 + 3264, "&ztp_dev->tp_resume_mutex", &zte_touch_probe___key_138);
    v40 = proc_mkdir("touchscreen", 0);
    tpd_proc_dir = v40;
    if ( v40 )
    {
      if ( !proc_create("ts_information", 436, v40, &proc_ops_tp_module_Info) )
        printk("\0013proc_create ts_information failed!\n");
      if ( !proc_create("wake_gesture", 436, tpd_proc_dir, &proc_ops_wake_gesture) )
        printk("\0013proc_create wake_gesture failed!\n");
      if ( !proc_create("smart_cover", 436, tpd_proc_dir, &proc_ops_smart_cover) )
        printk("\0013proc_create smart_cover failed!\n");
      if ( !proc_create("glove_mode", 436, tpd_proc_dir, &proc_ops_glove) )
        printk("\0013proc_create glove mode failed!\n");
      if ( !proc_create("FW_upgrade", 436, tpd_proc_dir, &proc_ops_tpfwupgrade) )
        printk("\0013proc_create FW_upgrade failed!\n");
      if ( !proc_create("suspend", 436, tpd_proc_dir, &proc_ops_suspend) )
        printk("\0013proc_create suspend failed!\n");
      if ( !proc_create("headset_state", 436, tpd_proc_dir, &proc_ops_headset_state) )
        printk("\0013proc_create headset_state failed!\n");
      if ( !proc_create("rotation_limit_level", 436, tpd_proc_dir, &proc_ops_rotation_limit_level) )
        printk("\0013proc_create rotation_limit_level failed!\n");
      if ( !proc_create("mRotation", 436, tpd_proc_dir, &proc_ops_mrotation) )
        printk("\0013proc_create mRotation failed!\n");
      if ( !proc_create("single_tap", 436, tpd_proc_dir, &proc_ops_single_tap) )
        printk("\0013proc_create single_tap failed!\n");
      if ( !proc_create("single_aod", 436, tpd_proc_dir, &proc_ops_single_aod) )
        printk("\0013proc_create single_aod failed!\n");
      if ( !proc_create("single_game", 436, tpd_proc_dir, &proc_ops_single_game) )
        printk("\0013proc_create single_game failed!\n");
      if ( !proc_create("get_noise", 436, tpd_proc_dir, &proc_ops_get_noise) )
        printk("\0013proc_create get_noise failed!\n");
      if ( !proc_create("edge_report_limit", 436, tpd_proc_dir, &proc_ops_edge_report_limit) )
        printk("\0013proc_create edge_report_limit failed!\n");
      if ( !proc_create("one_key", 436, tpd_proc_dir, &proc_ops_onekey) )
        printk("\0013proc_create one_key failed!\n");
      if ( !proc_create("play_game", 436, tpd_proc_dir, &proc_ops_playgame) )
        printk("\0013proc_create play_game failed!\n");
      if ( !proc_create("tp_report_rate", 436, tpd_proc_dir, &proc_ops_tp_report_rate) )
        printk("\0013proc_create tp report rate failed!\n");
      if ( !proc_create("follow_hand_level", 436, tpd_proc_dir, &proc_ops_follow_hand_level) )
        printk("\0013proc_create follow_hand level failed!\n");
      if ( !proc_create("stability_level", 436, tpd_proc_dir, &proc_ops_stability_level) )
        printk("\0013proc_create stability level failed!\n");
      if ( !proc_create("sensibility", 436, tpd_proc_dir, &proc_ops_sensibility_level) )
        printk("\0013proc_create sensilibity failed!\n");
      if ( !proc_create("game_partition", 436, tpd_proc_dir, &proc_ops_game_partition) )
        printk("\0013proc_create game_partition failed!\n");
      if ( !proc_create("pen_only", 436, tpd_proc_dir, &proc_ops_pen_only) )
        printk("\0013proc_create pen only failed!\n");
      if ( !proc_create("finger_lock_flag", 436, tpd_proc_dir, &proc_ops_finger_lock_flag) )
        printk("\0013proc_create finger_lock_flag failed!\n");
      if ( !proc_create("tp_self_test", 436, tpd_proc_dir, &proc_ops_tp_self_test) )
        printk("\0013proc_create tp self test failed!\n");
      if ( !proc_create("tp_palm_mode", 436, tpd_proc_dir, &proc_ops_palm_mode) )
        printk("\0013proc_create palm mode failed!\n");
      if ( !proc_create("fold_state", 436, tpd_proc_dir, &proc_ops_fold_state) )
        printk("\0013proc_create fold state failed!\n");
      if ( !proc_create("fake_sleep", 436, tpd_proc_dir, &proc_ops_fake_sleep) )
        printk("\0013proc_create touch_fake_sleep failed!\n");
      if ( !proc_create("screen_off_awake", 436, tpd_proc_dir, &proc_ops_screen_off_awake) )
        printk("\0013proc_create touch_screen_off_awake failed!\n");
      if ( !proc_create("zlog_debug", 436, tpd_proc_dir, &proc_ops_zlog_debug) )
        printk("\0013proc_create zlog_debug failed!\n");
      if ( !proc_create("ghost_debug", 436, tpd_proc_dir, &proc_ops_ghost_debug) )
        printk("\0013proc_create ghost_debug failed!\n");
      if ( !proc_create("BBAT_test", 436, tpd_proc_dir, &proc_ops_BBAT_test) )
        printk("\0013proc_create BBAT_test failed!\n");
      if ( !proc_create("tp_test", 436, tpd_proc_dir, &proc_ops_tp_test) )
        printk("\0013proc_create tp_test failed!\n");
      if ( !proc_create("frame_data", 436, tpd_proc_dir, &proc_ops_frame_data) )
        printk("\0013proc_create frame_data failed!\n");
    }
    else
    {
      printk("\0013%s: mkdir touchscreen failed!\n", "create_tpd_proc_entry");
    }
    v106 = tpd_cdev;
    v107 = *(_QWORD *)(tpd_cdev + 3536);
    if ( v107 )
    {
      v108 = kobject_create_and_add("fwupdate", v107 + 16);
      *(_QWORD *)(v106 + 3152) = v108;
      if ( v108 )
      {
        bin_file = sysfs_create_bin_file(v108, &fwimage_attr);
        if ( bin_file )
        {
          printk("\0013failed create fwimage bin node, %d", bin_file);
          kobject_put(*(_QWORD *)(v106 + 3152));
        }
      }
      else
      {
        printk("\0013failed create sub dir for fwupdate");
      }
    }
    else
    {
      printk("\0015tpd: zte_touch_pdev is NULL.");
      asm volatile("" ::: "memory");
    }
    tpd_clean_all_event();
    ghost_check_reset();
    v115 = ufp_mac_init();
    if ( !(unsigned int)tpd_workqueue_init() )
    {
      queue_delayed_work_on(32, *(_QWORD *)(v5 + 1200), v5 + 2256, 375);
      v106 = tpd_cdev;
      *(_QWORD *)(v106 + 3048) = 0;
      *(_BYTE *)(v106 + 3056) = 0;
      *(_QWORD *)(v106 + 3064) = jiffies;
      *(_QWORD *)(v106 + 2896) = jiffies;
      *(_QWORD *)(v106 + 2904) = jiffies;
      *(_QWORD *)(v106 + 2912) = jiffies;
      *(_QWORD *)(v106 + 2920) = jiffies;
      *(_QWORD *)(v106 + 2928) = jiffies;
      *(_QWORD *)(v106 + 2936) = jiffies;
      *(_QWORD *)(v106 + 2944) = jiffies;
      *(_QWORD *)(v106 + 2952) = jiffies;
      *(_QWORD *)(v106 + 2960) = jiffies;
      *(_QWORD *)(v106 + 2968) = jiffies;
      *(_QWORD *)(v106 + 2976) = jiffies;
      *(_QWORD *)(v106 + 2984) = jiffies;
      *(_QWORD *)(v106 + 2992) = jiffies;
      *(_QWORD *)(v106 + 3000) = jiffies;
      *(_QWORD *)(v106 + 3008) = jiffies;
      *(_QWORD *)(v106 + 3016) = jiffies;
      *(_QWORD *)(v106 + 3024) = jiffies;
      *(_QWORD *)(v106 + 3032) = jiffies;
      *(_QWORD *)(v106 + 3040) = jiffies;
      queue_delayed_work_on(32, *(_QWORD *)(v5 + 1208), v5 + 2640, 1250);
      *(_BYTE *)(v5 + 29) = 0;
      *(_BYTE *)(v5 + 3072) = -1;
      *(_DWORD *)(v5 + 1192) = 0;
      *(_DWORD *)(v5 + 3552) = 0;
      _init_swait_queue_head(v5 + 3560, "&x->wait", &init_completion___key);
      *(_BYTE *)(v5 + 3585) = 0;
      printk("\0015tpd: end %s, %d\n", "zte_touch_probe", 2897);
      result = 0;
      goto LABEL_119;
    }
  }
  else
  {
    printk("\0015tpd: Failed to allocate memory for ztp dev");
  }
  result = 4294967284LL;
LABEL_119:
  return result;
}
