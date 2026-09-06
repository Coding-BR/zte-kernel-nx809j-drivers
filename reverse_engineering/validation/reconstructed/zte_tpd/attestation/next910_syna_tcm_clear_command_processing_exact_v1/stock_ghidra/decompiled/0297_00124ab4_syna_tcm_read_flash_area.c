
void syna_tcm_read_flash_area(long param_1,int param_2,long *param_3,int param_4)

{
  char cVar1;
  ushort uVar2;
  int iVar3;
  undefined1 *puVar4;
  void *pvVar5;
  long lVar6;
  undefined *puVar7;
  long lVar8;
  undefined8 uVar9;
  undefined4 uVar10;
  ulong __n;
  int iVar11;
  uint uVar12;
  ulong uVar13;
  undefined8 local_148;
  undefined8 local_140;
  undefined8 uStack_138;
  undefined8 local_130;
  undefined8 uStack_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_110;
  long local_108;
  undefined8 local_100;
  undefined8 uStack_f8;
  undefined8 local_f0;
  undefined8 uStack_e8;
  undefined8 local_e0;
  undefined8 uStack_d8;
  undefined8 local_d0;
  ulong local_c8;
  undefined8 local_c0;
  undefined8 uStack_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 local_70;
  long local_68;
  
  lVar6 = sp_el0;
  local_68 = *(long *)(lVar6 + 0x710);
  local_c0 = 0;
  uStack_b8 = 0;
  local_d0 = 0;
  local_c8 = 0;
  local_e0 = 0;
  uStack_d8 = 0;
  local_f0 = 0;
  uStack_e8 = 0;
  local_100 = 0;
  uStack_f8 = 0;
  local_110 = 0;
  local_108 = 0;
  local_120 = 0;
  uStack_118 = 0;
  local_130 = 0;
  uStack_128 = 0;
  local_140 = 0;
  uStack_138 = 0;
  local_148 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
  }
  else {
    if (param_3 != (long *)0x0) {
      if (param_4 == 0) {
        uVar10 = 0;
      }
      else {
        uVar10 = *(undefined4 *)(param_1 + 0x1e8);
      }
      cVar1 = *(char *)(param_1 + 9);
      if ((cVar1 != '\v') &&
         (iVar3 = syna_tcm_set_up_flash_access(param_1,&local_148,param_4,uVar10), iVar3 < 0)) {
        _printk(&DAT_00133487,"syna_tcm_read_flash_area");
        goto LAB_00124b38;
      }
      local_c8 = local_c8 & 0xffffffffffffff00;
      local_108 = 0;
      local_100 = 0;
      __mutex_init(&uStack_f8,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      if (param_2 < 0x15) {
        if (param_2 == 3) {
          if (*(char *)(param_1 + 9) == '\x01') {
            _printk(&DAT_00136804,"syna_tcm_read_flash_app_config",1);
            iVar3 = -0xf1;
          }
          else {
            iVar11 = (uint)*(ushort *)(param_1 + 0xb8) * local_120._4_4_;
            if (iVar11 != 0) {
              uVar2 = *(ushort *)(param_1 + 0xba);
              uVar13 = (ulong)uVar2;
              if (uVar2 != 0) {
                pvVar5 = (void *)*param_3;
                __n = (ulong)*(uint *)(param_3 + 1);
                if (*(uint *)(param_3 + 1) < (uint)uVar2) {
                  if (pvVar5 != (void *)0x0) {
                    lVar6 = syna_request_managed_device();
                    if (lVar6 == 0) {
                      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                    }
                    else {
                      devm_kfree(lVar6,pvVar5);
                    }
                  }
                  lVar6 = syna_request_managed_device();
                  if (lVar6 == 0) {
                    _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
                    *param_3 = 0;
                  }
                  else {
                    pvVar5 = (void *)devm_kmalloc(lVar6,uVar13,0xdc0);
                    *param_3 = (long)pvVar5;
                    if (pvVar5 != (void *)0x0) {
                      *(uint *)(param_3 + 1) = (uint)uVar2;
                      __n = uVar13;
                      goto LAB_0012503c;
                    }
                  }
                  _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",(uint)uVar2);
                  param_3[1] = 0;
                  _printk(&DAT_001347f0,"syna_tcm_read_flash_app_config");
                  iVar3 = -0xf3;
                }
                else {
LAB_0012503c:
                  memset(pvVar5,0,__n);
                  *(undefined4 *)((long)param_3 + 0xc) = 0;
                  iVar3 = syna_tcm_read_flash(param_1,iVar11,*param_3,uVar13,param_4);
                  if (-1 < iVar3) {
                    *(uint *)((long)param_3 + 0xc) = (uint)uVar2;
                    goto LAB_00125230;
                  }
                  _printk(&DAT_0013b302,"syna_tcm_read_flash_app_config",iVar11,(uint)uVar2);
                }
                goto LAB_00125088;
              }
            }
            _printk(&DAT_0013c290,"syna_tcm_read_flash_app_config");
            iVar3 = -0xf1;
          }
LAB_00125088:
          puVar7 = &DAT_00139701;
          goto LAB_001251e4;
        }
        if (param_2 == 6) {
          iVar3 = syna_tcm_read_flash_boot_config(param_1,&local_148,param_3,param_4);
          if (iVar3 < 0) {
            puVar7 = &DAT_0013232c;
            goto LAB_001251e4;
          }
          goto LAB_00125230;
        }
LAB_00124d08:
        _printk(&DAT_0013482a,"syna_tcm_read_flash_area");
        iVar3 = -0xf1;
      }
      else {
        if (param_2 == 0x15) {
          iVar3 = syna_tcm_read_flash_boot_cs_config(param_1,&local_148,param_3,0,0,param_4);
joined_r0x00124c90:
          if (-1 < iVar3) {
LAB_00125230:
            uVar9 = syna_tcm_get_partition_id_string(param_2);
            _printk(&DAT_00139152,"syna_tcm_read_flash_area",uVar9);
            iVar3 = 0;
            goto joined_r0x001251f4;
          }
        }
        else {
          if (param_2 != 0x16) {
            if (param_2 != 0x17) goto LAB_00124d08;
            iVar3 = syna_tcm_read_flash_mtp_config(param_1,&local_148,param_3,0,0,param_4);
            goto joined_r0x00124c90;
          }
          local_78 = 0;
          local_70 = 0;
          local_88 = 0;
          uStack_80 = 0;
          local_98 = 0;
          uStack_90 = 0;
          local_a8 = 0;
          uStack_a0 = 0;
          local_b0 = 0;
          if (*(char *)(param_1 + 9) != '\x01') {
            local_b0 = 0;
            local_a8 = 0;
            __mutex_init(&uStack_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
            iVar3 = syna_tcm_read_flash_boot_config(param_1,&local_148,&local_b0,param_4);
            if (iVar3 < 0) {
              _printk(&DAT_00137df4,"syna_tcm_read_flash_boot_lockdown_config");
            }
            else {
              uVar12 = *(uint *)(param_3 + 1);
              pvVar5 = (void *)*param_3;
              if (uVar12 < 8) {
                if (pvVar5 != (void *)0x0) {
                  lVar6 = syna_request_managed_device();
                  if (lVar6 == 0) {
                    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                  }
                  else {
                    devm_kfree(lVar6,pvVar5);
                  }
                }
                lVar6 = syna_request_managed_device();
                if (lVar6 == 0) {
                  _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
                  *param_3 = 0;
                }
                else {
                  uVar12 = 8;
                  pvVar5 = (void *)devm_kmalloc(lVar6,8,0xdc0);
                  *param_3 = (long)pvVar5;
                  if (pvVar5 != (void *)0x0) {
                    *(undefined4 *)(param_3 + 1) = 8;
                    goto LAB_00124eb0;
                  }
                }
                _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",8);
                param_3[1] = 0;
                _printk(&DAT_001347f0,"syna_tcm_read_flash_boot_lockdown_config");
                iVar3 = -0xf3;
              }
              else {
LAB_00124eb0:
                memset(pvVar5,0,(ulong)uVar12);
                *(undefined4 *)((long)param_3 + 0xc) = 0;
                if (*(char *)(local_b0 + (local_a8._4_4_ + -7)) < '\0') {
                  iVar11 = local_a8._4_4_ + -8;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0xf)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x10;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x17)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x18;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x1f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x20;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x27)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x28;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x2f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x30;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x37)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x38;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x3f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x40;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x47)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x48;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x4f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x50;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x57)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x58;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x5f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x60;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x67)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x68;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x6f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x70;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x77)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x78;
                }
                else {
                  iVar11 = -0x80;
                  if (-1 < *(char *)(local_b0 + (local_a8._4_4_ + -0x7f))) {
                    iVar11 = -0x88;
                  }
                  iVar11 = iVar11 + local_a8._4_4_;
                }
                if (((undefined8 *)*param_3 != (undefined8 *)0x0) &&
                   ((undefined8 *)(local_b0 + iVar11) != (undefined8 *)0x0)) {
                  if (7 < *(uint *)(param_3 + 1)) {
                    iVar3 = 0;
                    *(undefined8 *)*param_3 = *(undefined8 *)(local_b0 + iVar11);
                    *(undefined4 *)((long)param_3 + 0xc) = 8;
                    *(uint *)(param_1 + 0x34) =
                         (uint)(*(byte *)(local_b0 + (local_a8._4_4_ + -7)) >> 7);
                    goto LAB_00125188;
                  }
                  _printk(&DAT_0013a172,"syna_pal_mem_cpy",8,*(uint *)(param_3 + 1),8);
                }
                _printk(&DAT_00139169,"syna_tcm_read_flash_boot_lockdown_config");
                iVar3 = -0x16;
              }
            }
LAB_00125188:
            if ((char)local_70 != '\0') {
              _printk(&DAT_00135294,"syna_tcm_buf_release");
            }
            lVar6 = local_b0;
            lVar8 = syna_request_managed_device();
            if (lVar8 == 0) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else if (lVar6 != 0) {
              devm_kfree(lVar8,lVar6);
            }
            goto joined_r0x00124c90;
          }
          _printk(&DAT_00139d24,"syna_tcm_read_flash_boot_lockdown_config",1);
          iVar3 = -0xf1;
        }
        puVar7 = &DAT_001367c1;
LAB_001251e4:
        _printk(puVar7,"syna_tcm_read_flash_area");
      }
joined_r0x001251f4:
      if (cVar1 == '\x01') {
        syna_tcm_switch_fw_mode(param_1,1,param_4);
      }
      if ((char)local_c8 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar6 = local_108;
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar6 != 0) {
        devm_kfree(lVar8,lVar6);
      }
      goto LAB_00124b38;
    }
    puVar4 = &DAT_0013bb32;
  }
  _printk(puVar4,"syna_tcm_read_flash_area");
  iVar3 = -0xf1;
LAB_00124b38:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar3);
}

