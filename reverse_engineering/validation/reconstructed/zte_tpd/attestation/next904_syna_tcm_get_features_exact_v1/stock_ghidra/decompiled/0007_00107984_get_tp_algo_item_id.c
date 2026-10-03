
ulong get_tp_algo_item_id(char *param_1)

{
  undefined *puVar1;
  size_t sVar2;
  long lVar3;
  byte *pbVar4;
  
  puVar1 = PTR_s_algo_open_001004a8;
  pbVar4 = &ztp_algo_info_l;
  sVar2 = strlen(param_1);
  lVar3 = strnstr(param_1,puVar1,sVar2);
  puVar1 = PTR_s_jitter_pixel_001004b8;
  if (lVar3 == 0) {
    pbVar4 = &DAT_001004b0;
    sVar2 = strlen(param_1);
    lVar3 = strnstr(param_1,puVar1,sVar2);
    puVar1 = PTR_s_jitter_timer_001004c8;
    if (lVar3 == 0) {
      pbVar4 = &DAT_001004c0;
      sVar2 = strlen(param_1);
      lVar3 = strnstr(param_1,puVar1,sVar2);
      puVar1 = PTR_s_click_pixel_001004d8;
      if (lVar3 == 0) {
        pbVar4 = &DAT_001004d0;
        sVar2 = strlen(param_1);
        lVar3 = strnstr(param_1,puVar1,sVar2);
        puVar1 = PTR_s_long_press_open_001004e8;
        if (lVar3 == 0) {
          pbVar4 = &DAT_001004e0;
          sVar2 = strlen(param_1);
          lVar3 = strnstr(param_1,puVar1,sVar2);
          puVar1 = PTR_s_long_press_timer_001004f8;
          if (lVar3 == 0) {
            pbVar4 = &DAT_001004f0;
            sVar2 = strlen(param_1);
            lVar3 = strnstr(param_1,puVar1,sVar2);
            puVar1 = PTR_s_long_press_pixel_00100508;
            if (lVar3 == 0) {
              pbVar4 = &DAT_00100500;
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
  _printk(&DAT_0013a9f5,"get_tp_algo_item_id",*pbVar4);
  return (ulong)*pbVar4;
}

