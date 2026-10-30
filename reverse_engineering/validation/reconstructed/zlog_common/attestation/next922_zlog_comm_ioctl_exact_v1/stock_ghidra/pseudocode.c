/* 001003e4 zlog_client_notify */

void zlog_client_notify(long param_1,undefined4 param_2)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  undefined *puVar4;
  
  if ((DAT_0010397c & 1) == 0) {
    puVar4 = &DAT_00103f02;
  }
  else {
    if (param_1 != 0) {
      mutex_lock(param_1 + 0xb0);
      *(undefined4 *)(param_1 + 0xe4) = param_2;
      puVar1 = (ulong *)(param_1 + 0xe8);
      Hint_Prefetch(puVar1,2,0,1);
      do {
        cVar2 = '\x01';
        bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
        if (bVar3) {
          *puVar1 = *puVar1 | 8;
          cVar2 = ExclusiveMonitorsStatus();
        }
      } while (cVar2 != '\0');
      mutex_unlock(param_1 + 0xb0);
      cancel_delayed_work(&DAT_001038c0);
      queue_delayed_work_on(0x20,DAT_001038b8,&DAT_001038c0,0x32);
      return;
    }
    puVar4 = &DAT_00103d6e;
  }
  _printk(puVar4,"zlog_client_notify","zlog_client_notify");
  return;
}



/* 001004ac zlog_client_record */

ulong zlog_client_record(long param_1,char *param_2)

{
  ulong uVar1;
  ulong *puVar2;
  char cVar3;
  bool bVar4;
  long lVar5;
  uint uVar6;
  undefined *puVar7;
  long lVar8;
  ulong uVar9;
  
  lVar8 = sp_el0;
  lVar8 = *(long *)(lVar8 + 0x710);
  if ((DAT_0010397c & 1) == 0) {
    puVar7 = &DAT_00103f02;
  }
  else {
    if (param_1 != 0) {
      mutex_lock(param_1 + 0xb0);
      if (*(ulong *)(param_1 + 0xf8) < 0x800) {
        uVar6 = vsnprintf((char *)(*(long *)(param_1 + 0x108) + *(long *)(param_1 + 0xf8)),
                          *(long *)(param_1 + 0x100) + ~*(ulong *)(param_1 + 0xf8),param_2,
                          &stack0xffffffffffffff98);
        uVar9 = (ulong)uVar6;
        if ((int)uVar6 < 0) {
          _printk(&DAT_00103acb,"zlog_client_record","zlog_client_record");
        }
        else {
          uVar1 = *(long *)(param_1 + 0xf8) + uVar9;
          *(ulong *)(param_1 + 0xf8) = uVar1;
          if (*(ulong *)(param_1 + 0x100) <= uVar1) {
            *(ulong *)(param_1 + 0xf8) = *(ulong *)(param_1 + 0x100) - 1;
          }
          puVar2 = (ulong *)(param_1 + 0xe8);
          Hint_Prefetch(puVar2,2,0,1);
          do {
            cVar3 = '\x01';
            bVar4 = (bool)ExclusiveMonitorPass(puVar2,0x10);
            if (bVar4) {
              *puVar2 = *puVar2 | 4;
              cVar3 = ExclusiveMonitorsStatus();
            }
          } while (cVar3 != '\0');
        }
      }
      else {
        _printk(&DAT_00103aa2,"zlog_client_record","zlog_client_record");
        uVar9 = 0;
      }
      mutex_unlock(param_1 + 0xb0);
      goto LAB_0010058c;
    }
    puVar7 = &DAT_00103d6e;
  }
  _printk(puVar7,"zlog_client_record","zlog_client_record");
  uVar9 = 0;
LAB_0010058c:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != lVar8) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar9;
}



/* 00100644 zlog_register_client */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

uint * zlog_register_client(uint *param_1)

{
  uint uVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  long lVar5;
  undefined *puVar6;
  undefined8 uVar7;
  ulong *puVar8;
  uint *puVar9;
  ulong uVar10;
  char *pcVar11;
  uint *__dest;
  char *pcVar12;
  long lVar13;
  
  if ((DAT_0010397c & 1) == 0) {
    _printk(&DAT_00103f02,"zlog_register_client","zlog_register_client");
  }
  else if (param_1 == (uint *)0x0) {
    _printk(&DAT_00103c6b,"zlog_register_client");
  }
  else {
    uVar10 = 0;
    puVar9 = &g_zlog_server;
    do {
      mutex_lock(puVar9 + 0x2c);
      if (((((char)puVar9[0x46] != '\0') && (puVar9[0x38] == *param_1)) &&
          (iVar4 = strncmp((char *)(puVar9 + 1),*(char **)(param_1 + 2),0x1f), iVar4 == 0)) &&
         (((iVar4 = strncmp((char *)(puVar9 + 9),*(char **)(param_1 + 4),0x1f), iVar4 == 0 &&
           (iVar4 = strncmp((char *)(puVar9 + 0x11),*(char **)(param_1 + 6),0x3f), iVar4 == 0)) &&
          (iVar4 = strncmp((char *)(puVar9 + 0x21),*(char **)(param_1 + 8),0x1f), iVar4 == 0)))) {
        mutex_unlock(puVar9 + 0x2c);
        _printk(&DAT_00103af5,"zlog_get_already_registered_client",
                "zlog_get_already_registered_client",*param_1,*(undefined8 *)(param_1 + 2));
        if ((uVar10 & 0xffffffe0) == 0) {
          puVar6 = &DAT_0010407f;
          __dest = puVar9 + 1;
          uVar1 = *puVar9;
          goto LAB_0010095c;
        }
        break;
      }
      mutex_unlock(puVar9 + 0x2c);
      uVar10 = uVar10 + 1;
      puVar9 = puVar9 + 0x48;
    } while (uVar10 != 0x20);
    _printk(&DAT_00103cc1,"zlog_register_client",*(undefined8 *)(param_1 + 2));
    lVar13 = 0;
    pcVar12 = &DAT_001015d0;
    do {
      pcVar11 = pcVar12 + -0x68;
      mutex_lock(pcVar11);
      if (*pcVar12 == '\0') {
        mutex_unlock(pcVar11);
        if ((uint)lVar13 < 0x20) {
          mutex_lock(pcVar11);
          lVar5 = __kmalloc_cache_noprof(___kmalloc_noprof,0xdc0,0x800);
          *(long *)(pcVar12 + -0x10) = lVar5;
          if (lVar5 == 0) {
            _printk(&DAT_00103e83,"zlog_register_client");
            mutex_unlock(pcVar11);
            return (uint *)0x0;
          }
          pcVar12[-0x28] = '\0';
          pcVar12[-0x27] = '\0';
          pcVar12[-0x26] = '\0';
          pcVar12[-0x25] = '\0';
          pcVar12[-0x24] = '\0';
          pcVar12[-0x23] = '\0';
          pcVar12[-0x22] = '\0';
          pcVar12[-0x21] = '\0';
          __dest = (uint *)(pcVar12 + -0x114);
          pcVar12[-0x20] = '\0';
          pcVar12[-0x1f] = '\0';
          pcVar12[-0x1e] = '\0';
          pcVar12[-0x1d] = '\0';
          pcVar12[-0x1c] = '\0';
          pcVar12[-0x1b] = '\0';
          pcVar12[-0x1a] = '\0';
          pcVar12[-0x19] = '\0';
          pcVar12[-0x18] = '\0';
          pcVar12[-0x17] = '\b';
          pcVar12[-0x16] = '\0';
          pcVar12[-0x15] = '\0';
          pcVar12[-0x14] = '\0';
          pcVar12[-0x13] = '\0';
          pcVar12[-0x12] = '\0';
          pcVar12[-0x11] = '\0';
          strncpy((char *)__dest,*(char **)(param_1 + 2),0x1f);
          pcVar12[-0xf5] = '\0';
          if (*(char **)(param_1 + 4) != (char *)0x0) {
            strncpy(pcVar12 + -0xf4,*(char **)(param_1 + 4),0x1f);
            pcVar12[-0xd5] = '\0';
          }
          puVar9 = (uint *)(pcVar12 + -0x118);
          if (*(char **)(param_1 + 6) != (char *)0x0) {
            strncpy(pcVar12 + -0xd4,*(char **)(param_1 + 6),0x3f);
            pcVar12[-0x95] = '\0';
          }
          if (*(char **)(param_1 + 8) != (char *)0x0) {
            strncpy(pcVar12 + -0x94,*(char **)(param_1 + 8),0x1f);
            pcVar12[-0x75] = '\0';
          }
          uVar1 = *param_1;
          *puVar9 = (uint)lVar13;
          *(uint *)(pcVar12 + -0x38) = uVar1;
          uVar7 = *(undefined8 *)(param_1 + 10);
          *pcVar12 = '\x01';
          *(undefined8 *)(pcVar12 + -0x70) = uVar7;
          puVar8 = (ulong *)(pcVar12 + -0x30);
          Hint_Prefetch(puVar8,2,0,1);
          do {
            cVar2 = '\x01';
            bVar3 = (bool)ExclusiveMonitorPass(puVar8,0x10);
            if (bVar3) {
              *puVar8 = *puVar8 | 2;
              cVar2 = ExclusiveMonitorsStatus();
            }
          } while (cVar2 != '\0');
          mutex_unlock(pcVar11);
          uVar1 = *puVar9;
          puVar6 = &DAT_00103981;
LAB_0010095c:
          _printk(puVar6,"zlog_register_client",__dest,uVar1);
          return puVar9;
        }
        break;
      }
      mutex_unlock(pcVar11);
      lVar13 = lVar13 + 1;
      pcVar12 = pcVar12 + 0x120;
    } while (lVar13 != 0x20);
    _printk(&DAT_00103a1f,"zlog_register_client",0x20);
  }
  return (uint *)0x0;
}



/* 00100984 zlog_unregister_client */

void zlog_unregister_client(int *param_1)

{
  ulong *puVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  undefined *puVar5;
  
  if ((DAT_0010397c & 1) == 0) {
    _printk(&DAT_00103f02,"zlog_unregister_client","zlog_unregister_client");
  }
  else {
    iVar2 = *param_1;
    if (iVar2 < 0) {
      puVar5 = &DAT_00103f4e;
    }
    else {
      mutex_lock(param_1 + 0x2c);
      if (*(long *)(param_1 + 0x42) != 0) {
        kfree();
      }
      param_1[0x3c] = 0;
      param_1[0x3d] = 0;
      param_1[0x3e] = 0;
      param_1[0x3f] = 0;
      param_1[0x40] = 0x800;
      param_1[0x41] = 0;
      param_1[1] = 0;
      param_1[2] = 0;
      param_1[3] = 0;
      param_1[4] = 0;
      param_1[5] = 0;
      param_1[6] = 0;
      param_1[7] = 0;
      param_1[8] = 0;
      param_1[9] = 0;
      param_1[10] = 0;
      param_1[0xb] = 0;
      param_1[0xc] = 0;
      param_1[0xd] = 0;
      param_1[0xe] = 0;
      param_1[0xf] = 0;
      param_1[0x10] = 0;
      param_1[0x11] = 0;
      param_1[0x12] = 0;
      param_1[0x13] = 0;
      param_1[0x14] = 0;
      param_1[0x15] = 0;
      param_1[0x16] = 0;
      param_1[0x17] = 0;
      param_1[0x18] = 0;
      param_1[0x19] = 0;
      param_1[0x1a] = 0;
      param_1[0x1b] = 0;
      param_1[0x1c] = 0;
      param_1[0x1d] = 0;
      param_1[0x1e] = 0;
      param_1[0x1f] = 0;
      param_1[0x20] = 0;
      param_1[0x27] = 0;
      param_1[0x28] = 0;
      param_1[0x25] = 0;
      param_1[0x26] = 0;
      param_1[0x23] = 0;
      param_1[0x24] = 0;
      param_1[0x21] = 0;
      param_1[0x22] = 0;
      param_1[9] = 0;
      param_1[10] = 0;
      param_1[0xb] = 0;
      param_1[0xc] = 0;
      param_1[0xd] = 0;
      param_1[0xe] = 0;
      param_1[0xf] = 0;
      param_1[0x10] = 0;
      *param_1 = 0;
      param_1[0x2a] = 0;
      param_1[0x2b] = 0;
      *(undefined1 *)(param_1 + 0x46) = 0;
      puVar1 = (ulong *)(param_1 + 0x3a);
      Hint_Prefetch(puVar1,2,0,1);
      do {
        cVar3 = '\x01';
        bVar4 = (bool)ExclusiveMonitorPass(puVar1,0x10);
        if (bVar4) {
          *puVar1 = *puVar1 | 1;
          cVar3 = ExclusiveMonitorsStatus();
        }
      } while (cVar3 != '\0');
      mutex_unlock(param_1 + 0x2c);
      puVar5 = &DAT_00103ba7;
    }
    _printk(puVar5,"zlog_unregister_client",iVar2);
  }
  return;
}



/* 00100ac0 zlog_reset_client */

void zlog_reset_client(long param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  
  if ((DAT_0010397c & 1) == 0) {
    _printk(&DAT_00103f02,"zlog_reset_client","zlog_reset_client");
  }
  else if (param_1 == 0) {
    _printk(&DAT_001039bb,"zlog_reset_client");
  }
  else {
    mutex_lock(param_1 + 0xb0);
    *(undefined4 *)(param_1 + 0xe4) = 0;
    *(undefined8 *)(param_1 + 0xf0) = 0;
    *(undefined8 *)(param_1 + 0xf8) = 0;
    memset(*(void **)(param_1 + 0x108),0,*(size_t *)(param_1 + 0x100));
    puVar1 = (ulong *)(param_1 + 0xe8);
    Hint_Prefetch(puVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
      if (bVar3) {
        *puVar1 = *puVar1 & 0xfffffffffffffffd;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
    mutex_unlock(param_1 + 0xb0);
  }
  return;
}



/* 00100b80 zlog_handle_work */

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



/* 00100f90 zlog_comm_read */

undefined8 zlog_comm_read(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  return param_3;
}



/* 00100f9c zlog_comm_write */

/* WARNING: Control flow encountered bad instruction data */

undefined8 zlog_comm_write(undefined8 param_1,ulong param_2,long param_3)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  code *pcVar4;
  undefined8 *puVar5;
  ulong uVar6;
  undefined8 uVar7;
  undefined4 *puVar8;
  long lVar9;
  ulong local_48 [2];
  long local_38;
  
  lVar9 = sp_el0;
  local_38 = *(long *)(lVar9 + 0x710);
  local_48[0] = 0;
  local_48[1] = 0;
  if (param_3 == 0x10) {
    puVar5 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar5 + 0x46) >> 5 & 1) != 0) ||
       (uVar6 = param_2, ((uint)*puVar5 >> 0x1a & 1) != 0)) {
      uVar6 = param_2 & (long)(param_2 << 8) >> 8;
    }
    if (uVar6 < 0x7ffffffff1) {
      uVar7 = daif;
      uVar6 = daif;
      daif = uVar6 | 0xc0;
      uVar3 = puVar5[1];
      uVar6 = ttbr1_el1;
      ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar6 & 0xffffffffffff;
      ttbr0_el1 = uVar3;
      InstructionSynchronizationBarrier();
      daif = uVar7;
      uVar6 = __arch_copy_from_user(uVar3,local_48,param_2 & 0xff7fffffffffffff,0x10);
      uVar2 = local_48[0];
      puVar5 = (undefined8 *)daif;
      uVar3 = daif;
      daif = uVar3 | 0xc0;
      uVar3 = ttbr1_el1;
      ttbr0_el1 = (uVar3 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar3 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar5;
      if (uVar6 == 0) {
        iVar1 = (int)local_48[0];
        puVar8 = &g_zlog_server;
        lVar9 = 0x20;
        uVar7 = 0x10;
        do {
          if ((((*(char *)(puVar8 + 0x46) != '\0') && (puVar8[0x38] == iVar1)) &&
              (*(long *)(puVar8 + 0x2a) != 0)) &&
             (pcVar4 = *(code **)(*(long *)(puVar8 + 0x2a) + 8), pcVar4 != (code *)0x0)) {
            if (*(int *)(pcVar4 + -4) != -0x3d5937bb) {
                    /* WARNING: Does not return */
              pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1010cc);
              (*pcVar4)();
            }
            (*pcVar4)(puVar8,uVar2 & 0xffffffff);
          }
          lVar9 = lVar9 + -1;
          puVar8 = puVar8 + 0x48;
        } while (lVar9 != 0);
        goto LAB_0010112c;
      }
    }
    else {
      uVar6 = 0x10;
    }
    if (0x10 < uVar6) {
      __fortify_panic(puVar5,0xf,0);
                    /* WARNING: Bad instruction - Truncating control flow here */
      halt_baddata();
    }
    memset((void *)((long)&local_38 - uVar6),0,uVar6);
    _printk(&DAT_00103d02,"zlog_comm_write");
    uVar7 = 0xfffffffffffffff4;
  }
  else {
    _printk(&DAT_00103fac,"zlog_comm_write",param_3,0x10);
    uVar7 = 0xffffffffffffffea;
  }
LAB_0010112c:
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) == local_38) {
    return uVar7;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101170 zlog_comm_ioctl */

undefined8 zlog_comm_ioctl(void)

{
  return 0;
}



/* 0010117c zlog_comm_open */

undefined8 zlog_comm_open(void)

{
  char cVar1;
  bool bVar2;
  
  Hint_Prefetch(0x103978,2,0,1);
  do {
    cVar1 = '\x01';
    bVar2 = (bool)ExclusiveMonitorPass(0x103978,0x10);
    if (bVar2) {
      cVar1 = ExclusiveMonitorsStatus();
      DAT_00103978 = DAT_00103978 + 1;
    }
  } while (cVar1 != '\0');
  _printk(&DAT_00103dd5,"zlog_comm_open",DAT_00103978);
  return 0;
}



/* 001011ec zlog_comm_release */

undefined8 zlog_comm_release(void)

{
  char cVar1;
  bool bVar2;
  
  Hint_Prefetch(0x103978,2,0,1);
  do {
    cVar1 = '\x01';
    bVar2 = (bool)ExclusiveMonitorPass(0x103978,0x10);
    if (bVar2) {
      cVar1 = ExclusiveMonitorsStatus();
      DAT_00103978 = DAT_00103978 + -1;
    }
  } while (cVar1 != '\0');
  _printk(&DAT_00103feb,"zlog_comm_release",DAT_00103978);
  return 0;
}



/* 00101268 init_module */

undefined8 init_module(void)

{
  undefined *puVar1;
  long lVar2;
  
  memset(&g_zlog_server,0,0x24c8);
  puVar1 = &DAT_00101568;
  lVar2 = 0x20;
  do {
    __mutex_init(puVar1,"&g_zlog_server.client_list[i].client_lock",&zlog_common_init___key);
    lVar2 = lVar2 + -1;
    puVar1 = puVar1 + 0x120;
  } while (lVar2 != 0);
  zlog_comm_create_ctrl_dev();
  DAT_001038b8 = alloc_workqueue(&DAT_00103cff,0x6000a,1,"zlog_handle_service");
  DAT_001038c0 = 0xfffffffe00000;
  DAT_001038c8 = &DAT_001038c8;
  DAT_001038d0 = &DAT_001038c8;
  DAT_001038d8 = zlog_handle_work;
  init_timer_key(&DAT_001038e0,&delayed_work_timer_fn,0x200000,0,0);
  DAT_00103978 = 0;
  DAT_0010397c = 1;
  _printk(&DAT_00103da9,"zlog_common_init","zlog_common_init");
  return 0;
}



/* 0010136c zlog_comm_create_ctrl_dev */

void zlog_comm_create_ctrl_dev(void)

{
  undefined *puVar1;
  int iVar2;
  
  DAT_00103928 = 0xff;
  DAT_00103930 = kstrdup("zlog_comm",0xcc0);
  if (DAT_00103930 != 0) {
    DAT_00103938 = &zlog_comm_fops;
    DAT_00103950 = 0;
    iVar2 = misc_register(&DAT_00103928);
    puVar1 = &DAT_00103f88;
    if (iVar2 != 0) {
      puVar1 = &DAT_00103a63;
    }
    _printk(puVar1,"zlog_comm_create_ctrl_dev",DAT_00103930);
  }
  return;
}



