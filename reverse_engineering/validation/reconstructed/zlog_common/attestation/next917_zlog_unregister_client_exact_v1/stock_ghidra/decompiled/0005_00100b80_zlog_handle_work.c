
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zlog_handle_work(void)

{
  ulong *puVar1;
  ulong uVar2;
  char cVar3;
  bool bVar4;
  undefined8 uVar5;
  code *pcVar6;
  uint uVar7;
  int iVar8;
  int iVar9;
  char *__s;
  ulong uVar10;
  undefined *puVar11;
  long lVar12;
  ulong uVar13;
  ulong uVar14;
  undefined *puVar15;
  ulong local_128;
  ulong local_120;
  undefined8 local_118;
  undefined8 uStack_110;
  undefined4 local_108;
  long local_100 [2];
  char local_f0 [128];
  long local_70;
  
  lVar12 = sp_el0;
  local_70 = *(long *)(lVar12 + 0x710);
  _printk(&DAT_00103b8c,"zlog_handle_work","zlog_handle_work");
  uVar10 = 0;
  puVar11 = &DAT_00101568;
  uVar5 = sp_el0;
  do {
    if (puVar11[0x68] != '\0') {
      mutex_lock(puVar11);
      puVar15 = puVar11 + -0xac;
      _printk(&DAT_00103b5a,"zlog_handle_work",uVar10 & 0xffffffff,puVar15,
              *(undefined8 *)(puVar11 + 0x38));
      puVar1 = (ulong *)(puVar11 + 0x38);
      Hint_Prefetch(puVar1,2,0,1);
      do {
        uVar13 = *puVar1;
        cVar3 = '\x01';
        bVar4 = (bool)ExclusiveMonitorPass(puVar1,0x10);
        if (bVar4) {
          *puVar1 = uVar13 & 0xfffffffffffffff7;
          cVar3 = ExclusiveMonitorsStatus();
        }
      } while (cVar3 != '\0');
      DataMemoryBarrier(2,3);
      mutex_unlock(puVar11);
      if (((uint)uVar13 >> 3 & 1) != 0) {
        mutex_lock(puVar11);
        uVar13 = *(long *)(puVar11 + 0x48) + 0x1ba;
        mutex_unlock(puVar11);
        __s = (char *)__kmalloc_noprof(uVar13,0xdc0);
        if (__s == (char *)0x0) {
          _printk(&DAT_00104032,"zlog_create_event");
          _printk(&DAT_00103c96,"zlog_report_event");
        }
        else {
          local_f0[0x70] = '\0';
          local_f0[0x71] = '\0';
          local_f0[0x72] = '\0';
          local_f0[0x73] = '\0';
          local_f0[0x74] = '\0';
          local_f0[0x75] = '\0';
          local_f0[0x76] = '\0';
          local_f0[0x77] = '\0';
          local_f0[0x78] = '\0';
          local_f0[0x79] = '\0';
          local_f0[0x7a] = '\0';
          local_f0[0x7b] = '\0';
          local_f0[0x7c] = '\0';
          local_f0[0x7d] = '\0';
          local_f0[0x7e] = '\0';
          local_f0[0x7f] = '\0';
          local_f0[0x60] = '\0';
          local_f0[0x61] = '\0';
          local_f0[0x62] = '\0';
          local_f0[99] = '\0';
          local_f0[100] = '\0';
          local_f0[0x65] = '\0';
          local_f0[0x66] = '\0';
          local_f0[0x67] = '\0';
          local_f0[0x68] = '\0';
          local_f0[0x69] = '\0';
          local_f0[0x6a] = '\0';
          local_f0[0x6b] = '\0';
          local_f0[0x6c] = '\0';
          local_f0[0x6d] = '\0';
          local_f0[0x6e] = '\0';
          local_f0[0x6f] = '\0';
          local_f0[0x50] = '\0';
          local_f0[0x51] = '\0';
          local_f0[0x52] = '\0';
          local_f0[0x53] = '\0';
          local_f0[0x54] = '\0';
          local_f0[0x55] = '\0';
          local_f0[0x56] = '\0';
          local_f0[0x57] = '\0';
          local_f0[0x58] = '\0';
          local_f0[0x59] = '\0';
          local_f0[0x5a] = '\0';
          local_f0[0x5b] = '\0';
          local_f0[0x5c] = '\0';
          local_f0[0x5d] = '\0';
          local_f0[0x5e] = '\0';
          local_f0[0x5f] = '\0';
          local_f0[0x40] = '\0';
          local_f0[0x41] = '\0';
          local_f0[0x42] = '\0';
          local_f0[0x43] = '\0';
          local_f0[0x44] = '\0';
          local_f0[0x45] = '\0';
          local_f0[0x46] = '\0';
          local_f0[0x47] = '\0';
          local_f0[0x48] = '\0';
          local_f0[0x49] = '\0';
          local_f0[0x4a] = '\0';
          local_f0[0x4b] = '\0';
          local_f0[0x4c] = '\0';
          local_f0[0x4d] = '\0';
          local_f0[0x4e] = '\0';
          local_f0[0x4f] = '\0';
          local_f0[0x30] = '\0';
          local_f0[0x31] = '\0';
          local_f0[0x32] = '\0';
          local_f0[0x33] = '\0';
          local_f0[0x34] = '\0';
          local_f0[0x35] = '\0';
          local_f0[0x36] = '\0';
          local_f0[0x37] = '\0';
          local_f0[0x38] = '\0';
          local_f0[0x39] = '\0';
          local_f0[0x3a] = '\0';
          local_f0[0x3b] = '\0';
          local_f0[0x3c] = '\0';
          local_f0[0x3d] = '\0';
          local_f0[0x3e] = '\0';
          local_f0[0x3f] = '\0';
          local_f0[0x20] = '\0';
          local_f0[0x21] = '\0';
          local_f0[0x22] = '\0';
          local_f0[0x23] = '\0';
          local_f0[0x24] = '\0';
          local_f0[0x25] = '\0';
          local_f0[0x26] = '\0';
          local_f0[0x27] = '\0';
          local_f0[0x28] = '\0';
          local_f0[0x29] = '\0';
          local_f0[0x2a] = '\0';
          local_f0[0x2b] = '\0';
          local_f0[0x2c] = '\0';
          local_f0[0x2d] = '\0';
          local_f0[0x2e] = '\0';
          local_f0[0x2f] = '\0';
          local_f0[0x10] = '\0';
          local_f0[0x11] = '\0';
          local_f0[0x12] = '\0';
          local_f0[0x13] = '\0';
          local_f0[0x14] = '\0';
          local_f0[0x15] = '\0';
          local_f0[0x16] = '\0';
          local_f0[0x17] = '\0';
          local_f0[0x18] = '\0';
          local_f0[0x19] = '\0';
          local_f0[0x1a] = '\0';
          local_f0[0x1b] = '\0';
          local_f0[0x1c] = '\0';
          local_f0[0x1d] = '\0';
          local_f0[0x1e] = '\0';
          local_f0[0x1f] = '\0';
          local_f0[0] = '\0';
          local_f0[1] = '\0';
          local_f0[2] = '\0';
          local_f0[3] = '\0';
          local_f0[4] = '\0';
          local_f0[5] = '\0';
          local_f0[6] = '\0';
          local_f0[7] = '\0';
          local_f0[8] = '\0';
          local_f0[9] = '\0';
          local_f0[10] = '\0';
          local_f0[0xb] = '\0';
          local_f0[0xc] = '\0';
          local_f0[0xd] = '\0';
          local_f0[0xe] = '\0';
          local_f0[0xf] = '\0';
          mutex_lock(puVar11);
          local_100[0] = 0;
          local_100[1] = 0;
          local_108 = 0;
          local_118 = 0;
          uStack_110 = 0;
          local_128 = 0;
          local_120 = 0;
          ktime_get_real_ts64(local_100);
          local_100[0] = local_100[0] - _sys_tz * 0x3c;
          rtc_time64_to_tm(local_100[0],&local_128);
          uVar7 = sprintf(local_f0,"[%04d-%02d-%02d %02d:%02d:%02d]",
                          (ulong)(local_118._4_4_ + 0x76c),(ulong)((int)local_118 + 1),
                          local_120 >> 0x20,local_120 & 0xffffffff,local_128 >> 0x20,
                          local_128 & 0xffffffff);
          iVar8 = snprintf(__s,uVar13,"MOD_NO: %d; ",(ulong)*(uint *)(puVar11 + 0x30));
          iVar9 = snprintf(__s + iVar8,uVar13 - (long)iVar8,"ENO: 0x%x; ",
                           (ulong)(*(uint *)(puVar11 + 0x34) | *(int *)(puVar11 + 0x30) << 0x18));
          iVar9 = iVar9 + iVar8;
          if (0 < (int)uVar7) {
            if (0x7f < uVar7) goto LAB_00100f84;
            local_f0[uVar7] = '\0';
            iVar8 = snprintf(__s + iVar9,uVar13 - (long)iVar9,"TIME: %s; ",local_f0);
            iVar9 = iVar8 + iVar9;
          }
          iVar8 = snprintf(__s + iVar9,uVar13 - (long)iVar9,"CLT_NAME: %s; ",puVar15);
          iVar8 = iVar8 + iVar9;
          iVar9 = snprintf(__s + iVar8,uVar13 - (long)iVar8,"DEV_NAME: %s; ",puVar11 + -0x8c);
          iVar9 = iVar9 + iVar8;
          iVar8 = snprintf(__s + iVar9,uVar13 - (long)iVar9,"MOD_NAME: %s; ",puVar11 + -0x2c);
          iVar8 = iVar8 + iVar9;
          iVar9 = snprintf(__s + iVar8,uVar13 - (long)iVar8,"IC_NAME: %s; ",puVar11 + -0x6c);
          iVar9 = iVar9 + iVar8;
          iVar8 = snprintf(__s + iVar9,uVar13 - (long)iVar9,"CONTENT: ");
          uVar14 = (ulong)(iVar8 + iVar9);
          uVar2 = 0;
          if (uVar14 <= uVar13) {
            uVar2 = uVar13 - uVar14;
          }
          if (uVar2 < *(ulong *)(puVar11 + 0x48)) {
            __fortify_panic(0x11);
LAB_00100f84:
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x5512,0x100f88);
            (*pcVar6)();
          }
          memcpy(__s + uVar14,*(void **)(puVar11 + 0x58),*(ulong *)(puVar11 + 0x48));
          lVar12 = *(long *)(puVar11 + 0x48);
          mutex_unlock(puVar11);
          iVar9 = zlog_write_internal(__s,lVar12 + uVar14);
          if (iVar9 < 0) {
            _printk(&DAT_00103eb0,"zlog_report_event");
          }
          kfree(__s);
        }
        _printk(&DAT_00103e01,"zlog_handle_work",puVar15);
        zlog_reset_client(puVar11 + -0xb0);
      }
    }
    uVar10 = uVar10 + 1;
    puVar11 = puVar11 + 0x120;
    if (uVar10 == 0x20) {
      _printk(&DAT_00104018,"zlog_handle_work","zlog_handle_work");
      lVar12 = sp_el0;
      if (*(long *)(lVar12 + 0x710) == local_70) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
  } while( true );
}

