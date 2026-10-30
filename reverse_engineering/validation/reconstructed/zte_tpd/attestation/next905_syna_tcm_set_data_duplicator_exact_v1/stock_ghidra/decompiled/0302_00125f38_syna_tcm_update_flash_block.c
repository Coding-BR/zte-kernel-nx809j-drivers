
int syna_tcm_update_flash_block
              (long param_1,long param_2,long param_3,int param_4,int param_5,ulong param_6)

{
  uint uVar1;
  void *__dest;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  undefined2 uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  code *pcVar12;
  int iVar13;
  undefined *puVar14;
  undefined8 uVar15;
  void *pvVar16;
  long lVar17;
  long lVar18;
  char cVar19;
  uint uVar20;
  ulong uVar21;
  uint uVar22;
  uint uVar23;
  ulong __n;
  undefined4 local_6c;
  long local_68;
  
  lVar18 = sp_el0;
  local_68 = *(long *)(lVar18 + 0x710);
  if (param_2 == 0) {
    puVar14 = &DAT_00134898;
  }
  else {
    if (param_3 != 0) {
      iVar13 = syna_tcm_check_flash_block(param_1,param_2,param_3);
      if (iVar13 < 0) {
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        puVar14 = &DAT_0013bb55;
      }
      else {
        if (iVar13 == 0) goto LAB_00125f9c;
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        _printk(&DAT_001323bf,"syna_tcm_update_flash_block",uVar15);
        if ((param_6 & 1) == 0) {
          iVar3 = *(int *)(param_3 + 0x10);
          if (iVar3 != 0) {
            uVar4 = *(uint *)(param_3 + 0x14);
            uVar5 = *(uint *)(param_2 + 0x28);
            uVar6 = 0;
            if (uVar5 != 0) {
              uVar6 = uVar4 / uVar5;
            }
            if (uVar4 == uVar6 * uVar5) {
              local_6c._2_2_ = 0;
              uVar9 = 0;
              if (uVar5 != 0) {
                uVar9 = ((iVar3 + uVar5) - 1) / uVar5;
              }
              if ((uVar9 | uVar6) < 0x100) {
                uVar15 = 2;
                uVar5 = uVar9;
              }
              else {
                uVar5 = uVar6 >> 8;
                uVar15 = 4;
                local_6c._2_2_ = (undefined2)uVar9;
              }
              param_4 = uVar9 * param_4;
              local_6c._0_2_ = CONCAT11((char)uVar5,(char)uVar6);
              if (*(char *)(param_1 + 9) != '\v') {
                _printk(&DAT_001385ed,"syna_tcm_reflash_send_command");
              }
              if (param_4 == 0) {
                if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                  param_4 = *(int *)(param_1 + 0x20c);
                  _printk(&DAT_00137337,"syna_tcm_reflash_send_command",param_4);
                }
                else {
                  param_4 = 0;
                }
              }
              if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
                pcVar12 = (code *)SoftwareBreakpoint(0x8228,0x126518);
                (*pcVar12)();
              }
              iVar13 = (**(code **)(param_1 + 0x398))(param_1,0x11,&local_6c,uVar15,0,param_4);
              if (-1 < iVar13) goto LAB_00126068;
              _printk(&DAT_0013a7db,"syna_tcm_reflash_send_command",0x11);
              _printk(&DAT_00136f22,"syna_tcm_erase_flash",uVar6,uVar9);
              uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
              _printk(&DAT_0013c309,"syna_tcm_erase_flash_block",uVar15,uVar4,iVar3);
            }
            else {
              _printk(&DAT_0013c2c0,"syna_tcm_erase_flash_block",uVar4);
              iVar13 = -0xf1;
            }
            uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
            puVar14 = &DAT_0013e355;
            goto LAB_0012676c;
          }
          _printk(&DAT_001323e7,"syna_tcm_erase_flash_block",0);
LAB_00126068:
          puVar14 = &UNK_00132412;
        }
        else {
          puVar14 = &DAT_0013d675;
        }
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        _printk(puVar14,"syna_tcm_erase_flash_block",uVar15);
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        _printk(&DAT_00132fca,"syna_tcm_update_flash_block",uVar15);
        uVar4 = *(uint *)(param_3 + 0x10);
        if (uVar4 == 0) {
          _printk(&DAT_00137878,"syna_tcm_write_flash_block",0);
          goto LAB_001260cc;
        }
        uVar5 = *(uint *)(param_3 + 0x14);
        uVar6 = *(uint *)(param_2 + 0x2c);
        uVar9 = 0;
        if (uVar6 != 0) {
          uVar9 = uVar5 / uVar6;
        }
        if (uVar5 == uVar9 * uVar6) {
          lVar18 = *(long *)(param_3 + 8);
          if ((param_6 & 1) == 0) {
            iVar13 = syna_tcm_write_flash(param_1,param_2,uVar5,lVar18,uVar4,param_5);
            if (iVar13 < 0) goto LAB_00126730;
          }
          else {
            if ((*(byte *)(param_2 + 0x88) & 1) == 0) {
              _printk(&DAT_0013861b,"syna_tcm_write_flash_opt");
              iVar13 = -0xf1;
LAB_00126730:
              uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
              _printk(&DAT_00137e6c,"syna_tcm_write_flash_block",uVar15,uVar5,uVar4);
              goto LAB_00126758;
            }
            uVar10 = 0;
            if (uVar6 != 0) {
              uVar10 = ((uVar4 + uVar6) - 1) / uVar6;
            }
            uVar11 = 0;
            if (uVar6 != 0) {
              uVar11 = *(uint *)(param_2 + 0x30) / uVar6;
            }
            if (*(char *)(param_2 + 0x80) != '\0') {
              _printk(&DAT_00138e56,"syna_tcm_buf_lock");
            }
            mutex_lock(param_2 + 0x50);
            uVar22 = 0;
            *(char *)(param_2 + 0x80) = *(char *)(param_2 + 0x80) + '\x01';
            uVar23 = uVar4;
            do {
              pvVar16 = *(void **)(param_2 + 0x40);
              uVar2 = uVar23;
              if (uVar11 * uVar6 <= uVar23) {
                uVar2 = uVar11 * uVar6;
              }
              __n = (ulong)uVar2;
              uVar1 = uVar2 + 6;
              uVar21 = (ulong)*(uint *)(param_2 + 0x48);
              if (*(uint *)(param_2 + 0x48) < uVar1) {
                if (pvVar16 == (void *)0x0) {
LAB_001261c4:
                  lVar17 = syna_request_managed_device();
                  if (lVar17 != 0) goto LAB_001261cc;
LAB_001263a4:
                  puVar14 = &DAT_0013ccb3;
LAB_0012667c:
                  _printk(puVar14,"syna_pal_mem_alloc");
                  *(undefined8 *)(param_2 + 0x40) = 0;
                }
                else {
                  lVar17 = syna_request_managed_device();
                  if (lVar17 != 0) {
                    devm_kfree(lVar17,pvVar16);
                    goto LAB_001261c4;
                  }
                  _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                  lVar17 = syna_request_managed_device();
                  if (lVar17 == 0) goto LAB_001263a4;
LAB_001261cc:
                  if ((int)uVar1 < 1) {
                    puVar14 = &DAT_00138e98;
                    goto LAB_0012667c;
                  }
                  pvVar16 = (void *)devm_kmalloc(lVar17,(ulong)uVar1,0xdc0);
                  *(void **)(param_2 + 0x40) = pvVar16;
                  if (pvVar16 != (void *)0x0) {
                    *(uint *)(param_2 + 0x48) = uVar1;
                    uVar21 = (ulong)uVar1;
                    goto LAB_001261f0;
                  }
                }
                _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar1);
                *(undefined8 *)(param_2 + 0x48) = 0;
                _printk(&DAT_00136eda,"syna_tcm_write_flash_opt");
                if (*(char *)(param_2 + 0x80) == '\x01') {
                  cVar19 = '\0';
                }
                else {
                  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                  cVar19 = *(char *)(param_2 + 0x80) + -1;
                }
                *(char *)(param_2 + 0x80) = cVar19;
                mutex_unlock(param_2 + 0x50);
                iVar13 = -0xf3;
                goto LAB_00126730;
              }
LAB_001261f0:
              memset(pvVar16,0,uVar21);
              *(undefined4 *)(param_2 + 0x4c) = 0;
              uVar8 = 0;
              if (*(uint *)(param_2 + 0x2c) != 0) {
                uVar8 = (undefined2)((uVar22 + uVar5) / *(uint *)(param_2 + 0x2c));
              }
              *(bool *)*(undefined8 *)(param_2 + 0x40) = uVar23 == uVar4;
              *(char *)(*(long *)(param_2 + 0x40) + 2) = (char)uVar8;
              *(char *)(*(long *)(param_2 + 0x40) + 3) = (char)((ushort)uVar8 >> 8);
              *(char *)(*(long *)(param_2 + 0x40) + 4) = (char)(uVar10 + uVar9);
              *(char *)(*(long *)(param_2 + 0x40) + 5) = (char)(uVar10 + uVar9 >> 8);
              uVar7 = *(uint *)(param_2 + 0x2c);
              uVar20 = 0;
              if (uVar7 != 0) {
                uVar20 = 0;
                if (uVar7 != 0) {
                  uVar20 = ((uVar2 + uVar7) - 1) / uVar7;
                }
              }
              if (param_5 == 0) {
                uVar21 = 0;
                pvVar16 = (void *)(lVar18 + (ulong)uVar22);
                if (pvVar16 != (void *)0x0) goto LAB_00126294;
LAB_001265b0:
                _printk(&DAT_00138b90,"syna_tcm_write_flash_opt",__n);
                if (*(char *)(param_2 + 0x80) == '\x01') {
                  cVar19 = '\0';
                }
                else {
                  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                  cVar19 = *(char *)(param_2 + 0x80) + -1;
                }
                *(char *)(param_2 + 0x80) = cVar19;
                mutex_unlock(param_2 + 0x50);
                iVar13 = -0x16;
                goto LAB_00126730;
              }
              uVar21 = (ulong)(uVar20 * param_5) / 1000;
              pvVar16 = (void *)(lVar18 + (ulong)uVar22);
              if (pvVar16 == (void *)0x0) goto LAB_001265b0;
LAB_00126294:
              __dest = (void *)(*(long *)(param_2 + 0x40) + 6);
              if (__dest == (void *)0x0) goto LAB_001265b0;
              uVar7 = *(int *)(param_2 + 0x48) - 6;
              if ((uVar4 - uVar22 < uVar2) || (uVar7 < uVar2)) {
                _printk(&DAT_0013a172,"syna_pal_mem_cpy",uVar4 - uVar22,uVar7,__n);
                goto LAB_001265b0;
              }
              memcpy(__dest,pvVar16,__n);
              uVar15 = *(undefined8 *)(param_2 + 0x40);
              if (*(char *)(param_1 + 9) != '\v') {
                _printk(&DAT_001385ed,"syna_tcm_reflash_send_command");
              }
              if ((int)uVar21 == 0) {
                if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                  uVar21 = (ulong)*(uint *)(param_1 + 0x20c);
                  _printk(&DAT_00137337,"syna_tcm_reflash_send_command",uVar21);
                }
                else {
                  uVar21 = 0;
                }
              }
              if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
                pcVar12 = (code *)SoftwareBreakpoint(0x8228,0x126324);
                (*pcVar12)();
              }
              iVar13 = (**(code **)(param_1 + 0x398))(param_1,0xfe,uVar15,uVar1,0,uVar21);
              if (iVar13 < 0) {
                _printk(&DAT_0013a7db,"syna_tcm_reflash_send_command",0xfe);
                _printk(&DAT_00139d63,"syna_tcm_write_flash_opt",uVar22 + uVar5,uVar1);
                if (*(char *)(param_2 + 0x80) == '\x01') {
                  cVar19 = '\0';
                }
                else {
                  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                  cVar19 = *(char *)(param_2 + 0x80) + -1;
                }
                *(char *)(param_2 + 0x80) = cVar19;
                mutex_unlock(param_2 + 0x50);
                goto LAB_00126730;
              }
              uVar23 = uVar23 - uVar2;
              uVar22 = uVar2 + uVar22;
              *(uint *)(param_2 + 0x90) = *(int *)(param_2 + 0x90) + uVar2;
            } while (uVar23 != 0);
            if (*(char *)(param_2 + 0x80) == '\x01') {
              cVar19 = '\0';
            }
            else {
              _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
              cVar19 = *(char *)(param_2 + 0x80) + -1;
            }
            *(char *)(param_2 + 0x80) = cVar19;
            mutex_unlock(param_2 + 0x50);
          }
LAB_001260cc:
          uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
          _printk(&DAT_00137eac,"syna_tcm_write_flash_block",uVar15);
          iVar13 = 0;
          goto LAB_00125f9c;
        }
        _printk(&DAT_0013a885,"syna_tcm_write_flash_block",uVar5);
        iVar13 = -0xf1;
LAB_00126758:
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        puVar14 = &DAT_00137387;
      }
LAB_0012676c:
      _printk(puVar14,"syna_tcm_update_flash_block",uVar15);
      goto LAB_00125f9c;
    }
    puVar14 = &DAT_0013239d;
  }
  _printk(puVar14,"syna_tcm_update_flash_block");
  iVar13 = -0xf1;
LAB_00125f9c:
  lVar18 = sp_el0;
  if (*(long *)(lVar18 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar13;
}

