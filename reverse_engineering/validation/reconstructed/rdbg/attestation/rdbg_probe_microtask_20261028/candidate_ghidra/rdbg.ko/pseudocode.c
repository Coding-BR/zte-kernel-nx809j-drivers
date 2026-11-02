/* 001002ac on_interrupt_from */

undefined8 on_interrupt_from(undefined8 param_1,long param_2)

{
  complete(param_2 + 8);
  return 1;
}



/* 001002d4 rdbg_release */

undefined8 rdbg_release(long param_1,long param_2)

{
  undefined8 uVar1;
  long lVar2;
  uint uVar3;
  
  if ((param_1 == 0) || (DAT_001000b8 == 0)) {
    _printk(&DAT_00100d56);
    uVar1 = 0xffffffed;
  }
  else {
    uVar3 = *(uint *)(param_1 + 0x4c) & 0xfffff;
    lVar2 = DAT_001000b8 + (ulong)uVar3 * 0x1c8;
    if (*(char *)(lVar2 + 0x60) == '\x01') {
      *(undefined1 *)(lVar2 + 0x60) = 0;
      complete(lVar2 + 8);
      lVar2 = DAT_001000b8 + (ulong)uVar3 * 0x1c8;
      if (*(int *)(lVar2 + 0xa8) == -0xff0100) {
        if (*(int *)(lVar2 + 0xc0) == 2) {
          **(undefined4 **)(lVar2 + 0x88) = 0;
        }
        else if (*(int *)(lVar2 + 0xc0) == 1) {
          **(undefined4 **)(lVar2 + 0x80) = 0;
          kfree(*(undefined8 *)(lVar2 + 0xb8));
          *(undefined8 *)(lVar2 + 0xb8) = 0;
        }
        *(undefined4 *)(lVar2 + 0xa8) = 0;
      }
      lVar2 = DAT_001000b8 + (ulong)uVar3 * 0x1c8;
      if (*(int *)(lVar2 + 0xf8) == -0xff0100) {
        if (*(int *)(lVar2 + 0x110) == 2) {
          **(undefined4 **)(lVar2 + 0xd8) = 0;
        }
        else if (*(int *)(lVar2 + 0x110) == 1) {
          **(undefined4 **)(lVar2 + 0xd0) = 0;
          kfree(*(undefined8 *)(lVar2 + 0x108));
          *(undefined8 *)(lVar2 + 0x108) = 0;
        }
        *(undefined4 *)(lVar2 + 0xf8) = 0;
      }
    }
    uVar1 = 0;
    *(undefined8 *)(param_2 + 0x20) = 0;
  }
  return uVar1;
}



/* 00100408 rdbg_open */

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
  
  if ((param_1 == 0) || (DAT_001000b8 == 0)) {
    _printk(&DAT_00100d56);
    return -0x13;
  }
  uVar9 = *(uint *)(param_1 + 0x4c) & 0xfffff;
  puVar12 = (undefined8 *)(DAT_001000b8 + (ulong)uVar9 * 0x1c8);
  if (*(char *)(puVar12 + 0xc) == '\x01') {
    _dev_err(*puVar12,"%s: Device already opened\n","rdbg_open");
    return -0x11;
  }
  if (0xf < uVar9) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x1008f4);
    (*pcVar2)();
  }
  lVar8 = (ulong)uVar9 * 0x18;
  uVar5 = *(ulong *)(&DAT_00101170 + lVar8);
  puVar10 = puVar12 + 0xe;
  *puVar10 = uVar5;
  if (uVar5 == 0) {
    _dev_err(*puVar12,"%s: smem not initialized\n","rdbg_open");
    return -0xc;
  }
  uVar1 = *(undefined4 *)(&DAT_00101168 + lVar8);
  uVar5 = qcom_smem_get(0xffffffff,uVar1,puVar10);
  puVar12[0xd] = uVar5;
  if (0xfffffffffffff000 < uVar5) {
    _printk(&DAT_00100d72);
    uVar5 = puVar12[0xd];
    if (uVar5 == 0xfffffffffffffffe) {
      uVar5 = qcom_smem_get(uVar9,uVar1,puVar10);
      puVar12[0xd] = uVar5;
    }
  }
  if (uVar5 == 0) {
    _dev_err(*puVar12,"%s: Could not allocate smem memory\n","rdbg_open");
    _printk(&DAT_00100d2f);
    return -0xc;
  }
  uVar6 = uVar5 + 9 & 0xfffffffffffffff8;
  uVar5 = ((long)(((int)uVar5 - (int)uVar6) + (int)(*puVar10 >> 1)) - 0x20U) / 0x88;
  iVar3 = (int)uVar5;
  if (iVar3 < 1) {
LAB_00100874:
    _dev_err(*puVar12,"%s: Subsystem %s is not debug enabled\n","rdbg_open",
             (&proc_info)[(ulong)uVar9 * 3]);
    _printk(&DAT_0010107b);
    return -0x46;
  }
  if (*(int *)(uVar6 + (long)(iVar3 << 7) + (uVar5 & 0x7fffffff) * 4 + 0x10) != -0xff00fe) {
    _printk(&DAT_00100f01,"check_subsystem_debug_enabled");
    goto LAB_00100874;
  }
  *(undefined4 *)(puVar12 + 1) = 0;
  __init_swait_queue_head(puVar12 + 2,"&x->wait",&init_completion___key);
  iVar3 = request_threaded_irq
                    (*(undefined4 *)((long)puVar12 + 0x2c),0,on_interrupt_from,0x2003,
                     (&proc_info)[(ulong)uVar9 * 3],DAT_001000b8 + (ulong)uVar9 * 0x1c8);
  if (iVar3 != 0) {
    _dev_err(*puVar12,"%s: Failed to register interrupt.Err=%d,irqid=%d.\n","rdbg_open",iVar3,
             *(undefined4 *)((long)puVar12 + 0x2c));
    _printk(&DAT_00100e5b,iVar3);
    return iVar3;
  }
  __mutex_init(puVar12 + 0x23,"&rdbgdata->write_mutex",&rdbg_open___key);
  if (*(int *)(puVar12 + 0x15) != -0xff0100) {
    puVar11 = (undefined1 *)puVar12[0xd];
    pcVar4 = "%s: smq producer allocation failed\n";
    if ((puVar11 == (undefined1 *)0x0) || ((puVar12[0xe] & 0x1fffffffe) == 0)) goto LAB_00100928;
    uVar13 = (ulong)puVar12[0xe] >> 1;
    uVar5 = (ulong)(puVar11 + 9) & 0xfffffffffffffff8;
    puVar12[0x14] = puVar12 + 0x23;
    puVar12[0xf] = puVar11;
    uVar6 = ((long)(((int)uVar13 + (int)puVar11) - (int)uVar5) - 0x20U) / 0x88;
    iVar3 = (int)uVar6;
    pcVar4 = "%s: smq producer allocation failed\n";
    if (iVar3 < 1) goto LAB_00100928;
    puVar12[0x12] = uVar5;
    *(int *)(puVar12 + 0x13) = iVar3;
    lVar8 = uVar5 + (long)(iVar3 << 7);
    *(undefined4 *)(puVar12 + 0x18) = 1;
    puVar12[0x10] = lVar8;
    puVar12[0x11] = lVar8 + (uVar6 & 0x7fffffff) * 4 + 0x10;
    *puVar11 = 1;
    if (*(int *)(puVar12 + 0x13) == 0) goto LAB_00100928;
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
        goto LAB_00100928;
      }
    }
  }
  pcVar4 = "%s: smq producer allocation failed\n";
LAB_00100928:
  _dev_err(*puVar12,pcVar4,"initialize_smq");
  _dev_err(*puVar12,"Error initializing smq. Err=%d\n",0xfffffff4);
  _printk(&DAT_001010a3,0xfffffff4);
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



/* 00100a08 rdbg_probe */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int rdbg_probe(long param_1)

{
  ulong *puVar1;
  long lVar2;
  undefined4 *puVar3;
  code *pcVar4;
  int iVar5;
  undefined4 uVar6;
  char *__s;
  long lVar7;
  ulong uVar8;
  ulong uVar9;
  long lVar10;
  long lVar11;
  long lVar12;
  
  __s = (char *)__kmalloc_cache_noprof(_qcom_smem_state_get,0xdc0,0x20);
  if (__s == (char *)0x0) {
LAB_00100bd0:
    iVar5 = -0xc;
  }
  else {
    if (0 < DAT_001000b4) {
      lVar12 = 0;
      uVar9 = 0;
      lVar10 = 0x50;
      do {
        if (lVar12 == 0x180) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x100c24);
          (*pcVar4)();
        }
        if (false) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(1,0x100c28);
          (*pcVar4)();
        }
        lVar11 = *(long *)((long)&proc_info + lVar12);
        if (lVar11 != 0) {
          iVar5 = snprintf(__s,0x20,"%s%d-out","qcom,smp2p-interrupt-rdbg-",uVar9 & 0xffffffff);
          if (0 < iVar5) {
            iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
            lVar2 = DAT_001000b8;
            if (iVar5 != 0) {
              if (DAT_001000b8 + lVar10 == 0x10) {
                iVar5 = -0x16;
LAB_00100c04:
                _printk(&DAT_00100faa,"rdbg_probe",lVar11);
                goto LAB_00100bd4;
              }
              lVar7 = of_find_property(*(undefined8 *)(param_1 + 0x2f8),"qcom,smem-states",0);
              if (lVar7 != 0) {
                puVar1 = (ulong *)(lVar2 + lVar10);
                uVar8 = qcom_smem_state_get(param_1 + 0x10,"rdbg-smp2p-out",puVar1 + -1);
                *puVar1 = uVar8;
                if ((uVar8 == 0) || (0xfffffffffffff000 < uVar8)) {
                  _printk(&DAT_00100e85);
                  iVar5 = *(int *)(lVar2 + lVar10);
                  if (iVar5 != 0) goto LAB_00100c04;
                }
              }
            }
            iVar5 = snprintf(__s,0x20,"%s%d-in","qcom,smp2p-interrupt-rdbg-",uVar9 & 0xffffffff);
            if (0 < iVar5) {
              iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
              if (iVar5 != 0) {
                lVar2 = DAT_001000b8 + lVar10;
                puVar3 = (undefined4 *)(lVar2 + -0x28);
                if (puVar3 == (undefined4 *)0x0) {
                  _printk(&DAT_00100ead,lVar11);
                }
                else {
                  uVar6 = of_irq_get_byname(*(undefined8 *)(param_1 + 0x2f8),"rdbg-smp2p-in");
                  *puVar3 = uVar6;
                  *(undefined4 *)(lVar2 + -0x24) = uVar6;
                }
              }
              goto LAB_00100a84;
            }
          }
          _printk(&DAT_00100e22);
          goto LAB_00100bd0;
        }
LAB_00100a84:
        uVar9 = uVar9 + 1;
        lVar12 = lVar12 + 0x18;
        lVar10 = lVar10 + 0x1c8;
      } while ((long)uVar9 < (long)DAT_001000b4);
    }
    iVar5 = 0;
  }
LAB_00100bd4:
  kfree(__s);
  return iVar5;
}



/* 00100c6c cleanup_module */

void cleanup_module(void)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  if (0 < DAT_001000b4) {
    lVar3 = 0;
    lVar4 = 0x58;
    lVar2 = DAT_001000b8;
    iVar1 = DAT_001000b4;
    do {
      if (*(char *)(lVar2 + lVar4) == '\x01') {
        device_destroy(DAT_001000a8,DAT_001000b0 & 0xfff00000 | (uint)lVar3);
        lVar2 = DAT_001000b8;
        iVar1 = DAT_001000b4;
      }
      lVar3 = lVar3 + 1;
      lVar4 = lVar4 + 0x1c8;
    } while (lVar3 < iVar1);
  }
  class_destroy(DAT_001000a8);
  cdev_del(&g_rdbg_instance);
  unregister_chrdev_region(DAT_001000b0,1);
  kfree(DAT_001000b8);
  return;
}



