
int syna_tcm_read_flash_boot_cs_config
              (long param_1,long param_2,long *param_3,ulong param_4,int param_5,undefined4 param_6)

{
  int iVar1;
  void *pvVar2;
  undefined *puVar3;
  byte bVar4;
  long lVar5;
  long lVar6;
  uint uVar7;
  ulong uVar9;
  int iVar10;
  byte *pbVar11;
  void *local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 local_60;
  long local_58;
  ulong uVar8;
  
  lVar5 = sp_el0;
  local_58 = *(long *)(lVar5 + 0x710);
  local_68 = 0;
  local_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = (void *)0x0;
  if (param_2 == 0) {
    puVar3 = &DAT_00134898;
  }
  else {
    if (param_3 != (long *)0x0) {
      if (*(char *)(param_1 + 9) == '\x01') {
        puVar3 = &DAT_00139ceb;
        bVar4 = 1;
      }
      else {
        pbVar11 = *(byte **)(param_2 + 0x20);
        bVar4 = *pbVar11;
        if ((bVar4 | 2) == 3) {
          uVar8 = param_4 & 0xffffffff;
          uVar7 = (uint)param_4;
          local_a0 = (void *)0x0;
          local_98 = 0;
          __mutex_init(&uStack_90,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
          pvVar2 = local_a0;
          if (uVar7 == 0) {
            iVar1 = syna_tcm_read_flash_boot_config(param_1,param_2,&local_a0,param_6);
            if (iVar1 < 0) {
              _printk(&DAT_00137df4,"syna_tcm_read_flash_boot_cs_config");
            }
            else {
              uVar7 = local_98._4_4_;
              param_4 = (ulong)local_98._4_4_;
              uVar8 = (ulong)*(uint *)(param_3 + 1);
              pvVar2 = (void *)*param_3;
              if (*(uint *)(param_3 + 1) < local_98._4_4_) {
                if (pvVar2 == (void *)0x0) {
LAB_001255c4:
                  lVar5 = syna_request_managed_device();
                  if (lVar5 != 0) goto LAB_001255cc;
LAB_001259c4:
                  puVar3 = &DAT_0013ccb3;
LAB_001259cc:
                  _printk(puVar3,"syna_pal_mem_alloc");
                  *param_3 = 0;
                }
                else {
                  lVar5 = syna_request_managed_device();
                  if (lVar5 != 0) {
                    devm_kfree(lVar5,pvVar2);
                    goto LAB_001255c4;
                  }
                  _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                  lVar5 = syna_request_managed_device();
                  if (lVar5 == 0) goto LAB_001259c4;
LAB_001255cc:
                  if ((int)uVar7 < 1) {
                    puVar3 = &DAT_00138e98;
                    goto LAB_001259cc;
                  }
                  pvVar2 = (void *)devm_kmalloc(lVar5,param_4,0xdc0);
                  *param_3 = (long)pvVar2;
                  if (pvVar2 != (void *)0x0) {
                    *(uint *)(param_3 + 1) = uVar7;
                    uVar8 = param_4;
                    goto LAB_0012578c;
                  }
                }
                goto LAB_001259f0;
              }
LAB_0012578c:
              memset(pvVar2,0,uVar8);
              iVar1 = 0x80;
              *(undefined4 *)((long)param_3 + 0xc) = 0;
              uVar7 = local_98._4_4_ - 0x88;
              do {
                if ((*(char *)((long)local_a0 + (long)(int)(local_98._4_4_ + iVar1 + -0x87)) < '\0')
                   && (-1 < *(char *)((long)local_a0 + (long)(int)(local_98._4_4_ + iVar1 + -0x8f)))
                   ) {
                  uVar7 = (local_98._4_4_ + iVar1) - 0x88;
                  break;
                }
                iVar1 = iVar1 + -8;
              } while (iVar1 != 0);
LAB_001256fc:
              if (((void *)*param_3 != (void *)0x0) && (local_a0 != (void *)0x0)) {
                if ((uVar7 <= *(uint *)(param_3 + 1)) && (uVar7 <= (uint)local_98)) {
                  memcpy((void *)*param_3,local_a0,(ulong)uVar7);
                  iVar1 = 0;
                  *(uint *)((long)param_3 + 0xc) = uVar7;
                  goto LAB_00125730;
                }
                _printk(&DAT_0013a172,"syna_pal_mem_cpy",local_98 & 0xffffffff,
                        *(uint *)(param_3 + 1),uVar7);
              }
              _printk(&DAT_00139169,"syna_tcm_read_flash_boot_cs_config");
              iVar1 = -0x16;
            }
          }
          else {
            if (*pbVar11 == 1) {
              lVar5 = 0xd;
              lVar6 = 0xc;
LAB_001255f8:
              iVar10 = (uint)CONCAT11(pbVar11[lVar5],pbVar11[lVar6]) * *(int *)(param_2 + 0x2c);
            }
            else {
              if (*pbVar11 == 3) {
                lVar5 = 0x11;
                lVar6 = 0x10;
                goto LAB_001255f8;
              }
              iVar10 = 0;
            }
            uVar9 = local_98 & 0xffffffff;
            if ((uint)local_98 < uVar7) {
              if (local_a0 == (void *)0x0) {
LAB_0012563c:
                lVar5 = syna_request_managed_device();
                if (lVar5 != 0) goto LAB_00125644;
LAB_00125910:
                puVar3 = &DAT_0013ccb3;
LAB_00125918:
                _printk(puVar3,"syna_pal_mem_alloc");
                local_a0 = (void *)0x0;
              }
              else {
                lVar5 = syna_request_managed_device();
                if (lVar5 != 0) {
                  devm_kfree(lVar5,pvVar2);
                  goto LAB_0012563c;
                }
                _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                lVar5 = syna_request_managed_device();
                if (lVar5 == 0) goto LAB_00125910;
LAB_00125644:
                if ((int)uVar7 < 1) {
                  puVar3 = &DAT_00138e98;
                  goto LAB_00125918;
                }
                local_a0 = (void *)devm_kmalloc(lVar5,uVar8,0xdc0);
                if (local_a0 != (void *)0x0) {
                  local_98 = CONCAT44(local_98._4_4_,uVar7);
                  uVar9 = uVar8;
                  goto LAB_00125668;
                }
              }
              _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",param_4 & 0xffffffff);
              local_98 = 0;
              puVar3 = &DAT_0013683e;
            }
            else {
LAB_00125668:
              memset(local_a0,0,uVar9);
              pvVar2 = (void *)*param_3;
              local_98 = local_98 & 0xffffffff;
              uVar9 = (ulong)*(uint *)(param_3 + 1);
              if (uVar7 <= *(uint *)(param_3 + 1)) {
LAB_001256cc:
                memset(pvVar2,0,uVar9);
                *(undefined4 *)((long)param_3 + 0xc) = 0;
                iVar1 = syna_tcm_read_flash(param_1,iVar10 + param_5,local_a0,param_4 & 0xffffffff,
                                            param_6);
                if (-1 < iVar1) goto LAB_001256fc;
                _printk(&DAT_0013621c,"syna_tcm_read_flash_boot_cs_config",iVar10 + param_5);
                goto LAB_00125730;
              }
              if (pvVar2 == (void *)0x0) {
LAB_001256a0:
                lVar5 = syna_request_managed_device();
                if (lVar5 != 0) goto LAB_001256a8;
LAB_0012596c:
                puVar3 = &DAT_0013ccb3;
LAB_00125974:
                _printk(puVar3,"syna_pal_mem_alloc");
                *param_3 = 0;
              }
              else {
                lVar5 = syna_request_managed_device();
                if (lVar5 != 0) {
                  devm_kfree(lVar5,pvVar2);
                  goto LAB_001256a0;
                }
                _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                lVar5 = syna_request_managed_device();
                if (lVar5 == 0) goto LAB_0012596c;
LAB_001256a8:
                if ((int)uVar7 < 1) {
                  puVar3 = &DAT_00138e98;
                  goto LAB_00125974;
                }
                pvVar2 = (void *)devm_kmalloc(lVar5,uVar8,0xdc0);
                *param_3 = (long)pvVar2;
                if (pvVar2 != (void *)0x0) {
                  *(uint *)(param_3 + 1) = uVar7;
                  uVar9 = uVar8;
                  goto LAB_001256cc;
                }
              }
              param_4 = param_4 & 0xffffffff;
LAB_001259f0:
              _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",param_4);
              puVar3 = &DAT_001347f0;
              param_3[1] = 0;
            }
            _printk(puVar3,"syna_tcm_read_flash_boot_cs_config");
            iVar1 = -0xf3;
          }
LAB_00125730:
          if ((char)local_60 != '\0') {
            _printk(&DAT_00135294,"syna_tcm_buf_release");
          }
          pvVar2 = local_a0;
          lVar5 = syna_request_managed_device();
          if (lVar5 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          else if (pvVar2 != (void *)0x0) {
            devm_kfree(lVar5,pvVar2);
          }
          goto LAB_00125750;
        }
        puVar3 = &DAT_0013d047;
      }
      _printk(puVar3,"syna_tcm_read_flash_boot_cs_config",bVar4);
      iVar1 = -0xf1;
      goto LAB_00125750;
    }
    puVar3 = &DAT_00135b8d;
  }
  _printk(puVar3,"syna_tcm_read_flash_boot_cs_config");
  iVar1 = -0xf1;
LAB_00125750:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar1;
}

