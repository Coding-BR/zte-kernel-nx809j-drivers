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
  _printk(&DAT_0010125b,"zte_ir_write");
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
          _printk(&DAT_001011be,"zte_ir_write",40000);
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
    _printk(&DAT_0010119c,"zte_ir_write");
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
    _printk(&DAT_0010118e,"zte_ir_write",iVar9);
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

undefined8 zte_ir_ioctl(long param_1,uint param_2,ulong param_3)

{
  int iVar1;
  undefined8 *puVar2;
  undefined8 uVar3;
  ulong uVar4;
  long lVar5;
  
  if ((param_2 >> 0x1e & 1) == 0) {
    uVar3 = 0xffffffffffffffe7;
    if (param_2 == 0x40046931) {
      _printk(&DAT_001012a2,"zte_ir_ioctl",0);
      uVar3 = 0xffffffffffffffea;
    }
  }
  else {
    puVar2 = (undefined8 *)sp_el0;
    lVar5 = *(long *)(param_1 + 0x20);
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
      iVar1 = *(int *)(param_3 & 0xff7fffffffffffff);
      uVar3 = daif;
      uVar4 = daif;
      daif = uVar4 | 0xc0;
      uVar4 = ttbr1_el1;
      ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar4 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar3;
      uVar3 = 0xffffffffffffffe7;
      if (param_2 == 0x40046931) {
        _printk(&DAT_001012a2,"zte_ir_ioctl",iVar1);
        uVar3 = 0xffffffffffffffea;
        if (iVar1 != 0) {
          uVar3 = 0;
          *(int *)(lVar5 + 0x13888) = iVar1 << 4;
        }
      }
    }
  }
  return uVar3;
}



/* 00100804 zte_ir_open */

undefined4 zte_ir_open(long param_1,long param_2)

{
  undefined **ppuVar1;
  undefined4 uVar2;
  
  mutex_lock(&device_list_lock);
  ppuVar1 = &device_list;
  do {
    ppuVar1 = (undefined **)*ppuVar1;
    if (ppuVar1 == &device_list) {
      _printk(&DAT_001011e9,*(uint *)(param_1 + 0x4c) & 0xfffff);
      uVar2 = 0xfffffffa;
      goto LAB_0010089c;
    }
  } while (*(int *)(ppuVar1 + -0x271b) != *(int *)(param_1 + 0x4c));
  _printk(&DAT_0010130a);
  *(undefined ***)(param_2 + 0x20) = ppuVar1 + -0x271b;
  nonseekable_open(param_1,param_2);
  uVar2 = 0;
LAB_0010089c:
  mutex_unlock(&device_list_lock);
  return uVar2;
}



/* 001008c4 zte_ir_release */

undefined8 zte_ir_release(undefined8 param_1,long param_2)

{
  mutex_lock(&device_list_lock);
  *(undefined8 *)(param_2 + 0x20) = 0;
  _printk(&DAT_0010126c);
  mutex_unlock(&device_list_lock);
  return 0;
}



/* 00100918 zte_ir_probe */

ulong zte_ir_probe(long param_1)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  undefined8 uVar5;
  int *piVar6;
  ulong uVar7;
  
  piVar6 = (int *)__kmalloc_large_noprof(0x138e8,0xdc0);
  if (piVar6 == (int *)0x0) {
    uVar7 = 0xfffffff4;
  }
  else {
    *(long *)(piVar6 + 0x4e24) = param_1;
    piVar6[0x4e28] = 0;
    __mutex_init(piVar6 + 0x4e2a,"&zte_ir->buf_lock",&zte_ir_probe___key);
    piVar1 = piVar6 + 0x4e36;
    *(int **)(piVar6 + 0x4e36) = piVar1;
    *(int **)(piVar6 + 0x4e38) = piVar1;
    mutex_lock(&device_list_lock);
    uVar5 = zte_ir_class;
    if ((minors & 1) == 0) {
      iVar2 = spidev_major << 0x14;
      *piVar6 = iVar2;
      uVar7 = device_create(uVar5,param_1,iVar2,piVar6,"zte_ir");
      if ((uVar7 < 0xfffffffffffff001) || ((int)uVar7 == 0)) {
        Hint_Prefetch(0x101350,2,0,1);
        do {
          cVar3 = '\x01';
          bVar4 = (bool)ExclusiveMonitorPass(0x101350,0x10);
          if (bVar4) {
            cVar3 = ExclusiveMonitorsStatus();
            minors = minors | 1;
          }
        } while (cVar3 != '\0');
        if (((int *)device_list == piVar1) || (*(undefined ***)(device_list + 8) != &device_list)) {
          __list_add_valid_or_report(piVar1,&device_list);
        }
        else {
          *(int **)(device_list + 8) = piVar1;
          *(undefined **)(piVar6 + 0x4e36) = device_list;
          *(undefined ***)(piVar6 + 0x4e38) = &device_list;
          device_list = (undefined *)piVar1;
        }
        mutex_unlock(&device_list_lock);
        piVar6[0x4e22] = 0x94700;
        _dev_printk(&DAT_0010129f,param_1,"zte_ir->speed_hz=%d\n",0x94700);
        uVar7 = 0;
        *(int **)(param_1 + 0x98) = piVar6;
        piVar6[0x4e21] = 0x1f;
        goto LAB_00100950;
      }
    }
    else {
      _dev_printk(&DAT_0010129f,param_1,"no minor number available!\n");
      uVar7 = 0xffffffed;
    }
    mutex_unlock(&device_list_lock);
    piVar6[0x4e22] = 0x94700;
    _dev_printk(&DAT_0010129f,param_1,"zte_ir->speed_hz=%d\n",0x94700);
    piVar6[0x4e21] = 0x1f;
    kfree(piVar6);
  }
LAB_00100950:
  return uVar7 & 0xffffffff;
}



/* 00100b50 zte_ir_remove */

void zte_ir_remove(long param_1)

{
  uint *puVar1;
  ulong *puVar2;
  uint uVar3;
  char cVar4;
  bool bVar5;
  long *plVar6;
  long lVar7;
  uint *puVar8;
  
  puVar8 = *(uint **)(param_1 + 0x98);
  _raw_spin_lock_irq(puVar8 + 0x4e28);
  puVar8[0x4e24] = 0;
  puVar8[0x4e25] = 0;
  _raw_spin_unlock_irq(puVar8 + 0x4e28);
  mutex_lock(&device_list_lock);
  plVar6 = *(long **)(puVar8 + 0x4e38);
  puVar1 = puVar8 + 0x4e36;
  if (((uint *)*plVar6 == puVar1) && (lVar7 = *(long *)puVar1, *(uint **)(lVar7 + 8) == puVar1)) {
    *(long **)(lVar7 + 8) = plVar6;
    *plVar6 = lVar7;
  }
  else {
    __list_del_entry_valid_or_report();
  }
  puVar8[0x4e36] = 0x100;
  puVar8[0x4e37] = 0xdead0000;
  puVar8[0x4e38] = 0x122;
  puVar8[0x4e39] = 0xdead0000;
  device_destroy(zte_ir_class,*puVar8);
  uVar3 = *puVar8;
  puVar2 = &minors + ((ulong)(uVar3 >> 6) & 0x3fff);
  Hint_Prefetch(puVar2,2,0,1);
  do {
    cVar4 = '\x01';
    bVar5 = (bool)ExclusiveMonitorPass(puVar2,0x10);
    if (bVar5) {
      *puVar2 = *puVar2 & (1L << ((ulong)uVar3 & 0x3f) ^ 0xffffffffffffffffU);
      cVar4 = ExclusiveMonitorsStatus();
    }
  } while (cVar4 != '\0');
  kfree(puVar8);
  mutex_unlock(&device_list_lock);
  return;
}



/* 00100c74 init_module */

int init_module(void)

{
  int iVar1;
  
  _printk(&DAT_00101286);
  spidev_major = __register_chrdev(0,0,1,&DAT_0010123d,zte_ir_fops);
  _printk(&DAT_001012b4,spidev_major);
  zte_ir_class = class_create("zte_ir_class");
  if (zte_ir_class < 0xfffffffffffff001) {
    iVar1 = __spi_register_driver(&__this_module,zte_ir_spi_driver);
    if (iVar1 < 0) {
      class_destroy(zte_ir_class);
      __unregister_chrdev(spidev_major,0,0x100,zte_ir_spi_driver._32_8_);
    }
    _printk(&DAT_001012d8,iVar1);
  }
  else {
    __unregister_chrdev(spidev_major,0,0x100,zte_ir_spi_driver._32_8_);
    iVar1 = (int)zte_ir_class;
  }
  return iVar1;
}



/* 00100d70 cleanup_module */

void cleanup_module(void)

{
  driver_unregister(0x1000b0);
  class_destroy(zte_ir_class);
  __unregister_chrdev(spidev_major,0,0x100,zte_ir_spi_driver._32_8_);
  return;
}



