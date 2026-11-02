
void tiktap_work_routine(long param_1)

{
  byte bVar1;
  int iVar2;
  uint uVar3;
  ulong uVar4;
  undefined *puVar5;
  undefined8 uVar6;
  code *pcVar7;
  long lVar8;
  long lVar9;
  int iVar10;
  byte *pbVar11;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar9 = sp_el0;
  lVar8 = param_1 + -0x338;
  local_68 = *(long *)(lVar9 + 0x710);
  lVar9 = param_1 + -0x628;
  pbVar11 = *(byte **)(param_1 + -0x18);
  mutex_lock(lVar8);
  *(undefined1 *)(param_1 + -0x10) = 0;
  pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x98);
  if (*(int *)(pcVar7 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x109c3c);
    (*pcVar7)();
  }
  (*pcVar7)(lVar9,2);
  pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x118);
  if (*(int *)(pcVar7 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x109c68);
    (*pcVar7)();
  }
  (*pcVar7)(lVar9,2);
  iVar2 = 99;
  do {
    if (*pbVar11 == 0x55) {
      pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x60);
      if (*(int *)(pcVar7 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x109ccc);
        (*pcVar7)();
      }
      (*pcVar7)(lVar9,1);
      __const_udelay(0x418958);
      if (0 < iVar2) {
        *(undefined1 *)(param_1 + -0xf) = 1;
        mutex_unlock(lVar8);
        lVar8 = param_1 + -0x2b8;
        mutex_lock(lVar8);
        uVar4 = cpu_latency_qos_request_active(aw_pm_qos_req_vb);
        if ((uVar4 & 1) == 0) {
          cpu_latency_qos_add_request(aw_pm_qos_req_vb,0);
        }
        local_78 = 0;
        uStack_70 = 0;
        ktime_get_coarse_real_ts64(&local_78);
        timespec64_to_jiffies(&local_78);
        iVar2 = jiffies_to_msecs();
        local_78 = 0;
        uStack_70 = 0;
        ktime_get_coarse_real_ts64(&local_78);
        timespec64_to_jiffies(&local_78);
        uVar3 = jiffies_to_msecs();
        if (iVar2 + 800U < uVar3) goto LAB_00109dc8;
        iVar10 = 0;
        goto LAB_00109e40;
      }
      break;
    }
    if ((*(byte *)(param_1 + -0x10) & 1) != 0) goto LAB_00109d10;
    __const_udelay(0x418958);
    iVar2 = iVar2 + -1;
  } while (iVar2 != -1);
  _printk(&DAT_0010b193,"haptic_hv",0xe7e,"tiktap_work_routine",*pbVar11);
  goto LAB_00109d08;
LAB_00109e40:
  do {
    pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x178);
    if (*(int *)(pcVar7 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x109e64);
      (*pcVar7)();
    }
    uVar4 = (*pcVar7)(lVar9);
    pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x160);
    if (*(int *)(pcVar7 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x109e90);
      (*pcVar7)();
    }
    bVar1 = (*pcVar7)(lVar9);
    if ((bVar1 & 0xf) == 0) {
      puVar5 = &DAT_0010aff7;
      uVar6 = 0xe9d;
LAB_00109fc4:
      _printk(puVar5,"haptic_hv",uVar6,"tiktap_work_routine",bVar1);
      goto LAB_00109fc8;
    }
    bVar1 = *pbVar11;
    if ((*(byte *)(param_1 + -0x10) & 1) != 0) {
LAB_00109f80:
      puVar5 = &DAT_0010b038;
      uVar6 = 0xea3;
      goto LAB_00109fc4;
    }
    if (bVar1 == 0x55) {
      if ((uVar4 & 1) == 0) goto LAB_00109e10;
      _printk(&DAT_0010a990,"haptic_hv",0xea7,"tiktap_work_routine",iVar10,pbVar11[1],
              (long)*(short *)(pbVar11 + 2));
      _printk(&DAT_0010b654,"haptic_hv",0xeab,"tiktap_work_routine",(long)*(short *)(pbVar11 + 2),
              *pbVar11,pbVar11[0x18],pbVar11[0x19],pbVar11[0x22],pbVar11[0x24]);
      pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0xd0);
      if (*(int *)(pcVar7 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x109f4c);
        (*pcVar7)();
      }
      (*pcVar7)(lVar9,pbVar11 + 0x18,(long)*(short *)(pbVar11 + 2));
      *pbVar11 = 0xaa;
      pbVar11 = *(byte **)(pbVar11 + 8);
      local_78 = 0;
      uStack_70 = 0;
      ktime_get_coarse_real_ts64(&local_78);
      timespec64_to_jiffies(&local_78);
      iVar2 = jiffies_to_msecs();
      iVar10 = iVar10 + 1;
    }
    else {
      if ((bVar1 == 0xff) || (bVar1 == 0xaa)) goto LAB_00109f80;
LAB_00109e10:
      __const_udelay(0x418958);
    }
    local_78 = 0;
    uStack_70 = 0;
    ktime_get_coarse_real_ts64(&local_78);
    timespec64_to_jiffies(&local_78);
    uVar3 = jiffies_to_msecs();
  } while (uVar3 <= iVar2 + 800U);
LAB_00109dc8:
  _printk(&DAT_0010a38e,"haptic_hv",0xe96,"tiktap_work_routine");
LAB_00109fc8:
  uVar4 = cpu_latency_qos_request_active(aw_pm_qos_req_vb);
  if ((uVar4 & 1) != 0) {
    cpu_latency_qos_remove_request(aw_pm_qos_req_vb);
  }
LAB_00109d08:
  *(undefined1 *)(param_1 + -0x10) = 1;
LAB_00109d10:
  mutex_unlock(lVar8);
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

