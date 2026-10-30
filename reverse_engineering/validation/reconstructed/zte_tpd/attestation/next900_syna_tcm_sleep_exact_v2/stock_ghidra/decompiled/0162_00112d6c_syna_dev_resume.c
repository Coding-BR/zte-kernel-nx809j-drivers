
void syna_dev_resume(long param_1)

{
  byte bVar1;
  int iVar2;
  undefined4 uVar3;
  long lVar4;
  undefined *puVar5;
  code *pcVar6;
  long *plVar7;
  long lVar8;
  char local_3c [4];
  long local_38;
  
  lVar8 = sp_el0;
  local_38 = *(long *)(lVar8 + 0x710);
  plVar7 = *(long **)(param_1 + 0x98);
  if (plVar7 == (long *)0x0) {
    uVar3 = 0xffffffea;
    goto LAB_00112ddc;
  }
  lVar8 = plVar7[0x4e];
  if (((lVar8 == -0xa8) || (*(int *)(lVar8 + 0xb8) == 0)) || ((*(byte *)(lVar8 + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*plVar7 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  if (*(int *)((long)plVar7 + 0x57c) == 1) {
    uVar3 = 0;
    goto LAB_00112ddc;
  }
  local_3c[0] = '\0';
  if ((char)DAT_00131c40 == '\x01') {
    if (*(int *)((long)plVar7 + 0x5d4) == 0) {
      _printk(&DAT_001381eb,"syna_dev_resume");
      lVar4 = wait_for_completion_timeout(&DAT_00131c20,0x271);
      if (lVar4 == 0) {
        _printk(&DAT_0013b0ad,"syna_dev_resume");
      }
      DAT_00131c40 = DAT_00131c40 & 0xff00;
      report_ufp_uevent(0);
    }
    else {
      _printk(&DAT_001338cd,"syna_dev_resume");
    }
  }
  _printk(&DAT_00132133,"syna_dev_resume");
  *(undefined4 *)((long)plVar7 + 0x57c) = 1;
  large_area_uevent_count = 0;
  if ((*(char *)((long)plVar7 + 0x581) == '\x01') &&
     (pcVar6 = *(code **)(lVar8 + 0x40), pcVar6 != (code *)0x0)) {
    if (*(int *)(pcVar6 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x112edc);
      (*pcVar6)();
    }
    (*pcVar6)(lVar8 + 8,0);
  }
  if (*(int *)((long)plVar7 + 0x5d4) == 0) {
LAB_00112f00:
    _printk(&DAT_001345e9,"syna_dev_resume");
    pcVar6 = *(code **)(lVar8 + 0x188);
    if (pcVar6 == (code *)0x0) {
      iVar2 = syna_tcm_reset(*plVar7,uVar3);
      if (iVar2 < 0) {
        puVar5 = &DAT_0013b6d5;
        goto LAB_00112fe0;
      }
    }
    else {
      if (*(int *)(pcVar6 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x112f54);
        (*pcVar6)();
      }
      (*pcVar6)(lVar8);
      if ((*(byte *)(lVar8 + 0xbc) & 1) == 0) {
        iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
        if (iVar2 < 0) {
LAB_00112f74:
          puVar5 = &DAT_00133276;
          goto LAB_00112fe0;
        }
        if (local_3c[0] != '\x10') {
          msleep(0x32);
          iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
          if (iVar2 < 0) goto LAB_00112f74;
          if (local_3c[0] != '\x10') {
            msleep(0x32);
            iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
            if (iVar2 < 0) goto LAB_00112f74;
            if (local_3c[0] != '\x10') {
              msleep(0x32);
              iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
              if (iVar2 < 0) goto LAB_00112f74;
              if (local_3c[0] != '\x10') {
                msleep(0x32);
                iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                if (iVar2 < 0) goto LAB_00112f74;
                if (local_3c[0] != '\x10') {
                  msleep(0x32);
                  iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                  if (iVar2 < 0) goto LAB_00112f74;
                  if (local_3c[0] != '\x10') {
                    msleep(0x32);
                    iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                    if (iVar2 < 0) goto LAB_00112f74;
                    if (local_3c[0] != '\x10') {
                      msleep(0x32);
                      iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                      if (iVar2 < 0) goto LAB_00112f74;
                      if (local_3c[0] != '\x10') {
                        msleep(0x32);
                        iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                        if (iVar2 < 0) goto LAB_00112f74;
                        if (local_3c[0] != '\x10') {
                          msleep(0x32);
                          iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                          if (iVar2 < 0) goto LAB_00112f74;
                          if (local_3c[0] != '\x10') {
                            msleep(0x32);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
LAB_00112fb8:
    _printk(&DAT_00132709,"syna_dev_resume");
    iVar2 = syna_dev_set_up_app_fw(plVar7);
    if (iVar2 < 0) {
      puVar5 = &DAT_00137b71;
      goto LAB_00112fe0;
    }
    DAT_00131c42 = 0;
    DAT_00131c40 = 0;
    _printk(&DAT_0013aad3,"syna_dev_resume",*(undefined4 *)((long)plVar7 + 0x57c));
    bVar1 = *(byte *)(lVar8 + 0xbc);
  }
  else {
    if (DAT_00131c40._1_1_ == '\0' && (char)DAT_00131c40 == '\0') goto LAB_00112f00;
    _printk(&DAT_00136bb8,"syna_dev_resume");
    iVar2 = syna_dev_enter_normal_sensing(plVar7);
    if (-1 < iVar2) goto LAB_00112fb8;
    puVar5 = &DAT_0013cd80;
LAB_00112fe0:
    _printk(puVar5,"syna_dev_resume");
    bVar1 = *(byte *)(lVar8 + 0xbc);
  }
  if (((bVar1 & 1) == 0) && (pcVar6 = *(code **)(lVar8 + 0x40), pcVar6 != (code *)0x0)) {
    if (*(int *)(pcVar6 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x113050);
      (*pcVar6)();
    }
    (*pcVar6)(lVar8 + 8,1);
  }
  *(undefined1 *)(plVar7 + 0xb0) = 0;
  _printk(&DAT_001375c2,"syna_dev_set_screen_on_fp_mode");
  iVar2 = syna_tcm_set_dynamic_config(*plVar7,0xd4,3,uVar3);
  if (iVar2 < 0) {
    _printk(&DAT_0013be12,"syna_dev_set_screen_on_fp_mode");
    _printk(&DAT_00135f9d,"syna_dev_resume");
  }
  if ((syna_usb_detect_flag == '\x01') &&
     (iVar2 = syna_dev_set_charger_mode(plVar7,1,uVar3), iVar2 != 0)) {
    _printk(&DAT_0013e007,"syna_dev_resume");
  }
  syna_dev_set_display_rotation(plVar7,(int)plVar7[0xc1],uVar3);
  if (*(int *)((long)plVar7 + 0x5dc) == 0) {
    uVar3 = syna_dev_set_tp_report_rate(plVar7,(int)plVar7[0xbf],uVar3);
  }
  else {
    iVar2 = syna_dev_set_play_game(plVar7,1,uVar3);
    if (iVar2 != 0) {
      _printk(&DAT_00135157,"syna_dev_resume");
    }
    syna_dev_set_tp_report_rate(plVar7,(int)plVar7[0xbf],uVar3);
    syna_dev_set_sensibility_level(plVar7,*(undefined4 *)((long)plVar7 + 0x5fc),uVar3);
    syna_dev_set_follow_hand_level(plVar7,(int)plVar7[0xc0],uVar3);
    uVar3 = syna_dev_set_stability_level(plVar7,*(undefined4 *)((long)plVar7 + 0x604),uVar3);
  }
  *(undefined4 *)(plVar7 + 0xbd) = *(undefined4 *)((long)plVar7 + 0x5ec);
  *(undefined4 *)(plVar7 + 0xbe) = *(undefined4 *)((long)plVar7 + 0x5f4);
  _printk(&DAT_0013bf03,"syna_dev_resume",(int)plVar7[0xb6]);
  _printk(&DAT_0013c5f8,"syna_dev_resume",*(undefined4 *)((long)plVar7 + 0x5c4));
  _printk(&DAT_00138965,"syna_dev_resume",*(undefined4 *)((long)plVar7 + 0x5d4));
  _printk(&DAT_00133f2a,"syna_dev_resume",(int)plVar7[0xbd]);
  _printk(&DAT_0013a09e,"syna_dev_resume",(int)plVar7[0xbe]);
LAB_00112ddc:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}

