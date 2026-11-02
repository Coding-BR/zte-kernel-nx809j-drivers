
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

uint * zlog_register_client(uint *param_1)

{
  uint uVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  long lVar5;
  undefined1 *puVar6;
  undefined8 uVar7;
  ulong *puVar8;
  uint *puVar9;
  ulong uVar10;
  char *pcVar11;
  uint *__dest;
  char *pcVar12;
  long lVar13;
  
  if ((DAT_00104014 & 1) == 0) {
    _printk(&DAT_001016bd,"zlog_register_client","zlog_register_client");
  }
  else if (param_1 == (uint *)0x0) {
    _printk(&DAT_00101426,"zlog_register_client");
  }
  else {
    uVar10 = 0;
    puVar9 = &zlog_exact_bss_base;
    do {
      mutex_lock(puVar9 + 0x2c);
      if (((((char)puVar9[0x46] != '\0') && (puVar9[0x38] == *param_1)) &&
          (iVar4 = strncmp((char *)(puVar9 + 1),*(char **)(param_1 + 2),0x1f), iVar4 == 0)) &&
         (((iVar4 = strncmp((char *)(puVar9 + 9),*(char **)(param_1 + 4),0x1f), iVar4 == 0 &&
           (iVar4 = strncmp((char *)(puVar9 + 0x11),*(char **)(param_1 + 6),0x3f), iVar4 == 0)) &&
          (iVar4 = strncmp((char *)(puVar9 + 0x21),*(char **)(param_1 + 8),0x1f), iVar4 == 0)))) {
        mutex_unlock(puVar9 + 0x2c);
        _printk(&DAT_001012b0,"zlog_get_already_registered_client",
                "zlog_get_already_registered_client",*param_1,*(undefined8 *)(param_1 + 2));
        if ((uVar10 & 0xffffffe0) == 0) {
          puVar6 = &DAT_0010183a;
          __dest = puVar9 + 1;
          uVar1 = *puVar9;
          goto LAB_0010076c;
        }
        break;
      }
      mutex_unlock(puVar9 + 0x2c);
      uVar10 = uVar10 + 1;
      puVar9 = puVar9 + 0x48;
    } while (uVar10 != 0x20);
    _printk(&DAT_0010147c,"zlog_register_client",*(undefined8 *)(param_1 + 2));
    lVar13 = 0;
    pcVar12 = &DAT_00101c68;
    do {
      pcVar11 = pcVar12 + -0x68;
      mutex_lock(pcVar11);
      if (*pcVar12 == '\0') {
        mutex_unlock(pcVar11);
        if ((uint)lVar13 < 0x20) {
          mutex_lock(pcVar11);
          lVar5 = __kmalloc_cache_noprof(_zlog_write_internal,0xdc0,0x800);
          *(long *)(pcVar12 + -0x10) = lVar5;
          if (lVar5 == 0) {
            _printk(&DAT_0010163e,"zlog_register_client");
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
          puVar6 = &zlog_exact_rodata_str_base;
LAB_0010076c:
          _printk(puVar6,"zlog_register_client",__dest,uVar1);
          return puVar9;
        }
        break;
      }
      mutex_unlock(pcVar11);
      lVar13 = lVar13 + 1;
      pcVar12 = pcVar12 + 0x120;
    } while (lVar13 != 0x20);
    _printk(&DAT_001011da,"zlog_register_client",0x20);
  }
  return (uint *)0x0;
}

