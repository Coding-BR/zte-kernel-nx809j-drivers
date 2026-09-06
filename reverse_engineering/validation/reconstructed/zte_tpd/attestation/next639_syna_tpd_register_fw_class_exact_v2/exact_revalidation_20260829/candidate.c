#if defined(ZTE_TPD_AARCH64_INPUT)
typedef long long __int64;
typedef unsigned long long _QWORD;
typedef unsigned int _DWORD;
typedef unsigned short _WORD;
struct syna_tcm;

#define _ReadStatusReg(reg) ((void)0)
#define __break(value) __builtin_trap()

extern int printk(const char *format, ...);
extern __int64 alloc_workqueue(const char *name, unsigned int flags,
                               int max_active, const char *key);
extern __int64 power_supply_get_by_name(const char *name);
extern void power_supply_reg_notifier(void *notifier);
extern void init_timer_key(void *timer, void *function, unsigned int flags,
                           void *name, void *key);
extern __int64 syna_get_charger_status_batt_psy;
extern unsigned char syna_usb_detect_flag;
extern __int64 tpd_cdev;
extern void syna_work_charger_detect_work(void);
extern void syna_charger_notify_call(void);
extern void tpd_init_tpinfo(void);
extern void tpd_get_wakegesture(void);
extern void tpd_enable_wakegesture(void);
extern void tpd_get_singlegamegesture(void);
extern void tpd_set_singlegamegesture(void);
extern void tpd_get_singleaodgesture(void);
extern void tpd_set_singleaodgesture(void);
extern void tpd_get_singlefpgesture(void);
extern void tpd_set_singlefpgesture(void);
extern void tpd_set_one_key(void);
extern void tpd_get_one_key(void);
extern void tpd_test_cmd_store(void);
extern void tpd_test_cmd_show(void);
extern void tpd_get_tp_report_rate(void);
extern void tpd_set_tp_report_rate(void);
extern void tpd_get_sensibility_level(void);
extern void tpd_set_sensibility_level(void);
extern void tpd_get_follow_hand_level(void);
extern void tpd_set_follow_hand_level(void);
extern void tpd_get_stability_level(void);
extern void tpd_set_stability_level(void);
extern void tpd_get_rotation_limit_level(void);
extern void tpd_set_rotation_limit_level(void);
extern void tpd_set_display_rotation(void);
extern void tpd_get_play_game(void);
extern void tpd_set_play_game(void);
extern void tpd_set_game_partition(void);
extern void tpd_get_frame_data(void);
extern void tpd_set_frame_data(void);
extern void tpd_get_palm_mode(void);
extern void tpd_set_palm_mode(void);
extern void syna_ghost_check_reset(void);
extern void tpd_set_fake_sleep(void);
extern void tpd_get_fake_sleep(void);
extern void tpd_set_screen_off_awake(void);
extern void tpd_get_screen_off_awake(void);
extern void delayed_work_timer_fn(void);
extern const char unk_390F2[];
extern const char unk_364AC[];
extern const char unk_3A676[];
extern const char unk_37409[];
extern const char unk_3D4B9[];
extern const char unk_3AECC[];
#endif

void syna_tpd_register_fw_class(struct syna_tcm *tcm)
{
  __int64 a1 = (__int64)tcm;
  __int64 v4; // x0
  __int64 v5 = 0; // x2 is unspecified on the stock error-log path
  __int64 v7; // x0
  void (*v8)(void); // x8
  __int64 v9 = 0; // x2 is unspecified on the stock notifier-log path
  __int64 v10; // x8

  _ReadStatusReg(SP_EL0);
  printk(unk_390F2, "syna_tpd_register_fw_class");
  v4 = alloc_workqueue(unk_364AC, 393226, 1, "syna_charger_detect");
  *(_QWORD *)(a1 + 1672) = v4;
  if ( v4 )
  {
    v7 = syna_get_charger_status_batt_psy;
    if ( syna_get_charger_status_batt_psy
      || (v7 = power_supply_get_by_name("battery"), (syna_get_charger_status_batt_psy = v7) != 0) )
    {
      v8 = *(void (**)(void))(*(_QWORD *)v7 + 40LL);
      if ( (int)*((_DWORD *)v8 - 1) != -392622893 )
        __break(0x8228u);
      v8();
    }
    printk(unk_3A676, "syna_get_charger_status", 0);
    syna_usb_detect_flag = 0;
    *(_QWORD *)(a1 + 1568) = 0xFFFFFFFE00000LL;
    *(_QWORD *)(a1 + 1576) = a1 + 1576;
    *(_QWORD *)(a1 + 1584) = a1 + 1576;
    *(_QWORD *)(a1 + 1592) = syna_work_charger_detect_work;
    init_timer_key(a1 + 1600, &delayed_work_timer_fn, 0x200000, 0, 0);
    printk(unk_37409, "syna_init_charger_notifier", v9);
    *(_QWORD *)(a1 + 1680) = syna_charger_notify_call;
    power_supply_reg_notifier(a1 + 1680);
  }
  else
  {
    printk(unk_3D4B9, "syna_tpd_register_fw_class", v5);
  }
  v10 = tpd_cdev;
  *(_QWORD *)(tpd_cdev + 0xe20) = tpd_init_tpinfo;
  *(_QWORD *)(v10 + 0xe28) = tpd_get_wakegesture;
  *(_QWORD *)(v10 + 0xe30) = tpd_enable_wakegesture;
  *(_QWORD *)(v10 + 0xed8) = tpd_get_singlegamegesture;
  *(_QWORD *)(v10 + 0xee0) = tpd_set_singlegamegesture;
  *(_QWORD *)(v10 + 0xec8) = tpd_get_singleaodgesture;
  *(_QWORD *)(v10 + 0xed0) = tpd_set_singleaodgesture;
  *(_QWORD *)(v10 + 0xeb8) = tpd_get_singlefpgesture;
  *(_QWORD *)(v10 + 0xec0) = tpd_set_singlefpgesture;
  *(_QWORD *)(v10 + 0xef8) = tpd_set_one_key;
  *(_QWORD *)(v10 + 0xef0) = tpd_get_one_key;
  *(_QWORD *)(v10 + 0xfa0) = tpd_test_cmd_store;
  *(_QWORD *)(v10 + 0xf98) = tpd_test_cmd_show;
  *(_QWORD *)(v10 + 0xf18) = tpd_get_tp_report_rate;
  *(_QWORD *)(v10 + 0xf10) = tpd_set_tp_report_rate;
  *(_QWORD *)(v10 + 0xf60) = tpd_get_sensibility_level;
  *(_QWORD *)(v10 + 0xf68) = tpd_set_sensibility_level;
  *(_QWORD *)(v10 + 0xf28) = tpd_get_follow_hand_level;
  *(_QWORD *)(v10 + 0xf20) = tpd_set_follow_hand_level;
  *(_QWORD *)(v10 + 0xf38) = tpd_get_stability_level;
  *(_QWORD *)(v10 + 0xf30) = tpd_set_stability_level;
  *(_QWORD *)(v10 + 0xe88) = tpd_get_rotation_limit_level;
  *(_QWORD *)(v10 + 0xe80) = tpd_set_rotation_limit_level;
  *(_QWORD *)(v10 + 0xe90) = tpd_set_display_rotation;
  *(_QWORD *)(v10 + 0xf00) = tpd_get_play_game;
  *(_QWORD *)(v10 + 0xf08) = tpd_set_play_game;
  *(_QWORD *)(v10 + 0xf50) = tpd_set_game_partition;
  *(_QWORD *)(v10 + 0x1000) = tpd_get_frame_data;
  *(_QWORD *)(v10 + 0xff8) = tpd_set_frame_data;
  *(_QWORD *)(v10 + 0xfa8) = tpd_get_palm_mode;
  *(_QWORD *)(v10 + 0xfb0) = tpd_set_palm_mode;
  *(_QWORD *)(v10 + 0xff0) = syna_ghost_check_reset;
  *(_QWORD *)(v10 + 0xfd0) = tpd_set_fake_sleep;
  *(_QWORD *)(v10 + 0xfc8) = tpd_get_fake_sleep;
  *(_QWORD *)(v10 + 0xfe0) = tpd_set_screen_off_awake;
  *(_QWORD *)(v10 + 0xdb8) = a1;
  *(_QWORD *)(v10 + 0xfd8) = tpd_get_screen_off_awake;
  *(_WORD *)(v10 + 1090) = *(_DWORD *)(a1 + 952);
  *(_WORD *)(v10 + 1092) = *(_DWORD *)(a1 + 956);
  printk(unk_3AECC, "syna_tpd_register_fw_class");
  _ReadStatusReg(SP_EL0);
}
