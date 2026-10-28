/* 001003ac on_interrupt_from */

undefined8 on_interrupt_from(undefined8 param_1,long param_2)

{
  complete(param_2 + 8);
  return 1;
}



/* 001003d4 rdbg_release */

undefined8 rdbg_release(long param_1,long param_2)

{
  undefined8 uVar1;
  long lVar2;
  uint uVar3;
  
  if ((param_1 == 0) || (DAT_001000f8 == 0)) {
    _printk(&DAT_0010163d);
    uVar1 = 0xffffffed;
  }
  else {
    uVar3 = *(uint *)(param_1 + 0x4c) & 0xfffff;
    lVar2 = DAT_001000f8 + (ulong)uVar3 * 0x1c8;
    if (*(char *)(lVar2 + 0x60) == '\x01') {
      *(undefined1 *)(lVar2 + 0x60) = 0;
      complete(lVar2 + 8);
      lVar2 = DAT_001000f8 + (ulong)uVar3 * 0x1c8;
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
      lVar2 = DAT_001000f8 + (ulong)uVar3 * 0x1c8;
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



/* 00100508 rdbg_open */

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
  
  if ((param_1 == 0) || (DAT_001000f8 == 0)) {
    _printk(&DAT_0010163d);
    return -0x13;
  }
  uVar9 = *(uint *)(param_1 + 0x4c) & 0xfffff;
  puVar12 = (undefined8 *)(DAT_001000f8 + (ulong)uVar9 * 0x1c8);
  if (*(char *)(puVar12 + 0xc) == '\x01') {
    _dev_err(*puVar12,"%s: Device already opened\n","rdbg_open");
    return -0x11;
  }
  if (0xf < uVar9) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x1009f4);
    (*pcVar2)();
  }
  lVar8 = (ulong)uVar9 * 0x18;
  uVar5 = *(ulong *)(&DAT_00101b18 + lVar8);
  puVar10 = puVar12 + 0xe;
  *puVar10 = uVar5;
  if (uVar5 == 0) {
    _dev_err(*puVar12,"%s: smem not initialized\n","rdbg_open");
    return -0xc;
  }
  uVar1 = *(undefined4 *)(&DAT_00101b10 + lVar8);
  uVar5 = qcom_smem_get(0xffffffff,uVar1,puVar10);
  puVar12[0xd] = uVar5;
  if (0xfffffffffffff000 < uVar5) {
    _printk(&DAT_00101659);
    uVar5 = puVar12[0xd];
    if (uVar5 == 0xfffffffffffffffe) {
      uVar5 = qcom_smem_get(uVar9,uVar1,puVar10);
      puVar12[0xd] = uVar5;
    }
  }
  if (uVar5 == 0) {
    _dev_err(*puVar12,"%s: Could not allocate smem memory\n","rdbg_open");
    _printk(&DAT_00101616);
    return -0xc;
  }
  uVar6 = uVar5 + 9 & 0xfffffffffffffff8;
  uVar5 = ((long)(((int)uVar5 - (int)uVar6) + (int)(*puVar10 >> 1)) - 0x20U) / 0x88;
  iVar3 = (int)uVar5;
  if (iVar3 < 1) {
LAB_00100974:
    _dev_err(*puVar12,"%s: Subsystem %s is not debug enabled\n","rdbg_open",
             (&proc_info)[(ulong)uVar9 * 3]);
    _printk(&DAT_001019a8);
    return -0x46;
  }
  if (*(int *)(uVar6 + (long)(iVar3 << 7) + (uVar5 & 0x7fffffff) * 4 + 0x10) != -0xff00fe) {
    _printk(&DAT_001017fc,"check_subsystem_debug_enabled");
    goto LAB_00100974;
  }
  *(undefined4 *)(puVar12 + 1) = 0;
  __init_swait_queue_head(puVar12 + 2,"&x->wait",&init_completion___key);
  iVar3 = request_threaded_irq
                    (*(undefined4 *)((long)puVar12 + 0x2c),0,on_interrupt_from,0x2003,
                     (&proc_info)[(ulong)uVar9 * 3],DAT_001000f8 + (ulong)uVar9 * 0x1c8);
  if (iVar3 != 0) {
    _dev_err(*puVar12,"%s: Failed to register interrupt.Err=%d,irqid=%d.\n","rdbg_open",iVar3,
             *(undefined4 *)((long)puVar12 + 0x2c));
    _printk(&DAT_00101742,iVar3);
    return iVar3;
  }
  __mutex_init(puVar12 + 0x23,"&rdbgdata->write_mutex",&rdbg_open___key);
  if (*(int *)(puVar12 + 0x15) != -0xff0100) {
    puVar11 = (undefined1 *)puVar12[0xd];
    pcVar4 = "%s: smq producer allocation failed\n";
    if ((puVar11 == (undefined1 *)0x0) || ((puVar12[0xe] & 0x1fffffffe) == 0)) goto LAB_00100a28;
    uVar13 = (ulong)puVar12[0xe] >> 1;
    uVar5 = (ulong)(puVar11 + 9) & 0xfffffffffffffff8;
    puVar12[0x14] = puVar12 + 0x23;
    puVar12[0xf] = puVar11;
    uVar6 = ((long)(((int)uVar13 + (int)puVar11) - (int)uVar5) - 0x20U) / 0x88;
    iVar3 = (int)uVar6;
    pcVar4 = "%s: smq producer allocation failed\n";
    if (iVar3 < 1) goto LAB_00100a28;
    puVar12[0x12] = uVar5;
    *(int *)(puVar12 + 0x13) = iVar3;
    lVar8 = uVar5 + (long)(iVar3 << 7);
    *(undefined4 *)(puVar12 + 0x18) = 1;
    puVar12[0x10] = lVar8;
    puVar12[0x11] = lVar8 + (uVar6 & 0x7fffffff) * 4 + 0x10;
    *puVar11 = 1;
    if (*(int *)(puVar12 + 0x13) == 0) goto LAB_00100a28;
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
        goto LAB_00100a28;
      }
    }
  }
  pcVar4 = "%s: smq producer allocation failed\n";
LAB_00100a28:
  _dev_err(*puVar12,pcVar4,"initialize_smq");
  _dev_err(*puVar12,"Error initializing smq. Err=%d\n",0xfffffff4);
  _printk(&DAT_001019fc,0xfffffff4);
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



/* 00100b08 rdbg_probe */

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
LAB_00100cd0:
    iVar5 = -0xc;
  }
  else {
    if (0 < DAT_001000f4) {
      lVar12 = 0;
      uVar9 = 0;
      lVar10 = 0x50;
      do {
        if (lVar12 == 0x180) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x100d24);
          (*pcVar4)();
        }
        if (false) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(1,0x100d28);
          (*pcVar4)();
        }
        lVar11 = *(long *)((long)&proc_info + lVar12);
        if (lVar11 != 0) {
          iVar5 = snprintf(__s,0x20,"%s%d-out","qcom,smp2p-interrupt-rdbg-",uVar9 & 0xffffffff);
          if (0 < iVar5) {
            iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
            lVar2 = DAT_001000f8;
            if (iVar5 != 0) {
              if (DAT_001000f8 + lVar10 == 0x10) {
                iVar5 = -0x16;
LAB_00100d04:
                _printk(&DAT_001018af,"rdbg_probe",lVar11);
                goto LAB_00100cd4;
              }
              lVar7 = of_find_property(*(undefined8 *)(param_1 + 0x2f8),"qcom,smem-states",0);
              if (lVar7 != 0) {
                puVar1 = (ulong *)(lVar2 + lVar10);
                uVar8 = qcom_smem_state_get(param_1 + 0x10,"rdbg-smp2p-out",puVar1 + -1);
                *puVar1 = uVar8;
                if ((uVar8 == 0) || (0xfffffffffffff000 < uVar8)) {
                  _printk(&DAT_0010176c);
                  iVar5 = *(int *)(lVar2 + lVar10);
                  if (iVar5 != 0) goto LAB_00100d04;
                }
              }
            }
            iVar5 = snprintf(__s,0x20,"%s%d-in","qcom,smp2p-interrupt-rdbg-",uVar9 & 0xffffffff);
            if (0 < iVar5) {
              iVar5 = of_device_is_compatible(*(undefined8 *)(param_1 + 0x2f8),__s);
              if (iVar5 != 0) {
                lVar2 = DAT_001000f8 + lVar10;
                puVar3 = (undefined4 *)(lVar2 + -0x28);
                if (puVar3 == (undefined4 *)0x0) {
                  _printk(&DAT_00101794,lVar11);
                }
                else {
                  uVar6 = of_irq_get_byname(*(undefined8 *)(param_1 + 0x2f8),"rdbg-smp2p-in");
                  *puVar3 = uVar6;
                  *(undefined4 *)(lVar2 + -0x24) = uVar6;
                }
              }
              goto LAB_00100b84;
            }
          }
          _printk(&DAT_00101709);
          goto LAB_00100cd0;
        }
LAB_00100b84:
        uVar9 = uVar9 + 1;
        lVar12 = lVar12 + 0x18;
        lVar10 = lVar10 + 0x1c8;
      } while ((long)uVar9 < (long)DAT_001000f4);
    }
    iVar5 = 0;
  }
LAB_00100cd4:
  kfree(__s);
  return iVar5;
}



/* 00100d64 rdbg_read */

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
  
  puVar14 = *(undefined8 **)(param_1 + 0x20);
  if (puVar14 == (undefined8 *)0x0) {
    _printk(&DAT_001017e8);
    iVar6 = -0x16;
    goto LAB_00101068;
  }
  iVar6 = wait_for_completion_interruptible(puVar14 + 1);
  if (iVar6 != 0) {
    _dev_err(*puVar14,"%s: Error in wait\n","rdbg_read");
    goto LAB_00101068;
  }
  if (((*(int *)(puVar14 + 0x22) == 2) && (*(int *)puVar14[0x1a] == -0xff00ff)) &&
     (*(char *)puVar14[0x19] == '\x01')) {
    iVar6 = ((int *)puVar14[0x1a])[1];
    if (*(int *)(puVar14[0x1b] + 4) != iVar6) {
      *(int *)(puVar14[0x1b] + 4) = iVar6;
      if (*(int *)(puVar14 + 0x1d) != 0) {
        uVar9 = 0;
        lVar12 = 0x10;
        do {
          uVar9 = uVar9 + 1;
          *(undefined2 *)(puVar14[0x1b] + lVar12) = 0xffff;
          lVar12 = lVar12 + 4;
        } while (uVar9 < *(uint *)(puVar14 + 0x1d));
      }
      *(undefined4 *)(puVar14[0x1b] + 8) = 0;
      *(undefined4 *)(puVar14[0x1b] + 0xc) = 0;
      if (*(int *)(puVar14 + 0x18) == 1) {
        mutex_lock(puVar14[0x14]);
        if (*(int *)(puVar14[0x10] + 4) != iVar6) {
          *(int *)(puVar14[0x10] + 4) = iVar6;
          if (*(int *)(puVar14 + 0x13) != 0) {
            uVar9 = 0;
            lVar12 = 0x10;
            do {
              uVar9 = uVar9 + 1;
              *(undefined2 *)(puVar14[0x10] + lVar12) = 0xffff;
              lVar12 = lVar12 + 4;
            } while (uVar9 < *(uint *)(puVar14 + 0x13));
          }
          if (puVar14[0x17] != 0) {
            memset((void *)puVar14[0x17],0,(ulong)(*(int *)((long)puVar14 + 0xb4) + 1));
            *(undefined4 *)(puVar14 + 0x16) = 0;
          }
          *(undefined4 *)(puVar14[0x10] + 8) = 0;
          *(undefined4 *)(puVar14[0x10] + 0xc) = 0;
        }
        mutex_unlock(puVar14[0x14]);
      }
    }
  }
  puVar2 = (uint *)puVar14[0x1a];
  if ((*(char *)puVar14[0x19] == '\x01') ||
     (puVar10 = (undefined8 *)(ulong)*puVar2, *puVar2 == 0xff00ff01)) {
    puVar10 = (undefined8 *)puVar14[0x1b];
    uVar3 = *(uint *)(puVar10 + 1);
    if (uVar3 == puVar2[2]) goto LAB_00101084;
    uVar4 = *(uint *)(puVar14 + 0x1d);
    if (uVar4 <= (ushort)puVar2[(ulong)uVar3 + 4]) goto LAB_00101084;
    uVar5 = 0;
    if (uVar4 != 0) {
      uVar5 = (uVar3 + 1) / uVar4;
    }
    *(uint *)(puVar10 + 1) = (uVar3 + 1) - uVar5 * uVar4;
    DataSynchronizationBarrier(3,1,0);
    uVar11 = (ulong)*(ushort *)((long)puVar2 + (ulong)uVar3 * 4 + 0x12) << 7;
    lVar12 = puVar14[0x1c] + (ulong)(ushort)puVar2[(ulong)uVar3 + 4] * 0x80;
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
    if ((int)uVar9 == 0) {
      if (puVar14[0x1e] != 0) {
        mutex_lock();
      }
      if ((*(char *)puVar14[0x19] == '\x01') || (*(int *)puVar14[0x1a] == -0xff00ff)) {
        lVar12 = lVar12 - puVar14[0x1c];
        lVar1 = lVar12 + 0x7f;
        if (-1 < lVar12) {
          lVar1 = lVar12;
        }
        if ((uint)(lVar1 >> 7) < *(uint *)(puVar14 + 0x1d)) {
          lVar12 = puVar14[0x1b] + (ulong)*(uint *)(puVar14[0x1b] + 0xc) * 4;
          *(short *)(lVar12 + 0x10) = (short)(lVar1 >> 7);
          *(undefined2 *)(lVar12 + 0x12) = 0;
          uVar4 = *(uint *)(puVar14 + 0x1d);
          uVar3 = *(int *)(puVar14[0x1b] + 0xc) + 1;
          uVar5 = 0;
          if (uVar4 != 0) {
            uVar5 = uVar3 / uVar4;
          }
          *(uint *)(puVar14[0x1b] + 0xc) = uVar3 - uVar5 * uVar4;
        }
      }
      if (puVar14[0x1e] != 0) {
        mutex_unlock();
      }
      iVar6 = (int)uVar11;
      goto LAB_00101068;
    }
    uVar7 = *puVar14;
    pcVar8 = "%s: Error in copy_to_user(). Err code = %d\n";
  }
  else {
LAB_00101084:
    uVar7 = *puVar14;
    pcVar8 = "%s: Error in smq_recv(). Err code = %d\n";
    uVar9 = 0;
  }
  _dev_err(puVar10,uVar7,pcVar8,"rdbg_read",uVar9);
  iVar6 = -0x3d;
LAB_00101068:
  return (long)iVar6;
}



/* 00101100 rdbg_write */

size_t rdbg_write(long param_1,ulong param_2,int param_3)

{
  uint uVar1;
  uint uVar2;
  byte bVar3;
  int iVar4;
  undefined8 *puVar5;
  undefined8 uVar6;
  bool bVar7;
  uint uVar8;
  code *pcVar9;
  bool bVar10;
  size_t __n;
  long lVar11;
  uint uVar12;
  uint uVar13;
  long lVar14;
  ulong uVar15;
  int *piVar16;
  uint uVar17;
  uint uVar18;
  uint uVar20;
  size_t sVar21;
  ulong uVar22;
  long lVar23;
  uint uVar24;
  ulong uVar19;
  
  lVar23 = *(long *)(param_1 + 0x20);
  if (lVar23 == 0) {
    _printk(&DAT_001017e8);
    sVar21 = 0xffffffffffffffea;
  }
  else {
    sVar21 = (size_t)param_3;
    uVar1 = param_3 + 0x7f;
    uVar2 = (int)uVar1 >> 7;
    uVar24 = 0;
    puVar5 = (undefined8 *)sp_el0;
    do {
      mutex_lock(*(undefined8 *)(lVar23 + 0xa0));
      piVar16 = *(int **)(lVar23 + 0x88);
      if (((*piVar16 == -0xff00fe) && (*(char *)(*(long *)(lVar23 + 0x78) + 1) == '\x01')) &&
         (lVar14 = *(long *)(lVar23 + 0x80), *(int *)(lVar14 + 4) == piVar16[1])) {
        while( true ) {
          uVar13 = *(uint *)(lVar14 + 0xc);
          if (uVar13 == piVar16[3]) break;
          uVar17 = *(uint *)(lVar23 + 0x98);
          if (uVar17 <= *(ushort *)(piVar16 + (ulong)uVar13 + 4)) goto LAB_001011e4;
          uVar12 = 0;
          if (uVar17 != 0) {
            uVar12 = (uVar13 + 1) / uVar17;
          }
          *(uint *)(lVar14 + 0xc) = (uVar13 + 1) - uVar12 * uVar17;
          uVar15 = (ulong)*(ushort *)(piVar16 + (ulong)uVar13 + 4);
          bVar3 = *(byte *)(*(long *)(lVar23 + 0xb8) + uVar15);
          uVar13 = (uint)bVar3;
          if (bVar3 != 0) {
            do {
              uVar13 = uVar13 - 1;
              *(undefined1 *)(*(long *)(lVar23 + 0xb8) + uVar15) = 0;
              uVar15 = uVar15 + 1;
            } while (uVar13 != 0);
          }
          DataSynchronizationBarrier(3,1,0);
          lVar14 = *(long *)(lVar23 + 0x80);
          piVar16 = *(int **)(lVar23 + 0x88);
        }
      }
      uVar13 = *(uint *)(lVar23 + 0xb0);
      uVar15 = (ulong)uVar13;
      if (uVar2 == 1) {
        uVar22 = uVar15;
        do {
          if (*(char *)(*(long *)(lVar23 + 0xb8) + uVar22) == '\0') {
            *(undefined1 *)(*(long *)(lVar23 + 0xb8) + uVar22) = 1;
            uVar17 = *(uint *)(lVar23 + 0xb4);
            uVar13 = *(int *)(lVar23 + 0xb0) + 1;
            uVar12 = 0;
            if (uVar17 != 0) {
              uVar12 = uVar13 / uVar17;
            }
            iVar4 = uVar13 - uVar12 * uVar17;
            goto LAB_00101314;
          }
          uVar12 = *(uint *)(lVar23 + 0xb4);
          uVar17 = (int)uVar22 + 1;
          uVar18 = 0;
          if (uVar12 != 0) {
            uVar18 = uVar17 / uVar12;
          }
          uVar17 = uVar17 - uVar18 * uVar12;
          uVar22 = (ulong)uVar17;
          *(uint *)(lVar23 + 0xb0) = uVar17;
        } while (uVar13 != uVar17);
      }
      else {
        uVar13 = *(uint *)(lVar23 + 0xb4);
        uVar17 = 0;
        uVar22 = (ulong)uVar13;
        uVar19 = uVar15;
        do {
          uVar12 = (uint)uVar15;
          uVar18 = (uint)*(byte *)(*(long *)(lVar23 + 0xb8) + uVar15);
          if (uVar18 == 0) {
            uVar20 = (uint)uVar22;
            uVar18 = uVar12;
            uVar8 = 1;
            if (uVar20 <= uVar12) {
              uVar18 = (uint)uVar19;
              uVar8 = uVar17 + 1;
            }
            uVar17 = uVar8;
            uVar19 = (ulong)uVar18;
            uVar18 = uVar20;
            if (uVar12 <= uVar20) {
              uVar18 = uVar12;
            }
            uVar22 = (ulong)uVar18;
            if (uVar17 != uVar2) goto LAB_00101278;
            if (uVar1 < 0x80) {
              uVar13 = 0;
            }
            else {
              uVar15 = (ulong)uVar2;
              if (uVar12 <= uVar20) {
                uVar20 = uVar12;
              }
              do {
                *(char *)(*(long *)(lVar23 + 0xb8) + (ulong)uVar20) = (char)uVar15;
                uVar15 = uVar15 - 1;
                uVar20 = uVar20 + 1;
              } while (uVar15 != 0);
              uVar12 = *(uint *)(lVar23 + 0xb0);
              uVar13 = (uint)*(byte *)(*(long *)(lVar23 + 0xb8) + (ulong)uVar12);
            }
            iVar4 = uVar12 + uVar13 + -1;
LAB_00101314:
            *(int *)(lVar23 + 0xb0) = iVar4;
            lVar14 = *(long *)(lVar23 + 0x90) + (ulong)(uint)((int)uVar22 << 7);
            if (param_3 < 0) {
                    /* WARNING: Does not return */
              pcVar9 = (code *)SoftwareBreakpoint(0x800,0x101480);
              (*pcVar9)();
            }
            __check_object_size(lVar14,sVar21,0);
            if (((*(byte *)((long)puVar5 + 0x46) >> 5 & 1) != 0) ||
               (uVar15 = param_2, ((uint)*puVar5 >> 0x1a & 1) != 0)) {
              uVar15 = param_2 & (long)(param_2 << 8) >> 8;
            }
            __n = sVar21;
            if (0x8000000000 - sVar21 < uVar15) {
LAB_00101360:
              memset((void *)(lVar14 + (sVar21 - __n)),0,__n);
              if ((int)__n == 0) goto LAB_00101414;
              if (lVar14 == 0) {
                bVar7 = false;
                goto LAB_00101460;
              }
              bVar3 = *(byte *)(*(long *)(lVar23 + 0xb8) + uVar22);
              uVar13 = (uint)bVar3;
              if (bVar3 != 0) {
                do {
                  uVar13 = uVar13 - 1;
                  *(undefined1 *)(*(long *)(lVar23 + 0xb8) + uVar22) = 0;
                  uVar22 = (ulong)((int)uVar22 + 1);
                } while (uVar13 != 0);
              }
              break;
            }
            uVar6 = daif;
            uVar15 = daif;
            daif = uVar15 | 0xc0;
            uVar15 = ttbr1_el1;
            ttbr1_el1 = puVar5[1] & 0xffff000000000000 | uVar15 & 0xffffffffffff;
            ttbr0_el1 = puVar5[1];
            InstructionSynchronizationBarrier();
            daif = uVar6;
            __n = __arch_copy_from_user(lVar14,param_2 & 0xff7fffffffffffff,sVar21);
            uVar6 = daif;
            uVar15 = daif;
            daif = uVar15 | 0xc0;
            uVar15 = ttbr1_el1;
            ttbr0_el1 = (uVar15 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar15 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = uVar6;
            if (__n != 0) goto LAB_00101360;
LAB_00101414:
            *(short *)(*(long *)(lVar23 + 0x80) + (ulong)*(uint *)(*(long *)(lVar23 + 0x80) + 8) * 4
                      + 0x10) = (short)uVar22;
            bVar7 = true;
            *(short *)(*(long *)(lVar23 + 0x80) + (ulong)*(uint *)(*(long *)(lVar23 + 0x80) + 8) * 4
                      + 0x12) = (short)(uVar1 >> 7);
            uVar17 = *(uint *)(lVar23 + 0x98);
            uVar13 = *(int *)(*(long *)(lVar23 + 0x80) + 8) + 1;
            uVar12 = 0;
            if (uVar17 != 0) {
              uVar12 = uVar13 / uVar17;
            }
            *(uint *)(*(long *)(lVar23 + 0x80) + 8) = uVar13 - uVar12 * uVar17;
            goto LAB_00101460;
          }
          uVar17 = 0;
          uVar22 = (ulong)uVar13;
          uVar12 = (uVar12 + uVar18) - 1;
LAB_00101278:
          uVar18 = 0;
          if (uVar13 != 0) {
            uVar18 = (uVar12 + 1) / uVar13;
          }
          uVar12 = (uVar12 + 1) - uVar18 * uVar13;
          uVar15 = (ulong)uVar12;
          *(uint *)(lVar23 + 0xb0) = uVar12;
        } while ((uint)uVar19 != uVar12);
      }
LAB_001011e4:
      bVar7 = false;
LAB_00101460:
      mutex_unlock(*(undefined8 *)(lVar23 + 0xa0));
    } while ((!bVar7) && (bVar10 = uVar24 < 0x14, uVar24 = uVar24 + 1, bVar10));
    if (bVar7) {
      uVar1 = *(uint *)(lVar23 + 0x5c);
      if (0x1f < uVar1) {
                    /* WARNING: Does not return */
        pcVar9 = (code *)SoftwareBreakpoint(0x5512,0x10152c);
        (*pcVar9)();
      }
      lVar14 = lVar23 + (ulong)uVar1 * 4;
      lVar11 = 1L << ((ulong)(*(int *)(lVar23 + 0x48) + uVar1) & 0x3f);
      uVar24 = *(uint *)(lVar14 + 0x148) ^ (uint)lVar11;
      qcom_smem_state_update_bits(*(undefined8 *)(lVar23 + 0x50),lVar11,uVar24);
      *(uint *)(lVar14 + 0x148) = uVar24;
      *(uint *)(lVar23 + 0x5c) = uVar1 + 1 & 0x1f;
    }
    else {
      _printk(&DAT_00101a54);
      sVar21 = 0xffffffffffffffba;
    }
  }
  return sVar21;
}



/* 00101540 cleanup_module */

void cleanup_module(void)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  
  if (0 < DAT_001000f4) {
    lVar3 = 0;
    lVar4 = 0x58;
    lVar2 = DAT_001000f8;
    iVar1 = DAT_001000f4;
    do {
      if (*(char *)(lVar2 + lVar4) == '\x01') {
        device_destroy(DAT_001000e8,DAT_001000f0 & 0xfff00000 | (uint)lVar3);
        lVar2 = DAT_001000f8;
        iVar1 = DAT_001000f4;
      }
      lVar3 = lVar3 + 1;
      lVar4 = lVar4 + 0x1c8;
    } while (lVar3 < iVar1);
  }
  class_destroy(DAT_001000e8);
  cdev_del(&g_rdbg_instance);
  unregister_chrdev_region(DAT_001000f0,1);
  kfree(DAT_001000f8);
  return;
}



