
undefined8 get_tp_algo_item_id(char *param_1)

{
  undefined *puVar1;
  size_t sVar2;
  long lVar3;
  undefined8 uVar4;
  undefined1 *puVar5;
  
  puVar1 = PTR_s_algo_open_0012fc48;
  puVar5 = &ztp_algo_info_l;
  sVar2 = strlen(param_1);
  lVar3 = strnstr(param_1,puVar1,sVar2);
  puVar1 = PTR_s_jitter_pixel_0012fc58;
  if (lVar3 == 0) {
    puVar5 = &DAT_0012fc50;
    sVar2 = strlen(param_1);
    lVar3 = strnstr(param_1,puVar1,sVar2);
    puVar1 = PTR_s_jitter_timer_0012fc68;
    if (lVar3 == 0) {
      puVar5 = &DAT_0012fc60;
      sVar2 = strlen(param_1);
      lVar3 = strnstr(param_1,puVar1,sVar2);
      puVar1 = PTR_s_click_pixel_0012fc78;
      if (lVar3 == 0) {
        puVar5 = &DAT_0012fc70;
        sVar2 = strlen(param_1);
        lVar3 = strnstr(param_1,puVar1,sVar2);
        puVar1 = PTR_s_long_press_open_0012fc88;
        if (lVar3 == 0) {
          puVar5 = &DAT_0012fc80;
          sVar2 = strlen(param_1);
          lVar3 = strnstr(param_1,puVar1,sVar2);
          puVar1 = PTR_s_long_press_timer_0012fc98;
          if (lVar3 == 0) {
            puVar5 = &DAT_0012fc90;
            sVar2 = strlen(param_1);
            lVar3 = strnstr(param_1,puVar1,sVar2);
            puVar1 = PTR_s_long_press_pixel_0012fca8;
            if (lVar3 == 0) {
              puVar5 = &DAT_0012fca0;
              sVar2 = strlen(param_1);
              lVar3 = strnstr(param_1,puVar1,sVar2);
              if (lVar3 == 0) {
                return 0xfffffffb;
              }
            }
          }
        }
      }
    }
  }
  uVar4 = _printk(&DAT_00181b25,"get_tp_algo_item_id",*puVar5);
  return uVar4;
}

