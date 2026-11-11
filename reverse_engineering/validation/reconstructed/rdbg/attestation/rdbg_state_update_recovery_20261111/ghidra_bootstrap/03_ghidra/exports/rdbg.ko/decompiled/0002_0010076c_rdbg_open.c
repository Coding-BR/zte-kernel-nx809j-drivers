
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong rdbg_open(long param_1,long param_2)

{
  undefined8 *puVar1;
  undefined4 uVar2;
  uint uVar3;
  code *pcVar4;
  ulong uVar5;
  undefined8 *puVar6;
  void *__s;
  char *pcVar7;
  long lVar8;
  ulong uVar9;
  int *piVar10;
  int iVar11;
  long lVar12;
  long *plVar13;
  uint uVar14;
  undefined8 *puVar15;
  undefined1 *puVar16;
  ulong uVar17;
  
  if ((param_1 == 0) || (DAT_00100118 == 0)) {
    _printk(&DAT_00101b16);
    return 0xffffffed;
  }
  uVar14 = *(uint *)(param_1 + 0x4c) & 0xfffff;
  puVar15 = (undefined8 *)(DAT_00100118 + (ulong)uVar14 * 0x1c8);
  if (*(char *)(puVar15 + 0xc) == '\x01') {
    _dev_err(*puVar15,"%s: Device already opened\n","rdbg_open");
    return 0xffffffef;
  }
  if (0xf < uVar14) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x100cf0);
    (*pcVar4)();
  }
  lVar12 = (ulong)uVar14 * 0x18;
  lVar8 = *(long *)(&DAT_001029c0 + lVar12);
  plVar13 = puVar15 + 0xe;
  *plVar13 = lVar8;
  if (lVar8 == 0) {
    _dev_err(*puVar15,"%s: smem not initialized\n","rdbg_open");
    return 0xfffffff4;
  }
  uVar2 = *(undefined4 *)(&DAT_001029b8 + lVar12);
  uVar5 = qcom_smem_get(0xffffffff,uVar2,plVar13);
  if (uVar5 == 0xfffffffffffffffe) {
    _printk(&DAT_00101b32);
    uVar5 = qcom_smem_get(uVar14,uVar2,plVar13);
  }
  if (0xfffffffffffff000 < uVar5) {
    _dev_err(*puVar15,"%s: qcom_smem_get failed, Err=%d\n","rdbg_open",uVar5 & 0xffffffff);
    return uVar5;
  }
  if (uVar5 == 0) {
    _dev_err(*puVar15,"%s: Could not allocate smem memory\n","rdbg_open");
    _printk(&DAT_00101aef);
    return 0xfffffff4;
  }
  puVar15[0xd] = uVar5;
  uVar9 = uVar5 + 9 & 0xfffffffffffffff8;
  uVar5 = ((long)(((int)uVar5 - (int)uVar9) + (int)((ulong)puVar15[0xe] >> 1)) - 0x20U) / 0x88;
  iVar11 = (int)uVar5;
  if (iVar11 < 1) {
LAB_00100c70:
    _dev_err(*puVar15,"%s: Subsystem %s is not debug enabled\n","rdbg_open",
             (&proc_info)[(ulong)uVar14 * 3]);
    _printk(&DAT_00101ed8);
    return 0xffffffba;
  }
  if (*(int *)(uVar9 + (long)(iVar11 << 7) + (uVar5 & 0x7fffffff) * 4 + 0x10) != -0xff00fe) {
    _printk(&DAT_00101d11,"check_subsystem_debug_enabled");
    goto LAB_00100c70;
  }
  puVar6 = (undefined8 *)__kmalloc_cache_noprof(_memset,0xdc0,0x40);
  if (puVar6 == (undefined8 *)0x0) {
    return 0xfffffff4;
  }
  *puVar6 = puVar15;
  __mutex_init(puVar6 + 1,"&file_context->read_mutex",&rdbg_open___key);
  mutex_lock(&rdbg_input_irq_lock);
  *(undefined4 *)(puVar6 + 7) = *(undefined4 *)((long)puVar15 + 0x2c);
  mutex_unlock(&rdbg_input_irq_lock);
  *(undefined4 *)(puVar15 + 1) = 0;
  __init_swait_queue_head(puVar15 + 2,"&x->wait",&init_completion___key);
  uVar5 = request_threaded_irq
                    (*(undefined4 *)(puVar6 + 7),0,on_interrupt_from,0x2003,
                     (&proc_info)[(ulong)uVar14 * 3],DAT_00100118 + (ulong)uVar14 * 0x1c8);
  if ((int)uVar5 != 0) {
    _dev_err(*puVar15,"%s: Failed to register interrupt.Err=%d,irqid=%d.\n","rdbg_open",
             uVar5 & 0xffffffff,*(undefined4 *)(puVar6 + 7));
    _printk(&DAT_00101c1b,uVar5 & 0xffffffff);
    goto LAB_00100e3c;
  }
  puVar1 = puVar15 + 0x23;
  __mutex_init(puVar1,"&rdbgdata->write_mutex",&rdbg_open___key_14);
  if (*(int *)(puVar15 + 0x15) == -0xff0100) goto LAB_00100d60;
  puVar16 = (undefined1 *)puVar15[0xd];
  pcVar7 = "%s: smq producer allocation failed\n";
  if ((puVar16 != (undefined1 *)0x0) && ((puVar15[0xe] & 0x1fffffffe) != 0)) {
    uVar17 = (ulong)puVar15[0xe] >> 1;
    uVar5 = (ulong)(puVar16 + 9) & 0xfffffffffffffff8;
    puVar15[0x14] = puVar1;
    puVar15[0xf] = puVar16;
    uVar9 = ((long)(((int)uVar17 + (int)puVar16) - (int)uVar5) - 0x20U) / 0x88;
    iVar11 = (int)uVar9;
    pcVar7 = "%s: smq producer allocation failed\n";
    if (0 < iVar11) {
      puVar15[0x12] = uVar5;
      *(int *)(puVar15 + 0x13) = iVar11;
      lVar12 = uVar5 + (long)(iVar11 << 7);
      *(undefined4 *)(puVar15 + 0x18) = 1;
      puVar15[0x10] = lVar12;
      puVar15[0x11] = lVar12 + (uVar9 & 0x7fffffff) * 4 + 0x10;
      *puVar16 = 1;
      if (*(int *)(puVar15 + 0x13) != 0) {
        uVar5 = 0;
        lVar12 = 0x10;
        do {
          uVar5 = uVar5 + 1;
          *(undefined2 *)(puVar15[0x10] + lVar12) = 0xffff;
          lVar12 = lVar12 + 4;
          uVar3 = *(uint *)(puVar15 + 0x13);
          uVar9 = (ulong)uVar3;
        } while (uVar5 < uVar9);
        if (1 < uVar3) {
          __s = (void *)__kmalloc_noprof(uVar9,0xdc0);
          puVar15[0x17] = __s;
          if (__s != (void *)0x0) {
            *(uint *)((long)puVar15 + 0xb4) = uVar3 - 1;
            memset(__s,0,uVar9);
            *(undefined4 *)(puVar15 + 0x16) = 0;
            *(undefined4 *)(puVar15[0x10] + 8) = 0;
            *(undefined4 *)(puVar15[0x10] + 0xc) = 0;
            piVar10 = (int *)puVar15[0x10];
            if (*piVar10 == -0xff00ff) {
              piVar10[1] = piVar10[1] + 1;
            }
            else {
              piVar10[1] = 1;
              *(undefined4 *)puVar15[0x10] = 0xff00ff01;
            }
            *(undefined4 *)(puVar15 + 0x15) = 0xff00ff00;
            if (*(int *)(puVar15 + 0x1f) == -0xff0100) {
              pcVar7 = "%s: smq consumer allocation failed\n";
            }
            else {
              puVar16 = puVar16 + uVar17;
              pcVar7 = "%s: smq consumer allocation failed\n";
              if ((puVar16 != (undefined1 *)0x0) && ((puVar15[0xe] & 0x1fffffffe) != 0)) {
                puVar15[0x1e] = puVar1;
                uVar5 = (ulong)(puVar16 + 9) & 0xfffffffffffffff8;
                puVar15[0x19] = puVar16;
                uVar9 = ((long)(((int)puVar16 - (int)uVar5) + (int)((ulong)puVar15[0xe] >> 1)) -
                        0x20U) / 0x88;
                iVar11 = (int)uVar9;
                if (0 < iVar11) {
                  puVar15[0x1c] = uVar5;
                  *(int *)(puVar15 + 0x1d) = iVar11;
                  lVar12 = uVar5 + (long)(iVar11 << 7);
                  *(undefined4 *)(puVar15 + 0x22) = 2;
                  puVar15[0x1a] = lVar12;
                  puVar15[0x1b] = lVar12 + (uVar9 & 0x7fffffff) * 4 + 0x10;
                  puVar16[1] = 1;
                  if (*(int *)(puVar15 + 0x1d) != 0) {
                    uVar5 = 0;
                    lVar12 = 0x10;
                    do {
                      uVar5 = uVar5 + 1;
                      *(undefined2 *)(puVar15[0x1b] + lVar12) = 0xffff;
                      lVar12 = lVar12 + 4;
                    } while (uVar5 < *(uint *)(puVar15 + 0x1d));
                  }
                  *(undefined4 *)(puVar15[0x1b] + 8) = 0;
                  *(undefined4 *)(puVar15[0x1b] + 0xc) = 0;
                  iVar11 = 0;
                  if (*(int *)puVar15[0x1a] == -0xff00ff) {
                    iVar11 = ((int *)puVar15[0x1a])[1];
                  }
                  *(int *)(puVar15[0x1b] + 4) = iVar11;
                  *(undefined4 *)puVar15[0x1b] = 0xff00ff02;
                  *(undefined4 *)(puVar15 + 0x1f) = 0xff00ff00;
                  *(undefined1 *)(puVar15 + 0xc) = 1;
                  *(undefined8 **)(param_2 + 0x20) = puVar6;
                  return 0;
                }
              }
            }
            goto LAB_00100d68;
          }
        }
LAB_00100d60:
        pcVar7 = "%s: smq producer allocation failed\n";
      }
    }
  }
LAB_00100d68:
  _dev_err(*puVar15,pcVar7,"initialize_smq");
  _dev_err(*puVar15,"Error initializing smq. Err=%d\n",0xfffffff4);
  _printk(&DAT_00101f2c,0xfffffff4);
  free_irq(*(undefined4 *)(puVar6 + 7),DAT_00100118 + (ulong)uVar14 * 0x1c8);
  if (*(int *)(puVar15 + 0x15) == -0xff0100) {
    if (*(int *)(puVar15 + 0x18) == 2) {
      *(undefined4 *)puVar15[0x11] = 0;
    }
    else if (*(int *)(puVar15 + 0x18) == 1) {
      *(undefined4 *)puVar15[0x10] = 0;
      kfree(puVar15[0x17]);
      puVar15[0x17] = 0;
    }
    *(undefined4 *)(puVar15 + 0x15) = 0;
  }
  if (*(int *)(puVar15 + 0x1f) == -0xff0100) {
    if (*(int *)(puVar15 + 0x22) == 2) {
      *(undefined4 *)puVar15[0x1b] = 0;
    }
    else if (*(int *)(puVar15 + 0x22) == 1) {
      *(undefined4 *)puVar15[0x1a] = 0;
      kfree(puVar15[0x21]);
      puVar15[0x21] = 0;
    }
    *(undefined4 *)(puVar15 + 0x1f) = 0;
  }
  uVar5 = 0xfffffff4;
LAB_00100e3c:
  kfree(puVar6);
  return uVar5;
}

