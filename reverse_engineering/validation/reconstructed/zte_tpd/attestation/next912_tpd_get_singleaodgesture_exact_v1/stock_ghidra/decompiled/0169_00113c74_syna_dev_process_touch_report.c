
void syna_dev_process_touch_report(char param_1,void *param_2,ulong param_3,long *param_4)

{
  long *plVar1;
  int iVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  undefined8 uVar6;
  uint uVar7;
  uint uVar8;
  long lVar9;
  ulong uVar10;
  long *plVar11;
  int iVar12;
  ulong uVar13;
  ulong uVar14;
  int iVar15;
  char *local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  if (param_4 == (long *)0x0) {
    _printk(&DAT_00134ad2,"syna_dev_process_touch_report");
    iVar5 = -0x16;
    goto LAB_00114084;
  }
  if (param_1 != '\x11') {
    _printk(&DAT_0013712b,"syna_dev_process_touch_report",param_1);
    iVar5 = -0x16;
    goto LAB_00114084;
  }
  if ((*(int *)((long)param_4 + 900) < 1) || (*(char *)((long)param_4 + 0x584) == '\x01')) {
    if ((int)param_4[0xbc] != 0) {
      uVar7 = (uint)param_3;
      param_3 = param_3 & 0xffffffff;
      if (0x31fff < uVar7) {
        uVar7 = 0x32000;
      }
      memcpy((void *)param_4[0x8c],param_2,(ulong)uVar7);
      *(uint *)(param_4 + 0x87) = uVar7;
      *(undefined4 *)(param_4 + 0x8d) = 1;
      __wake_up(param_4 + 0x89,1,1,0);
    }
    iVar5 = syna_tcm_parse_touch_report(*param_4,param_2,param_3,param_4 + 2);
    lVar3 = tpd_cdev;
    if (iVar5 < 0) {
      _printk(&DAT_0013b69e,"syna_dev_process_touch_report");
      goto LAB_00114084;
    }
    lVar9 = param_4[0x76];
    if (lVar9 == 0) goto LAB_00114080;
    uVar7 = *(uint *)(*param_4 + 0x18);
    mutex_lock(param_4 + 0x4f);
    if ((*(int *)((long)param_4 + 0x57c) == 2) && (*(char *)((long)param_4 + 0x2f4) == '\x01')) {
      _printk(&DAT_00136abe,"syna_dev_report_input_events",(int)param_4[0x44]);
      if ((int)param_4[0x44] == 1) {
        _printk(&DAT_00136ae5,"syna_dev_report_input_events");
        ufp_report_gesture_uevent("double_tap=true");
      }
      else if ((int)param_4[0x44] == 0x10) {
        _printk(&DAT_00133ec9,"syna_dev_report_input_events");
        ufp_report_gesture_uevent("single_tap=true");
      }
      else {
        _printk(&DAT_001381be,"syna_dev_report_input_events");
      }
    }
    if ((int)param_4[0x44] == 0x80) {
      uVar6 = 1;
LAB_00113d90:
      report_ufp_uevent(uVar6);
    }
    else if ((int)param_4[0x44] == 0x81) {
      uVar6 = 0;
      goto LAB_00113d90;
    }
    if (*(int *)((long)param_4 + 0x57c) != 2) {
      if (uVar7 == 0) {
LAB_0011403c:
        input_event(lVar9,1,0x14a,0);
        input_event(lVar9,1,0x145,0);
      }
      else {
        uVar10 = 0;
        iVar5 = 0;
        plVar11 = param_4 + 5;
        do {
          if (((char)plVar11[-2] == '\x06') && (*(int *)((long)param_4 + 0x5e4) != 0)) {
            if (ufp_tp_ops == 0) {
              _printk(&DAT_0013459f);
            }
            else if (large_area_ignore_count < 0) {
              if (large_area_uevent_count < 3) {
                local_78 = "large_area=true";
                uStack_70 = 0;
                kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_78);
                _printk(&DAT_0013389c);
                large_area_uevent_count = large_area_uevent_count + 1;
              }
            }
            else {
              large_area_ignore_count = large_area_ignore_count + -1;
              _printk(&DAT_001351aa);
            }
          }
          if (uVar10 == 10) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x1141ac);
            (*pcVar4)();
          }
          uVar8 = (uint)*(byte *)(plVar11 + -2);
          if ((*(char *)((long)param_4 + uVar10 + 0x264) != '\0') || (uVar8 != 0)) {
            if (uVar8 - 1 < 2) {
              uVar13 = (ulong)*(uint *)((long)plVar11 + -0xc);
              if ((int)param_4[0xc3] == 4) {
                iVar15 = *(int *)((long)plVar11 + -4);
                iVar12 = (int)*plVar11;
                uVar13 = uVar13 / 10;
                uVar14 = (ulong)*(uint *)(plVar11 + -1) / 10;
LAB_00113f20:
                input_event(lVar9,3,0x2f,uVar10 & 0xffffffff);
                input_mt_report_slot_state(lVar9,0,1);
                input_event(lVar9,1,0x14a,1);
                input_event(lVar9,1,0x145,1);
                input_event(lVar9,3,0x35,uVar13);
                input_event(lVar9,3,0x36,uVar14);
                iVar2 = iVar15;
                if (iVar15 <= iVar12) {
                  iVar2 = iVar12;
                }
                if (iVar12 <= iVar15) {
                  iVar15 = iVar12;
                }
                input_event(lVar9,3,0x30,iVar2);
                input_event(lVar9,3,0x31,iVar15);
              }
              else {
                iVar12 = (int)*plVar11;
                uVar14 = (ulong)*(uint *)(plVar11 + -1);
                iVar15 = *(int *)((long)plVar11 + -4);
                if (*(char *)(lVar3 + 0x1b) != '\x01') goto LAB_00113f20;
                if (iVar15 <= iVar12) {
                  iVar15 = iVar12;
                }
                tpd_touch_press(lVar9,uVar13,uVar14,uVar10 & 0xffffffff,iVar15,0);
                one_key_report(1,uVar13,uVar14,uVar10 & 0xffffffff);
              }
              iVar5 = iVar5 + 1;
            }
            else if (uVar8 == 0) {
              if ((*(char *)(lVar3 + 0x1b) == '\x01') && ((int)param_4[0xc3] != 4)) {
                tpd_touch_release(lVar9,uVar10 & 0xffffffff);
                one_key_report(0,0xffffffff,0xffffffff,uVar10 & 0xffffffff);
              }
              else {
                input_event(lVar9,3,0x2f,uVar10 & 0xffffffff);
                input_mt_report_slot_state(lVar9,0,0);
              }
            }
          }
          plVar1 = plVar11 + -2;
          plVar11 = (long *)((long)plVar11 + 0x34);
          *(char *)((long)param_4 + uVar10 + 0x264) = (char)*plVar1;
          uVar10 = uVar10 + 1;
        } while (uVar7 != uVar10);
        if (iVar5 == 0) goto LAB_0011403c;
      }
      input_event(lVar9,0,0,0);
    }
    mutex_unlock(param_4 + 0x4f);
  }
LAB_00114080:
  iVar5 = 0;
LAB_00114084:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar5);
}

