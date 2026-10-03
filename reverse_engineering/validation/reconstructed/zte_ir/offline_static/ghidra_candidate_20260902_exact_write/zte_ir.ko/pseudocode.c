/* 0010036c zte_ir_write */

void zte_ir_write(long param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  ulong uVar2;
  uint uVar3;
  ulong uVar4;
  undefined2 uVar5;
  undefined1 auVar6 [16];
  code *pcVar7;
  bool bVar8;
  int iVar9;
  ulong uVar10;
  ulong uVar11;
  long lVar12;
  undefined2 *puVar13;
  uint uVar14;
  ulong uVar15;
  int iVar16;
  long lVar17;
  uint uVar18;
  long lVar19;
  undefined8 ***local_d0;
  undefined8 ***local_c8;
  undefined8 uStack_c0;
  undefined8 ***local_b8;
  undefined8 ***local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 ***local_60;
  undefined8 ***local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar19 = sp_el0;
  local_48 = *(long *)(lVar19 + 0x710);
  local_c8 = (undefined8 ****)0x0;
  uStack_c0 = 0;
  local_d0 = (undefined8 ****)0x0;
  _printk(&DAT_00100dc3,"zte_ir_write");
  lVar19 = *(long *)(param_1 + 0x20);
  mutex_lock(lVar19 + 0x138a8);
  uVar10 = memdup_user(param_2,param_3);
  if (uVar10 < 0xfffffffffffff001) {
    if (3 < param_3) {
      uVar11 = 0;
      uVar18 = 0;
      uVar14 = 0;
      do {
        if ((((long)uVar11 < 0) || (param_3 < uVar11 * 4)) || (param_3 + uVar11 * -4 < 4)) {
                    /* WARNING: Does not return */
          pcVar7 = (code *)SoftwareBreakpoint(1,0x100694);
          (*pcVar7)();
        }
        auVar6._8_8_ = 0;
        auVar6._0_8_ = (ulong)*(uint *)(uVar10 + uVar11 * 4) *
                       (ulong)(*(uint *)(lVar19 + 0x13888) >> 4) + 500000;
        iVar9 = SUB164(auVar6 * ZEXT816(0x10c6f7a0b5ed8d37),10);
        if (0x270 < uVar14 + iVar9 >> 6) {
          _printk(&DAT_00100d26,"zte_ir_write",40000);
          param_3 = 0xffffffffffffffea;
          goto LAB_00100418;
        }
        lVar1 = 0x13884;
        if ((uVar18 & 1) != 0) {
          lVar1 = 0x13886;
        }
        if (iVar9 != 0) {
          uVar5 = *(undefined2 *)(lVar19 + lVar1);
          uVar3 = 0;
          if (uVar14 < 0x9c41) {
            uVar3 = 40000 - uVar14;
          }
          uVar11 = (ulong)(iVar9 - 1);
          if ((ulong)uVar3 <= (ulong)(iVar9 - 1)) {
            uVar11 = (ulong)uVar3;
          }
          uVar15 = (ulong)uVar14;
          if (uVar11 < 2) {
            lVar12 = 0;
          }
          else {
            lVar1 = uVar15 * 2;
            uVar2 = uVar11 + 1 & 1;
            uVar4 = 2;
            if (uVar2 != 0) {
              uVar4 = uVar2;
            }
            lVar12 = (uVar11 + 1) - uVar4;
            lVar17 = ~uVar11 + uVar4;
            uVar15 = lVar12 + uVar15;
            puVar13 = (undefined2 *)(lVar19 + 6 + lVar1);
            do {
              lVar17 = lVar17 + 2;
              puVar13[-1] = uVar5;
              *puVar13 = uVar5;
              puVar13 = puVar13 + 2;
            } while (lVar17 != 0);
          }
          if (39999 < uVar14) {
            uVar14 = 40000;
          }
          iVar9 = (int)lVar12 - iVar9;
          iVar16 = (int)lVar12 + -40000 + uVar14;
          uVar14 = (uint)uVar15;
          puVar13 = (undefined2 *)(lVar19 + 4 + uVar15 * 2);
          do {
            if (iVar16 == 0) {
                    /* WARNING: Does not return */
              pcVar7 = (code *)SoftwareBreakpoint(0x5512,0x100690);
              (*pcVar7)();
            }
            bVar8 = iVar9 != -1;
            iVar9 = iVar9 + 1;
            uVar14 = uVar14 + 1;
            iVar16 = iVar16 + 1;
            *puVar13 = uVar5;
            puVar13 = puVar13 + 1;
          } while (bVar8);
        }
        uVar18 = uVar18 + 1;
        uVar11 = (ulong)(int)uVar18;
      } while (uVar11 < param_3 >> 2);
    }
    local_c8 = (undefined8 ***)0x0;
    uStack_c0 = 0;
    local_d0 = (undefined8 ***)0x0;
    _printk(&DAT_00100d04,"zte_ir_write");
    local_d0 = &local_b8;
    local_60 = &local_60;
    uStack_50 = 0;
    local_68 = 0;
    local_78 = 0;
    uStack_70 = 0;
    local_88 = 0;
    uStack_80 = 0;
    local_98 = 0;
    uStack_90 = 0;
    local_a8 = 0;
    uStack_a0 = 0;
    local_b8 = &local_d0;
    local_c8 = local_d0;
    local_b0 = local_b8;
    local_58 = local_60;
    iVar9 = spi_sync(*(undefined8 *)(lVar19 + 0x13890),&local_b8);
    if (iVar9 != 0) {
      _dev_err(*(undefined8 *)(lVar19 + 0x13890),"unable to deliver the signal,ret = %d\n",iVar9);
    }
    _printk(&DAT_00100cf6,"zte_ir_write",iVar9);
  }
  else {
    iVar9 = (int)uVar10;
  }
  mutex_unlock(lVar19 + 0x138a8);
  if (iVar9 != 0) {
    param_3 = (long)iVar9;
  }
LAB_00100418:
  lVar19 = sp_el0;
  if (*(long *)(lVar19 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(param_3);
  }
  return;
}



/* 0010069c zte_ir_ioctl */

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



/* 0010080c zte_ir_open */

int zte_ir_open(long param_1,long param_2)

{
  undefined **ppuVar1;
  int iVar2;
  undefined **ppuVar3;
  
  mutex_lock(&device_list_lock);
  ppuVar3 = &device_list;
  do {
    ppuVar3 = (undefined **)*ppuVar3;
    if (ppuVar3 == &device_list) goto LAB_00100874;
    ppuVar1 = ppuVar3 + -0x271b;
  } while (*(int *)ppuVar1 != *(int *)(param_1 + 0x4c));
  if ((ppuVar1 == (undefined **)0x0) || ((*(byte *)((long)ppuVar3 + 0x14) & 1) != 0)) {
LAB_00100874:
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



/* 001008d8 zte_ir_release */

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



/* 00100970 zte_ir_probe */

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
        Hint_Prefetch(0x101420,2,0,1);
        do {
          cVar3 = '\x01';
          bVar4 = (bool)ExclusiveMonitorPass(0x101420,0x10);
          if (bVar4) {
            cVar3 = ExclusiveMonitorsStatus();
            minors = minors | 1;
          }
        } while (cVar3 != '\0');
        list_add(piVar1);
        mutex_unlock(&device_list_lock);
        iVar2 = piVar5[0x4e22];
        *(int **)(param_1 + 0x98) = piVar5;
        _dev_printk(&DAT_00100ee9,param_1,"zte_ir->speed_hz=%d\n",iVar2);
        uVar6 = 0;
        goto LAB_00100af0;
      }
    }
    else {
      uVar6 = 0xffffffed;
    }
    mutex_unlock(&device_list_lock);
    kfree(piVar5);
  }
LAB_00100af0:
  return uVar6 & 0xffffffff;
}



/* 00100b30 zte_ir_remove */

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
    Hint_Prefetch(0x101420,2,0,1);
    do {
      cVar3 = '\x01';
      bVar4 = (bool)ExclusiveMonitorPass(0x101420,0x10);
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



/* 00100c6c list_add */

void list_add(undefined **param_1)

{
  if (((undefined **)device_list != param_1 && param_1 != &device_list) &&
      *(undefined ***)(device_list + 8) == &device_list) {
    *(undefined ***)(device_list + 8) = param_1;
    *param_1 = device_list;
    param_1[1] = (undefined *)&device_list;
    device_list = (undefined *)param_1;
    return;
  }
  __list_add_valid_or_report(param_1,&device_list);
  return;
}



/* 00100f38 init_module */

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
        _printk(&DAT_00100eb8,spidev_major);
        goto LAB_00100fdc;
      }
      class_destroy(zte_ir_class);
    }
    __unregister_chrdev(spidev_major,0,0x100,"zte_ir");
  }
LAB_00100fdc:
  return uVar2 & 0xffffffff;
}



/* 0010100c cleanup_module */

void cleanup_module(void)

{
  driver_unregister(&PTR_s_zte_ir_001000b0);
  class_destroy(zte_ir_class);
  __unregister_chrdev(spidev_major,0,0x100,"zte_ir");
  return;
}



