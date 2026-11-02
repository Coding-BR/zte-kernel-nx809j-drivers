
void audio_work_routine(long param_1)

{
  uint uVar1;
  char cVar2;
  uint uVar3;
  int iVar4;
  long *plVar5;
  undefined1 uVar6;
  uint uVar7;
  long lVar8;
  code *pcVar9;
  long *extraout_x9;
  long *extraout_x9_00;
  long lVar10;
  long *extraout_x10;
  long *plVar11;
  long *plVar12;
  
  mutex_lock(param_1 + -0x70);
  plVar11 = *(long **)(param_1 + 0x38);
  plVar5 = (long *)(param_1 + 0x30);
  *(undefined8 *)(param_1 + 0x48) = 0;
  *(undefined8 *)(param_1 + 0x50) = 0;
  *(undefined8 *)(param_1 + 0x40) = 0;
  if (plVar11 == plVar5) {
    _printk(&DAT_00111a12,"haptic_hv",0x7a2,"audio_work_routine");
  }
  else {
    if ((long *)*plVar5 == plVar5) {
      uVar7 = 0;
    }
    else {
      uVar7 = (uint)*(byte *)((long *)*plVar5 + -1);
    }
    uVar3 = uVar7 - *(byte *)(plVar11 + -1);
    uVar1 = uVar3 + 0x20;
    if (*(byte *)(plVar11 + -1) <= uVar7) {
      uVar1 = uVar3;
    }
    if (2 < uVar1) {
      uVar7 = 0;
      do {
        if (plVar11 == plVar5) break;
        plVar12 = (long *)plVar11[1];
        if ((*(char *)((long)plVar11 + -6) == '\0') && ((*(byte *)((long)plVar11 + -7) & 0xf) == 1))
        {
          if (((long *)*plVar12 == plVar11) && (lVar8 = *plVar11, *(long **)(lVar8 + 8) == plVar11))
          {
            *(long **)(lVar8 + 8) = plVar12;
            *plVar12 = lVar8;
          }
          else {
            __list_del_entry_valid_or_report(plVar11);
            plVar11 = extraout_x9;
          }
          *plVar11 = -0x2152ffffffffff00;
          plVar11[1] = -0x2152fffffffffede;
          kfree(plVar11 + -1);
          uVar7 = uVar7 + 1;
        }
        plVar11 = plVar12;
      } while (uVar7 != uVar1);
    }
  }
  plVar11 = *(long **)(param_1 + 0x38);
  lVar8 = param_1 + -0x560;
  if (plVar11 != plVar5) {
    plVar5 = plVar11 + -1;
    *(char *)(param_1 + 0x40) = (char)*plVar5;
    *(undefined1 *)(param_1 + 0x41) = *(undefined1 *)((long)plVar11 + -7);
    *(undefined1 *)(param_1 + 0x42) = *(undefined1 *)((long)plVar11 + -6);
    *(undefined1 *)(param_1 + 0x45) = *(undefined1 *)((long)plVar11 + -3);
    *(undefined1 *)(param_1 + 0x43) = *(undefined1 *)((long)plVar11 + -5);
    *(undefined1 *)(param_1 + 0x44) = *(undefined1 *)((long)plVar11 + -4);
    plVar12 = (long *)plVar11[1];
    if (((long *)*plVar12 == plVar11) && (lVar10 = *plVar11, *(long **)(lVar10 + 8) == plVar11)) {
      *(long **)(lVar10 + 8) = plVar12;
      *plVar12 = lVar10;
    }
    else {
      __list_del_entry_valid_or_report(plVar11);
      plVar5 = extraout_x10;
      plVar11 = extraout_x9_00;
    }
    *plVar11 = -0x2152ffffffffff00;
    plVar11[1] = -0x2152fffffffffede;
    kfree(plVar5);
  }
  if (*(char *)(param_1 + 0x42) != '\0') {
    _printk(&DAT_001129a8,"haptic_hv",0x7dd,"audio_work_routine",*(undefined1 *)(param_1 + 0x40),
            *(undefined1 *)(param_1 + 0x41),*(char *)(param_1 + 0x42),
            *(undefined1 *)(param_1 + 0x45),*(undefined1 *)(param_1 + 0x43),
            *(undefined1 *)(param_1 + 0x44));
  }
  pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x28);
  if (*(int *)(pcVar9 + -4) != 0x512cf1f0) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10f4c0);
    (*pcVar9)();
  }
  iVar4 = (*pcVar9)(lVar8);
  mutex_unlock(param_1 + -0x70);
  if ((iVar4 == 0) && (*(char *)(param_1 + 0x41) == '\x01')) {
    cVar2 = *(char *)(param_1 + 0x42);
    if (cVar2 == '\x02') {
      mutex_lock(param_1 + -0x270);
      pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x38);
      if (*(int *)(pcVar9 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10f67c);
        (*pcVar9)();
      }
      (*pcVar9)(lVar8);
    }
    else {
      if (cVar2 == '\b') {
        mutex_lock(param_1 + -0x270);
        uVar6 = *(undefined1 *)(param_1 + 0x44);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x88);
      }
      else {
        if (cVar2 != '\x01') {
          return;
        }
        _printk(&DAT_00113bfc,"haptic_hv",0x836,"audio_work_routine");
        mutex_lock(param_1 + -0x270);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x38);
        if (*(int *)(pcVar9 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10f54c);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x98);
        if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10f578);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,1);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0xc0);
        if (*(int *)(pcVar9 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10f5a8);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,0,*(undefined1 *)(param_1 + 0x45));
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0xc0);
        if (*(int *)(pcVar9 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10f5d8);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,1,0);
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 200);
        if (*(int *)(pcVar9 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10f608);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,0,*(undefined1 *)(param_1 + 0x43));
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x88);
        if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10f634);
          (*pcVar9)();
        }
        (*pcVar9)(lVar8,*(undefined1 *)(param_1 + 0x44));
        uVar6 = 1;
        pcVar9 = *(code **)(*(long *)(param_1 + 0x68) + 0x60);
      }
      if (*(int *)(pcVar9 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x10f6b8);
        (*pcVar9)();
      }
      (*pcVar9)(lVar8,uVar6);
    }
    mutex_unlock(param_1 + -0x270);
  }
  return;
}

