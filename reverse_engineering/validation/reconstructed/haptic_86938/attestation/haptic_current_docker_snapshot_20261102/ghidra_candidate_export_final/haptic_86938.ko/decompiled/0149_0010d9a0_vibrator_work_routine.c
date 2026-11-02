
void vibrator_work_routine(long param_1)

{
  char cVar1;
  uint uVar2;
  undefined *puVar3;
  uint uVar4;
  undefined8 uVar5;
  code *pcVar6;
  long lVar7;
  undefined4 uVar8;
  uint *puVar9;
  
  lVar7 = param_1 + -0x428;
  mutex_lock(param_1 + -0x138);
  pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x118);
  if (*(int *)(pcVar6 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10d9f4);
    (*pcVar6)();
  }
  (*pcVar6)(lVar7,1);
  pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x38);
  if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10da1c);
    (*pcVar6)();
  }
  (*pcVar6)(lVar7);
  if (*(int *)(param_1 + -1000) == 0) goto LAB_0010da2c;
  puVar9 = (uint *)(param_1 + -0x3d4);
  _printk(&DAT_001131f0,"haptic_hv",0x3c2,"ram_select_waveform",*puVar9);
  uVar4 = *puVar9;
  if ((int)uVar4 < 1) {
    _printk(&DAT_00112244,"haptic_hv",0x3c4,"ram_select_waveform");
  }
  else {
    *(undefined1 *)(param_1 + -0x40d) = 1;
    if (uVar4 < *(byte *)(param_1 + 0x3c)) {
      uVar8 = 0;
      uVar5 = 3;
    }
    else if (uVar4 < *(byte *)(param_1 + 0x3d)) {
      uVar8 = 0;
      uVar5 = 2;
    }
    else if (uVar4 < *(byte *)(param_1 + 0x3e)) {
      uVar8 = 0;
      uVar5 = 1;
    }
    else {
      uVar5 = 4;
      uVar8 = 0xf;
      *(undefined1 *)(param_1 + -0x40d) = 5;
    }
    _printk(&DAT_0011234a,"haptic_hv",0x3d6,"ram_select_waveform",uVar4,uVar5);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0xc0);
    if (*(int *)(pcVar6 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10db58);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,0,uVar5);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 200);
    if (*(int *)(pcVar6 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10db88);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,0,uVar8);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0xc0);
    if (*(int *)(pcVar6 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10dbb8);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,1,0);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 200);
    if (*(int *)(pcVar6 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10dbe8);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,1,0);
  }
  cVar1 = *(char *)(param_1 + -0x40d);
  if (cVar1 == '\x04') {
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x48);
    if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10dcd0);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7);
  }
  else {
    if (cVar1 != '\x05') {
      if (cVar1 == '\x01') {
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x88);
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10dd5c);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,*(undefined4 *)(param_1 + -0x3f4));
        _printk(&DAT_00112642,"haptic_hv",0x299,"ram_vbat_comp");
        uVar4 = (uint)*(byte *)(param_1 + 0x6f);
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0xa0);
        if (*(byte *)(param_1 + 0x39) <= (byte)(*(byte *)(param_1 + 0x6f) - 1)) {
          uVar4 = *(uint *)(param_1 + -0x3f8);
        }
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10ddc0);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,uVar4);
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x98);
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10ddec);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,1);
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x60);
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10de18);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,1);
      }
      else {
        _printk(&DAT_00113e0e,"haptic_hv",0x40b,"vibrator_work_routine");
      }
      goto LAB_0010da2c;
    }
    if (*(char *)(param_1 + -0x40c) == '\x01') {
      pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x40);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10dc38);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      uVar4 = *(uint *)(param_1 + -0x3c0);
      if (uVar4 < 0x1195) {
        uVar2 = 0;
        if (uVar4 != 0) {
          uVar2 = (uint)(*(int *)(param_1 + -0x3f4) * 0x1194) / uVar4;
        }
        pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x88);
        if (0xbf < (int)uVar2) {
          uVar2 = 0xc0;
        }
        if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8229,0x10ded0);
          (*pcVar6)();
        }
        (*pcVar6)(lVar7,uVar2);
        puVar3 = &DAT_00112bee;
        uVar5 = 0x292;
        goto LAB_0010def0;
      }
    }
    else {
      pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x88);
      if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10de6c);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7,*(undefined4 *)(param_1 + -0x3f4));
      puVar3 = &DAT_00112642;
      uVar5 = 0x295;
LAB_0010def0:
      _printk(puVar3,"haptic_hv",uVar5,"ram_vbat_comp");
    }
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x98);
    if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10dc78);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,5);
    pcVar6 = *(code **)(*(long *)(param_1 + 0x1a0) + 0x60);
    if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10dca4);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,1);
  }
  hrtimer_start_range_ns
            (param_1 + -0xf8,
             (long)(((int)*puVar9 % 1000) * 1000000) + (long)((int)*puVar9 / 1000) * 1000000000,0,1)
  ;
LAB_0010da2c:
  mutex_unlock(param_1 + -0x138);
  return;
}

