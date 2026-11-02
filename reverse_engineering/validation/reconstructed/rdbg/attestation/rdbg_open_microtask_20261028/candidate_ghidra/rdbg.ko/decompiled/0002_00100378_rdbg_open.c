
int rdbg_open(long param_1,long param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  int iVar3;
  void *__s;
  char *pcVar4;
  ulong uVar5;
  ulong uVar6;
  int *piVar7;
  long lVar8;
  uint uVar9;
  ulong *puVar10;
  undefined1 *puVar11;
  undefined8 *puVar12;
  ulong uVar13;
  
  if ((param_1 == 0) || (DAT_001000a8 == 0)) {
    _printk(&DAT_00100a66);
    return -0x13;
  }
  uVar9 = *(uint *)(param_1 + 0x4c) & 0xfffff;
  puVar12 = (undefined8 *)(DAT_001000a8 + (ulong)uVar9 * 0x1c8);
  if (*(char *)(puVar12 + 0xc) == '\x01') {
    _dev_err(*puVar12,"%s: Device already opened\n","rdbg_open");
    return -0x11;
  }
  if (0xf < uVar9) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x100864);
    (*pcVar2)();
  }
  lVar8 = (ulong)uVar9 * 0x18;
  uVar5 = *(ulong *)(&DAT_00100d70 + lVar8);
  puVar10 = puVar12 + 0xe;
  *puVar10 = uVar5;
  if (uVar5 == 0) {
    _dev_err(*puVar12,"%s: smem not initialized\n","rdbg_open");
    return -0xc;
  }
  uVar1 = *(undefined4 *)(&DAT_00100d68 + lVar8);
  uVar5 = qcom_smem_get(0xffffffff,uVar1,puVar10);
  puVar12[0xd] = uVar5;
  if (0xfffffffffffff000 < uVar5) {
    _printk(&DAT_00100a82);
    uVar5 = puVar12[0xd];
    if (uVar5 == 0xfffffffffffffffe) {
      uVar5 = qcom_smem_get(uVar9,uVar1,puVar10);
      puVar12[0xd] = uVar5;
    }
  }
  if (uVar5 == 0) {
    _dev_err(*puVar12,"%s: Could not allocate smem memory\n","rdbg_open");
    _printk(&DAT_00100a3f);
    return -0xc;
  }
  uVar6 = uVar5 + 9 & 0xfffffffffffffff8;
  uVar5 = ((long)(((int)uVar5 - (int)uVar6) + (int)(*puVar10 >> 1)) - 0x20U) / 0x88;
  iVar3 = (int)uVar5;
  if (iVar3 < 1) {
LAB_001007e4:
    _dev_err(*puVar12,"%s: Subsystem %s is not debug enabled\n","rdbg_open",
             *(undefined8 *)(&proc_info + lVar8));
    _printk(&DAT_00100cc7);
    return -0x46;
  }
  if (*(int *)(uVar6 + (long)(iVar3 << 7) + (uVar5 & 0x7fffffff) * 4 + 0x10) != -0xff00fe) {
    _printk(&DAT_00100baf,"check_subsystem_debug_enabled");
    goto LAB_001007e4;
  }
  *(undefined4 *)(puVar12 + 1) = 0;
  __init_swait_queue_head(puVar12 + 2,"&x->wait",&init_completion___key);
  iVar3 = request_threaded_irq
                    (*(undefined4 *)((long)puVar12 + 0x2c),0,on_interrupt_from,0x2003,
                     *(undefined8 *)(&proc_info + lVar8),DAT_001000a8 + (ulong)uVar9 * 0x1c8);
  if (iVar3 != 0) {
    _dev_err(*puVar12,"%s: Failed to register interrupt.Err=%d,irqid=%d.\n","rdbg_open",iVar3,
             *(undefined4 *)((long)puVar12 + 0x2c));
    _printk(&DAT_00100b56,iVar3);
    return iVar3;
  }
  __mutex_init(puVar12 + 0x23,"&rdbgdata->write_mutex",&rdbg_open___key);
  if (*(int *)(puVar12 + 0x15) != -0xff0100) {
    puVar11 = (undefined1 *)puVar12[0xd];
    pcVar4 = "%s: smq producer allocation failed\n";
    if ((puVar11 == (undefined1 *)0x0) || ((puVar12[0xe] & 0x1fffffffe) == 0)) goto LAB_00100898;
    uVar13 = (ulong)puVar12[0xe] >> 1;
    uVar5 = (ulong)(puVar11 + 9) & 0xfffffffffffffff8;
    puVar12[0x14] = puVar12 + 0x23;
    puVar12[0xf] = puVar11;
    uVar6 = ((long)(((int)uVar13 + (int)puVar11) - (int)uVar5) - 0x20U) / 0x88;
    iVar3 = (int)uVar6;
    pcVar4 = "%s: smq producer allocation failed\n";
    if (iVar3 < 1) goto LAB_00100898;
    puVar12[0x12] = uVar5;
    *(int *)(puVar12 + 0x13) = iVar3;
    lVar8 = uVar5 + (long)(iVar3 << 7);
    *(undefined4 *)(puVar12 + 0x18) = 1;
    puVar12[0x10] = lVar8;
    puVar12[0x11] = lVar8 + (uVar6 & 0x7fffffff) * 4 + 0x10;
    *puVar11 = 1;
    if (*(int *)(puVar12 + 0x13) == 0) goto LAB_00100898;
    uVar5 = 0;
    lVar8 = 0x10;
    do {
      uVar5 = uVar5 + 1;
      *(undefined2 *)(puVar12[0x10] + lVar8) = 0xffff;
      lVar8 = lVar8 + 4;
      uVar9 = *(uint *)(puVar12 + 0x13);
      uVar6 = (ulong)uVar9;
    } while (uVar5 < uVar6);
    if (1 < uVar9) {
      __s = (void *)__kmalloc_noprof(uVar6,0xdc0);
      puVar12[0x17] = __s;
      if (__s != (void *)0x0) {
        *(uint *)((long)puVar12 + 0xb4) = uVar9 - 1;
        memset(__s,0,uVar6);
        *(undefined4 *)(puVar12 + 0x16) = 0;
        *(undefined4 *)(puVar12[0x10] + 8) = 0;
        *(undefined4 *)(puVar12[0x10] + 0xc) = 0;
        piVar7 = (int *)puVar12[0x10];
        if (*piVar7 == -0xff00ff) {
          piVar7[1] = piVar7[1] + 1;
        }
        else {
          piVar7[1] = 1;
          *(undefined4 *)puVar12[0x10] = 0xff00ff01;
        }
        *(undefined4 *)(puVar12 + 0x15) = 0xff00ff00;
        if (*(int *)(puVar12 + 0x1f) == -0xff0100) {
          pcVar4 = "%s: smq consumer allocation failed\n";
        }
        else {
          puVar11 = puVar11 + uVar13;
          pcVar4 = "%s: smq consumer allocation failed\n";
          if ((puVar11 != (undefined1 *)0x0) && ((puVar12[0xe] & 0x1fffffffe) != 0)) {
            puVar12[0x19] = puVar11;
            uVar5 = (ulong)(puVar11 + 9) & 0xfffffffffffffff8;
            uVar6 = ((long)(((int)puVar11 - (int)uVar5) + (int)((ulong)puVar12[0xe] >> 1)) - 0x20U)
                    / 0x88;
            iVar3 = (int)uVar6;
            if (0 < iVar3) {
              puVar12[0x1c] = uVar5;
              *(int *)(puVar12 + 0x1d) = iVar3;
              lVar8 = uVar5 + (long)(iVar3 << 7);
              *(undefined4 *)(puVar12 + 0x22) = 2;
              puVar12[0x1a] = lVar8;
              puVar12[0x1b] = lVar8 + (uVar6 & 0x7fffffff) * 4 + 0x10;
              puVar11[1] = 1;
              if (*(int *)(puVar12 + 0x1d) != 0) {
                uVar5 = 0;
                lVar8 = 0x10;
                do {
                  uVar5 = uVar5 + 1;
                  *(undefined2 *)(puVar12[0x1b] + lVar8) = 0xffff;
                  lVar8 = lVar8 + 4;
                } while (uVar5 < *(uint *)(puVar12 + 0x1d));
              }
              *(undefined4 *)(puVar12[0x1b] + 8) = 0;
              *(undefined4 *)(puVar12[0x1b] + 0xc) = 0;
              iVar3 = 0;
              if (*(int *)puVar12[0x1a] == -0xff00ff) {
                iVar3 = ((int *)puVar12[0x1a])[1];
              }
              *(int *)(puVar12[0x1b] + 4) = iVar3;
              *(undefined4 *)puVar12[0x1b] = 0xff00ff02;
              *(undefined4 *)(puVar12 + 0x1f) = 0xff00ff00;
              *(undefined1 *)(puVar12 + 0xc) = 1;
              *(undefined8 **)(param_2 + 0x20) = puVar12;
              return 0;
            }
          }
        }
        goto LAB_00100898;
      }
    }
  }
  pcVar4 = "%s: smq producer allocation failed\n";
LAB_00100898:
  _dev_err(*puVar12,pcVar4,"initialize_smq");
  _dev_err(*puVar12,"Error initializing smq. Err=%d\n",0xfffffff4);
  _printk(&DAT_00100cef,0xfffffff4);
  if (*(int *)(puVar12 + 0x15) == -0xff0100) {
    if (*(int *)(puVar12 + 0x18) == 2) {
      *(undefined4 *)puVar12[0x11] = 0;
    }
    else if (*(int *)(puVar12 + 0x18) == 1) {
      *(undefined4 *)puVar12[0x10] = 0;
      kfree(puVar12[0x17]);
      puVar12[0x17] = 0;
    }
    *(undefined4 *)(puVar12 + 0x15) = 0;
  }
  if (*(int *)(puVar12 + 0x1f) == -0xff0100) {
    if (*(int *)(puVar12 + 0x22) == 2) {
      *(undefined4 *)puVar12[0x1b] = 0;
    }
    else if (*(int *)(puVar12 + 0x22) == 1) {
      *(undefined4 *)puVar12[0x1a] = 0;
      kfree(puVar12[0x21]);
      puVar12[0x21] = 0;
    }
    *(undefined4 *)(puVar12 + 0x1f) = 0;
  }
  return -0xc;
}

