/* 001005ec on_interrupt_from */

undefined8 on_interrupt_from(undefined8 param_1,long param_2)

{
  complete(param_2 + 8);
  return 1;
}



/* 00100614 rdbg_release */

undefined8 rdbg_release(long param_1,long param_2)

{
  undefined8 uVar1;
  long lVar2;
  long lVar3;
  uint uVar4;
  long lVar5;
  
  if ((param_1 == 0) || (DAT_00100118 == 0)) {
    _printk(&DAT_00101b16);
    uVar1 = 0xffffffed;
  }
  else {
    lVar2 = *(long *)(param_2 + 0x20);
    uVar4 = *(uint *)(param_1 + 0x4c) & 0xfffff;
    lVar3 = DAT_00100118 + (ulong)uVar4 * 0x1c8;
    if (*(char *)(lVar3 + 0x60) == '\x01') {
      complete(lVar3 + 8);
      free_irq(*(undefined4 *)(lVar2 + 0x38),lVar3);
      lVar5 = DAT_00100118 + (ulong)uVar4 * 0x1c8;
      if (*(int *)(lVar5 + 0xa8) == -0xff0100) {
        if (*(int *)(lVar5 + 0xc0) == 2) {
          **(undefined4 **)(lVar5 + 0x88) = 0;
        }
        else if (*(int *)(lVar5 + 0xc0) == 1) {
          **(undefined4 **)(lVar5 + 0x80) = 0;
          kfree(*(undefined8 *)(lVar5 + 0xb8));
          *(undefined8 *)(lVar5 + 0xb8) = 0;
        }
        *(undefined4 *)(lVar5 + 0xa8) = 0;
      }
      lVar5 = DAT_00100118 + (ulong)uVar4 * 0x1c8;
      if (*(int *)(lVar5 + 0xf8) == -0xff0100) {
        if (*(int *)(lVar5 + 0x110) == 2) {
          **(undefined4 **)(lVar5 + 0xd8) = 0;
        }
        else if (*(int *)(lVar5 + 0x110) == 1) {
          **(undefined4 **)(lVar5 + 0xd0) = 0;
          kfree(*(undefined8 *)(lVar5 + 0x108));
          *(undefined8 *)(lVar5 + 0x108) = 0;
        }
        *(undefined4 *)(lVar5 + 0xf8) = 0;
      }
      *(undefined1 *)(lVar3 + 0x60) = 0;
    }
    *(undefined8 *)(param_2 + 0x20) = 0;
    if (lVar2 != 0) {
      kfree(lVar2);
    }
    uVar1 = 0;
  }
  return uVar1;
}



/* 0010076c rdbg_open */

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



/* 00100e70 rdbg_probe */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 rdbg_probe(long param_1)

{
  ulong *puVar1;
  undefined4 *puVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  undefined4 uVar6;
  char *__s;
  long lVar7;
  ulong uVar8;
  ulong uVar9;
  ulong uVar10;
  long lVar11;
  long lVar12;
  long lVar13;
  
  __s = (char *)__kmalloc_cache_noprof(___kmalloc_noprof,0xdc0,0x20);
  if (__s == (char *)0x0) {
LAB_001010c8:
    uVar6 = 0xfffffff4;
  }
  else {
    if (0 < DAT_00100114) {
      lVar13 = 0;
      uVar10 = 0;
      lVar11 = 0x50;
      do {
        if (lVar13 == 0x180) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x10111c);
          (*pcVar4)();
        }
        if (false) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(1,0x101120);
          (*pcVar4)();
        }
        lVar12 = *(long *)((long)&proc_info + lVar13);
        if (lVar12 != 0) {
          iVar5 = snprintf(__s,0x20,"%s%d-out","qcom,smp2p-interrupt-rdbg-",uVar10 & 0xffffffff);
          if (0 < iVar5) {
            iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
            lVar3 = DAT_00100118;
            if (iVar5 != 0) {
              if (DAT_00100118 + lVar11 == 0x10) {
                uVar6 = 0xffffffea;
                _printk(&DAT_00101dac,"rdbg_probe",lVar12);
                goto LAB_001010cc;
              }
              lVar7 = of_find_property(*(undefined8 *)(param_1 + 0x2f8),"qcom,smem-states",0);
              if (lVar7 != 0) {
                puVar1 = (ulong *)(lVar3 + lVar11);
                mutex_lock(&rdbg_smem_state_lock);
                uVar8 = qcom_smem_state_get(param_1 + 0x10,"rdbg-smp2p-out",puVar1 + -1);
                if ((uVar8 == 0) || (0xfffffffffffff000 < uVar8)) {
                  mutex_unlock(&rdbg_smem_state_lock);
                  _printk(&DAT_00101c45);
                  uVar6 = (undefined4)uVar8;
                  if (uVar8 < 0xfffffffffffff001) {
                    uVar6 = 0xffffffed;
                  }
                  goto LAB_001010cc;
                }
                uVar9 = *puVar1;
                if (uVar8 != uVar9) {
                  *(undefined4 *)((long)puVar1 + 0xc) = 0;
                  puVar1[0x1f] = 0;
                  puVar1[0x20] = 0;
                  puVar1[0x21] = 0;
                  puVar1[0x22] = 0;
                  puVar1[0x23] = 0;
                  puVar1[0x24] = 0;
                  puVar1[0x25] = 0;
                  puVar1[0x26] = 0;
                  puVar1[0x27] = 0;
                  puVar1[0x28] = 0;
                  puVar1[0x29] = 0;
                  puVar1[0x2a] = 0;
                  puVar1[0x2b] = 0;
                  puVar1[0x2c] = 0;
                  puVar1[0x2d] = 0;
                  puVar1[0x2e] = 0;
                }
                *puVar1 = uVar8;
                if ((uVar9 != 0) && (uVar9 < 0xfffffffffffff001)) {
                  qcom_smem_state_put(uVar9);
                }
                mutex_unlock(&rdbg_smem_state_lock);
              }
            }
            iVar5 = snprintf(__s,0x20,"%s%d-in","qcom,smp2p-interrupt-rdbg-",uVar10 & 0xffffffff);
            if (0 < iVar5) {
              iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
              if (iVar5 != 0) {
                puVar2 = (undefined4 *)(DAT_00100118 + lVar11 + -0x28);
                if (puVar2 == (undefined4 *)0x0) {
                  _printk(&DAT_00101c6d,lVar12);
                }
                else {
                  uVar6 = of_irq_get_byname(*(undefined8 *)(param_1 + 0x2f8),"rdbg-smp2p-in");
                  mutex_lock(&rdbg_input_irq_lock);
                  *puVar2 = uVar6;
                  DAT_0010021c = uVar6;
                  mutex_unlock(&rdbg_input_irq_lock);
                }
              }
              goto LAB_00100eec;
            }
          }
          _printk(&DAT_00101be2);
          goto LAB_001010c8;
        }
LAB_00100eec:
        uVar10 = uVar10 + 1;
        lVar13 = lVar13 + 0x18;
        lVar11 = lVar11 + 0x1c8;
      } while ((long)uVar10 < (long)DAT_00100114);
    }
    uVar6 = 0;
  }
LAB_001010cc:
  kfree(__s);
  return uVar6;
}



/* 0010115c rdbg_read */

long rdbg_read(long param_1,ulong param_2,ulong param_3)

{
  long lVar1;
  uint *puVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  undefined8 uVar7;
  char *pcVar8;
  ulong uVar9;
  undefined8 *puVar10;
  ulong uVar11;
  long lVar12;
  ulong uVar13;
  undefined8 *puVar14;
  undefined8 *puVar15;
  
  puVar14 = *(undefined8 **)(param_1 + 0x20);
  if ((puVar14 == (undefined8 *)0x0) ||
     (puVar15 = (undefined8 *)*puVar14, puVar15 == (undefined8 *)0x0)) {
    _printk(&DAT_00101cfd);
    iVar6 = -0x16;
    goto LAB_001014e8;
  }
  iVar6 = wait_for_completion_interruptible(puVar15 + 1);
  if (iVar6 != 0) {
    _dev_err(*puVar15,"%s: Error in wait\n","rdbg_read");
    goto LAB_001014e8;
  }
  mutex_lock(puVar14 + 1);
  if (((*(int *)(puVar15 + 0x22) == 2) && (*(int *)puVar15[0x1a] == -0xff00ff)) &&
     (*(char *)puVar15[0x19] == '\x01')) {
    iVar6 = ((int *)puVar15[0x1a])[1];
    if (*(int *)(puVar15[0x1b] + 4) != iVar6) {
      *(int *)(puVar15[0x1b] + 4) = iVar6;
      if (*(int *)(puVar15 + 0x1d) != 0) {
        uVar9 = 0;
        lVar12 = 0x10;
        do {
          uVar9 = uVar9 + 1;
          *(undefined2 *)(puVar15[0x1b] + lVar12) = 0xffff;
          lVar12 = lVar12 + 4;
        } while (uVar9 < *(uint *)(puVar15 + 0x1d));
      }
      *(undefined4 *)(puVar15[0x1b] + 8) = 0;
      *(undefined4 *)(puVar15[0x1b] + 0xc) = 0;
      if (*(int *)(puVar15 + 0x18) == 1) {
        mutex_lock(puVar15[0x14]);
        if (*(int *)(puVar15[0x10] + 4) != iVar6) {
          *(int *)(puVar15[0x10] + 4) = iVar6;
          if (*(int *)(puVar15 + 0x13) != 0) {
            uVar9 = 0;
            lVar12 = 0x10;
            do {
              uVar9 = uVar9 + 1;
              *(undefined2 *)(puVar15[0x10] + lVar12) = 0xffff;
              lVar12 = lVar12 + 4;
            } while (uVar9 < *(uint *)(puVar15 + 0x13));
          }
          if (puVar15[0x17] != 0) {
            memset((void *)puVar15[0x17],0,(ulong)(*(int *)((long)puVar15 + 0xb4) + 1));
            *(undefined4 *)(puVar15 + 0x16) = 0;
          }
          *(undefined4 *)(puVar15[0x10] + 8) = 0;
          *(undefined4 *)(puVar15[0x10] + 0xc) = 0;
        }
        mutex_unlock(puVar15[0x14]);
      }
    }
  }
  puVar2 = (uint *)puVar15[0x1a];
  if ((*(char *)puVar15[0x19] == '\x01') ||
     (puVar10 = (undefined8 *)(ulong)*puVar2, *puVar2 == 0xff00ff01)) {
    puVar10 = (undefined8 *)puVar15[0x1b];
    uVar3 = *(uint *)(puVar10 + 1);
    if (uVar3 == puVar2[2]) goto LAB_00101474;
    uVar4 = *(uint *)(puVar15 + 0x1d);
    if (uVar4 <= (ushort)puVar2[(ulong)uVar3 + 4]) goto LAB_00101474;
    uVar5 = 0;
    if (uVar4 != 0) {
      uVar5 = (uVar3 + 1) / uVar4;
    }
    *(uint *)(puVar10 + 1) = (uVar3 + 1) - uVar5 * uVar4;
    DataSynchronizationBarrier(3,1,0);
    uVar11 = (ulong)*(ushort *)((long)puVar2 + (ulong)uVar3 * 4 + 0x12) << 7;
    lVar12 = puVar15[0x1c] + (ulong)(ushort)puVar2[(ulong)uVar3 + 4] * 0x80;
    if (param_3 <= uVar11) {
      uVar11 = param_3;
    }
    __check_object_size(lVar12,uVar11,1);
    puVar10 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar10 + 0x46) >> 5 & 1) != 0) ||
       (uVar13 = param_2, ((uint)*puVar10 >> 0x1a & 1) != 0)) {
      uVar13 = param_2 & (long)(param_2 << 8) >> 8;
    }
    uVar9 = uVar11;
    if (uVar13 <= 0x8000000000 - uVar11) {
      uVar7 = daif;
      uVar9 = daif;
      daif = uVar9 | 0xc0;
      uVar13 = puVar10[1];
      uVar9 = ttbr1_el1;
      ttbr1_el1 = uVar13 & 0xffff000000000000 | uVar9 & 0xffffffffffff;
      ttbr0_el1 = uVar13;
      InstructionSynchronizationBarrier();
      daif = uVar7;
      uVar9 = __arch_copy_to_user(uVar13,param_2 & 0xff7fffffffffffff,lVar12,uVar11);
      puVar10 = (undefined8 *)daif;
      uVar13 = daif;
      daif = uVar13 | 0xc0;
      uVar13 = ttbr1_el1;
      ttbr0_el1 = (uVar13 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar13 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar10;
    }
    if ((int)uVar9 != 0) {
      uVar7 = *puVar15;
      pcVar8 = "%s: Error in copy_to_user(). Err code = %d\n";
      goto LAB_001014d8;
    }
    if (puVar15[0x1e] != 0) {
      mutex_lock();
    }
    if ((*(char *)puVar15[0x19] == '\x01') || (*(int *)puVar15[0x1a] == -0xff00ff)) {
      lVar12 = lVar12 - puVar15[0x1c];
      lVar1 = lVar12 + 0x7f;
      if (-1 < lVar12) {
        lVar1 = lVar12;
      }
      if ((uint)(lVar1 >> 7) < *(uint *)(puVar15 + 0x1d)) {
        lVar12 = puVar15[0x1b] + (ulong)*(uint *)(puVar15[0x1b] + 0xc) * 4;
        *(short *)(lVar12 + 0x10) = (short)(lVar1 >> 7);
        *(undefined2 *)(lVar12 + 0x12) = 0;
        uVar4 = *(uint *)(puVar15 + 0x1d);
        uVar3 = *(int *)(puVar15[0x1b] + 0xc) + 1;
        uVar5 = 0;
        if (uVar4 != 0) {
          uVar5 = uVar3 / uVar4;
        }
        *(uint *)(puVar15[0x1b] + 0xc) = uVar3 - uVar5 * uVar4;
      }
    }
    if (puVar15[0x1e] != 0) {
      mutex_unlock();
    }
  }
  else {
LAB_00101474:
    uVar7 = *puVar15;
    pcVar8 = "%s: Error in smq_recv(). Err code = %d\n";
    uVar9 = 0;
LAB_001014d8:
    _dev_err(puVar10,uVar7,pcVar8,"rdbg_read",uVar9);
    uVar11 = 0xffffffc3;
  }
  iVar6 = (int)uVar11;
  mutex_unlock(puVar14 + 1);
LAB_001014e8:
  return (long)iVar6;
}



/* 00101514 rdbg_write */

size_t rdbg_write(long param_1,ulong param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  byte bVar3;
  undefined8 *puVar4;
  undefined8 uVar5;
  bool bVar6;
  uint uVar7;
  code *pcVar8;
  bool bVar9;
  int iVar10;
  size_t __n;
  uint uVar11;
  uint uVar12;
  long lVar13;
  ulong uVar14;
  int *piVar15;
  uint uVar16;
  uint uVar17;
  uint uVar19;
  size_t sVar20;
  ulong uVar21;
  long lVar22;
  uint uVar23;
  ulong uVar18;
  
  if ((*(long **)(param_1 + 0x20) == (long *)0x0) ||
     (lVar22 = **(long **)(param_1 + 0x20), lVar22 == 0)) {
    _printk(&DAT_00101cfd);
    sVar20 = 0xffffffffffffffea;
  }
  else {
    uVar23 = 0;
    puVar4 = (undefined8 *)sp_el0;
    sVar20 = (size_t)param_3;
    uVar1 = param_3 + 0x7f;
    uVar2 = (int)uVar1 >> 7;
    do {
      mutex_lock(*(undefined8 *)(lVar22 + 0xa0));
      piVar15 = *(int **)(lVar22 + 0x88);
      if (((*piVar15 == -0xff00fe) && (*(char *)(*(long *)(lVar22 + 0x78) + 1) == '\x01')) &&
         (lVar13 = *(long *)(lVar22 + 0x80), *(int *)(lVar13 + 4) == piVar15[1])) {
        while( true ) {
          uVar12 = *(uint *)(lVar13 + 0xc);
          if (uVar12 == piVar15[3]) break;
          uVar16 = *(uint *)(lVar22 + 0x98);
          if (uVar16 <= *(ushort *)(piVar15 + (ulong)uVar12 + 4)) goto LAB_001015fc;
          uVar11 = 0;
          if (uVar16 != 0) {
            uVar11 = (uVar12 + 1) / uVar16;
          }
          *(uint *)(lVar13 + 0xc) = (uVar12 + 1) - uVar11 * uVar16;
          uVar14 = (ulong)*(ushort *)(piVar15 + (ulong)uVar12 + 4);
          bVar3 = *(byte *)(*(long *)(lVar22 + 0xb8) + uVar14);
          uVar12 = (uint)bVar3;
          if (bVar3 != 0) {
            do {
              uVar12 = uVar12 - 1;
              *(undefined1 *)(*(long *)(lVar22 + 0xb8) + uVar14) = 0;
              uVar14 = uVar14 + 1;
            } while (uVar12 != 0);
          }
          DataSynchronizationBarrier(3,1,0);
          lVar13 = *(long *)(lVar22 + 0x80);
          piVar15 = *(int **)(lVar22 + 0x88);
        }
      }
      uVar12 = *(uint *)(lVar22 + 0xb0);
      uVar14 = (ulong)uVar12;
      if (uVar2 == 1) {
        uVar21 = uVar14;
        do {
          if (*(char *)(*(long *)(lVar22 + 0xb8) + uVar21) == '\0') {
            *(undefined1 *)(*(long *)(lVar22 + 0xb8) + uVar21) = 1;
            uVar16 = *(uint *)(lVar22 + 0xb4);
            uVar12 = *(int *)(lVar22 + 0xb0) + 1;
            uVar11 = 0;
            if (uVar16 != 0) {
              uVar11 = uVar12 / uVar16;
            }
            iVar10 = uVar12 - uVar11 * uVar16;
            goto LAB_0010172c;
          }
          uVar11 = *(uint *)(lVar22 + 0xb4);
          uVar16 = (int)uVar21 + 1;
          uVar17 = 0;
          if (uVar11 != 0) {
            uVar17 = uVar16 / uVar11;
          }
          uVar16 = uVar16 - uVar17 * uVar11;
          uVar21 = (ulong)uVar16;
          *(uint *)(lVar22 + 0xb0) = uVar16;
        } while (uVar12 != uVar16);
      }
      else {
        uVar12 = *(uint *)(lVar22 + 0xb4);
        uVar16 = 0;
        uVar21 = (ulong)uVar12;
        uVar18 = uVar14;
        do {
          uVar11 = (uint)uVar14;
          uVar17 = (uint)*(byte *)(*(long *)(lVar22 + 0xb8) + uVar14);
          if (uVar17 == 0) {
            uVar19 = (uint)uVar21;
            uVar17 = uVar11;
            uVar7 = 1;
            if (uVar19 <= uVar11) {
              uVar17 = (uint)uVar18;
              uVar7 = uVar16 + 1;
            }
            uVar16 = uVar7;
            uVar18 = (ulong)uVar17;
            uVar17 = uVar19;
            if (uVar11 <= uVar19) {
              uVar17 = uVar11;
            }
            uVar21 = (ulong)uVar17;
            if (uVar16 != uVar2) goto LAB_00101690;
            if (uVar1 < 0x80) {
              uVar12 = 0;
            }
            else {
              uVar14 = (ulong)uVar2;
              if (uVar11 <= uVar19) {
                uVar19 = uVar11;
              }
              do {
                *(char *)(*(long *)(lVar22 + 0xb8) + (ulong)uVar19) = (char)uVar14;
                uVar14 = uVar14 - 1;
                uVar19 = uVar19 + 1;
              } while (uVar14 != 0);
              uVar11 = *(uint *)(lVar22 + 0xb0);
              uVar12 = (uint)*(byte *)(*(long *)(lVar22 + 0xb8) + (ulong)uVar11);
            }
            iVar10 = uVar11 + uVar12 + -1;
LAB_0010172c:
            *(int *)(lVar22 + 0xb0) = iVar10;
            lVar13 = *(long *)(lVar22 + 0x90) + (ulong)(uint)((int)uVar21 << 7);
            if (param_3 < 0) {
                    /* WARNING: Does not return */
              pcVar8 = (code *)SoftwareBreakpoint(0x800,0x101894);
              (*pcVar8)();
            }
            __check_object_size(lVar13,sVar20,0);
            if (((*(byte *)((long)puVar4 + 0x46) >> 5 & 1) != 0) ||
               (uVar14 = param_2, ((uint)*puVar4 >> 0x1a & 1) != 0)) {
              uVar14 = param_2 & (long)(param_2 << 8) >> 8;
            }
            __n = sVar20;
            if (0x8000000000 - sVar20 < uVar14) {
LAB_0010177c:
              memset((void *)(lVar13 + (sVar20 - __n)),0,__n);
              if ((int)__n == 0) goto LAB_0010182c;
              if ((lVar13 != 0) &&
                 (bVar3 = *(byte *)(*(long *)(lVar22 + 0xb8) + uVar21), uVar12 = (uint)bVar3,
                 bVar3 != 0)) {
                do {
                  uVar12 = uVar12 - 1;
                  *(undefined1 *)(*(long *)(lVar22 + 0xb8) + uVar21) = 0;
                  uVar21 = (ulong)((int)uVar21 + 1);
                } while (uVar12 != 0);
              }
              break;
            }
            uVar5 = daif;
            uVar14 = daif;
            daif = uVar14 | 0xc0;
            uVar14 = ttbr1_el1;
            ttbr1_el1 = puVar4[1] & 0xffff000000000000 | uVar14 & 0xffffffffffff;
            ttbr0_el1 = puVar4[1];
            InstructionSynchronizationBarrier();
            daif = uVar5;
            __n = __arch_copy_from_user(lVar13,param_2 & 0xff7fffffffffffff,sVar20);
            uVar5 = daif;
            uVar14 = daif;
            daif = uVar14 | 0xc0;
            uVar14 = ttbr1_el1;
            ttbr0_el1 = (uVar14 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar14 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = uVar5;
            if (__n != 0) goto LAB_0010177c;
LAB_0010182c:
            *(short *)(*(long *)(lVar22 + 0x80) + (ulong)*(uint *)(*(long *)(lVar22 + 0x80) + 8) * 4
                      + 0x10) = (short)uVar21;
            bVar6 = true;
            *(short *)(*(long *)(lVar22 + 0x80) + (ulong)*(uint *)(*(long *)(lVar22 + 0x80) + 8) * 4
                      + 0x12) = (short)(uVar1 >> 7);
            uVar16 = *(uint *)(lVar22 + 0x98);
            uVar12 = *(int *)(*(long *)(lVar22 + 0x80) + 8) + 1;
            uVar11 = 0;
            if (uVar16 != 0) {
              uVar11 = uVar12 / uVar16;
            }
            *(uint *)(*(long *)(lVar22 + 0x80) + 8) = uVar12 - uVar11 * uVar16;
            goto LAB_00101874;
          }
          uVar16 = 0;
          uVar21 = (ulong)uVar12;
          uVar11 = (uVar11 + uVar17) - 1;
LAB_00101690:
          uVar17 = 0;
          if (uVar12 != 0) {
            uVar17 = (uVar11 + 1) / uVar12;
          }
          uVar11 = (uVar11 + 1) - uVar17 * uVar12;
          uVar14 = (ulong)uVar11;
          *(uint *)(lVar22 + 0xb0) = uVar11;
        } while ((uint)uVar18 != uVar11);
      }
LAB_001015fc:
      bVar6 = false;
LAB_00101874:
      mutex_unlock(*(undefined8 *)(lVar22 + 0xa0));
    } while ((!bVar6) && (bVar9 = uVar23 < 0x14, uVar23 = uVar23 + 1, bVar9));
    if (bVar6) {
      mutex_lock(&rdbg_smem_state_lock);
      uVar14 = *(ulong *)(lVar22 + 0x50);
      if ((uVar14 != 0) && (uVar14 < 0xfffffffffffff001)) {
        uVar1 = *(uint *)(lVar22 + 0x5c);
        if (0x1f < uVar1) {
          mutex_unlock(&rdbg_smem_state_lock);
                    /* WARNING: Does not return */
          pcVar8 = (code *)SoftwareBreakpoint(0x5512,0x10196c);
          (*pcVar8)();
        }
        lVar13 = 1L << ((ulong)(*(int *)(lVar22 + 0x48) + uVar1) & 0x3f);
        uVar23 = *(uint *)(lVar22 + 0x148 + (ulong)uVar1 * 4) ^ (uint)lVar13;
        iVar10 = qcom_smem_state_update_bits(uVar14,lVar13,uVar23);
        if (iVar10 == 0) {
          *(uint *)(lVar22 + 0x148 + (ulong)uVar1 * 4) = uVar23;
          *(uint *)(lVar22 + 0x5c) = uVar1 + 1 & 0x1f;
        }
      }
      mutex_unlock(&rdbg_smem_state_lock);
    }
    else {
      _printk(&DAT_00101fda);
      sVar20 = 0xffffffffffffffba;
    }
  }
  return sVar20;
}



/* 00101980 cleanup_module */

void cleanup_module(void)

{
  ulong uVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  platform_driver_unregister(rdbg_driver);
  uVar1 = (ulong)DAT_00100114;
  if (DAT_00100118 != 0) {
    if ((int)DAT_00100114 < 1) goto LAB_00101a70;
    lVar3 = 0;
    lVar4 = 0x50;
    do {
      lVar2 = DAT_00100118;
      mutex_lock(&rdbg_smem_state_lock);
      uVar1 = *(ulong *)(lVar2 + lVar4);
      if ((uVar1 != 0) && (uVar1 < 0xfffffffffffff001)) {
        *(undefined8 *)(lVar2 + lVar4) = 0;
        qcom_smem_state_put();
      }
      mutex_unlock(&rdbg_smem_state_lock);
      uVar1 = (ulong)(int)DAT_00100114;
      lVar3 = lVar3 + 1;
      lVar4 = lVar4 + 0x1c8;
    } while (lVar3 < (long)uVar1);
  }
  if (0 < (int)uVar1) {
    lVar3 = 0;
    lVar4 = 0x58;
    lVar2 = DAT_00100118;
    do {
      if (*(char *)(lVar2 + lVar4) == '\x01') {
        device_destroy(DAT_00100108,DAT_00100110 & 0xfff00000 | (uint)lVar3);
        uVar1 = (ulong)DAT_00100114;
        lVar2 = DAT_00100118;
      }
      lVar3 = lVar3 + 1;
      lVar4 = lVar4 + 0x1c8;
    } while (lVar3 < (int)uVar1);
  }
LAB_00101a70:
  class_destroy(DAT_00100108);
  cdev_del(&g_rdbg_instance);
  unregister_chrdev_region(DAT_00100110,DAT_00100114);
  kfree(DAT_00100118);
  DAT_00100118 = 0;
  return;
}



/* 001020fc init_module */

ulong init_module(void)

{
  long lVar1;
  undefined1 auVar2 [16];
  code *pcVar3;
  uint uVar4;
  uint uVar5;
  ulong uVar6;
  undefined8 uVar7;
  int iVar8;
  ulong uVar9;
  long lVar10;
  long lVar11;
  int iVar12;
  
  if (DAT_00100114 - 0x11U < 0xfffffff0) {
    _printk(&DAT_00101f6b);
    uVar9 = 0xffffffdf;
  }
  else {
    auVar2._8_8_ = 0;
    auVar2._0_8_ = (long)DAT_00100114;
    if (SUB168(auVar2 * ZEXT816(0x1c8),8) == 0) {
      DAT_00100118 = __kmalloc_noprof((long)DAT_00100114 * 0x1c8,0xdc0);
      if (DAT_00100118 != 0) {
        uVar6 = __platform_driver_register(rdbg_driver,&__this_module);
        uVar9 = uVar6 & 0xffffffff;
        if ((int)uVar6 == 0) {
          uVar4 = alloc_chrdev_region(&DAT_00100110,0,DAT_00100114,"rdbgctl");
          if (uVar4 == 0) {
            uVar4 = DAT_00100110 & 0xfff00000;
            cdev_init(&g_rdbg_instance,rdbg_fops);
            DAT_001000e0 = &__this_module;
            uVar5 = cdev_add(&g_rdbg_instance,uVar4,DAT_00100114);
            if (uVar5 == 0) {
              uVar9 = class_create(&DAT_00101ab4);
              DAT_00100108 = uVar9;
              if (uVar9 < 0xfffffffffffff001) {
                if (0 < DAT_00100114) {
                  lVar11 = 0;
                  lVar10 = 0;
                  iVar12 = 0;
                  uVar6 = 0xffffffffffffffff;
                  iVar8 = DAT_00100114;
                  do {
                    if (uVar6 == 0xf) {
                    /* WARNING: Does not return */
                      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x102470);
                      (*pcVar3)();
                    }
                    if (lVar10 == 0x180) {
                    /* WARNING: Does not return */
                      pcVar3 = (code *)SoftwareBreakpoint(1,0x102474);
                      (*pcVar3)();
                    }
                    if (*(long *)((long)&proc_info + lVar10) != 0) {
                      uVar7 = device_create(DAT_00100108,0,uVar4 | (int)uVar6 + 1U,0,&DAT_00101d42);
                      *(undefined8 *)(DAT_00100118 + lVar11) = uVar7;
                      uVar9 = *(ulong *)(DAT_00100118 + lVar11);
                      if (0xfffffffffffff000 < uVar9) {
                        _printk(&DAT_00101f88);
                        lVar10 = DAT_00100118;
                        if (uVar6 != 0xffffffffffffffff) {
                          do {
                            if (*(char *)(lVar10 + (uVar6 & 0xffffffff) * 0x1c8 + 0x58) == '\x01') {
                              device_destroy(DAT_00100108,DAT_00100110 & 0xfff00000 | (uint)uVar6);
                              lVar10 = DAT_00100118;
                            }
                            lVar11 = uVar6 + 1;
                            uVar6 = uVar6 - 1;
                          } while (1 < lVar11);
                        }
                        goto LAB_00102364;
                      }
                      iVar12 = iVar12 + 1;
                      *(undefined1 *)(DAT_00100118 + lVar11 + 0x58) = 1;
                      iVar8 = DAT_00100114;
                    }
                    lVar1 = uVar6 + 2;
                    uVar6 = uVar6 + 1;
                    lVar10 = lVar10 + 0x18;
                    lVar11 = lVar11 + 0x1c8;
                  } while (lVar1 < iVar8);
                  if (iVar12 != 0) {
                    uVar9 = 0;
                    goto LAB_00102448;
                  }
                }
                _printk(&DAT_00102061);
                uVar9 = 0xffffffea;
LAB_00102364:
                class_destroy(DAT_00100108);
              }
              else {
                _printk(&DAT_00101acc);
              }
              cdev_del(&g_rdbg_instance);
            }
            else {
              uVar9 = (ulong)uVar5;
              _printk(&DAT_00102042);
            }
            unregister_chrdev_region(DAT_00100110,DAT_00100114);
          }
          else {
            uVar9 = (ulong)uVar4;
            _printk(&DAT_00101df8);
          }
          platform_driver_unregister(rdbg_driver);
        }
        if ((DAT_00100118 != 0) && (0 < DAT_00100114)) {
          lVar10 = 0;
          lVar11 = 0x50;
          do {
            lVar1 = DAT_00100118;
            mutex_lock(&rdbg_smem_state_lock);
            uVar6 = *(ulong *)(lVar1 + lVar11);
            if ((uVar6 != 0) && (uVar6 < 0xfffffffffffff001)) {
              *(undefined8 *)(lVar1 + lVar11) = 0;
              qcom_smem_state_put();
            }
            mutex_unlock(&rdbg_smem_state_lock);
            lVar10 = lVar10 + 1;
            lVar11 = lVar11 + 0x1c8;
          } while (lVar10 < DAT_00100114);
        }
        kfree(DAT_00100118);
        DAT_00100118 = 0;
        goto LAB_00102448;
      }
    }
    else {
      DAT_00100118 = 0;
    }
    uVar9 = 0xfffffff4;
  }
LAB_00102448:
  return uVar9 & 0xffffffff;
}



