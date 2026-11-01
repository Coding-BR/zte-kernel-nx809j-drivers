
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
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108cdc);
    (*pcVar7)();
  }
  (*pcVar7)(lVar9,2);
  pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x118);
  if (*(int *)(pcVar7 + -4) != -0x2c84916b) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108d08);
    (*pcVar7)();
  }
  (*pcVar7)(lVar9,2);
  iVar2 = 99;
  do {
    if (*pbVar11 == 0x55) {
      pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x60);
      if (*(int *)(pcVar7 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108d6c);
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
        if (iVar2 + 800U < uVar3) goto LAB_00108e68;
        iVar10 = 0;
        goto LAB_00108ee0;
      }
      break;
    }
    if ((*(byte *)(param_1 + -0x10) & 1) != 0) goto LAB_00108db0;
    __const_udelay(0x418958);
    iVar2 = iVar2 + -1;
  } while (iVar2 != -1);
  _printk(&DAT_00111076,"haptic_hv",0xe7e,"tiktap_work_routine",*pbVar11);
  goto LAB_00108da8;
LAB_00108ee0:
  do {
    pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x178);
    if (*(int *)(pcVar7 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108f04);
      (*pcVar7)();
    }
    uVar4 = (*pcVar7)(lVar9);
    pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0x160);
    if (*(int *)(pcVar7 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108f30);
      (*pcVar7)();
    }
    bVar1 = (*pcVar7)(lVar9);
    if ((bVar1 & 0xf) == 0) {
      puVar5 = &DAT_00110d30;
      uVar6 = 0xe9d;
LAB_00109064:
      _printk(puVar5,"haptic_hv",uVar6,"tiktap_work_routine",bVar1);
      goto LAB_00109068;
    }
    bVar1 = *pbVar11;
    if ((*(byte *)(param_1 + -0x10) & 1) != 0) {
LAB_00109020:
      puVar5 = &DAT_00110d71;
      uVar6 = 0xea3;
      goto LAB_00109064;
    }
    if (bVar1 == 0x55) {
      if ((uVar4 & 1) == 0) goto LAB_00108eb0;
      _printk(&DAT_0010ff6e,"haptic_hv",0xea7,"tiktap_work_routine",iVar10,pbVar11[1],
              (long)*(short *)(pbVar11 + 2));
      _printk(&DAT_00111967,"haptic_hv",0xeab,"tiktap_work_routine",(long)*(short *)(pbVar11 + 2),
              *pbVar11,pbVar11[0x18],pbVar11[0x19],pbVar11[0x22],pbVar11[0x24]);
      pcVar7 = *(code **)(*(long *)(param_1 + -0x60) + 0xd0);
      if (*(int *)(pcVar7 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x108fec);
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
      if ((bVar1 == 0xff) || (bVar1 == 0xaa)) goto LAB_00109020;
LAB_00108eb0:
      __const_udelay(0x418958);
    }
    local_78 = 0;
    uStack_70 = 0;
    ktime_get_coarse_real_ts64(&local_78);
    timespec64_to_jiffies(&local_78);
    uVar3 = jiffies_to_msecs();
  } while (uVar3 <= iVar2 + 800U);
LAB_00108e68:
  _printk(&DAT_0010f16e,"haptic_hv",0xe96,"tiktap_work_routine");
LAB_00109068:
  uVar4 = cpu_latency_qos_request_active(aw_pm_qos_req_vb);
  if ((uVar4 & 1) != 0) {
    cpu_latency_qos_remove_request(aw_pm_qos_req_vb);
  }
LAB_00108da8:
  *(undefined1 *)(param_1 + -0x10) = 1;
LAB_00108db0:
  mutex_unlock(lVar8);
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

