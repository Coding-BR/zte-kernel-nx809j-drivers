/* 0010041c zte_ir_write */

/* WARNING: Type propagation algorithm not settling */

void zte_ir_write(long param_1,long param_2,ulong param_3)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  long lVar4;
  long lVar5;
  long local_158 [33];
  
  lVar4 = sp_el0;
  local_158[0x20] = *(long *)(lVar4 + 0x710);
  if ((param_1 == 0) || (lVar4 = *(long *)(param_1 + 0x20), lVar4 == 0)) {
    uVar2 = 0xffffffffffffffed;
  }
  else {
    uVar2 = 0xffffffffffffffea;
    if (((param_2 != 0) && (param_3 != 0)) && ((param_3 & 3) == 0)) {
      if (param_3 < 0x27101) {
        local_158[0x1e] = 0;
        local_158[0x1f] = 0;
        local_158[0x1c] = 0;
        local_158[0x1d] = 0;
        local_158[0x1a] = 0;
        local_158[0x1b] = 0;
        local_158[0x18] = 0;
        local_158[0x19] = 0;
        local_158[0x16] = 0;
        local_158[0x17] = 0;
        local_158[0x14] = 0;
        local_158[0x15] = 0;
        local_158[0x12] = 0;
        local_158[0x13] = 0;
        local_158[0x10] = 0;
        local_158[0x11] = 0;
        local_158[0xe] = 0;
        local_158[0xf] = 0;
        local_158[0xc] = 0;
        local_158[0xd] = 0;
        local_158[10] = 0;
        local_158[0xb] = 0;
        local_158[8] = 0;
        local_158[9] = 0;
        local_158[6] = 0;
        local_158[7] = 0;
        local_158[4] = 0;
        local_158[5] = 0;
        local_158[2] = 0;
        local_158[3] = 0;
        local_158[0] = 0;
        local_158[1] = 0;
        uVar3 = memdup_user(param_2,param_3);
        uVar2 = uVar3;
        if (uVar3 < 0xfffffffffffff001) {
          mutex_lock(lVar4 + 0x138a8);
          if ((*(byte *)(lVar4 + 0x138ec) & 1) == 0) {
            lVar5 = *(long *)(lVar4 + 0x13890);
            if (lVar5 == 0) {
              uVar2 = 0xffffffffffffffed;
            }
            else {
              iVar1 = zte_ir_encode_pulses
                                (lVar4,uVar3,param_3 >> 2,*(undefined4 *)(lVar4 + 0x13888),local_158
                                );
              if (iVar1 == 0) {
                uVar2 = param_3;
                if (local_158[0] != 0) {
                  local_158[0xf] = lVar4 + 4;
                  local_158[0x1e] = 0;
                  local_158[0x1f] = 0;
                  local_158[0x1c] = 0;
                  local_158[0x1d] = 0;
                  local_158[0x1b] = 0;
                  local_158[0x18] = 0;
                  local_158[0x19] = 0;
                  local_158[0x16] = 0;
                  local_158[0x17] = 0;
                  local_158[0x14] = 0;
                  local_158[0x15] = 0;
                  local_158[0x12] = 0;
                  local_158[0x13] = 0;
                  local_158[0x10] = 0;
                  local_158[0x11] = (long)(uint)((int)local_158[0] << 1);
                  local_158[0x1a] = (long)*(uint *)(lVar4 + 0x13888);
                  spi_message_init(local_158 + 1);
                  spi_message_add_tail(local_158 + 0xf,local_158 + 1);
                  iVar1 = spi_sync(lVar5,local_158 + 1);
                  if (iVar1 != 0) {
                    uVar2 = (ulong)iVar1;
                    _dev_err(lVar5,"unable to deliver the signal,ret = %d\n");
                  }
                }
              }
              else {
                uVar2 = (long)iVar1;
              }
            }
          }
          else {
            uVar2 = 0xffffffffffffff94;
          }
          mutex_unlock(lVar4 + 0x138a8);
          kfree(uVar3);
        }
      }
      else {
        uVar2 = 0xfffffffffffffff9;
      }
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_158[0x20]) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 0010060c zte_ir_ioctl */

undefined8 zte_ir_ioctl(long param_1,int param_2,ulong param_3)

{
  uint uVar1;
  undefined8 *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  
  uVar3 = 0xffffffffffffffed;
  if (((param_1 != 0) && (lVar5 = *(long *)(param_1 + 0x20), lVar5 != 0)) &&
     (uVar3 = 0xffffffffffffffe7, param_2 == 0x40046931)) {
    puVar2 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar2 + 0x46) >> 5 & 1) != 0) ||
       (uVar4 = param_3, ((uint)*puVar2 >> 0x1a & 1) != 0)) {
      uVar4 = param_3 & (long)(param_3 << 8) >> 8;
    }
    uVar3 = 0xfffffffffffffff2;
    if (uVar4 < 0x7ffffffffd) {
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr1_el1 = puVar2[1] & 0xffff000000000000 | uVar4 & 0xffffffffffff;
      ttbr0_el1 = puVar2[1];
      InstructionSynchronizationBarrier();
      daif = uVar3;
      uVar1 = *(uint *)(param_3 & 0xff7fffffffffffff);
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar4 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar3;
      uVar3 = 0xffffffffffffffea;
      if ((0 < (int)uVar1) && (uVar1 < 0x4c4b5)) {
        mutex_lock(lVar5 + 0x138a8);
        if ((*(byte *)(lVar5 + 0x138ec) & 1) == 0) {
          uVar3 = 0;
          *(uint *)(lVar5 + 0x13888) = uVar1 << 4;
        }
        else {
          uVar3 = 0xffffffffffffff94;
        }
        mutex_unlock(lVar5 + 0x138a8);
      }
    }
  }
  return uVar3;
}



/* 0010077c zte_ir_open */

int zte_ir_open(long param_1,long param_2)

{
  undefined **ppuVar1;
  int iVar2;
  undefined **ppuVar3;
  
  mutex_lock(&device_list_lock);
  ppuVar3 = &device_list;
  do {
    ppuVar3 = (undefined **)*ppuVar3;
    if (ppuVar3 == &device_list) goto LAB_001007e4;
    ppuVar1 = ppuVar3 + -0x271b;
  } while (*(int *)ppuVar1 != *(int *)(param_1 + 0x4c));
  if ((ppuVar1 == (undefined **)0x0) || ((*(byte *)((long)ppuVar3 + 0x14) & 1) != 0)) {
LAB_001007e4:
    iVar2 = -6;
  }
  else {
    *(int *)(ppuVar3 + 2) = *(int *)(ppuVar3 + 2) + 1;
    *(undefined ***)(param_2 + 0x20) = ppuVar1;
    iVar2 = nonseekable_open(param_1,param_2);
    if (iVar2 != 0) {
      *(int *)(ppuVar3 + 2) = *(int *)(ppuVar3 + 2) + -1;
      *(undefined8 *)(param_2 + 0x20) = 0;
    }
  }
  mutex_unlock(&device_list_lock);
  return iVar2;
}



/* 00100848 zte_ir_release */

undefined8 zte_ir_release(undefined8 param_1,long param_2)

{
  int iVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_2 + 0x20);
  if (lVar2 != 0) {
    mutex_lock(&device_list_lock);
    *(undefined8 *)(param_2 + 0x20) = 0;
    if (((*(int *)(lVar2 + 0x138e8) == 0) ||
        (iVar1 = *(int *)(lVar2 + 0x138e8) + -1, *(int *)(lVar2 + 0x138e8) = iVar1, iVar1 != 0)) ||
       ((*(byte *)(lVar2 + 0x138ec) & 1) == 0)) {
      mutex_unlock(&device_list_lock);
    }
    else {
      mutex_unlock(&device_list_lock);
      kfree(lVar2);
    }
    return 0;
  }
  return 0xffffffed;
}



/* 001008dc zte_ir_encode_pulses */

undefined4 zte_ir_encode_pulses(long param_1,long param_2,ulong param_3,uint param_4,ulong *param_5)

{
  ulong uVar1;
  ulong uVar2;
  ulong uVar3;
  ulong uVar4;
  uint uVar5;
  undefined2 uVar6;
  code *pcVar7;
  bool bVar8;
  ulong uVar9;
  long lVar10;
  undefined4 uVar11;
  ulong uVar12;
  ulong uVar13;
  long lVar14;
  undefined2 *puVar15;
  long lVar16;
  
  if (param_5 == (ulong *)0x0) {
    uVar11 = 0xffffffea;
  }
  else {
    uVar11 = 0xffffffea;
    *param_5 = 0;
    if (((param_2 != 0) && (param_3 != 0)) && (0xffb3b4ce < param_4 - 0x4c4b41)) {
      uVar12 = 0;
      uVar13 = 0;
      do {
        uVar5 = *(uint *)(param_2 + uVar12 * 4);
        uVar9 = ((ulong)uVar5 * (ulong)(param_4 >> 4) + 500000) / 1000000;
        if (40000 - uVar13 <= uVar9) {
          return 0xfffffff9;
        }
        lVar14 = 0x13884;
        if ((uVar12 & 1) != 0) {
          lVar14 = 0x13886;
        }
        if (499999 < (ulong)uVar5 * (ulong)(param_4 >> 4)) {
          uVar6 = *(undefined2 *)(param_1 + lVar14);
          uVar1 = 0;
          if (uVar13 < 0x9c41) {
            uVar1 = 40000 - uVar13;
          }
          uVar4 = uVar9;
          if (uVar9 < 2) {
            uVar4 = 1;
          }
          uVar2 = uVar4 - 1;
          if (uVar1 <= uVar4 - 1) {
            uVar2 = uVar1;
          }
          lVar14 = 0;
          if (1 < uVar2) {
            uVar1 = uVar2 + 1 & 1;
            uVar3 = 2;
            if (uVar1 != 0) {
              uVar3 = uVar1;
            }
            lVar14 = (uVar2 + 1) - uVar3;
            lVar10 = ~uVar2 + uVar3;
            puVar15 = (undefined2 *)(param_1 + 6 + uVar13 * 2);
            do {
              lVar10 = lVar10 + 2;
              puVar15[-1] = uVar6;
              *puVar15 = uVar6;
              puVar15 = puVar15 + 2;
            } while (lVar10 != 0);
          }
          uVar1 = uVar13;
          if (39999 < uVar13) {
            uVar1 = 40000;
          }
          lVar10 = lVar14 - uVar4;
          lVar16 = lVar14 + -40000 + uVar1;
          puVar15 = (undefined2 *)(param_1 + 4 + (lVar14 + uVar13) * 2);
          do {
            if (lVar16 == 0) {
                    /* WARNING: Does not return */
              pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x100a50);
              (*pcVar7)();
            }
            bVar8 = lVar10 != -1;
            lVar10 = lVar10 + 1;
            lVar16 = lVar16 + 1;
            *puVar15 = uVar6;
            puVar15 = puVar15 + 1;
          } while (bVar8);
        }
        uVar12 = uVar12 + 1;
        uVar13 = uVar9 + uVar13;
      } while (uVar12 != param_3);
      uVar11 = 0;
      *param_5 = uVar13;
    }
  }
  return uVar11;
}



/* 00100a50 spi_message_init */

void spi_message_init(long param_1)

{
  undefined8 *puVar1;
  
  *(undefined8 *)(param_1 + 0x60) = 0;
  *(undefined8 *)(param_1 + 0x68) = 0;
  *(undefined8 *)(param_1 + 0x48) = 0;
  *(undefined8 *)(param_1 + 0x50) = 0;
  *(undefined8 *)(param_1 + 0x38) = 0;
  *(undefined8 *)(param_1 + 0x40) = 0;
  *(undefined8 *)(param_1 + 0x28) = 0;
  *(undefined8 *)(param_1 + 0x30) = 0;
  *(undefined8 *)(param_1 + 0x18) = 0;
  *(undefined8 *)(param_1 + 0x20) = 0;
  *(undefined8 *)(param_1 + 0x10) = 0;
  puVar1 = (undefined8 *)(param_1 + 0x58);
  *puVar1 = 0;
  *(long *)param_1 = param_1;
  *(long *)(param_1 + 8) = param_1;
  *puVar1 = puVar1;
  *(undefined8 **)(param_1 + 0x60) = puVar1;
  return;
}



/* 00100a84 spi_message_add_tail */

void spi_message_add_tail(long param_1,long param_2)

{
  long *plVar1;
  long *plVar2;
  
  plVar1 = (long *)(param_1 + 0x70);
  plVar2 = *(long **)(param_2 + 8);
  if (((plVar1 != (long *)param_2) && (plVar2 != plVar1)) && (*plVar2 == param_2)) {
    *(long **)(param_2 + 8) = plVar1;
    *(long *)(param_1 + 0x70) = param_2;
    *(long **)(param_1 + 0x78) = plVar2;
    *plVar2 = (long)plVar1;
    return;
  }
  __list_add_valid_or_report();
  return;
}



/* 00100adc __list_add */

void __list_add(long *param_1,long *param_2,long *param_3)

{
  if (((((long *)param_3[1] == param_2) && (param_1 != param_3)) && (param_1 != param_2)) &&
     ((long *)*param_2 == param_3)) {
    param_3[1] = (long)param_1;
    *param_1 = (long)param_3;
    param_1[1] = (long)param_2;
    *param_2 = (long)param_1;
    return;
  }
  __list_add_valid_or_report();
  return;
}



/* 00100b34 zte_ir_probe */

ulong zte_ir_probe(long param_1)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  int *piVar5;
  ulong uVar6;
  
  piVar5 = (int *)__kmalloc_large_noprof(0x138f0,0xdc0);
  if (piVar5 == (int *)0x0) {
    uVar6 = 0xfffffff4;
  }
  else {
    piVar5[0x4e28] = 0;
    __mutex_init(piVar5 + 0x4e2a,"&runtime->stock.buf_lock",&zte_ir_probe___key);
    piVar1 = piVar5 + 0x4e36;
    *(int **)(piVar5 + 0x4e36) = piVar1;
    *(int **)(piVar5 + 0x4e38) = piVar1;
    piVar5[0x4e21] = 0x1f;
    piVar5[0x4e22] = 0x94700;
    *(long *)(piVar5 + 0x4e24) = param_1;
    piVar5[0x4e3a] = 0;
    *(undefined1 *)(piVar5 + 0x4e3b) = 0;
    mutex_lock(&device_list_lock);
    if ((minors & 1) == 0) {
      iVar2 = spidev_major << 0x14;
      uVar6 = device_create(zte_ir_class,param_1,iVar2,piVar5,"zte_ir");
      if ((uVar6 < 0xfffffffffffff001) || ((int)uVar6 == 0)) {
        *piVar5 = iVar2;
        Hint_Prefetch(0x101400,2,0,1);
        do {
          cVar3 = '\x01';
          bVar4 = (bool)ExclusiveMonitorPass(0x101400,0x10);
          if (bVar4) {
            cVar3 = ExclusiveMonitorsStatus();
            minors = minors | 1;
          }
        } while (cVar3 != '\0');
        __list_add(piVar1,&device_list,device_list);
        mutex_unlock(&device_list_lock);
        iVar2 = piVar5[0x4e22];
        *(int **)(param_1 + 0x98) = piVar5;
        _dev_printk(&DAT_001013aa,param_1,"zte_ir->speed_hz=%d\n",iVar2);
        uVar6 = 0;
        goto LAB_00100cc0;
      }
    }
    else {
      uVar6 = 0xffffffed;
    }
    mutex_unlock(&device_list_lock);
    kfree(piVar5);
  }
LAB_00100cc0:
  return uVar6 & 0xffffffff;
}



/* 00100d00 zte_ir_remove */

void zte_ir_remove(long param_1)

{
  long *plVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  long *plVar5;
  long lVar6;
  undefined4 *puVar7;
  
  puVar7 = *(undefined4 **)(param_1 + 0x98);
  if (puVar7 != (undefined4 *)0x0) {
    mutex_lock(puVar7 + 0x4e2a);
    mutex_lock(&device_list_lock);
    *(undefined1 *)(puVar7 + 0x4e3b) = 1;
    _raw_spin_lock_irq(puVar7 + 0x4e28);
    *(undefined8 *)(puVar7 + 0x4e24) = 0;
    _raw_spin_unlock_irq(puVar7 + 0x4e28);
    plVar5 = *(long **)(puVar7 + 0x4e38);
    plVar1 = (long *)(puVar7 + 0x4e36);
    if (((long *)*plVar5 == plVar1) && (lVar6 = *plVar1, *(long **)(lVar6 + 8) == plVar1)) {
      *(long **)(lVar6 + 8) = plVar5;
      *plVar5 = lVar6;
    }
    else {
      __list_del_entry_valid_or_report();
    }
    *(undefined8 *)(puVar7 + 0x4e36) = 0xdead000000000100;
    *(undefined8 *)(puVar7 + 0x4e38) = 0xdead000000000122;
    device_destroy(zte_ir_class,*puVar7);
    Hint_Prefetch(0x101400,2,0,1);
    do {
      cVar3 = '\x01';
      bVar4 = (bool)ExclusiveMonitorPass(0x101400,0x10);
      if (bVar4) {
        cVar3 = ExclusiveMonitorsStatus();
        minors = minors & 0xfffffffffffffffe;
      }
    } while (cVar3 != '\0');
    *(undefined8 *)(param_1 + 0x98) = 0;
    iVar2 = puVar7[0x4e3a];
    mutex_unlock(&device_list_lock);
    mutex_unlock(puVar7 + 0x4e2a);
    if (iVar2 == 0) {
      kfree(puVar7);
    }
  }
  return;
}



/* 00100e4c init_module */

ulong init_module(void)

{
  ulong uVar1;
  ulong uVar2;
  
  uVar1 = __register_chrdev(0,0,1,"zte_ir",zte_ir_fops);
  uVar2 = uVar1 & 0xffffffff;
  if (-1 < (int)uVar1) {
    spidev_major = (int)uVar1;
    uVar2 = class_create("zte_ir_class");
    zte_ir_class = uVar2;
    if (uVar2 < 0xfffffffffffff001) {
      uVar1 = __spi_register_driver(&__this_module,&zte_ir_spi_driver);
      uVar2 = uVar1 & 0xffffffff;
      if ((int)uVar1 == 0) {
        _printk(&DAT_00101379,spidev_major);
        goto LAB_00100ef0;
      }
      class_destroy(zte_ir_class);
    }
    __unregister_chrdev(spidev_major,0,0x100,"zte_ir");
  }
LAB_00100ef0:
  return uVar2 & 0xffffffff;
}



/* 00100f20 cleanup_module */

void cleanup_module(void)

{
  driver_unregister(&PTR_s_zte_ir_001000b0);
  class_destroy(zte_ir_class);
  __unregister_chrdev(spidev_major,0,0x100,"zte_ir");
  return;
}



