/* 00134a94 syna_tcm_read_flash_address */

ulong syna_tcm_read_flash_address
                (long param_1,undefined4 param_2,uint param_3,long *param_4,int param_5)

{
  char cVar1;
  uint uVar2;
  int iVar3;
  void *__s;
  long lVar4;
  long lVar5;
  undefined1 *puVar6;
  ulong uVar7;
  undefined *puVar8;
  undefined4 uVar9;
  size_t __n;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar4 = sp_el0;
  local_58 = *(long *)(lVar4 + 0x710);
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  local_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f0 = 0;
  if (param_1 == 0) {
    puVar6 = &DAT_00168a84;
  }
  else {
    if (param_4 != (long *)0x0) {
      if (param_5 == 0) {
        uVar9 = 0;
      }
      else {
        uVar9 = *(undefined4 *)(param_1 + 0x1e8);
      }
      cVar1 = *(char *)(param_1 + 9);
      if (cVar1 == '\v') {
        uVar2 = 0;
      }
      else {
        uVar2 = syna_tcm_set_up_flash_access(param_1,&local_f0,param_5,uVar9);
        if ((int)uVar2 < 0) {
          uVar7 = _printk(&DAT_00167f0e,"syna_tcm_read_flash_address");
          return uVar7;
        }
      }
      local_70 = local_70 & 0xffffffffffffff00;
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e0d4);
      if (param_3 != 0) {
        __n = (size_t)*(uint *)(param_4 + 1);
        __s = (void *)*param_4;
        if (*(uint *)(param_4 + 1) < param_3) {
          if (__s != (void *)0x0) {
            lVar4 = syna_request_managed_device();
            if (lVar4 == 0) {
              uVar7 = _printk(&DAT_00171996,"syna_pal_mem_free");
              return uVar7;
            }
            devm_kfree(lVar4,__s);
          }
          lVar4 = syna_request_managed_device();
          if (lVar4 == 0) {
            puVar8 = &DAT_00171996;
LAB_00134d24:
            uVar7 = _printk(puVar8,"syna_pal_mem_alloc");
            return uVar7;
          }
          if ((int)param_3 < 1) {
            puVar8 = &DAT_0016da92;
            goto LAB_00134d24;
          }
          __n = (size_t)param_3;
          __s = (void *)devm_kmalloc(lVar4,__n,0xdc0);
          *param_4 = (long)__s;
          if (__s == (void *)0x0) {
            uVar7 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",param_3);
            return uVar7;
          }
          *(uint *)(param_4 + 1) = param_3;
        }
        memset(__s,0,__n);
        *(undefined4 *)((long)param_4 + 0xc) = 0;
        iVar3 = syna_tcm_read_flash(param_1,param_2,*param_4,param_3,param_5);
        if (iVar3 < 0) {
          uVar7 = _printk(&DAT_0016f4b2,"syna_tcm_read_flash_address",param_3,param_2);
          return uVar7;
        }
        uVar2 = 0;
        *(uint *)((long)param_4 + 0xc) = param_3;
      }
      if (cVar1 == '\x01') {
        syna_tcm_switch_fw_mode(param_1,1,param_5);
      }
      lVar4 = local_b0;
      if ((char)local_70 != '\0') {
        uVar7 = _printk(&DAT_00169d8a,"syna_tcm_buf_release");
        return uVar7;
      }
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) {
        uVar7 = _printk(&DAT_00171996,"syna_pal_mem_free");
        return uVar7;
      }
      if (lVar4 != 0) {
        devm_kfree(lVar5,lVar4);
      }
      lVar4 = sp_el0;
      if (*(long *)(lVar4 + 0x710) == local_58) {
        return (ulong)uVar2;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    puVar6 = &DAT_001707de;
  }
  uVar7 = _printk(puVar6,"syna_tcm_read_flash_address");
  return uVar7;
}



/* 00134d70 syna_tcm_set_up_flash_access */

void syna_tcm_set_up_flash_access(undefined8 param_1,long param_2)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  if (param_2 == 0) {
    _printk(&DAT_0016936a,"syna_tcm_set_up_flash_access");
    return;
  }
  _printk(&DAT_0016e37c,"syna_tcm_set_up_flash_access");
  return;
}



/* 00134e00 FUN_00134e00 */

void FUN_00134e00(undefined8 param_1)

{
  _printk(param_1,"syna_tcm_set_up_flash_access");
  return;
}



/* 00134e74 FUN_00134e74 */

void FUN_00134e74(ulong param_1)

{
  code *pcVar1;
  int iVar2;
  undefined1 in_w9;
  long unaff_x19;
  long unaff_x20;
  
  while( true ) {
    do {
      param_1 = param_1 + 1;
      if (param_1 == 0x10) {
        *(long *)(unaff_x19 + 0x20) = unaff_x20 + 0xe0;
        iVar2 = syna_tcm_get_boot_info();
        if (iVar2 < 0) {
          FUN_00134e00(&UNK_0016ba12);
          return;
        }
        _printk(&DAT_0016ad24,"syna_tcm_set_up_flash_access",**(undefined1 **)(unaff_x19 + 0x20));
        return;
      }
    } while (*(char *)(unaff_x20 + param_1 + 0x82) != ':');
    if (0xc < param_1) break;
    if ((*(byte *)(unaff_x20 + param_1 + 0x85) >> 5 & 1) != 0) {
      *(undefined1 *)(unaff_x19 + 0x88) = in_w9;
      FUN_00134e74();
      return;
    }
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x135050);
  (*pcVar1)();
}



/* 00134e78 FUN_00134e78 */

void FUN_00134e78(ulong param_1)

{
  code *pcVar1;
  int iVar2;
  undefined1 in_w9;
  long unaff_x19;
  long unaff_x20;
  
  do {
    if (param_1 == 0x10) {
      *(long *)(unaff_x19 + 0x20) = unaff_x20 + 0xe0;
      iVar2 = syna_tcm_get_boot_info();
      if (iVar2 < 0) {
        FUN_00134e00(&UNK_0016ba12);
        return;
      }
      _printk(&DAT_0016ad24,"syna_tcm_set_up_flash_access",**(undefined1 **)(unaff_x19 + 0x20));
      return;
    }
    if (*(char *)(unaff_x20 + param_1 + 0x82) == ':') {
      if (0xc < param_1) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x135050);
        (*pcVar1)();
      }
      if ((*(byte *)(unaff_x20 + param_1 + 0x85) >> 5 & 1) != 0) {
        *(undefined1 *)(unaff_x19 + 0x88) = in_w9;
        FUN_00134e74();
        return;
      }
    }
    param_1 = param_1 + 1;
  } while( true );
}



/* 00135054 syna_tcm_read_flash */

void syna_tcm_read_flash(long param_1,uint param_2,long param_3,ulong param_4,int param_5)

{
  uint uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined *puVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  ulong __n;
  ulong uVar9;
  undefined1 local_70;
  undefined1 local_6f;
  undefined1 local_6e;
  byte local_6d;
  undefined1 local_6c;
  undefined1 local_6b;
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  if (param_3 == 0) {
    puVar5 = &DAT_0016d19e;
  }
  else {
    if (param_2 != 0) {
      __n = param_4 & 0xffffffff;
      uVar6 = (uint)param_4;
      if (uVar6 != 0) {
        if (((*(char *)(param_1 + 8) == '\x02') && (*(uint *)(param_1 + 0x3c) < uVar6)) &&
           (uVar7 = *(uint *)(param_1 + 0x3c) - 6, __n = (ulong)uVar7, uVar7 == 0)) {
          uVar7 = 0;
        }
        else {
          uVar8 = (uint)__n;
          uVar7 = 0;
          if (uVar8 != 0) {
            uVar7 = ((uVar6 + uVar8) - 1) / uVar8;
          }
        }
        uVar8 = 0;
        if (uVar7 < 2) {
          uVar7 = 1;
        }
        while( true ) {
          uVar1 = uVar6 - uVar8;
          if ((uint)__n <= uVar6 - uVar8) {
            uVar1 = (uint)__n;
          }
          __n = (ulong)uVar1;
          if (param_5 == 0) {
            uVar9 = 0;
          }
          else {
            uVar9 = (ulong)((uVar1 >> 1) * param_5) / 1000;
          }
          param_2 = param_2 + uVar8;
          local_6c = (undefined1)(uVar1 >> 1);
          local_70 = (undefined1)(param_2 >> 1);
          local_6f = (undefined1)(param_2 >> 9);
          local_6b = (undefined1)(uVar1 >> 9);
          local_6e = (undefined1)(param_2 >> 0x11);
          local_6d = (byte)(param_2 >> 0x19);
          if (*(char *)(param_1 + 9) != '\v') {
            _printk(&DAT_0016d1c4,"syna_tcm_reflash_send_command");
            return;
          }
          if ((int)uVar9 == 0) {
            if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
              _printk(&DAT_0016bea2,"syna_tcm_reflash_send_command",*(undefined4 *)(param_1 + 0x20c)
                     );
              return;
            }
            uVar9 = 0;
          }
          if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x135198);
            (*pcVar3)();
          }
          iVar4 = (**(code **)(param_1 + 0x398))(param_1,0x13,&local_70,6,0,uVar9);
          if (iVar4 < 0) {
            _printk(&DAT_0016f442,"syna_tcm_reflash_send_command",0x13);
            return;
          }
          if (*(uint *)(param_1 + 0x154) != uVar1) {
            _printk(&DAT_00166da4,"syna_tcm_read_flash",uVar1);
            return;
          }
          if (((void *)(param_3 + (ulong)uVar8) == (void *)0x0) ||
             (*(void **)(param_1 + 0x148) == (void *)0x0)) {
            _printk(&DAT_0016a674,"syna_tcm_read_flash",uVar1);
            return;
          }
          if ((uVar6 < uVar1) || (*(uint *)(param_1 + 0x150) < uVar1)) break;
          memcpy((void *)(param_3 + (ulong)uVar8),*(void **)(param_1 + 0x148),__n);
          uVar7 = uVar7 - 1;
          uVar8 = *(int *)(param_1 + 0x154) + uVar8;
          if (uVar7 == 0) {
            lVar2 = sp_el0;
            if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
              __stack_chk_fail(0);
            }
            return;
          }
        }
        _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),param_4 & 0xffffffff,
                uVar1);
        return;
      }
    }
    puVar5 = &DAT_0016ff66;
  }
  _printk(puVar5,"syna_tcm_read_flash");
  return;
}



/* 00135340 syna_tcm_read_flash_area */

void syna_tcm_read_flash_area(long param_1,int param_2,long *param_3,int param_4)

{
  ushort uVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  void *pvVar5;
  long lVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  undefined4 uVar10;
  ulong __n;
  uint uVar11;
  ulong uVar12;
  undefined8 local_148;
  undefined8 local_140;
  undefined8 uStack_138;
  undefined8 local_130;
  undefined8 uStack_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_110;
  undefined8 local_108;
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
  undefined8 local_68;
  
  lVar6 = sp_el0;
  local_68 = *(undefined8 *)(lVar6 + 0x710);
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
    puVar4 = &DAT_00168a84;
LAB_001353b4:
    _printk(puVar4,"syna_tcm_read_flash_area");
    return;
  }
  if (param_3 == (long *)0x0) {
    puVar4 = &DAT_001707de;
    goto LAB_001353b4;
  }
  if (param_4 == 0) {
    uVar10 = 0;
  }
  else {
    uVar10 = *(undefined4 *)(param_1 + 0x1e8);
  }
  if ((*(char *)(param_1 + 9) != '\v') &&
     (iVar2 = syna_tcm_set_up_flash_access(param_1,&local_148,param_4,uVar10), iVar2 < 0)) {
    _printk(&DAT_00167f0e,"syna_tcm_read_flash_area");
    return;
  }
  local_c8 = local_c8 & 0xffffffffffffff00;
  local_108 = 0;
  local_100 = 0;
  __mutex_init(&uStack_f8,"(struct mutex *)ptr",&DAT_0015e0d4);
  if (param_2 < 0x15) {
    if (param_2 == 3) {
      if (*(char *)(param_1 + 9) == '\x01') {
        _printk(&DAT_0016b348,"syna_tcm_read_flash_app_config",1);
        return;
      }
      iVar2 = (uint)*(ushort *)(param_1 + 0xb8) * local_120._4_4_;
      if (iVar2 != 0) {
        uVar1 = *(ushort *)(param_1 + 0xba);
        uVar12 = (ulong)uVar1;
        if (uVar1 != 0) {
          pvVar5 = (void *)*param_3;
          __n = (ulong)*(uint *)(param_3 + 1);
          if (*(uint *)(param_3 + 1) < (uint)uVar1) {
            if (pvVar5 != (void *)0x0) {
              lVar6 = syna_request_managed_device();
              if (lVar6 == 0) {
                _printk(&DAT_00171996,"syna_pal_mem_free");
                return;
              }
              devm_kfree(lVar6,pvVar5);
            }
            lVar6 = syna_request_managed_device();
            if (lVar6 == 0) {
              _printk(&DAT_00171996,"syna_pal_mem_alloc");
              return;
            }
            pvVar5 = (void *)devm_kmalloc(lVar6,uVar12,0xdc0);
            *param_3 = (long)pvVar5;
            if (pvVar5 == (void *)0x0) {
              _printk(&DAT_0016c730,"syna_tcm_buf_alloc",(uint)uVar1);
              return;
            }
            *(uint *)(param_3 + 1) = (uint)uVar1;
            __n = uVar12;
          }
          memset(pvVar5,0,__n);
          *(undefined4 *)((long)param_3 + 0xc) = 0;
          iVar3 = syna_tcm_read_flash(param_1,iVar2,*param_3,uVar12,param_4);
          if (iVar3 < 0) {
            _printk(&DAT_0016ff96,"syna_tcm_read_flash_app_config",iVar2,(uint)uVar1);
            return;
          }
          *(uint *)((long)param_3 + 0xc) = (uint)uVar1;
          goto LAB_00135abc;
        }
      }
      _printk(&DAT_00170f50,"syna_tcm_read_flash_app_config");
      return;
    }
    if (param_2 != 6) {
LAB_00135594:
      _printk(&DAT_001692fa,"syna_tcm_read_flash_area");
      return;
    }
    iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_148,param_3,param_4);
    if (-1 < iVar2) goto LAB_00135abc;
    puVar8 = &DAT_00166d78;
    goto LAB_00135a70;
  }
  if (param_2 == 0x15) {
    iVar2 = syna_tcm_read_flash_boot_cs_config(param_1,&local_148,param_3,0,0,param_4);
joined_r0x0013551c:
    if (-1 < iVar2) {
LAB_00135abc:
      uVar9 = syna_tcm_get_partition_id_string(param_2);
      _printk(&DAT_0016dd58,"syna_tcm_read_flash_area",uVar9);
      return;
    }
  }
  else {
    if (param_2 != 0x16) {
      if (param_2 != 0x17) goto LAB_00135594;
      iVar2 = syna_tcm_read_flash_mtp_config(param_1,&local_148,param_3,0,0,param_4);
      goto joined_r0x0013551c;
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
    if (*(char *)(param_1 + 9) == '\x01') {
      _printk(&DAT_0016e95c,"syna_tcm_read_flash_boot_lockdown_config",1);
      return;
    }
    local_b0 = 0;
    local_a8 = 0;
    __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e0d4);
    iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_148,&local_b0,param_4);
    if (iVar2 < 0) {
      _printk(&DAT_0016c98a,"syna_tcm_read_flash_boot_lockdown_config");
      return;
    }
    uVar11 = *(uint *)(param_3 + 1);
    pvVar5 = (void *)*param_3;
    if (uVar11 < 8) {
      if (pvVar5 != (void *)0x0) {
        lVar6 = syna_request_managed_device();
        if (lVar6 == 0) {
          _printk(&DAT_00171996,"syna_pal_mem_free");
          return;
        }
        devm_kfree(lVar6,pvVar5);
      }
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_00171996,"syna_pal_mem_alloc");
        return;
      }
      uVar11 = 8;
      pvVar5 = (void *)devm_kmalloc(lVar6,8,0xdc0);
      *param_3 = (long)pvVar5;
      if (pvVar5 == (void *)0x0) {
        _printk(&DAT_0016c730,"syna_tcm_buf_alloc",8);
        return;
      }
      *(undefined4 *)(param_3 + 1) = 8;
    }
    memset(pvVar5,0,(ulong)uVar11);
    lVar6 = local_b0;
    *(undefined4 *)((long)param_3 + 0xc) = 0;
    if (*(char *)(local_b0 + (local_a8._4_4_ + -7)) < '\0') {
      iVar2 = local_a8._4_4_ + -8;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0xf)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x10;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x17)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x18;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x1f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x20;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x27)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x28;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x2f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x30;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x37)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x38;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x3f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x40;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x47)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x48;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x4f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x50;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x57)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x58;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x5f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x60;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x67)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x68;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x6f)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x70;
    }
    else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x77)) < '\0') {
      iVar2 = local_a8._4_4_ + -0x78;
    }
    else {
      iVar2 = -0x80;
      if (-1 < *(char *)(local_b0 + (local_a8._4_4_ + -0x7f))) {
        iVar2 = -0x88;
      }
      iVar2 = iVar2 + local_a8._4_4_;
    }
    if (((undefined8 *)*param_3 == (undefined8 *)0x0) ||
       ((undefined8 *)(local_b0 + iVar2) == (undefined8 *)0x0)) {
      _printk(&DAT_0016dd70,"syna_tcm_read_flash_boot_lockdown_config");
      return;
    }
    if (*(uint *)(param_3 + 1) < 8) {
      _printk(&DAT_0016edc2,"syna_pal_mem_cpy",8,*(uint *)(param_3 + 1),8);
      return;
    }
    *(undefined8 *)*param_3 = *(undefined8 *)(local_b0 + iVar2);
    *(undefined4 *)((long)param_3 + 0xc) = 8;
    *(uint *)(param_1 + 0x34) = (uint)(*(byte *)(local_b0 + (local_a8._4_4_ + -7)) >> 7);
    if ((char)local_70 != '\0') {
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      return;
    }
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar6 != 0) {
      devm_kfree(lVar7,lVar6);
    }
    if (true) goto LAB_00135abc;
  }
  puVar8 = &DAT_0016b304;
LAB_00135a70:
  _printk(puVar8,"syna_tcm_read_flash_area");
  return;
}



/* 00135b1c syna_tcm_read_flash_boot_config */

void syna_tcm_read_flash_boot_config(long param_1,long param_2,long param_3)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined *puVar4;
  char cVar5;
  long lVar6;
  char *pcVar7;
  long lVar8;
  long lVar9;
  long lVar10;
  
  if (param_2 == 0) {
    puVar4 = &DAT_0016936a;
  }
  else if (param_3 == 0) {
    puVar4 = &DAT_0016a6a4;
  }
  else {
    if (*(char *)(param_1 + 9) == '\x01') {
      puVar4 = &DAT_001679c0;
      cVar5 = '\x01';
LAB_00135cd8:
      _printk(puVar4,"syna_tcm_read_flash_boot_config",cVar5);
      return;
    }
    pcVar7 = *(char **)(param_2 + 0x20);
    cVar5 = *pcVar7;
    if (cVar5 == '\x01') {
      lVar6 = 0xf;
      lVar8 = 0xe;
      lVar9 = 0xd;
      lVar10 = 0xc;
    }
    else {
      if (cVar5 != '\x03') {
        puVar4 = &DAT_00171d34;
        goto LAB_00135cd8;
      }
      lVar6 = 0x13;
      lVar8 = 0x12;
      lVar9 = 0x11;
      lVar10 = 0x10;
    }
    iVar1 = *(int *)(param_2 + 0x2c) * (uint)CONCAT11(pcVar7[lVar9],pcVar7[lVar10]);
    if (iVar1 != 0) {
      uVar3 = (uint)CONCAT11(pcVar7[lVar6],pcVar7[lVar8]);
      iVar2 = *(int *)(param_2 + 0x2c) * uVar3;
      if (iVar2 != 0) {
        if (*(int *)(param_2 + 0x38) != iVar1) {
          *(int *)(param_2 + 0x38) = iVar1;
        }
        if (*(uint *)(param_2 + 0x34) != uVar3) {
          *(uint *)(param_2 + 0x34) = uVar3;
        }
        _printk(&DAT_00169394,"syna_tcm_read_flash_boot_config",iVar1,iVar1,uVar3,iVar2);
        return;
      }
    }
    puVar4 = &DAT_00168620;
  }
  _printk(puVar4,"syna_tcm_read_flash_boot_config");
  return;
}



/* 00135d48 syna_tcm_read_flash_boot_cs_config */

undefined8
syna_tcm_read_flash_boot_cs_config
          (long param_1,long param_2,long *param_3,uint param_4,int param_5,undefined4 param_6)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  undefined1 *puVar5;
  undefined8 uVar6;
  undefined *puVar7;
  byte bVar8;
  long lVar9;
  long lVar10;
  ulong uVar11;
  ulong uVar12;
  byte *pbVar13;
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
  
  lVar9 = sp_el0;
  local_58 = *(long *)(lVar9 + 0x710);
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
    puVar5 = &DAT_0016936a;
LAB_00136080:
    uVar6 = _printk(puVar5,"syna_tcm_read_flash_boot_cs_config");
    return uVar6;
  }
  if (param_3 == (long *)0x0) {
    puVar5 = &DAT_0016a6a4;
    goto LAB_00136080;
  }
  if (*(char *)(param_1 + 9) == '\x01') {
    puVar7 = &DAT_0016e922;
    bVar8 = 1;
LAB_00136120:
    uVar6 = _printk(puVar7,"syna_tcm_read_flash_boot_cs_config",bVar8);
    return uVar6;
  }
  pbVar13 = *(byte **)(param_2 + 0x20);
  bVar8 = *pbVar13;
  if ((bVar8 | 2) != 3) {
    puVar7 = &DAT_00171d34;
    goto LAB_00136120;
  }
  uVar11 = (ulong)param_4;
  local_a0 = (void *)0x0;
  local_98 = 0;
  __mutex_init(&uStack_90,"(struct mutex *)ptr",&DAT_0015e0d4);
  pvVar4 = local_a0;
  if (param_4 == 0) {
    iVar2 = syna_tcm_read_flash_boot_config(param_1,param_2,&local_a0,param_6);
    if (iVar2 < 0) {
      uVar6 = _printk(&DAT_0016c98a,"syna_tcm_read_flash_boot_cs_config");
      return uVar6;
    }
    uVar1 = local_98._4_4_;
    uVar12 = (ulong)local_98._4_4_;
    uVar11 = (ulong)*(uint *)(param_3 + 1);
    pvVar4 = (void *)*param_3;
    if (*(uint *)(param_3 + 1) < local_98._4_4_) {
      if (pvVar4 != (void *)0x0) {
        lVar9 = syna_request_managed_device();
        if (lVar9 == 0) {
          uVar6 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar6;
        }
        devm_kfree(lVar9,pvVar4);
      }
      lVar9 = syna_request_managed_device();
      if (lVar9 == 0) {
        puVar7 = &DAT_00171996;
LAB_00136258:
        uVar6 = _printk(puVar7,"syna_pal_mem_alloc");
        return uVar6;
      }
      if ((int)uVar1 < 1) {
        puVar7 = &DAT_0016da92;
        goto LAB_00136258;
      }
      pvVar4 = (void *)devm_kmalloc(lVar9,uVar12,0xdc0);
      *param_3 = (long)pvVar4;
      if (pvVar4 == (void *)0x0) {
        uVar11 = (ulong)uVar1;
        goto LAB_0013627c;
      }
      *(uint *)(param_3 + 1) = uVar1;
      uVar11 = uVar12;
    }
    memset(pvVar4,0,uVar11);
    iVar2 = 0x80;
    *(undefined4 *)((long)param_3 + 0xc) = 0;
    param_4 = local_98._4_4_ - 0x88;
    do {
      if ((*(char *)((long)local_a0 + (long)(int)(local_98._4_4_ + iVar2 + -0x87)) < '\0') &&
         (-1 < *(char *)((long)local_a0 + (long)(int)(local_98._4_4_ + iVar2 + -0x8f)))) {
        param_4 = (local_98._4_4_ + iVar2) - 0x88;
        break;
      }
      iVar2 = iVar2 + -8;
    } while (iVar2 != 0);
    goto LAB_00135f88;
  }
  if (*pbVar13 == 1) {
    lVar9 = 0xd;
    lVar10 = 0xc;
LAB_00135e84:
    iVar2 = (uint)CONCAT11(pbVar13[lVar9],pbVar13[lVar10]) * *(int *)(param_2 + 0x2c);
  }
  else {
    if (*pbVar13 == 3) {
      lVar9 = 0x11;
      lVar10 = 0x10;
      goto LAB_00135e84;
    }
    iVar2 = 0;
  }
  uVar12 = local_98 & 0xffffffff;
  if ((uint)local_98 < param_4) {
    if (local_a0 != (void *)0x0) {
      lVar9 = syna_request_managed_device();
      if (lVar9 == 0) {
        uVar6 = _printk(&DAT_00171996,"syna_pal_mem_free");
        return uVar6;
      }
      devm_kfree(lVar9,pvVar4);
    }
    lVar9 = syna_request_managed_device();
    if (lVar9 == 0) {
      puVar7 = &DAT_00171996;
LAB_001361a4:
      uVar6 = _printk(puVar7,"syna_pal_mem_alloc");
      return uVar6;
    }
    if ((int)param_4 < 1) {
      puVar7 = &DAT_0016da92;
      goto LAB_001361a4;
    }
    local_a0 = (void *)devm_kmalloc(lVar9,uVar11,0xdc0);
    if (local_a0 == (void *)0x0) {
      uVar6 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar11);
      return uVar6;
    }
    local_98 = CONCAT44(local_98._4_4_,param_4);
    uVar12 = uVar11;
  }
  memset(local_a0,0,uVar12);
  pvVar4 = (void *)*param_3;
  local_98 = local_98 & 0xffffffff;
  uVar12 = (ulong)*(uint *)(param_3 + 1);
  if (*(uint *)(param_3 + 1) < param_4) {
    if (pvVar4 != (void *)0x0) {
      lVar9 = syna_request_managed_device();
      if (lVar9 == 0) {
        uVar6 = _printk(&DAT_00171996,"syna_pal_mem_free");
        return uVar6;
      }
      devm_kfree(lVar9,pvVar4);
    }
    lVar9 = syna_request_managed_device();
    if (lVar9 == 0) {
      puVar7 = &DAT_00171996;
LAB_00136200:
      uVar6 = _printk(puVar7,"syna_pal_mem_alloc");
      return uVar6;
    }
    if ((int)param_4 < 1) {
      puVar7 = &DAT_0016da92;
      goto LAB_00136200;
    }
    pvVar4 = (void *)devm_kmalloc(lVar9,uVar11,0xdc0);
    *param_3 = (long)pvVar4;
    if (pvVar4 == (void *)0x0) {
LAB_0013627c:
      uVar6 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar11);
      return uVar6;
    }
    *(uint *)(param_3 + 1) = param_4;
    uVar12 = uVar11;
  }
  memset(pvVar4,0,uVar12);
  *(undefined4 *)((long)param_3 + 0xc) = 0;
  iVar3 = syna_tcm_read_flash(param_1,iVar2 + param_5,local_a0,param_4,param_6);
  if (iVar3 < 0) {
    uVar6 = _printk(&DAT_0016ad4a,"syna_tcm_read_flash_boot_cs_config",iVar2 + param_5);
    return uVar6;
  }
LAB_00135f88:
  if (((void *)*param_3 == (void *)0x0) || (local_a0 == (void *)0x0)) {
    uVar6 = _printk(&DAT_0016dd70,"syna_tcm_read_flash_boot_cs_config");
    return uVar6;
  }
  if ((param_4 <= *(uint *)(param_3 + 1)) && (param_4 <= (uint)local_98)) {
    memcpy((void *)*param_3,local_a0,(ulong)param_4);
    pvVar4 = local_a0;
    *(uint *)((long)param_3 + 0xc) = param_4;
    if ((char)local_60 != '\0') {
      uVar6 = _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      return uVar6;
    }
    lVar9 = syna_request_managed_device();
    if (lVar9 == 0) {
      uVar6 = _printk(&DAT_00171996,"syna_pal_mem_free");
      return uVar6;
    }
    if (pvVar4 != (void *)0x0) {
      devm_kfree(lVar9,pvVar4);
    }
    lVar9 = sp_el0;
    if (*(long *)(lVar9 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    return 0;
  }
  uVar6 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",local_98 & 0xffffffff,*(uint *)(param_3 + 1),
                  param_4);
  return uVar6;
}



/* 001362a4 syna_tcm_read_flash_mtp_config */

void syna_tcm_read_flash_mtp_config
               (long param_1,long param_2,long *param_3,uint param_4,int param_5,undefined4 param_6)

{
  int iVar1;
  int iVar2;
  void *__s;
  long lVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  char cVar6;
  size_t __n;
  
  if (param_2 == 0) {
    puVar4 = &DAT_0016936a;
  }
  else {
    if (param_3 != (long *)0x0) {
      if (*(char *)(param_1 + 9) == '\x01') {
        puVar5 = &DAT_0016e922;
        cVar6 = '\x01';
      }
      else {
        if (param_4 == 0) {
          param_4 = *(uint *)(param_2 + 0x28);
        }
        cVar6 = **(char **)(param_2 + 0x20);
        if (cVar6 == '\x03') {
          __n = (size_t)*(uint *)(param_3 + 1);
          iVar1 = *(int *)(param_2 + 0x3c);
          __s = (void *)*param_3;
          if (param_4 <= *(uint *)(param_3 + 1)) {
LAB_00136358:
            memset(__s,0,__n);
            *(undefined4 *)((long)param_3 + 0xc) = 0;
            iVar2 = syna_tcm_read_flash(param_1,iVar1 + param_5,*param_3,param_4,param_6);
            if (-1 < iVar2) {
              *(uint *)((long)param_3 + 0xc) = param_4;
              return;
            }
            _printk(&DAT_0016ad4a,"syna_tcm_read_flash_mtp_config",iVar1 + param_5);
            return;
          }
          if (__s != (void *)0x0) {
            lVar3 = syna_request_managed_device();
            if (lVar3 == 0) {
              _printk(&DAT_00171996,"syna_pal_mem_free");
              return;
            }
            devm_kfree(lVar3,__s);
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
            puVar5 = &DAT_00171996;
          }
          else {
            if (0 < (int)param_4) {
              __n = (size_t)param_4;
              __s = (void *)devm_kmalloc(lVar3,__n,0xdc0);
              *param_3 = (long)__s;
              if (__s == (void *)0x0) {
                _printk(&DAT_0016c730,"syna_tcm_buf_alloc",param_4);
                return;
              }
              *(uint *)(param_3 + 1) = param_4;
              goto LAB_00136358;
            }
            puVar5 = &DAT_0016da92;
          }
          _printk(puVar5,"syna_pal_mem_alloc");
          return;
        }
        puVar5 = &DAT_00171d34;
      }
      _printk(puVar5,"syna_tcm_read_flash_mtp_config",cVar6);
      return;
    }
    puVar4 = &DAT_0016a6a4;
  }
  _printk(puVar4,"syna_tcm_read_flash_mtp_config");
  return;
}



/* 001364a4 syna_tcm_do_fw_update_ex */

void syna_tcm_do_fw_update_ex(long param_1,int *param_2)

{
  long lVar1;
  undefined1 *puVar2;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  
  lVar1 = sp_el0;
  local_58 = *(undefined8 *)(lVar1 + 0x710);
  if (param_1 == 0) {
    puVar2 = &DAT_00168a84;
  }
  else {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      local_68 = 0;
      uStack_60 = 0;
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      uStack_a0 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e0d4);
      _printk(&DAT_0016931c,"syna_tcm_do_fw_update_ex");
      return;
    }
    puVar2 = &DAT_0016d75a;
  }
  _printk(puVar2,"syna_tcm_do_fw_update_ex");
  return;
}



/* 001367c4 syna_tcm_update_flash_block */

undefined8 syna_tcm_update_flash_block(undefined8 param_1,long param_2,long param_3)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  long lVar5;
  
  lVar5 = sp_el0;
  lVar5 = *(long *)(lVar5 + 0x710);
  if (param_2 == 0) {
    puVar3 = &DAT_0016936a;
  }
  else {
    if (param_3 != 0) {
      iVar2 = syna_tcm_check_flash_block(param_1,param_2,param_3);
      if (iVar2 < 0) {
        uVar4 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        uVar4 = _printk(&DAT_00170802,"syna_tcm_update_flash_block",uVar4);
        return uVar4;
      }
      if (iVar2 == 0) {
        lVar1 = sp_el0;
        if (*(long *)(lVar1 + 0x710) == lVar5) {
          return 0;
        }
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      uVar4 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
      uVar4 = _printk(&DAT_00166e0c,"syna_tcm_update_flash_block",uVar4);
      return uVar4;
    }
    puVar3 = &DAT_00166dea;
  }
  uVar4 = _printk(puVar3,"syna_tcm_update_flash_block");
  return uVar4;
}



/* 0013703c syna_tcm_do_fw_update */

void syna_tcm_do_fw_update(long param_1,long param_2,int param_3)

{
  long lVar1;
  undefined1 *puVar2;
  undefined1 auStack_378 [784];
  undefined8 local_68;
  
  lVar1 = sp_el0;
  local_68 = *(undefined8 *)(lVar1 + 0x710);
  if (param_1 == 0) {
    puVar2 = &DAT_00168a84;
  }
  else {
    if ((param_2 != 0) && (param_3 != 0)) {
      memset(auStack_378,0,0x310);
      _printk(&DAT_001698ec,"syna_tcm_do_fw_update");
      return;
    }
    puVar2 = &DAT_0016d75a;
  }
  _printk(puVar2,"syna_tcm_do_fw_update");
  return;
}



/* 00137378 syna_tcm_update_lockdown_config */

void syna_tcm_update_lockdown_config(long param_1,int *param_2,int param_3)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  long local_138;
  undefined8 local_130;
  int iStack_12c;
  undefined8 local_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_110;
  undefined8 uStack_108;
  undefined8 local_100;
  ulong local_f8;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar1 = sp_el0;
  local_58 = *(long *)(lVar1 + 0x710);
  local_100 = 0;
  local_f8 = 0;
  local_110 = 0;
  uStack_108 = 0;
  local_120 = 0;
  uStack_118 = 0;
  local_128 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00168a84;
  }
  else {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      if (((char)param_2[0x9c] != '\x01') || (*(long *)(param_2 + 0x9e) == 0)) {
        uVar6 = syna_tcm_get_partition_id_string((char)param_2[0xa2]);
        _printk(&DAT_00172330,"syna_tcm_update_lockdown_config",uVar6);
        return;
      }
      if ((uint)param_2[0xa0] < 8) {
        _printk(&DAT_00168d4c,"syna_tcm_update_lockdown_config",param_2[0xa0],8);
        return;
      }
      uStack_60 = 0;
      local_78 = 0;
      local_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      uStack_a0 = 0;
      local_b8 = 0;
      local_c8 = 0;
      uStack_c0 = 0;
      local_d8 = 0;
      uStack_d0 = 0;
      local_e8 = 0;
      uStack_e0 = 0;
      local_f0 = 0;
      local_68 = 0x800000000;
      if (param_3 == 0) {
        uVar7 = 0;
        uVar8 = 0;
      }
      else {
        uVar8 = *(undefined4 *)(param_1 + 0x20c);
        uVar7 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e0d4);
      local_f8 = local_f8 & 0xffffffffffffff00;
      local_138 = 0;
      local_130 = 0;
      __mutex_init(&local_128,"(struct mutex *)ptr",&DAT_0015e0d4);
      *(undefined4 *)(param_1 + 0x388) = 1;
      iVar2 = syna_tcm_set_up_flash_access(param_1,&local_f0,uVar8,uVar7);
      if (iVar2 < 0) {
        puVar5 = &DAT_00167f0e;
      }
      else {
        iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_f0,&local_138,uVar8);
        if (-1 < iVar2) {
          if (*(char *)(local_138 + (ulong)(iStack_12c - 7)) < '\0') {
            _printk(&DAT_0016acb8,"syna_tcm_update_lockdown_config");
            return;
          }
          iVar2 = syna_tcm_check_flash_block(param_1,&local_f0,param_2 + 0x9c);
          if (iVar2 < 1) {
            uVar6 = syna_tcm_get_partition_id_string((char)param_2[0xa2]);
            _printk(&DAT_00170802,"syna_tcm_update_lockdown_config",uVar6);
            return;
          }
          iVar2 = syna_tcm_write_flash
                            (param_1,&local_f0,(int)local_b8 + (param_2[0xa0] - 8U),
                             *(long *)(param_2 + 0x9e) + (ulong)(param_2[0xa0] - 8U),8,param_3);
          if (-1 < iVar2) {
            iVar2 = 8;
          }
          if (*(char *)(param_1 + 9) == '\v') {
            syna_tcm_switch_fw_mode(param_1,1,uVar7);
          }
          lVar1 = local_138;
          *(undefined4 *)(param_1 + 0x388) = 0;
          if ((char)local_f8 != '\0') {
            _printk(&DAT_00169d8a,"syna_tcm_buf_release");
            return;
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
            _printk(&DAT_00171996,"syna_pal_mem_free");
            return;
          }
          if (lVar1 != 0) {
            devm_kfree(lVar3,lVar1);
          }
          lVar1 = local_b0;
          local_130 = 0;
          local_f8 = local_f8 & 0xffffffffffffff00;
          if ((char)local_70 == '\0') {
            lVar3 = syna_request_managed_device();
            if (lVar3 == 0) {
              _printk(&DAT_00171996,"syna_pal_mem_free");
              return;
            }
            if (lVar1 != 0) {
              devm_kfree(lVar3,lVar1);
            }
            lVar1 = sp_el0;
            if (*(long *)(lVar1 + 0x710) == local_58) {
              return;
            }
                    /* WARNING: Subroutine does not return */
            __stack_chk_fail(iVar2);
          }
          _printk(&DAT_00169d8a,"syna_tcm_buf_release");
          return;
        }
        puVar5 = &DAT_0016c98a;
      }
      _printk(puVar5,"syna_tcm_update_lockdown_config");
      return;
    }
    puVar4 = &DAT_0016d75a;
  }
  _printk(puVar4,"syna_tcm_update_lockdown_config");
  return;
}



/* 001376fc syna_tcm_check_flash_block */

ulong syna_tcm_check_flash_block(long param_1,long param_2,long param_3)

{
  int iVar1;
  byte bVar2;
  int iVar3;
  ulong uVar4;
  undefined *puVar5;
  char *pcVar6;
  uint uVar7;
  long lVar8;
  byte *pbVar9;
  long lVar10;
  
  if (param_2 == 0) {
    puVar5 = &DAT_0016936a;
LAB_0013781c:
    uVar4 = _printk(puVar5,"syna_tcm_check_flash_block");
    return uVar4;
  }
  if (param_3 == 0) {
    puVar5 = &DAT_00166dea;
    goto LAB_0013781c;
  }
  uVar7 = *(byte *)(param_3 + 0x18) - 1;
  uVar7 = uVar7 >> 1 | uVar7 * -0x80000000;
  if ((int)uVar7 < 3) {
    if (uVar7 == 0) {
      uVar7 = 0xffffff0f;
      if (*(uint *)(param_3 + 0x10) != 0) {
        uVar7 = *(uint *)(param_3 + 0x10);
      }
      return (ulong)uVar7;
    }
    if (uVar7 != 1) {
      return 0;
    }
    uVar7 = *(uint *)(param_3 + 0x10);
    uVar4 = (ulong)uVar7;
    if (uVar7 == 0) {
      return 0;
    }
    iVar3 = (uint)*(ushort *)(param_1 + 0xb8) * *(int *)(param_2 + 0x2c);
    if (iVar3 == 0 && *(ushort *)(param_1 + 0xba) == 0) {
      return uVar4;
    }
    iVar1 = *(int *)(param_3 + 0x14);
    if (iVar1 == iVar3) {
      if (uVar7 == *(ushort *)(param_1 + 0xba)) {
        return uVar4;
      }
      uVar4 = _printk(&DAT_00166e9a,"syna_tcm_check_flash_app_config",uVar4);
      return uVar4;
    }
    puVar5 = &DAT_0016bf3a;
    pcVar6 = "syna_tcm_check_flash_app_config";
    goto LAB_001378cc;
  }
  if (uVar7 == 3) {
    return (ulong)*(uint *)(param_3 + 0x10);
  }
  if (uVar7 != 9) {
    return 0;
  }
  uVar4 = (ulong)*(uint *)(param_3 + 0x10);
  if (*(uint *)(param_3 + 0x10) < 8) {
    puVar5 = &DAT_0016f538;
LAB_001378ac:
    uVar4 = _printk(puVar5,"syna_tcm_check_flash_tool_boot_config",uVar4);
    return uVar4;
  }
  pbVar9 = *(byte **)(param_2 + 0x20);
  bVar2 = *pbVar9;
  if ((bVar2 | 2) != 3) {
    puVar5 = &DAT_00171d34;
    uVar4 = (ulong)(uint)bVar2;
    goto LAB_001378ac;
  }
  iVar3 = *(int *)(param_3 + 0x14);
  if (bVar2 == 1) {
    lVar8 = 0xd;
    lVar10 = 0xc;
LAB_00137838:
    uVar7 = (uint)CONCAT11(pbVar9[lVar8],pbVar9[lVar10]);
  }
  else {
    if (bVar2 == 3) {
      lVar8 = 0x11;
      lVar10 = 0x10;
      goto LAB_00137838;
    }
    uVar7 = 0;
  }
  iVar1 = uVar7 * *(int *)(param_2 + 0x2c);
  if (iVar3 == iVar1) {
    return uVar4;
  }
  puVar5 = &DAT_00167a6c;
  pcVar6 = "syna_tcm_check_flash_tool_boot_config";
LAB_001378cc:
  uVar4 = _printk(puVar5,pcVar6,iVar1,iVar3);
  return uVar4;
}



/* 001378d8 syna_tcm_write_flash */

undefined8
syna_tcm_write_flash(long param_1,long param_2,int param_3,long param_4,uint param_5,ulong param_6)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  undefined2 uVar5;
  uint uVar6;
  code *pcVar7;
  int iVar8;
  void *pvVar9;
  long lVar10;
  undefined *puVar11;
  undefined8 uVar12;
  ulong __n;
  char cVar13;
  uint uVar14;
  uint uVar15;
  uint uVar16;
  ulong __n_00;
  ulong uVar17;
  
  uVar3 = *(uint *)(param_2 + 0x2c);
  uVar16 = *(uint *)(param_2 + 0x30);
  if (*(char *)(param_2 + 0x80) != '\0') {
    uVar12 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar12;
  }
  mutex_lock(param_2 + 0x50);
  cVar13 = *(char *)(param_2 + 0x80) + '\x01';
  *(char *)(param_2 + 0x80) = cVar13;
  if (param_5 != 0) {
    uVar6 = 0;
    if (uVar3 != 0) {
      uVar6 = uVar16 / uVar3;
    }
    uVar16 = 0;
    uVar15 = param_5;
    do {
      uVar17 = param_6 & 0xffffffff;
      pvVar9 = *(void **)(param_2 + 0x40);
      uVar2 = uVar15;
      if (uVar6 * uVar3 <= uVar15) {
        uVar2 = uVar6 * uVar3;
      }
      __n_00 = (ulong)uVar2;
      uVar1 = uVar2 + 2;
      __n = (ulong)*(uint *)(param_2 + 0x48);
      if (*(uint *)(param_2 + 0x48) < uVar1) {
        if (pvVar9 != (void *)0x0) {
          lVar10 = syna_request_managed_device();
          if (lVar10 == 0) {
            uVar12 = _printk(&DAT_00171996,"syna_pal_mem_free");
            return uVar12;
          }
          devm_kfree(lVar10,pvVar9);
        }
        lVar10 = syna_request_managed_device();
        if (lVar10 == 0) {
          puVar11 = &DAT_00171996;
LAB_00137c28:
          uVar12 = _printk(puVar11,"syna_pal_mem_alloc");
          return uVar12;
        }
        if ((int)uVar1 < 1) {
          puVar11 = &DAT_0016da92;
          goto LAB_00137c28;
        }
        pvVar9 = (void *)devm_kmalloc(lVar10,(ulong)uVar1,0xdc0);
        *(void **)(param_2 + 0x40) = pvVar9;
        if (pvVar9 == (void *)0x0) {
          uVar12 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
          return uVar12;
        }
        *(uint *)(param_2 + 0x48) = uVar1;
        __n = (ulong)uVar1;
      }
      memset(pvVar9,0,__n);
      *(undefined4 *)(param_2 + 0x4c) = 0;
      uVar5 = 0;
      if (*(uint *)(param_2 + 0x2c) != 0) {
        uVar5 = (undefined2)((uVar16 + param_3) / *(uint *)(param_2 + 0x2c));
      }
      **(undefined1 **)(param_2 + 0x40) = (char)uVar5;
      *(char *)(*(long *)(param_2 + 0x40) + 1) = (char)((ushort)uVar5 >> 8);
      uVar4 = *(uint *)(param_2 + 0x2c);
      uVar14 = 0;
      if (uVar4 != 0) {
        uVar14 = 0;
        if (uVar4 != 0) {
          uVar14 = ((uVar2 + uVar4) - 1) / uVar4;
        }
      }
      if ((int)param_6 != 0) {
        uVar17 = (ulong)(uVar14 * (int)param_6) / 1000;
      }
      if (((void *)(param_4 + (ulong)uVar16) == (void *)0x0) ||
         (pvVar9 = (void *)(*(long *)(param_2 + 0x40) + 2), pvVar9 == (void *)0x0)) {
        uVar12 = _printk(&DAT_0016d77c,"syna_tcm_write_flash",__n_00);
        return uVar12;
      }
      uVar4 = *(int *)(param_2 + 0x48) - 2;
      if ((param_5 - uVar16 < uVar2) || (uVar4 < uVar2)) {
        uVar12 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",param_5 - uVar16,uVar4,__n_00);
        return uVar12;
      }
      memcpy(pvVar9,(void *)(param_4 + (ulong)uVar16),__n_00);
      if (*(char *)(param_1 + 9) != '\v') {
        uVar12 = _printk(&DAT_0016d1c4,"syna_tcm_reflash_send_command");
        return uVar12;
      }
      if ((int)uVar17 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
          uVar12 = _printk(&DAT_0016bea2,"syna_tcm_reflash_send_command",
                           *(undefined4 *)(param_1 + 0x20c));
          return uVar12;
        }
        uVar17 = 0;
      }
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x137aa0);
        (*pcVar7)();
      }
      iVar8 = (**(code **)(param_1 + 0x398))
                        (param_1,0x12,*(undefined8 *)(param_2 + 0x40),uVar1,0,uVar17);
      if (iVar8 < 0) {
        uVar12 = _printk(&DAT_0016f442,"syna_tcm_reflash_send_command",0x12);
        return uVar12;
      }
      uVar15 = uVar15 - uVar2;
      uVar16 = uVar16 + uVar2;
      *(uint *)(param_2 + 0x90) = *(int *)(param_2 + 0x90) + uVar2;
    } while (uVar15 != 0);
    cVar13 = *(char *)(param_2 + 0x80);
  }
  if (cVar13 != '\x01') {
    uVar12 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock",cVar13);
    return uVar12;
  }
  *(undefined1 *)(param_2 + 0x80) = 0;
  mutex_unlock(param_2 + 0x50);
  return 0;
}



/* 00137a00 FUN_00137a00 */

undefined8 FUN_00137a00(void)

{
  void *__dest;
  uint uVar1;
  undefined2 uVar2;
  code *pcVar3;
  int iVar4;
  void *pvVar5;
  long lVar6;
  undefined *puVar7;
  undefined8 uVar8;
  ulong __n;
  uint uVar9;
  uint in_w8;
  uint in_w9;
  long unaff_x19;
  uint unaff_w20;
  uint unaff_w21;
  uint unaff_w23;
  long unaff_x24;
  uint uVar10;
  ulong unaff_x27;
  ulong uVar11;
  long unaff_x29;
  undefined8 in_stack_00000008;
  int in_stack_00000010;
  
  do {
    uVar11 = (ulong)in_w8 * (ulong)in_w9 >> 0x26;
    do {
      pvVar5 = (void *)(*(long *)(unaff_x29 + -8) + (ulong)unaff_w23);
      uVar10 = (uint)unaff_x27;
      if ((pvVar5 == (void *)0x0) ||
         (__dest = (void *)(*(long *)(unaff_x19 + 0x40) + 2), __dest == (void *)0x0)) {
        uVar8 = _printk(&DAT_0016d77c,"syna_tcm_write_flash",unaff_x27 & 0xffffffff);
        return uVar8;
      }
      uVar1 = *(int *)(unaff_x19 + 0x48) - 2;
      if ((in_stack_00000010 - unaff_w23 < uVar10) || (uVar1 < uVar10)) {
        uVar8 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",in_stack_00000010 - unaff_w23,uVar1,
                        unaff_x27 & 0xffffffff);
        return uVar8;
      }
      memcpy(__dest,pvVar5,unaff_x27);
      if (*(char *)(unaff_x24 + 9) != '\v') {
        uVar8 = _printk(&DAT_0016d1c4,"syna_tcm_reflash_send_command");
        return uVar8;
      }
      if (((int)uVar11 == 0) && ((*(byte *)(*(long *)(unaff_x24 + 0x48) + 0x14) & 1) == 0)) {
        uVar8 = _printk(&DAT_0016bea2,"syna_tcm_reflash_send_command",
                        *(undefined4 *)(unaff_x24 + 0x20c));
        return uVar8;
      }
      if (*(int *)(*(code **)(unaff_x24 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x137aa0);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(unaff_x24 + 0x398))();
      if (iVar4 < 0) {
        uVar8 = _printk(&DAT_0016f442,"syna_tcm_reflash_send_command",0x12);
        return uVar8;
      }
      uVar11 = (ulong)in_stack_00000008._4_4_;
      unaff_w20 = unaff_w20 - uVar10;
      unaff_w23 = unaff_w23 + uVar10;
      *(uint *)(unaff_x19 + 0x90) = *(int *)(unaff_x19 + 0x90) + uVar10;
      if (unaff_w20 == 0) {
        if (*(char *)(unaff_x19 + 0x80) != '\x01') {
          uVar8 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock",*(char *)(unaff_x19 + 0x80));
          return uVar8;
        }
        *(undefined1 *)(unaff_x19 + 0x80) = 0;
        mutex_unlock(unaff_x19 + 0x50);
        return 0;
      }
      pvVar5 = *(void **)(unaff_x19 + 0x40);
      uVar10 = unaff_w20;
      if (unaff_w21 <= unaff_w20) {
        uVar10 = unaff_w21;
      }
      unaff_x27 = (ulong)uVar10;
      uVar1 = uVar10 + 2;
      __n = (ulong)*(uint *)(unaff_x19 + 0x48);
      if (*(uint *)(unaff_x19 + 0x48) < uVar1) {
        if (pvVar5 != (void *)0x0) {
          lVar6 = syna_request_managed_device();
          if (lVar6 == 0) {
            uVar8 = _printk(&DAT_00171996,"syna_pal_mem_free");
            return uVar8;
          }
          devm_kfree(lVar6,pvVar5);
        }
        lVar6 = syna_request_managed_device();
        if (lVar6 == 0) {
          puVar7 = &DAT_00171996;
LAB_00137c28:
          uVar8 = _printk(puVar7,"syna_pal_mem_alloc");
          return uVar8;
        }
        if ((int)uVar1 < 1) {
          puVar7 = &DAT_0016da92;
          goto LAB_00137c28;
        }
        pvVar5 = (void *)devm_kmalloc(lVar6,(ulong)uVar1,0xdc0);
        *(void **)(unaff_x19 + 0x40) = pvVar5;
        if (pvVar5 == (void *)0x0) {
          uVar8 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
          return uVar8;
        }
        *(uint *)(unaff_x19 + 0x48) = uVar1;
        __n = (ulong)uVar1;
      }
      memset(pvVar5,0,__n);
      iVar4 = *(int *)(unaff_x29 + -0xc);
      *(undefined4 *)(unaff_x19 + 0x4c) = 0;
      uVar2 = 0;
      if (*(uint *)(unaff_x19 + 0x2c) != 0) {
        uVar2 = (undefined2)((unaff_w23 + iVar4) / *(uint *)(unaff_x19 + 0x2c));
      }
      **(undefined1 **)(unaff_x19 + 0x40) = (char)uVar2;
      *(char *)(*(long *)(unaff_x19 + 0x40) + 1) = (char)((ushort)uVar2 >> 8);
      uVar1 = *(uint *)(unaff_x19 + 0x2c);
      uVar9 = 0;
      if (uVar1 != 0) {
        uVar9 = 0;
        if (uVar1 != 0) {
          uVar9 = ((uVar10 + uVar1) - 1) / uVar1;
        }
      }
    } while (in_stack_00000008._4_4_ == 0);
    in_w8 = uVar9 * in_stack_00000008._4_4_;
    in_w9 = 0x10624dd3;
  } while( true );
}



/* 00137ca0 syna_tcm_update_cs_config */

void syna_tcm_update_cs_config
               (long param_1,undefined1 *param_2,uint param_3,int param_4,int param_5)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  long lVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  ulong uVar10;
  undefined4 uVar11;
  ulong uVar12;
  undefined4 uVar13;
  long local_148;
  undefined8 local_140;
  int iStack_13c;
  undefined8 local_138;
  undefined8 uStack_130;
  undefined8 local_128;
  undefined8 uStack_120;
  undefined8 local_118;
  undefined8 uStack_110;
  ulong local_108;
  undefined8 local_100;
  undefined8 local_f8;
  undefined8 uStack_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  long local_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  local_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  local_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f8 = 0;
  uStack_f0 = 0;
  local_108 = 0;
  local_100 = 0;
  local_118 = 0;
  uStack_110 = 0;
  local_128 = 0;
  uStack_120 = 0;
  local_138 = 0;
  uStack_130 = 0;
  local_148 = 0;
  local_140 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00168a84;
  }
  else {
    if (param_2 != (undefined1 *)0x0) {
      uVar12 = (ulong)param_3;
      if (param_3 != 0) {
        local_78 = 0;
        uStack_70 = 0;
        local_88 = 0;
        local_80 = 0;
        local_98 = 0;
        uStack_90 = 0;
        local_a8 = 0;
        uStack_a0 = 0;
        uStack_b0 = 0;
        local_c8 = 0;
        local_d8 = 0;
        uStack_d0 = 0;
        local_e8 = 0;
        uStack_e0 = 0;
        local_f8 = 0;
        uStack_f0 = 0;
        local_100 = 0;
        if (param_5 == 0) {
          uVar11 = 0;
          uVar13 = 0;
        }
        else {
          uVar13 = *(undefined4 *)(param_1 + 0x20c);
          uVar11 = *(undefined4 *)(param_1 + 0x1e8);
        }
        local_c0 = 0;
        local_b8 = 0;
        __mutex_init(&uStack_b0,"(struct mutex *)ptr",&DAT_0015e0d4);
        local_108 = local_108 & 0xffffffffffffff00;
        local_148 = 0;
        local_140 = 0;
        __mutex_init(&local_138,"(struct mutex *)ptr",&DAT_0015e0d4);
        *(undefined4 *)(param_1 + 0x388) = 1;
        iVar3 = syna_tcm_set_up_flash_access(param_1,&local_100,uVar13,uVar11);
        if (iVar3 < 0) {
          puVar5 = &DAT_00167f0e;
        }
        else {
          iVar3 = syna_tcm_read_flash_boot_config(param_1,&local_100,&local_148,uVar13);
          if (iVar3 < 0) {
            puVar5 = &DAT_0016c98a;
          }
          else {
            iVar3 = 0x80;
            do {
              if ((*(char *)(local_148 + (ulong)((iStack_13c + iVar3) - 0x87)) < '\0') &&
                 (-1 < *(char *)(local_148 + (ulong)((iStack_13c + iVar3) - 0x8f)))) {
                iVar2 = iStack_13c + iVar3;
                break;
              }
              iVar3 = iVar3 + -8;
              iVar2 = iStack_13c;
            } while (iVar3 != 0);
            uVar7 = iVar2 - 0x88;
            if (uVar7 < param_3) {
              puVar5 = &DAT_001715a6;
            }
            else if (local_d8._4_4_ == 0) {
              puVar5 = &DAT_0016a000;
            }
            else {
              if (param_4 == 0) {
                uVar8 = 0;
              }
              else {
                uVar8 = 0;
                if (local_d8._4_4_ != 0) {
                  uVar8 = ((param_4 + local_d8._4_4_) - 1) / local_d8._4_4_;
                }
                uVar8 = uVar8 * local_d8._4_4_;
              }
              do {
                if (*(char *)(local_148 + (ulong)uVar8) == '\0') {
                  uVar9 = 0;
                  uVar10 = (ulong)local_d8._4_4_;
                  while (*(char *)(local_148 + (ulong)(uVar8 + uVar9)) == '\0') {
                    uVar10 = uVar10 - 1;
                    uVar9 = uVar9 + 1;
                    if (uVar10 == 0) goto LAB_00137e8c;
                  }
                  if (local_d8._4_4_ <= uVar9) break;
                }
                uVar8 = uVar8 + local_d8._4_4_;
              } while (uVar8 < uVar7);
LAB_00137e8c:
              if (uVar8 <= uVar7) {
                uVar7 = 0;
                if (local_d8._4_4_ != 0) {
                  uVar7 = ((param_3 + local_d8._4_4_) - 1) / local_d8._4_4_;
                }
                uVar9 = uVar8;
                do {
                  uVar12 = uVar12 - 1;
                  *(undefined1 *)(local_148 + (ulong)uVar9) = *param_2;
                  uVar9 = uVar9 + 1;
                  param_2 = param_2 + 1;
                } while (uVar12 != 0);
                local_78._4_4_ = uVar7 * local_d8._4_4_;
                iVar3 = syna_tcm_write_flash
                                  (param_1,&local_100,(int)local_c8 + uVar8,local_148 + (ulong)uVar8
                                   ,uVar7 * local_d8._4_4_,param_5);
                if (-1 < iVar3) {
                  iVar3 = local_78._4_4_;
                }
                if (*(char *)(param_1 + 9) == '\v') {
                  syna_tcm_switch_fw_mode(param_1,1,uVar11);
                }
                lVar1 = local_148;
                *(undefined4 *)(param_1 + 0x388) = 0;
                if ((char)local_108 != '\0') {
                  _printk(&DAT_00169d8a,"syna_tcm_buf_release");
                  return;
                }
                lVar6 = syna_request_managed_device();
                if (lVar6 == 0) {
                  _printk(&DAT_00171996,"syna_pal_mem_free");
                  return;
                }
                if (lVar1 != 0) {
                  devm_kfree(lVar6,lVar1);
                }
                lVar1 = local_c0;
                local_140 = 0;
                local_108 = local_108 & 0xffffffffffffff00;
                if ((char)local_80 == '\0') {
                  lVar6 = syna_request_managed_device();
                  if (lVar6 == 0) {
                    _printk(&DAT_00171996,"syna_pal_mem_free");
                    return;
                  }
                  if (lVar1 != 0) {
                    devm_kfree(lVar6,lVar1);
                  }
                  lVar1 = sp_el0;
                  if (*(long *)(lVar1 + 0x710) == local_68) {
                    return;
                  }
                    /* WARNING: Subroutine does not return */
                  __stack_chk_fail(iVar3);
                }
                _printk(&DAT_00169d8a,"syna_tcm_buf_release");
                return;
              }
              puVar5 = &DAT_0016c3ca;
            }
          }
        }
        _printk(puVar5,"syna_tcm_update_cs_config");
        return;
      }
    }
    puVar4 = &DAT_00169fe0;
  }
  _printk(puVar4,"syna_tcm_update_cs_config");
  return;
}



/* 00138088 syna_tcm_update_mtp_data */

ulong syna_tcm_update_mtp_data(long param_1,void *param_2,uint param_3,int param_4,int param_5)

{
  int iVar1;
  uint uVar2;
  long lVar3;
  void *__dest;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  undefined4 uVar7;
  ulong uVar8;
  undefined4 uVar9;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  byte *local_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  local_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  local_d0 = (byte *)0x0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f0 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00168a84;
  }
  else {
    if (param_2 != (void *)0x0) {
      uVar8 = (ulong)param_3;
      if (param_3 != 0) {
        if (param_5 == 0) {
          uVar7 = 0;
          uVar9 = 0;
        }
        else {
          uVar9 = *(undefined4 *)(param_1 + 0x20c);
          uVar7 = *(undefined4 *)(param_1 + 0x1e8);
        }
        local_b0 = 0;
        local_a8 = 0;
        __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e0d4);
        *(undefined4 *)(param_1 + 0x388) = 1;
        iVar1 = FUN_00134e78(param_1,&local_f0,uVar9,uVar7);
        if (iVar1 < 0) {
          puVar6 = &DAT_00167f0e;
        }
        else {
          if (*local_d0 < 3) {
            uVar8 = _printk(&DAT_00169912,"syna_tcm_update_mtp_data");
            return uVar8;
          }
          if (local_c8._4_4_ != 0) {
            if (param_4 == 0) {
              iVar1 = 0;
            }
            else {
              uVar2 = 0;
              if (local_c8._4_4_ != 0) {
                uVar2 = ((param_4 + local_c8._4_4_) - 1) / local_c8._4_4_;
              }
              iVar1 = uVar2 * local_c8._4_4_;
            }
            uVar2 = 0;
            if (local_c8._4_4_ != 0) {
              uVar2 = ((param_3 + local_c8._4_4_) - 1) / local_c8._4_4_;
            }
            uVar2 = uVar2 * local_c8._4_4_;
            local_68._4_4_ = uVar2;
            lVar3 = syna_request_managed_device();
            if (lVar3 == 0) {
              puVar6 = &DAT_00171996;
            }
            else {
              if (0 < (int)uVar2) {
                __dest = (void *)devm_kmalloc(lVar3,uVar2,0xdc0);
                if (__dest == (void *)0x0) {
                  uVar8 = _printk(&DAT_00167f0e,"syna_tcm_update_mtp_data");
                  return uVar8;
                }
                if (local_68._4_4_ < param_3) {
                  uVar8 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar8,local_68._4_4_,uVar8);
                  return uVar8;
                }
                if (uVar2 < param_3) {
                    /* WARNING: Subroutine does not return */
                  __fortify_panic(0x11,uVar2);
                }
                memcpy(__dest,param_2,uVar8);
                uVar2 = FUN_00137a00(param_1,&local_f0,local_b8._4_4_ + iVar1,__dest,local_68._4_4_,
                                     param_5);
                if (-1 < (int)uVar2) {
                  uVar2 = local_68._4_4_;
                }
                if (*(char *)(param_1 + 9) == '\v') {
                  syna_tcm_switch_fw_mode(param_1,1,uVar7);
                }
                lVar3 = local_b0;
                *(undefined4 *)(param_1 + 0x388) = 0;
                if ((char)local_70 == '\0') {
                  lVar4 = syna_request_managed_device();
                  if (lVar4 == 0) {
                    uVar8 = _printk(&DAT_00171996,"syna_pal_mem_free");
                    return uVar8;
                  }
                  if (lVar3 != 0) {
                    devm_kfree(lVar4,lVar3);
                  }
                  lVar3 = sp_el0;
                  if (*(long *)(lVar3 + 0x710) == local_58) {
                    return (ulong)uVar2;
                  }
                    /* WARNING: Subroutine does not return */
                  __stack_chk_fail();
                }
                uVar8 = _printk(&DAT_00169d8a,"syna_tcm_buf_release");
                return uVar8;
              }
              puVar6 = &DAT_0016da92;
            }
            uVar8 = _printk(puVar6,"syna_pal_mem_alloc");
            return uVar8;
          }
          puVar6 = &DAT_0016a000;
        }
        uVar8 = _printk(puVar6,"syna_tcm_update_mtp_data");
        return uVar8;
      }
    }
    puVar5 = &DAT_0016c9b2;
  }
  uVar8 = _printk(puVar5,"syna_tcm_update_mtp_data");
  return uVar8;
}



/* 00138390 syna_tcm_read_cs_data */

void syna_tcm_read_cs_data(long param_1,void *param_2,uint param_3,undefined4 param_4,int param_5)

{
  void *pvVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  uint uVar7;
  ulong __n;
  undefined4 uVar8;
  undefined4 uVar9;
  void *local_148;
  ulong local_140;
  undefined8 local_138;
  undefined8 uStack_130;
  undefined8 local_128;
  undefined8 uStack_120;
  undefined8 local_118;
  undefined8 uStack_110;
  ulong local_108;
  undefined8 local_100;
  undefined8 local_f8;
  undefined8 uStack_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  long local_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  local_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  local_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f8 = 0;
  uStack_f0 = 0;
  local_108 = 0;
  local_100 = 0;
  local_118 = 0;
  uStack_110 = 0;
  local_128 = 0;
  uStack_120 = 0;
  local_138 = 0;
  uStack_130 = 0;
  local_148 = (void *)0x0;
  local_140 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00168a84;
  }
  else {
    if ((param_2 != (void *)0x0) && (__n = (ulong)param_3, param_3 != 0)) {
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      local_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      local_a8 = 0;
      uStack_a0 = 0;
      uStack_b0 = 0;
      local_c8 = 0;
      local_d8 = 0;
      uStack_d0 = 0;
      local_e8 = 0;
      uStack_e0 = 0;
      local_f8 = 0;
      uStack_f0 = 0;
      local_100 = 0;
      if (param_5 == 0) {
        uVar8 = 0;
        uVar9 = 0;
      }
      else {
        uVar9 = *(undefined4 *)(param_1 + 0x20c);
        uVar8 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_c0 = 0;
      local_b8 = 0;
      __mutex_init(&uStack_b0,"(struct mutex *)ptr",&DAT_0015e0d4);
      local_108 = local_108 & 0xffffffffffffff00;
      local_148 = (void *)0x0;
      local_140 = 0;
      __mutex_init(&local_138,"(struct mutex *)ptr",&DAT_0015e0d4);
      iVar2 = syna_tcm_set_up_flash_access(param_1,&local_100,uVar9,uVar8);
      if (iVar2 < 0) {
        puVar6 = &DAT_00167f0e;
      }
      else {
        if (local_d8._4_4_ == 0) {
          uVar7 = 0;
        }
        else {
          uVar7 = 0;
          if (local_d8._4_4_ != 0) {
            uVar7 = ((param_3 + local_d8._4_4_) - 1) / local_d8._4_4_;
          }
        }
        iVar2 = syna_tcm_read_flash_boot_cs_config
                          (param_1,&local_100,&local_148,uVar7 * local_d8._4_4_,param_4,param_5);
        if (-1 < iVar2) {
          if (local_148 == (void *)0x0) {
            _printk(&DAT_00173054,"syna_tcm_read_cs_data");
            return;
          }
          if ((uint)local_140 < param_3) {
            _printk(&DAT_0016edc2,"syna_pal_mem_cpy",local_140 & 0xffffffff,__n,__n);
            return;
          }
          memcpy(param_2,local_148,__n);
          if (*(char *)(param_1 + 9) == '\v') {
            syna_tcm_switch_fw_mode(param_1,1,uVar8);
          }
          pvVar1 = local_148;
          if ((char)local_108 != '\0') {
            _printk(&DAT_00169d8a,"syna_tcm_buf_release");
            return;
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
            _printk(&DAT_00171996,"syna_pal_mem_free");
            return;
          }
          if (pvVar1 != (void *)0x0) {
            devm_kfree(lVar3,pvVar1);
          }
          lVar3 = local_c0;
          local_140 = 0;
          local_108 = local_108 & 0xffffffffffffff00;
          if ((char)local_80 != '\0') {
            _printk(&DAT_00169d8a,"syna_tcm_buf_release");
            return;
          }
          lVar4 = syna_request_managed_device();
          if (lVar4 == 0) {
            _printk(&DAT_00171996,"syna_pal_mem_free");
            return;
          }
          if (lVar3 != 0) {
            devm_kfree(lVar4,lVar3);
          }
          lVar3 = sp_el0;
          if (*(long *)(lVar3 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
            __stack_chk_fail(0);
          }
          return;
        }
        puVar6 = &DAT_00168d88;
      }
      _printk(puVar6,"syna_tcm_read_cs_data");
      return;
    }
    puVar5 = &DAT_00169fe0;
  }
  _printk(puVar5,"syna_tcm_read_cs_data");
  return;
}



/* 00138f78 FUN_00138f78 */

void FUN_00138f78(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x138f78);
  (*pcVar1)();
}



/* 001391b0 FUN_001391b0 */

void FUN_001391b0(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x1391b0);
  (*pcVar1)();
}



/* 0013a4ac FUN_0013a4ac */

void FUN_0013a4ac(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x13a4ac);
  (*pcVar1)();
}



/* 0013a8a8 syna_pal_mem_alloc_kcfi_guard */

void syna_pal_mem_alloc_kcfi_guard(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x13a8a8);
  (*pcVar1)();
}



/* 0013a8ac syna_pal_mem_alloc */

void syna_pal_mem_alloc(int param_1)

{
  long lVar1;
  undefined *puVar2;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 == 0) {
    puVar2 = &DAT_00171996;
  }
  else {
    if (0 < param_1) {
      devm_kmalloc(lVar1,param_1,0xdc0);
      return;
    }
    puVar2 = &DAT_0016da92;
  }
  _printk(puVar2,"syna_pal_mem_alloc");
  return;
}



/* 0013a918 syna_tcm_read_mtp_data */

void syna_tcm_read_mtp_data(long param_1,void *param_2,uint param_3,undefined4 param_4,int param_5)

{
  void *pvVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  uint uVar7;
  ulong __n;
  undefined4 uVar8;
  undefined4 uVar9;
  void *local_148;
  ulong local_140;
  undefined8 local_138;
  undefined8 uStack_130;
  undefined8 local_128;
  undefined8 uStack_120;
  undefined8 local_118;
  undefined8 uStack_110;
  ulong local_108;
  undefined8 local_100;
  undefined8 local_f8;
  undefined8 uStack_f0;
  undefined8 local_e8;
  byte *local_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  long local_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  local_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  local_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  local_e0 = (byte *)0x0;
  local_f8 = 0;
  uStack_f0 = 0;
  local_108 = 0;
  local_100 = 0;
  local_118 = 0;
  uStack_110 = 0;
  local_128 = 0;
  uStack_120 = 0;
  local_138 = 0;
  uStack_130 = 0;
  local_148 = (void *)0x0;
  local_140 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00168a84;
  }
  else {
    if ((param_2 != (void *)0x0) && (__n = (ulong)param_3, param_3 != 0)) {
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      local_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      local_a8 = 0;
      uStack_a0 = 0;
      uStack_b0 = 0;
      local_c8 = 0;
      local_d8 = 0;
      uStack_d0 = 0;
      local_e8 = 0;
      local_e0 = (byte *)0x0;
      local_f8 = 0;
      uStack_f0 = 0;
      local_100 = 0;
      if (param_5 == 0) {
        uVar8 = 0;
        uVar9 = 0;
      }
      else {
        uVar9 = *(undefined4 *)(param_1 + 0x20c);
        uVar8 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_c0 = 0;
      local_b8 = 0;
      __mutex_init(&uStack_b0,"(struct mutex *)ptr",&DAT_0015e0d4);
      local_108 = local_108 & 0xffffffffffffff00;
      local_148 = (void *)0x0;
      local_140 = 0;
      __mutex_init(&local_138,"(struct mutex *)ptr",&DAT_0015e0d4);
      iVar2 = FUN_001391b0(param_1,&local_100,uVar9,uVar8);
      if (iVar2 < 0) {
        puVar6 = &DAT_00167f0e;
      }
      else {
        if (*local_e0 < 3) {
          _printk(&DAT_00169912,"syna_tcm_read_mtp_data");
          return;
        }
        if (local_d8._4_4_ == 0) {
          uVar7 = 0;
        }
        else {
          uVar7 = 0;
          if (local_d8._4_4_ != 0) {
            uVar7 = ((param_3 + local_d8._4_4_) - 1) / local_d8._4_4_;
          }
        }
        iVar2 = FUN_0013a4ac(param_1,&local_100,&local_148,uVar7 * local_d8._4_4_,param_4,param_5);
        if (-1 < iVar2) {
          if (local_148 == (void *)0x0) {
            _printk(&DAT_00173054,"syna_tcm_read_mtp_data");
            return;
          }
          if ((uint)local_140 < param_3) {
            _printk(&DAT_0016edc2,"syna_pal_mem_cpy",local_140 & 0xffffffff,__n,__n);
            return;
          }
          memcpy(param_2,local_148,__n);
          if (*(char *)(param_1 + 9) == '\v') {
            syna_tcm_switch_fw_mode(param_1,1,uVar8);
          }
          pvVar1 = local_148;
          if ((char)local_108 != '\0') {
            _printk(&DAT_00169d8a,"syna_tcm_buf_release");
            return;
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
            _printk(&DAT_00171996,"syna_pal_mem_free");
            return;
          }
          if (pvVar1 != (void *)0x0) {
            devm_kfree(lVar3,pvVar1);
          }
          lVar3 = local_c0;
          local_140 = 0;
          local_108 = local_108 & 0xffffffffffffff00;
          if ((char)local_80 != '\0') {
            _printk(&DAT_00169d8a,"syna_tcm_buf_release");
            return;
          }
          lVar4 = syna_request_managed_device();
          if (lVar4 == 0) {
            _printk(&DAT_00171996,"syna_pal_mem_free");
            return;
          }
          if (lVar3 != 0) {
            devm_kfree(lVar4,lVar3);
          }
          lVar3 = sp_el0;
          if (*(long *)(lVar3 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
            __stack_chk_fail(0);
          }
          return;
        }
        puVar6 = &DAT_0016e8d0;
      }
      _printk(puVar6,"syna_tcm_read_mtp_data");
      return;
    }
    puVar5 = &DAT_0016c9b2;
  }
  _printk(puVar5,"syna_tcm_read_mtp_data");
  return;
}



/* 0013ac5c syna_tcm_erase_mtp_data */

void syna_tcm_erase_mtp_data(long param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  long lVar4;
  code *pcVar5;
  int iVar6;
  int iVar7;
  long lVar8;
  undefined8 uVar9;
  undefined4 uVar10;
  undefined1 local_e4;
  undefined1 uStack_e3;
  undefined2 uStack_e2;
  undefined8 local_e0;
  undefined8 uStack_d8;
  undefined8 local_d0;
  undefined8 uStack_c8;
  byte *local_c0;
  undefined8 local_b8;
  undefined8 local_b0;
  undefined8 uStack_a8;
  long local_a0;
  undefined8 uStack_98;
  undefined8 local_90;
  undefined8 uStack_88;
  undefined8 local_80;
  undefined8 uStack_78;
  undefined8 local_70;
  undefined8 uStack_68;
  undefined8 local_60;
  undefined8 local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_erase_mtp_data");
    return;
  }
  local_70 = 0;
  uStack_68 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_60 = 0;
  local_80 = 0;
  uStack_78 = 0;
  local_90 = 0;
  uStack_88 = 0;
  local_b0 = 0;
  uStack_a8 = 0;
  local_c0 = (byte *)0x0;
  local_b8 = 0;
  local_d0 = 0;
  uStack_c8 = 0;
  local_e0 = 0;
  uStack_d8 = 0;
  if (param_2 == 0) {
    uVar10 = 0;
    iVar7 = 0;
  }
  else {
    iVar7 = *(int *)(param_1 + 0x20c);
    uVar10 = *(undefined4 *)(param_1 + 0x1e8);
  }
  local_a0 = 0;
  uStack_98 = 0;
  __mutex_init(&local_90,"(struct mutex *)ptr",&DAT_0015e0d4);
  iVar6 = FUN_00138f78(param_1,&local_e0,iVar7,uVar10);
  if (iVar6 < 0) {
    _printk(&DAT_00167f0e,"syna_tcm_erase_mtp_data");
    return;
  }
  if (*local_c0 < 3) {
    _printk(&DAT_00169912,"syna_tcm_erase_mtp_data");
    return;
  }
  uStack_e2 = 0;
  uVar2 = 0;
  if ((uint)local_b8 != 0) {
    uVar2 = uStack_a8._4_4_ / (uint)local_b8;
  }
  uVar3 = 0;
  if ((uint)local_b8 != 0) {
    uVar3 = (((uint)local_b8 + (uint)local_b8 * local_c0[0x15]) - 1) / (uint)local_b8;
  }
  if ((uVar3 | uVar2) < 0x100) {
    uVar9 = 2;
    uVar1 = uVar3;
  }
  else {
    uVar1 = uVar2 >> 8;
    uVar9 = 4;
    uStack_e2 = (undefined2)uVar3;
  }
  iVar7 = uVar3 * iVar7;
  _local_e4 = CONCAT11((char)uVar1,(char)uVar2);
  if (*(char *)(param_1 + 9) != '\v') {
    _printk(&DAT_0016d1c4,"syna_tcm_reflash_send_command",*(char *)(param_1 + 9),uVar9);
    return;
  }
  if (iVar7 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_0016bea2,"syna_tcm_reflash_send_command",*(undefined4 *)(param_1 + 0x20c),uVar9);
      return;
    }
    iVar7 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x13adb4);
    (*pcVar5)();
  }
  iVar7 = (**(code **)(param_1 + 0x398))(param_1,0x11,&local_e4,uVar9,0,iVar7);
  if (iVar7 < 0) {
    _printk(&DAT_0016f442,"syna_tcm_reflash_send_command",0x11);
    return;
  }
  if (*(char *)(param_1 + 9) == '\v') {
    syna_tcm_switch_fw_mode(param_1,1,uVar10);
  }
  lVar4 = local_a0;
  if ((char)local_60 == '\0') {
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar4 != 0) {
      devm_kfree(lVar8,lVar4);
    }
    lVar4 = sp_el0;
    if (*(long *)(lVar4 + 0x710) == local_48) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0);
  }
  _printk(&DAT_00169d8a,"syna_tcm_buf_release");
  return;
}



/* 0013b594 syna_pal_mem_free_kcfi_guard */

void syna_pal_mem_free_kcfi_guard(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x13b594);
  (*pcVar1)();
}



/* 0013b598 syna_pal_mem_free */

void syna_pal_mem_free(long param_1)

{
  long lVar1;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 != 0) {
    if (param_1 != 0) {
      devm_kfree(lVar1,param_1);
    }
    return;
  }
  _printk(&DAT_00171996,"syna_pal_mem_free");
  return;
}



/* 0013b5ec syna_tcm_get_touch_data */

undefined8 syna_tcm_get_touch_data(long param_1,int param_2,uint param_3,uint param_4,uint *param_5)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  undefined8 uVar4;
  uint uVar5;
  
  if (param_4 - 0x21 < 0xffffffe0) {
    uVar4 = _printk(&DAT_00168dd4,"syna_tcm_get_touch_data",param_4);
    return uVar4;
  }
  if (param_1 != 0) {
    if ((uint)(param_2 * 8) < param_4 + param_3) {
      *param_5 = 0;
    }
    else {
      uVar5 = param_3 >> 3;
      uVar3 = 8 - (param_3 & 7);
      if (param_4 <= uVar3) {
        uVar3 = param_4;
      }
      uVar1 = (uint)(*(byte *)(param_1 + (ulong)uVar5) >> (ulong)(param_3 & 7)) &
              0xffU >> (ulong)(8 - uVar3 & 0x1f);
      for (uVar3 = param_4 - uVar3; uVar3 != 0; uVar3 = uVar3 - uVar2) {
        uVar5 = uVar5 + 1;
        uVar2 = uVar3;
        if (7 < uVar3) {
          uVar2 = 8;
        }
        uVar1 = (0xffU >> (ulong)(8 - uVar2 & 0x1f) & (uint)*(byte *)(param_1 + (ulong)uVar5)) <<
                (ulong)(param_4 - uVar3 & 0x1f) | uVar1;
      }
      *param_5 = uVar1;
    }
    return 0;
  }
  uVar4 = _printk(&DAT_0016ca62,"syna_tcm_get_touch_data");
  return uVar4;
}



/* 0013b6e4 syna_tcm_parse_touch_report */

void syna_tcm_parse_touch_report(long param_1,long param_2,uint param_3,uint *param_4)

{
  uint *__s;
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  char cVar6;
  byte bVar7;
  uint uVar8;
  uint uVar9;
  bool bVar10;
  ulong uVar11;
  ulong uVar12;
  bool bVar13;
  int iVar14;
  undefined1 *puVar15;
  uint uVar16;
  uint uVar17;
  uint uVar18;
  ulong uVar19;
  ulong uVar20;
  undefined *puVar21;
  uint uVar22;
  code *pcVar23;
  uint uVar24;
  uint uVar25;
  undefined2 uVar26;
  uint uVar27;
  uint uVar28;
  long lVar29;
  undefined1 uVar30;
  ulong uVar31;
  uint uVar32;
  undefined8 local_98;
  uint local_70;
  uint uStack_6c;
  long local_68;
  
  lVar29 = sp_el0;
  local_68 = *(long *)(lVar29 + 0x710);
  if (param_1 == 0) {
    puVar15 = &DAT_00168a84;
  }
  else if (param_2 == 0) {
    puVar15 = &DAT_0016ca62;
  }
  else if (param_4 == (uint *)0x0) {
    puVar15 = &DAT_0016e9da;
  }
  else {
    if (*(int *)(param_1 + 0x18) != 0) {
      if (*(int *)(param_1 + 0x38c) == 1) {
        _printk(&DAT_0016ca86,"syna_tcm_parse_touch_report");
        return;
      }
      lVar29 = *(long *)(param_1 + 400);
      __s = param_4 + 2;
      if ((lVar29 == 0) || (uVar2 = *(uint *)(param_1 + 0x19c), uVar2 == 0)) {
        _printk(&DAT_0016d22a,"syna_tcm_parse_touch_report");
        return;
      }
      memset(__s,0,0x208);
      uVar3 = *(uint *)(param_1 + 0x1d8);
      iVar4 = *(int *)(param_1 + 0x1e4);
      iVar5 = *(int *)(param_1 + 0x1e0);
      uVar16 = 0;
      local_98 = 0;
      uVar8 = param_3 << 3;
      local_70 = 0;
      uStack_6c = 0;
      uVar12 = 0;
      uVar25 = 0;
      bVar13 = false;
LAB_0013b7d0:
      bVar10 = bVar13;
      uVar32 = uVar25;
      uVar19 = uVar12;
      uVar11 = local_98;
      uVar31 = uVar19 & 0xffffffff;
LAB_0013b7dc:
      uVar24 = uStack_6c;
      if (uVar2 <= uStack_6c) {
switchD_0013b894_caseD_0:
        uStack_6c = uVar24;
LAB_0013cf8c:
        lVar29 = sp_el0;
        if (*(long *)(lVar29 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
          __stack_chk_fail(local_70);
        }
        return;
      }
      uVar20 = (ulong)uStack_6c + 1;
      uVar24 = (uint)uVar20;
      cVar6 = *(char *)(lVar29 + (ulong)uStack_6c);
      uVar12 = uVar31;
      uVar25 = uVar32;
      uVar18 = local_70;
      uVar22 = uVar3;
      bVar13 = bVar10;
      switch(cVar6) {
      case '\0':
        goto switchD_0013b894_caseD_0;
      case '\x01':
        bVar13 = true;
        goto joined_r0x0013bac4;
      case '\x02':
        bVar13 = false;
joined_r0x0013bac4:
        uVar12 = uVar20;
        uVar25 = 0;
        uStack_6c = uVar24;
        if ((uint)(iVar5 + iVar4) < uVar8) goto LAB_0013b7d0;
        goto LAB_0013b7c4;
      case '\x03':
        uVar28 = local_70 + iVar4;
        uStack_6c = uVar24;
        if (uVar8 <= uVar28 && uVar28 != uVar8) goto LAB_0013cf8c;
        if (uVar28 == uVar8) goto LAB_0013b7c4;
        if (bVar10) {
          if ((local_98 & 0x100000000) != 0) {
            uVar16 = uVar16 + 1;
            local_98 = CONCAT44(1,(uint)local_98);
            uVar25 = uVar32 + 1;
            bVar13 = true;
            if (uVar16 < (uint)local_98) {
              local_98 = CONCAT44(1,(uint)local_98);
              uVar12 = uVar19 & 0xffffffff;
              uStack_6c = (uint)uVar19;
            }
            goto LAB_0013b7d0;
          }
          bVar13 = true;
          local_98 = local_98 & 0xffffffff;
          if (uVar8 <= local_70) goto LAB_0013b7d0;
          local_98 = uVar11 & 0xffffffff;
        }
        else {
          uVar25 = uVar32 + 1;
          bVar13 = false;
          if (*(uint *)(param_1 + 0x18) <= uVar32 + 1) goto LAB_0013b7d0;
          bVar13 = false;
        }
        uVar25 = uVar32 + 1;
        uStack_6c = (uint)uVar19;
        goto LAB_0013b7d0;
      case '\x04':
        uVar18 = local_70 + 7 & 0xfffffff8;
        uVar22 = uVar24;
        goto LAB_0013b7c4;
      case '\x05':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x87] = uVar28;
        break;
      case '\x06':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar32 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar32 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar28) {
            uVar22 = uVar22 + 1;
            uVar28 = uVar25;
            if (7 < uVar25) {
              uVar28 = 8;
            }
            uVar32 = (0xffU >> (ulong)(8 - uVar28 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar32;
          }
        }
        *param_4 = uVar32;
        break;
      case '\a':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar30 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          uVar30 = (undefined1)uVar17;
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
            uVar30 = (undefined1)uVar17;
          }
        }
        *(undefined1 *)(__s + (ulong)uVar32 * 0xd) = uVar30;
        goto LAB_0013b7c4;
      case '\b':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 1] = uVar17;
        goto LAB_0013b7c4;
      case '\t':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 2] = uVar17;
        goto LAB_0013b7c4;
      case '\n':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 5] = uVar17;
        goto LAB_0013b7c4;
      case '\v':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 3] = uVar17;
        goto LAB_0013b7c4;
      case '\f':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 4] = uVar17;
        goto LAB_0013b7c4;
      case '\r':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 6] = uVar17;
        goto LAB_0013b7c4;
      case '\x0e':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          uVar17 = 0;
        }
        else {
          uVar24 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar28 = (uint)bVar7;
          if (uVar28 <= uVar25) {
            uVar25 = uVar28;
          }
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar24) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar27) {
            uVar24 = uVar24 + 1;
            uVar27 = uVar25;
            if (7 < uVar25) {
              uVar27 = 8;
            }
            uVar17 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar24)
                     ) << (ulong)(uVar28 - uVar25 & 0x1f) | uVar17;
          }
        }
        __s[(ulong)uVar32 * 0xd + 7] = uVar17;
        goto LAB_0013b7c4;
      case '\x0f':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x88] = uVar28;
        break;
      case '\x10':
        pcVar23 = *(code **)(param_1 + 0x3d0);
        if (pcVar23 == (code *)0x0) {
          uStack_6c = uStack_6c + 2;
          bVar7 = *(byte *)(lVar29 + uVar20);
          if (bVar7 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00168dd4,"syna_tcm_get_touch_data",(uint)bVar7);
            return;
          }
          uVar32 = (uint)bVar7;
          if (uVar8 < local_70 + uVar32) {
            uVar18 = 0;
          }
          else {
            uVar22 = local_70 >> 3;
            uVar24 = 8 - (local_70 & 7);
            if (uVar32 <= uVar24) {
              uVar24 = (uint)bVar7;
            }
            uVar18 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar24 & 0x1f);
            for (uVar24 = bVar7 - uVar24; uVar24 != 0; uVar24 = uVar24 - uVar28) {
              uVar22 = uVar22 + 1;
              uVar28 = uVar24;
              if (7 < uVar24) {
                uVar28 = 8;
              }
              uVar18 = (0xffU >> (ulong)(8 - uVar28 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar22)) << (ulong)(uVar32 - uVar24 & 0x1f)
                       | uVar18;
            }
          }
          iVar14 = 0;
          param_4[0x84] = uVar18;
          local_70 = local_70 + uVar32;
        }
        else {
          if (*(int *)(pcVar23 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
            pcVar23 = (code *)SoftwareBreakpoint(0x822a,0x13b950);
            uStack_6c = uVar24;
            (*pcVar23)();
          }
          uStack_6c = uVar24;
          iVar14 = (*pcVar23)(0x10,lVar29,&uStack_6c,param_2,&local_70,param_3,
                              *(undefined8 *)(param_1 + 0x3c8));
        }
        if (iVar14 < 0) {
          puVar21 = &DAT_0017088a;
LAB_0013d318:
          _printk(puVar21,"syna_tcm_parse_touch_report");
          return;
        }
        goto LAB_0013b7d0;
      case '\x11':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x89] = uVar28;
        break;
      case '\x12':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8a] = uVar28;
        break;
      case '\x13':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8b] = uVar28;
        break;
      case '\x14':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8c] = uVar28;
        break;
      case '\x15':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8d] = uVar28;
        break;
      case '\x16':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8e] = uVar28;
        break;
      case '\x17':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x8f] = uVar28;
        break;
      case '\x18':
        uStack_6c = uStack_6c + 2;
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          param_4[1] = 0;
          goto LAB_0013c21c;
        }
        uVar28 = local_70 >> 3;
        uVar24 = 8 - (local_70 & 7);
        uVar17 = (uint)bVar7;
        if (uVar17 <= uVar24) {
          uVar24 = uVar17;
        }
        uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar28) >> (ulong)(local_70 & 7)) &
                 0xffU >> (ulong)(8 - uVar24 & 0x1f);
        for (uVar24 = uVar17 - uVar24; uVar24 != 0; uVar24 = uVar24 - uVar1) {
          uVar28 = uVar28 + 1;
          uVar1 = uVar24;
          if (7 < uVar24) {
            uVar1 = 8;
          }
          uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar28))
                   << (ulong)(uVar17 - uVar24 & 0x1f) | uVar27;
        }
        param_4[1] = uVar27;
        local_98 = CONCAT44(1,uVar27);
        local_70 = uVar18;
        if (uVar27 == 0) {
LAB_0013c21c:
          local_98 = 0x100000000;
LAB_0013b7c4:
          uStack_6c = uVar22;
          local_70 = uVar18;
          uVar12 = uVar31;
          uVar25 = uVar32;
          bVar13 = bVar10;
        }
        goto LAB_0013b7d0;
      case '\x19':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x90] = uVar28;
        break;
      case '\x1a':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x91] = uVar28;
        break;
      case '\x1b':
        goto switchD_0013b894_caseD_1b;
      case '\x1c':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x92] = uVar28;
        break;
      case '\x1d':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x93] = uVar28;
        break;
      case '\x1e':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
          _printk(&DAT_00168dd4,"syna_tcm_get_touch_data");
          return;
        }
        uVar24 = local_70 + bVar7;
        if (uVar8 < uVar24) {
          uVar28 = 0;
        }
        else {
          uVar22 = local_70 >> 3;
          uVar25 = 8 - (local_70 & 7);
          uVar18 = (uint)bVar7;
          if (uVar18 <= uVar25) {
            uVar25 = uVar18;
          }
          uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar22) >> (ulong)(local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar25 & 0x1f);
          for (uVar25 = uVar18 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar17) {
            uVar22 = uVar22 + 1;
            uVar17 = uVar25;
            if (7 < uVar25) {
              uVar17 = 8;
            }
            uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar22)
                     ) << (ulong)(uVar18 - uVar25 & 0x1f) | uVar28;
          }
        }
        param_4[0x94] = uVar28;
        break;
      default:
        pcVar23 = *(code **)(param_1 + 0x3c0);
        uStack_6c = uVar24;
        if (pcVar23 != (code *)0x0) goto code_r0x0013b808;
        goto LAB_0013b84c;
      }
      uStack_6c = uStack_6c + 2;
      uVar25 = uVar32;
      local_70 = uVar24;
      goto LAB_0013b7d0;
    }
    puVar15 = &DAT_00169956;
  }
  _printk(puVar15,"syna_tcm_parse_touch_report");
  return;
code_r0x0013b808:
  if (*(int *)(pcVar23 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
    pcVar23 = (code *)SoftwareBreakpoint(0x8229,0x13b83c);
    (*pcVar23)();
  }
  iVar14 = (*pcVar23)(cVar6,lVar29,&uStack_6c,param_2,&local_70,param_3,
                      *(undefined8 *)(param_1 + 0x3b8));
  if (iVar14 < 0) goto code_r0x0013b848;
  goto LAB_0013b7dc;
code_r0x0013b848:
  uVar20 = (ulong)uStack_6c;
LAB_0013b84c:
  if (cVar6 != -0x36) {
    _printk(&DAT_0016a74a,"syna_tcm_parse_touch_report",cVar6,
            *(undefined1 *)(lVar29 + (uVar20 & 0xffffffff)));
    return;
  }
  local_70 = local_70 + *(byte *)(lVar29 + (uVar20 & 0xffffffff));
  uStack_6c = (int)uVar20 + 1;
  goto LAB_0013b7d0;
switchD_0013b894_caseD_1b:
  pcVar23 = *(code **)(param_1 + 0x3d0);
  if (pcVar23 == (code *)0x0) {
    uStack_6c = uStack_6c + 2;
    uVar18 = local_70 + *(byte *)(lVar29 + uVar20);
    uVar22 = uStack_6c;
    if (uVar18 >> 3 <= param_3) {
      if (local_70 < uVar18) {
        uVar25 = local_70 + 0x10;
        uVar24 = local_70 & 7;
        if (uVar8 < uVar25) {
          uVar26 = 0;
        }
        else {
          uVar27 = local_70 >> 3;
          uVar28 = (local_70 | 0xfffffff8) + 0x10;
          uVar17 = (uint)(*(byte *)(param_2 + (ulong)uVar27) >> (ulong)uVar24);
          do {
            uVar27 = uVar27 + 1;
            uVar1 = uVar28;
            if (7 < uVar28) {
              uVar1 = 8;
            }
            uVar9 = 0x10 - uVar28;
            uVar28 = uVar28 - uVar1;
            uVar17 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar27))
                     << (ulong)(uVar9 & 0x1f) | uVar17;
            uVar26 = (undefined2)uVar17;
          } while (uVar28 != 0);
        }
        *(undefined2 *)(param_4 + 0x85) = uVar26;
        if (uVar25 < uVar18) {
          uVar28 = local_70 + 0x20;
          if (uVar8 < uVar28) {
            uVar26 = 0;
          }
          else {
            uVar25 = uVar25 >> 3;
            uVar17 = (local_70 | 0xfffffff8) + 0x10;
            uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)uVar24);
            do {
              uVar25 = uVar25 + 1;
              uVar1 = uVar17;
              if (7 < uVar17) {
                uVar1 = 8;
              }
              uVar9 = 0x10 - uVar17;
              uVar17 = uVar17 - uVar1;
              uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar25)) << (ulong)(uVar9 & 0x1f) | uVar27;
              uVar26 = (undefined2)uVar27;
            } while (uVar17 != 0);
          }
          *(undefined2 *)((long)param_4 + 0x216) = uVar26;
          if (uVar28 < uVar18) {
            uVar25 = local_70 + 0x30;
            if (uVar8 < uVar25) {
              uVar26 = 0;
            }
            else {
              uVar28 = uVar28 >> 3;
              uVar17 = (local_70 | 0xfffffff8) + 0x10;
              uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar28) >> (ulong)uVar24);
              do {
                uVar28 = uVar28 + 1;
                uVar1 = uVar17;
                if (7 < uVar17) {
                  uVar1 = 8;
                }
                uVar9 = 0x10 - uVar17;
                uVar17 = uVar17 - uVar1;
                uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                         (uint)*(byte *)(param_2 + (ulong)uVar28)) << (ulong)(uVar9 & 0x1f) | uVar27
                ;
                uVar26 = (undefined2)uVar27;
              } while (uVar17 != 0);
            }
            *(undefined2 *)(param_4 + 0x86) = uVar26;
            if (uVar25 < uVar18) {
              if (uVar8 < local_70 + 0x40) {
                uVar26 = 0;
              }
              else {
                uVar25 = uVar25 >> 3;
                uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)uVar24);
                uVar24 = (local_70 | 0xfffffff8) + 0x10;
                do {
                  uVar25 = uVar25 + 1;
                  uVar17 = uVar24;
                  if (7 < uVar24) {
                    uVar17 = 8;
                  }
                  uVar27 = 0x10 - uVar24;
                  uVar24 = uVar24 - uVar17;
                  uVar28 = (0xffU >> (ulong)(8 - uVar17 & 0x1f) &
                           (uint)*(byte *)(param_2 + (ulong)uVar25)) << (ulong)(uVar27 & 0x1f) |
                           uVar28;
                  uVar26 = (undefined2)uVar28;
                } while (uVar24 != 0);
              }
              *(undefined2 *)((long)param_4 + 0x21a) = uVar26;
            }
          }
        }
      }
      if ((7 < param_4[0x84]) || ((1 << (ulong)(param_4[0x84] & 0x1f) & 199U) == 0)) {
        _printk(&DAT_0016f574,"syna_tcm_get_gesture_data");
        return;
      }
    }
    goto LAB_0013b7c4;
  }
  if (*(int *)(pcVar23 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
    pcVar23 = (code *)SoftwareBreakpoint(0x822a,0x13b8f4);
    uStack_6c = uVar24;
    (*pcVar23)();
  }
  uStack_6c = uVar24;
  iVar14 = (*pcVar23)(0x1b,lVar29,&uStack_6c,param_2,&local_70,param_3,
                      *(undefined8 *)(param_1 + 0x3c8));
  if (-1 < iVar14) goto LAB_0013b7d0;
  puVar21 = &DAT_0016ad7e;
  goto LAB_0013d318;
}



/* 0013d33c syna_tcm_set_touch_report_config */

void syna_tcm_set_touch_report_config(long param_1,long param_2,ulong param_3,int param_4)

{
  ushort uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *puVar4;
  long lVar5;
  undefined *puVar6;
  
  if (param_1 == 0) {
    puVar4 = &DAT_00168a84;
  }
  else if ((param_2 == 0) || ((uint)param_3 == 0)) {
    puVar4 = &DAT_0016a07a;
  }
  else {
    if (*(char *)(param_1 + 9) != '\x01') {
      _printk(&DAT_0016c48e,"syna_tcm_set_touch_report_config",*(char *)(param_1 + 9));
      return;
    }
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        _printk(&DAT_00171524,"syna_tcm_set_touch_report_config");
        return;
      }
      param_4 = 0;
    }
    if (*(short *)(param_1 + 0xb0) != 0) {
      uVar1 = *(ushort *)(param_1 + 0xbc);
      if ((uint)uVar1 < (uint)param_3) {
        _printk(&DAT_00168702,"syna_tcm_set_touch_report_config",param_3,uVar1);
        return;
      }
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) {
        lVar5 = devm_kmalloc(lVar5,uVar1,0xdc0);
        if (lVar5 == 0) {
          _printk(&DAT_0016a788,"syna_tcm_set_touch_report_config");
          return;
        }
        iVar3 = syna_pal_mem_cpy(lVar5,(uint)uVar1,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff
                                );
        if (iVar3 < 0) {
          puVar6 = &DAT_0016d7d4;
        }
        else {
          if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
            pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13d514);
            (*pcVar2)();
          }
          iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x26,lVar5,uVar1,0,param_4);
          puVar6 = &DAT_0016cabc;
          if (-1 < iVar3) {
            puVar6 = &DAT_0017002a;
          }
        }
        _printk(puVar6,"syna_tcm_set_touch_report_config");
        return;
      }
      _printk(&DAT_00171996,"syna_pal_mem_alloc");
      return;
    }
    puVar4 = &DAT_00171dde;
  }
  _printk(puVar4,"syna_tcm_set_touch_report_config");
  return;
}



/* 0013d554 syna_dev_set_sensibility_level */

void syna_dev_set_sensibility_level(void)

{
  _printk(&DAT_0017c77d,"syna_dev_set_sensibility_level","syna_dev_set_sensibility_level");
  return;
}



/* 0013d6f4 syna_tcm_testing_full_raw */

undefined8 syna_tcm_testing_full_raw(long param_1,long param_2,ulong param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  long lVar3;
  byte bVar4;
  byte bVar5;
  int iVar6;
  undefined8 uVar7;
  undefined *puVar8;
  undefined8 *puVar9;
  undefined8 local_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  if ((param_1 != 0) && (param_2 != 0)) {
    local_58 = 0;
    uStack_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    local_78 = 0;
    uStack_70 = 0;
    local_88 = 0;
    uStack_80 = 0;
    local_90 = 0;
    __mutex_init(&uStack_80,"(struct mutex *)ptr",&DAT_0015e0d1);
    uVar1 = *(undefined4 *)(param_1 + 0x1c);
    uVar2 = *(undefined4 *)(param_1 + 0x20);
    iVar6 = syna_tcm_run_production_test(param_1,5,&local_90,0);
    if (iVar6 < 0) {
      uVar7 = _printk(&DAT_00170d30,"syna_tcm_testing_full_raw",5);
      return uVar7;
    }
    if (*(long *)(param_2 + 0xd8) != 0) {
      FUN_00158db4(*(long *)(param_2 + 0xd8),&local_90);
    }
    if ((param_3 & 1) == 0) {
      puVar9 = *(undefined8 **)(param_2 + 0x38);
      if (puVar9 == (undefined8 *)0x0) {
        bVar4 = 0;
      }
      else {
        bVar4 = FUN_00159054(local_90,local_88._4_4_,uVar1,uVar2,
                             syna_tcm_testing_0500_check_upper_bound,*puVar9,
                             *(undefined4 *)(puVar9 + 1));
      }
      puVar9 = *(undefined8 **)(param_2 + 0x40);
      if (puVar9 == (undefined8 *)0x0) {
        bVar5 = 0;
      }
      else {
        bVar5 = FUN_00159004(local_90,local_88._4_4_,uVar1,uVar2,
                             syna_tcm_testing_0500_check_lower_bound,*puVar9,
                             *(undefined4 *)(puVar9 + 1));
      }
      bVar4 = bVar4 & bVar5 & 1;
      *(byte *)(param_2 + 0x10) = bVar4;
      puVar8 = &DAT_0016e2fa;
      if (bVar4 == 0) {
        puVar8 = &DAT_00168c34;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar8 = &DAT_0016e2fa;
    }
    uVar7 = _printk(&DAT_00168526,"syna_tcm_testing_full_raw",puVar8);
    return uVar7;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013d938 syna_tcm_testing_trx_trx_short */

undefined8 syna_tcm_testing_trx_trx_short(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined8 uVar4;
  undefined *puVar5;
  undefined8 *puVar6;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if ((param_1 != 0) && (param_2 != 0)) {
    local_48 = 0;
    uStack_40 = 0;
    local_58 = 0;
    uStack_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    local_78 = 0;
    uStack_70 = 0;
    local_80 = 0;
    __mutex_init(&uStack_70,"(struct mutex *)ptr",&DAT_0015ea31);
    iVar3 = syna_tcm_run_production_test(param_1,1,&local_80,0);
    if (iVar3 < 0) {
      uVar4 = _printk(&DAT_00170d30,"syna_tcm_testing_trx_trx_short",1);
      return uVar4;
    }
    if (*(long *)(param_2 + 0xd8) != 0) {
      FUN_00158d24(*(long *)(param_2 + 0xd8),&local_80);
    }
    if ((param_3 & 1) == 0) {
      puVar6 = *(undefined8 **)(param_2 + 0x38);
      if (puVar6 == (undefined8 *)0x0) {
        *(undefined1 *)(param_2 + 0x10) = 0;
        puVar5 = &DAT_00168c34;
      }
      else {
        bVar2 = FUN_00144204(local_80,local_78._4_4_,*puVar6,*(undefined4 *)(puVar6 + 1));
        *(byte *)(param_2 + 0x10) = bVar2 & 1;
        puVar5 = &DAT_0016e2fa;
        if ((bVar2 & 1) == 0) {
          puVar5 = &DAT_00168c34;
        }
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar5 = &DAT_0016e2fa;
    }
    uVar4 = _printk(&DAT_00168526,"syna_tcm_testing_trx_trx_short",puVar5);
    return uVar4;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013db20 _inline_copy_from_user */

size_t _inline_copy_from_user(long param_1,ulong param_2,ulong param_3)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  ulong uVar4;
  
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar4 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar4 = param_2 & (long)(param_2 << 8) >> 8;
  }
  uVar3 = param_3;
  if ((param_3 < 0x8000000001) && (uVar4 <= 0x8000000000 - param_3)) {
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar3 = puVar1[1];
    uVar4 = ttbr1_el1;
    ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar4 & 0xffffffffffff;
    ttbr0_el1 = uVar3;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    uVar3 = __arch_copy_from_user(uVar3,param_1,param_2 & 0xff7fffffffffffff,param_3);
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar4 = ttbr1_el1;
    ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar4 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    if (uVar3 == 0) {
      return 0;
    }
  }
  memset((void *)(param_1 + (param_3 - uVar3)),0,uVar3);
  return uVar3;
}



/* 0013db48 FUN_0013db48 */

size_t FUN_0013db48(undefined8 *param_1,undefined8 param_2,ulong param_3)

{
  undefined8 uVar1;
  ulong uVar2;
  ulong uVar3;
  ulong unaff_x19;
  long unaff_x20;
  
  if (((uint)*param_1 >> 0x1a & 1) != 0) {
    param_3 = param_3 & (long)(param_3 << 8) >> 8;
  }
  uVar2 = unaff_x19;
  if ((unaff_x19 < 0x8000000001) && (param_3 <= 0x8000000000 - unaff_x19)) {
    uVar1 = daif;
    uVar2 = daif;
    daif = uVar2 | 0xc0;
    uVar3 = param_1[1];
    uVar2 = ttbr1_el1;
    ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar2 & 0xffffffffffff;
    ttbr0_el1 = uVar3;
    InstructionSynchronizationBarrier();
    daif = uVar1;
    uVar2 = __arch_copy_from_user(uVar3);
    uVar1 = daif;
    uVar3 = daif;
    daif = uVar3 | 0xc0;
    uVar3 = ttbr1_el1;
    ttbr0_el1 = (uVar3 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar3 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar1;
    if (uVar2 == 0) {
      return 0;
    }
  }
  memset((void *)(unaff_x20 + (unaff_x19 - uVar2)),0,uVar2);
  return uVar2;
}



/* 0013dc20 get_finger_lock_flag */

void get_finger_lock_flag(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    _printk(&DAT_00181cf8,"get_finger_lock_flag",*(undefined4 *)(tpd_cdev + 0x474));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0013dcf4 get_tp_algo_item_id */

undefined8 get_tp_algo_item_id(char *param_1)

{
  undefined *puVar1;
  size_t sVar2;
  long lVar3;
  undefined8 uVar4;
  undefined1 *puVar5;
  
  puVar1 = PTR_s_algo_open_0012fc48;
  puVar5 = &ztp_algo_info_l;
  sVar2 = strlen(param_1);
  lVar3 = strnstr(param_1,puVar1,sVar2);
  puVar1 = PTR_s_jitter_pixel_0012fc58;
  if (lVar3 == 0) {
    puVar5 = &DAT_0012fc50;
    sVar2 = strlen(param_1);
    lVar3 = strnstr(param_1,puVar1,sVar2);
    puVar1 = PTR_s_jitter_timer_0012fc68;
    if (lVar3 == 0) {
      puVar5 = &DAT_0012fc60;
      sVar2 = strlen(param_1);
      lVar3 = strnstr(param_1,puVar1,sVar2);
      puVar1 = PTR_s_click_pixel_0012fc78;
      if (lVar3 == 0) {
        puVar5 = &DAT_0012fc70;
        sVar2 = strlen(param_1);
        lVar3 = strnstr(param_1,puVar1,sVar2);
        puVar1 = PTR_s_long_press_open_0012fc88;
        if (lVar3 == 0) {
          puVar5 = &DAT_0012fc80;
          sVar2 = strlen(param_1);
          lVar3 = strnstr(param_1,puVar1,sVar2);
          puVar1 = PTR_s_long_press_timer_0012fc98;
          if (lVar3 == 0) {
            puVar5 = &DAT_0012fc90;
            sVar2 = strlen(param_1);
            lVar3 = strnstr(param_1,puVar1,sVar2);
            puVar1 = PTR_s_long_press_pixel_0012fca8;
            if (lVar3 == 0) {
              puVar5 = &DAT_0012fca0;
              sVar2 = strlen(param_1);
              lVar3 = strnstr(param_1,puVar1,sVar2);
              if (lVar3 == 0) {
                return 0xfffffffb;
              }
            }
          }
        }
      }
    }
  }
  uVar4 = _printk(&DAT_00181b25,"get_tp_algo_item_id",*puVar5);
  return uVar4;
}



/* 0013de5c get_tp_chip_id */

void get_tp_chip_id(void)

{
  _printk(&DAT_00180d3e,"get_tp_chip_id");
  return;
}



/* 0013e050 set_finger_lock_flag */

undefined8 set_finger_lock_flag(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_00180744,"set_finger_lock_flag");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013e138 suspend_store */

undefined8 suspend_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_0017e501,"suspend_store");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013e250 suspend_tp_need_awake */

uint suspend_tp_need_awake(void)

{
  uint uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(tpd_cdev + 0xe68);
  if (pcVar2 == (code *)0x0) {
    return 0;
  }
  if (*(int *)(pcVar2 + -4) != -0x7f7ec5d7) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13e284);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1 & 1;
}



/* 0013e2a4 syna_cdev_create */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 syna_cdev_create(long param_1,undefined8 param_2)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  undefined *puVar4;
  undefined8 uVar5;
  
  _DAT_0015eb68 = 0;
  DAT_0015eb70 = 0;
  DAT_0015eb58 = 0;
  _DAT_0015eb60 = 0;
  DAT_0015eb48 = 0;
  DAT_0015eb50 = 0;
  DAT_0015eb38 = 0;
  DAT_0015eb40 = 0;
  DAT_0015eb20 = 0;
  DAT_0015eb28 = 0;
  DAT_0015eb10 = 0;
  DAT_0015eb18 = 0;
  DAT_0015eb08 = 0;
  DAT_0015eaf0 = 0;
  _DAT_0015eaf8 = 0;
  DAT_0015eae0 = 0;
  DAT_0015eae8 = 0;
  DAT_0015ead0 = 0;
  DAT_0015ead8 = 0;
  DAT_0015eab8 = 0;
  DAT_0015eac0 = 0;
  DAT_0015eac8 = 0;
  DAT_0015eb30 = 0;
  DAT_0015eb00 = 0;
  g_cdev_data = param_2;
  *(undefined8 *)(param_1 + 0x388) = 0;
  *(undefined8 *)(param_1 + 0x390) = 0;
  __mutex_init(&DAT_0015eb00,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  __mutex_init(&DAT_0015eb30,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  _DAT_0015eaf8 = _DAT_0015eaf8 & 0xffffffffffffff00;
  DAT_0015eab8 = 0;
  DAT_0015eac0 = 0;
  __mutex_init(&DAT_0015eac8,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  if (syna_cdev_create_cdev_major_num == 0) {
    iVar1 = alloc_chrdev_region((uint *)(param_1 + 0x380),0,1,"synaptics_tcm");
    if (-1 < iVar1) {
      syna_cdev_create_cdev_major_num = *(uint *)(param_1 + 0x380) >> 0x14;
      goto LAB_0013e3c0;
    }
    puVar4 = &DAT_0017ea91;
  }
  else {
    iVar1 = syna_cdev_create_cdev_major_num << 0x14;
    *(int *)(param_1 + 0x380) = iVar1;
    iVar1 = register_chrdev_region(iVar1,1,"synaptics_tcm");
    if (-1 < iVar1) {
LAB_0013e3c0:
      cdev_init(param_1 + 0x2f8,&device_fops);
      *(undefined1 **)(param_1 + 0x358) = &__this_module;
      iVar1 = cdev_add(param_1 + 0x2f8,*(undefined4 *)(param_1 + 0x380),1);
      if (iVar1 < 0) {
        uVar5 = _printk(&DAT_00181f53,"syna_cdev_create");
        return uVar5;
      }
      uVar2 = class_create("synaptics_tcm");
      if (uVar2 < 0xfffffffffffff001) {
        *(code **)(uVar2 + 0x20) = syna_cdev_devnode;
        uVar3 = device_create(uVar2,0,*(uint *)(param_1 + 0x380),0,"tcm%d",
                              *(uint *)(param_1 + 0x380) & 0xfffff);
        if (uVar3 < 0xfffffffffffff001) {
          *(ulong *)(param_1 + 0x390) = uVar3;
          _DAT_0015eb60 = _DAT_0015eb60 & 0xffffffff;
          *(ulong *)(param_1 + 0x388) = uVar2;
          *(undefined4 *)(param_1 + 900) = 0;
          *(long *)(param_1 + 0x4f8) = param_1 + 0x4f8;
          *(long *)(param_1 + 0x500) = param_1 + 0x4f8;
          __init_waitqueue_head(param_1 + 0x508,"&tcm->wait_frame",&syna_cdev_create___key);
          return 0;
        }
        uVar5 = _printk(&DAT_00182582,"syna_cdev_create");
        return uVar5;
      }
      uVar5 = _printk(&DAT_0017fae5,"syna_cdev_create");
      return uVar5;
    }
    puVar4 = &DAT_00181d0b;
  }
  uVar5 = _printk(puVar4,"syna_cdev_create");
  return uVar5;
}



/* 0013e520 device_llseek */

void device_llseek(void)

{
  syna_cdev_llseek();
  return;
}



/* 0013e540 device_read */

void device_read(void)

{
  syna_cdev_read();
  return;
}



/* 0013e560 device_write */

void device_write(void)

{
  syna_cdev_write();
  return;
}



/* 0013e580 device_ioctl */

void device_ioctl(void)

{
  syna_cdev_ioctls();
  return;
}



/* 0013e5a0 device_mmap */

void device_mmap(void)

{
  syna_mmap();
  return;
}



/* 0013e5c0 syna_cdev_read */

ulong syna_cdev_read(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  ulong uVar1;
  undefined8 uVar2;
  
  if (param_3 == 0) {
    uVar1 = 0;
  }
  else {
    uVar2 = *(undefined8 *)(g_cdev_data + 0xa8);
    mutex_lock(&DAT_0015eb00);
    uVar2 = syna_cdev_ioctl_raw_read(uVar2,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff);
    uVar1 = (ulong)(int)uVar2;
    if (uVar1 != param_3) {
      uVar1 = _printk(&DAT_00180ff3,"syna_cdev_read",param_3 & 0xffffffff,uVar2);
      return uVar1;
    }
    mutex_unlock(&DAT_0015eb00);
  }
  return uVar1;
}



/* 0013e664 syna_cdev_remove */

void syna_cdev_remove(long param_1)

{
  long lVar1;
  long *plVar2;
  long lVar3;
  long *plVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_0017df69,"syna_cdev_remove");
    return;
  }
  mutex_lock(&DAT_0015eb30);
  plVar4 = *(long **)(param_1 + 0x4f8);
  while (plVar4 != (long *)(param_1 + 0x4f8)) {
    plVar2 = (long *)plVar4[1];
    if ((plVar4 == (long *)*plVar2) && (lVar3 = *plVar4, *(long **)(lVar3 + 8) == plVar4)) {
      *(long **)(lVar3 + 8) = plVar2;
      *plVar2 = lVar3;
    }
    else {
      __list_del_entry_valid_or_report(plVar4);
    }
    *plVar4 = -0x2152ffffffffff00;
    plVar4[1] = -0x2152fffffffffede;
    kfree(plVar4[2]);
    kfree(plVar4);
    if (*(int *)(param_1 + 0x4f0) != 0) {
      *(int *)(param_1 + 0x4f0) = *(int *)(param_1 + 0x4f0) + -1;
    }
    plVar4 = *(long **)(param_1 + 0x4f8);
  }
  mutex_unlock(&DAT_0015eb30);
  *(undefined4 *)(param_1 + 900) = 0;
  if (*(long *)(param_1 + 0x390) != 0) {
    device_destroy(*(undefined8 *)(param_1 + 0x388),*(undefined4 *)(param_1 + 0x380));
    class_destroy(*(undefined8 *)(param_1 + 0x388));
    cdev_del(param_1 + 0x2f8);
    unregister_chrdev_region(*(undefined4 *)(param_1 + 0x380),1);
  }
  lVar3 = DAT_0015eab8;
  if (DAT_0015eaf8 == '\0') {
    lVar1 = syna_request_managed_device();
    if (lVar1 != 0) {
      if (lVar3 != 0) {
        devm_kfree(lVar1,lVar3);
      }
      *(undefined8 *)(param_1 + 0x388) = 0;
      DAT_0015eac0 = 0;
      DAT_0015eaf8 = 0;
      *(undefined8 *)(param_1 + 0x390) = 0;
      g_cdev_data = 0;
      return;
    }
    _printk(&DAT_001828ba,"syna_pal_mem_free");
    return;
  }
  _printk(&DAT_0017f281,"syna_tcm_buf_release");
  return;
}



/* 0013e7f8 syna_cdev_write */

ulong syna_cdev_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  ulong uVar1;
  undefined8 uVar2;
  
  if (param_3 == 0) {
    uVar1 = 0;
  }
  else {
    uVar2 = *(undefined8 *)(g_cdev_data + 0xa8);
    mutex_lock(&DAT_0015eb00);
    uVar2 = syna_cdev_ioctl_raw_write(uVar2,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff);
    uVar1 = (ulong)(int)uVar2;
    if (uVar1 != param_3) {
      uVar1 = _printk(&DAT_00181030,"syna_cdev_write",param_3 & 0xffffffff,uVar2);
      return uVar1;
    }
    mutex_unlock(&DAT_0015eb00);
  }
  return uVar1;
}



/* 0013e89c syna_charger_notify_call */

undefined8 syna_charger_notify_call(long param_1,long param_2,undefined8 *param_3)

{
  int iVar1;
  char *__s1;
  
  if (param_2 != 0) {
    return 0;
  }
  __s1 = *(char **)*param_3;
  iVar1 = strcmp(__s1,"usb");
  if ((iVar1 == 0) || (((*__s1 == 'a' && (__s1[1] == 'c')) && (__s1[2] == '\0')))) {
    queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -8),param_1 + -0x70,0x7d);
  }
  return 0;
}



/* 0013e924 syna_dev_do_reflash */

void syna_dev_do_reflash(long *param_1,uint param_2)

{
  long lVar1;
  int iVar2;
  undefined4 *local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_30 = (undefined4 *)0x0;
  if (param_1 == (long *)0x0) {
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == local_28) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0xffffffea);
  }
  lVar1 = *param_1;
  iVar2 = request_firmware(&local_30,"syna_firmware.img",*(undefined8 *)(param_1[1] + 0x70));
  if (iVar2 < 0) {
    _printk(&DAT_00180758,"syna_dev_do_reflash","syna_firmware.img");
    return;
  }
  iVar2 = syna_tcm_do_fw_update(lVar1,*(undefined8 *)(local_30 + 2),*local_30,0,param_2 & 1);
  if (iVar2 < 0) {
    _printk(&DAT_0017e18a,"syna_dev_do_reflash");
    return;
  }
  _printk(&DAT_0017f2b4,"syna_dev_do_reflash",*(undefined1 *)(lVar1 + 9));
  return;
}



/* 0013ea2c syna_dev_free_input_events */

void syna_dev_free_input_events(long param_1)

{
  long lVar1;
  int iVar2;
  
  lVar1 = *(long *)(param_1 + 0x3b0);
  if (lVar1 != 0) {
    mutex_lock(param_1 + 0x278);
    iVar2 = 0;
    do {
      input_event(lVar1,3,0x2f,iVar2);
      input_mt_report_slot_state(lVar1,0,0);
      tpd_touch_release(lVar1,iVar2);
      one_key_report(0,0xffffffff,0xffffffff,iVar2);
      iVar2 = iVar2 + 1;
    } while (iVar2 != 10);
    input_event(lVar1,1,0x14a,0);
    input_event(lVar1,1,0x145,0);
    if (DAT_0015fb38._1_1_ != '\0' || (char)DAT_0015fb38 != '\0') {
      DAT_0015fb3a = 1;
      _printk(&DAT_00181d48,"syna_dev_free_input_events");
      return;
    }
    report_ufp_uevent(0);
    input_event(lVar1,0,0,0);
    mutex_unlock(param_1 + 0x278);
  }
  return;
}



/* 0013eb48 syna_dev_get_frame_data */

void syna_dev_get_frame_data(undefined8 param_1,undefined4 param_2)

{
  _printk(&DAT_0017fde7,"syna_dev_get_frame_data",param_2);
  return;
}



/* 0013ebc4 syna_dev_helper_work */

void syna_dev_helper_work(long param_1)

{
  int iVar1;
  long lVar2;
  char cVar3;
  long *plVar4;
  
  if ((*(uint *)(param_1 + -8) & 0xff) == 1) {
    plVar4 = (long *)(param_1 + -0x528);
    lVar2 = *plVar4;
    cVar3 = *(char *)(lVar2 + 9);
    if (cVar3 == '\v') {
      iVar1 = syna_tcm_get_boot_info(lVar2,0,0x14);
      if (-1 < iVar1) {
        _printk(&DAT_0017fb10,"syna_dev_helper_work",*(undefined1 *)(*plVar4 + 0xe1),
                *(undefined1 *)(*plVar4 + 0xe9));
        return;
      }
      lVar2 = *plVar4;
      cVar3 = *(char *)(lVar2 + 9);
      if (cVar3 == '\v') {
        queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -0xf8),param_1 + -0x160,0x19);
        lVar2 = *plVar4;
        cVar3 = *(char *)(lVar2 + 9);
      }
    }
    if (cVar3 == '\x01') {
      if (*(short *)(lVar2 + 0xb2) == 0) {
        _printk(&DAT_0017f2e4,"syna_dev_helper_work");
        return;
      }
      _printk(&DAT_0017e710,"syna_dev_helper_work");
      return;
    }
  }
  *(undefined4 *)(param_1 + -8) = 0;
  return;
}



/* 0013ecfc syna_dev_process_unexpected_reset */

undefined8 syna_dev_process_unexpected_reset(void)

{
  undefined8 uVar1;
  long in_x3;
  
  if (in_x3 == 0) {
    uVar1 = _printk(&unk_38D56,"syna_dev_process_unexpected_reset");
    return uVar1;
  }
  if (*(int *)(in_x3 + 0x57c) != 1) {
    return 0;
  }
  uVar1 = _printk(&unk_32499,"syna_dev_process_unexpected_reset");
  return uVar1;
}



/* 0013eda0 syna_dev_remove */

void syna_dev_remove(long param_1)

{
  if (*(long *)(param_1 + 0xa8) == 0) {
    _printk(&DAT_00181325,"syna_dev_remove");
    return;
  }
  _printk(&DAT_0017f318,"syna_dev_remove");
  return;
}



/* 0013eed8 syna_dev_set_charger_mode */

void syna_dev_set_charger_mode(undefined8 param_1,undefined4 param_2)

{
  _printk(&DAT_0017fde7,"syna_dev_set_charger_mode",param_2);
  return;
}



/* 0013ef4c syna_dev_set_play_game */

void syna_dev_set_play_game(undefined8 param_1,undefined4 param_2)

{
  _printk(&DAT_0017fde7,"syna_dev_set_play_game",param_2);
  return;
}



/* 0013efc0 syna_dev_set_screen_on_fp_mode */

void syna_dev_set_screen_on_fp_mode(void)

{
  _printk(&DAT_001802c2,"syna_dev_set_screen_on_fp_mode");
  return;
}



/* 0013f048 syna_dev_set_up_input_device */

undefined8 syna_dev_set_up_input_device(long *param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  undefined8 *puVar5;
  long lVar6;
  undefined8 uVar7;
  long lVar8;
  
  if (*(char *)(*param_1 + 9) != '\x01') {
    uVar7 = _printk(&DAT_0017e74e,"syna_dev_set_up_input_device");
    return uVar7;
  }
  syna_dev_free_input_events();
  lVar6 = *param_1;
  if ((*(int *)(lVar6 + 0x10) != 0) || (*(int *)(lVar6 + 0x14) != 0)) {
    if (((int)param_1[0x77] == *(int *)(lVar6 + 0x10)) &&
       (*(int *)((long)param_1 + 0x3bc) == *(int *)(lVar6 + 0x14))) {
      if (*(uint *)(param_1 + 0x78) == *(uint *)(lVar6 + 0x18)) {
        if (10 < *(uint *)(param_1 + 0x78)) {
          uVar7 = _printk(&DAT_001828fb,"syna_dev_check_input_params");
          return uVar7;
        }
        uVar7 = _printk(&DAT_00182da9,"syna_dev_check_input_params");
        return uVar7;
      }
    }
    mutex_lock(param_1 + 0x4f);
    if (param_1[0x76] != 0) {
      input_unregister_device();
      param_1[0x76] = 0;
    }
    lVar8 = *param_1;
    lVar6 = syna_request_managed_device();
    if (lVar6 == 0) {
      uVar7 = _printk(&DAT_001828ba,"syna_dev_create_input_device");
      return uVar7;
    }
    puVar5 = (undefined8 *)devm_input_allocate_device();
    if (puVar5 == (undefined8 *)0x0) {
      uVar7 = _printk(&DAT_001807a7,"syna_dev_create_input_device");
      return uVar7;
    }
    *puVar5 = "synaptics_tcm_touch";
    puVar5[1] = "synaptics_tcm/touch_input";
    *(undefined4 *)((long)puVar5 + 0x1c) = 0x10001;
    uVar7 = *(undefined8 *)(param_1[1] + 0x70);
    puVar5[0x59] = param_1;
    puVar5[0x52] = uVar7;
    puVar1 = puVar5 + 5;
    Hint_Prefetch(puVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
      if (bVar3) {
        *puVar1 = *puVar1 | 1;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
    puVar1 = puVar5 + 5;
    Hint_Prefetch(puVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
      if (bVar3) {
        *puVar1 = *puVar1 | 2;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
    puVar1 = puVar5 + 5;
    Hint_Prefetch(puVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
      if (bVar3) {
        *puVar1 = *puVar1 | 8;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
    puVar1 = puVar5 + 0xb;
    Hint_Prefetch(puVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
      if (bVar3) {
        *puVar1 = *puVar1 | 0x400;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
    puVar1 = puVar5 + 0xb;
    Hint_Prefetch(puVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
      if (bVar3) {
        *puVar1 = *puVar1 | 0x20;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
    puVar1 = puVar5 + 4;
    Hint_Prefetch(puVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
      if (bVar3) {
        *puVar1 = *puVar1 | 2;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
    puVar1 = puVar5 + 8;
    Hint_Prefetch(puVar1,2,0,1);
    do {
      cVar2 = '\x01';
      bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
      if (bVar3) {
        *puVar1 = *puVar1 | 0x8000;
        cVar2 = ExclusiveMonitorsStatus();
      }
    } while (cVar2 != '\0');
    input_set_capability(puVar5,1,0x8f);
    input_set_abs_params(puVar5,0x35,0,*(undefined4 *)(lVar8 + 0x10),0,0);
    input_set_abs_params(puVar5,0x36,0,*(undefined4 *)(lVar8 + 0x14),0,0);
    input_mt_init_slots(puVar5,*(undefined4 *)(lVar8 + 0x18),2);
    input_set_abs_params(puVar5,0x30,0,0xff,0,0);
    input_set_abs_params(puVar5,0x31,0,0xff,0,0);
    *(undefined4 *)(param_1 + 0x77) = *(undefined4 *)(lVar8 + 0x10);
    *(undefined4 *)((long)param_1 + 0x3bc) = *(undefined4 *)(lVar8 + 0x14);
    *(undefined4 *)(param_1 + 0x78) = *(undefined4 *)(lVar8 + 0x18);
    iVar4 = input_register_device(puVar5);
    if (iVar4 < 0) {
      uVar7 = _printk(&DAT_0018077a,"syna_dev_create_input_device");
      return uVar7;
    }
    param_1[0x76] = (long)puVar5;
    iVar4 = syna_tcm_set_report_dispatcher(*param_1,0x11,syna_dev_process_touch_report,param_1);
    if (iVar4 < 0) {
      uVar7 = _printk(&DAT_0017fe08,"syna_dev_set_up_input_device");
      return uVar7;
    }
    mutex_unlock(param_1 + 0x4f);
  }
  return 0;
}



/* 0013f420 syna_ghost_check_reset */

void syna_ghost_check_reset(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  syna_dev_free_input_events(lVar1);
  syna_spi_hw_reset(*(undefined8 *)(lVar1 + 0x270));
  syna_recovery_game_mode_after_reset(lVar1);
  syna_dev_set_screen_on_fp_mode(lVar1,0);
  _printk(&DAT_00181f8b,"syna_ghost_check_reset");
  return;
}



/* 0013f484 syna_hw_interface_init */

void syna_hw_interface_init(void)

{
  _printk(&DAT_0017f32d,"syna_hw_interface_init");
  return;
}



/* 0013f54c syna_ioctl */

void syna_ioctl(long param_1,int param_2,ulong param_3)

{
  long lVar1;
  undefined8 uVar2;
  ulong uVar3;
  undefined8 *puVar4;
  ulong uVar5;
  long lVar6;
  undefined8 local_58;
  undefined8 local_50;
  undefined8 uStack_48;
  undefined8 local_40;
  undefined8 uStack_38;
  undefined4 local_2c;
  long local_28;
  
  lVar6 = sp_el0;
  local_28 = *(long *)(lVar6 + 0x710);
  lVar6 = *(long *)(param_1 + 0x20);
  local_2c = 0;
  if (param_2 == -0x3ffb8ffd) {
    local_2c = *(undefined4 *)(lVar6 + 0x438);
    mutex_lock(lVar6 + 0x470);
    puVar4 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar4 + 0x46) >> 5 & 1) != 0) ||
       (uVar5 = param_3, ((uint)*puVar4 >> 0x1a & 1) != 0)) {
      uVar5 = param_3 & (long)(param_3 << 8) >> 8;
    }
    if (uVar5 < 0x7ffffffffd) {
      uVar2 = daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar3 = puVar4[1];
      uVar5 = ttbr1_el1;
      ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
      ttbr0_el1 = uVar3;
      InstructionSynchronizationBarrier();
      daif = uVar2;
      lVar1 = __arch_copy_to_user(uVar3,param_3 & 0xff7fffffffffffff,&local_2c,4);
      puVar4 = (undefined8 *)daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar5 = ttbr1_el1;
      ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar5 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar4;
LAB_0013f740:
      if (lVar1 == 0) {
        mutex_unlock(puVar4,lVar6 + 0x470);
        uVar2 = 0;
        goto LAB_0013f788;
      }
    }
  }
  else {
    if (param_2 != -0x3ffb8ffe) {
      if (param_2 == -0x3ffb8fff) {
        if (*(int *)(lVar6 + 0x5e0) == 0) {
          uVar2 = 0xfffffffffffffff5;
        }
        else {
          if (*(int *)(lVar6 + 0x468) == 0) {
            local_40 = 0;
            uStack_38 = 0;
            local_50 = 0;
            uStack_48 = 0;
            local_58 = 0;
            init_wait_entry(&local_58,0);
            while( true ) {
              lVar1 = prepare_to_wait_event(lVar6 + 0x448,&local_58,1);
              if (*(int *)(lVar6 + 0x468) != 0) break;
              if (lVar1 != 0) goto LAB_0013f780;
              schedule();
            }
            finish_wait(lVar6 + 0x448,&local_58);
          }
LAB_0013f780:
          uVar2 = 0;
          *(undefined4 *)(lVar6 + 0x468) = 0;
        }
      }
      else {
        uVar2 = 0xffffffffffffffe7;
      }
      goto LAB_0013f788;
    }
    local_2c = *(undefined4 *)(lVar6 + 0x5e0);
    mutex_lock(lVar6 + 0x470);
    puVar4 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar4 + 0x46) >> 5 & 1) != 0) ||
       (uVar5 = param_3, ((uint)*puVar4 >> 0x1a & 1) != 0)) {
      uVar5 = param_3 & (long)(param_3 << 8) >> 8;
    }
    if (uVar5 < 0x7ffffffffd) {
      uVar2 = daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar3 = puVar4[1];
      uVar5 = ttbr1_el1;
      ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
      ttbr0_el1 = uVar3;
      InstructionSynchronizationBarrier();
      daif = uVar2;
      lVar1 = __arch_copy_to_user(uVar3,param_3 & 0xff7fffffffffffff,&local_2c,4);
      puVar4 = (undefined8 *)daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar5 = ttbr1_el1;
      ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar5 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar4;
      goto LAB_0013f740;
    }
  }
  mutex_unlock(puVar4,lVar6 + 0x470);
  uVar2 = 0xfffffffffffffff2;
LAB_0013f788:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 0013f7c4 syna_pal_mem_cpy_1 */

undefined8 syna_pal_mem_cpy_1(void *param_1,uint param_2,void *param_3,uint param_4,uint param_5)

{
  undefined8 uVar1;
  
  if (param_1 == (void *)0x0) {
    return 0xffffffea;
  }
  if ((param_5 <= param_2) && (param_5 <= param_4)) {
    memcpy(param_1,param_3,(ulong)param_5);
    return 0;
  }
  uVar1 = _printk(&DAT_00181608,"syna_pal_mem_cpy",param_4,param_2);
  return uVar1;
}



/* 0013f83c syna_poll */

undefined4 syna_poll(long param_1,undefined8 *param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x20);
  if (((param_2 != (undefined8 *)0x0) && (lVar3 != -0x448)) &&
     (pcVar2 = (code *)*param_2, pcVar2 != (code *)0x0)) {
    if (*(int *)(pcVar2 + -4) != -0x1a5eeedd) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13f880);
      (*pcVar2)();
    }
    (*pcVar2)();
    DataMemoryBarrier(2,3);
  }
  uVar1 = 0;
  if (*(int *)(lVar3 + 0x468) != 0) {
    uVar1 = 0x41;
  }
  return uVar1;
}



/* 0013f8ac syna_spi_enable_irq */

undefined8 syna_spi_enable_irq(long *param_1,ulong param_2)

{
  undefined *puVar1;
  undefined8 uVar2;
  undefined1 uVar3;
  long lVar4;
  
  lVar4 = *param_1;
  if (lVar4 == 0) {
    uVar2 = _printk(&DAT_00181d7e,"syna_spi_enable_irq");
    return uVar2;
  }
  if (*(int *)(lVar4 + 0xb8) == 0) {
    return 0xfffffffa;
  }
  mutex_lock(lVar4 + 0xc0);
  if ((param_2 & 1) == 0) {
    if (*(byte *)(lVar4 + 0xbc) == 0) {
      puVar1 = &DAT_0017f34b;
      goto LAB_0013f968;
    }
    disable_irq_nosync(*(undefined4 *)(lVar4 + 0xb8));
    uVar3 = 0;
    puVar1 = &UNK_00182bb4;
  }
  else {
    if ((*(byte *)(lVar4 + 0xbc) & 1) != 0) {
      puVar1 = &DAT_0018030a;
      goto LAB_0013f968;
    }
    enable_irq(*(undefined4 *)(lVar4 + 0xb8));
    puVar1 = &DAT_00181fb2;
    uVar3 = 1;
  }
  *(undefined1 *)(lVar4 + 0xbc) = uVar3;
LAB_0013f968:
  uVar2 = _printk(puVar1,"syna_spi_enable_irq");
  return uVar2;
}



/* 0013f988 syna_spi_get_gpio */

undefined8 syna_spi_get_gpio(undefined4 param_1,int param_2,undefined4 param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  undefined *puVar3;
  
  iVar1 = scnprintf(param_4,0x10,"tcm_gpio_%d\n",param_1);
  if (iVar1 < 0) {
    uVar2 = _printk(&DAT_00182319,"syna_spi_get_gpio");
    return uVar2;
  }
  iVar1 = gpio_request(param_1,param_4);
  if (iVar1 < 0) {
    puVar3 = &DAT_00182bd6;
  }
  else {
    uVar2 = gpio_to_desc(param_1);
    if (param_2 == 0) {
      iVar1 = gpiod_direction_input();
    }
    else {
      iVar1 = gpiod_direction_output_raw(uVar2,param_3);
    }
    if (-1 < iVar1) {
      return 0;
    }
    puVar3 = &DAT_00180d4a;
  }
  uVar2 = _printk(puVar3,"syna_spi_get_gpio",param_1);
  return uVar2;
}



/* 0013fa6c syna_spi_hw_reset */

void syna_spi_hw_reset(long param_1)

{
  int iVar1;
  uint uVar2;
  undefined8 uVar3;
  
  if (*(int *)(param_1 + 0xf0) == 0) {
    return;
  }
  uVar2 = *(uint *)(param_1 + 0xf4);
  uVar3 = gpio_to_desc(*(int *)(param_1 + 0xf0));
  gpiod_set_raw_value(uVar3,uVar2 & 1);
  if (0 < *(int *)(param_1 + 0xfc)) {
    msleep();
  }
  iVar1 = *(int *)(param_1 + 0xf4);
  uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0xf0));
  gpiod_set_raw_value(uVar3,iVar1 == 0);
  msleep(0x50);
  _printk(&DAT_0018134d,"syna_spi_hw_reset");
  return;
}



/* 0013fb00 syna_sysfs_create_dir */

undefined8 syna_sysfs_create_dir(long param_1,long param_2)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  
  lVar2 = kobject_create_and_add("sysfs",param_2 + 0x10);
  *(long *)(param_1 + 0x398) = lVar2;
  if (lVar2 == 0) {
    uVar3 = _printk(&DAT_00182ded,"syna_sysfs_create_dir");
    return uVar3;
  }
  iVar1 = sysfs_create_group(lVar2,attr_group);
  if (-1 < iVar1) {
    iVar1 = syna_testing_create_dir(param_1);
    if (-1 < iVar1) {
      return 0;
    }
    uVar3 = _printk(&DAT_0018233f,"syna_sysfs_create_dir");
    return uVar3;
  }
  uVar3 = _printk(&DAT_0017f375,"syna_sysfs_create_dir");
  return uVar3;
}



/* 0013fbd8 syna_sysfs_debug_store */

undefined8
syna_sysfs_debug_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  long lVar4;
  int local_2c;
  long local_28;
  
  lVar4 = sp_el0;
  local_28 = *(long *)(lVar4 + 0x710);
  local_2c = 0;
  lVar4 = *(long *)(*(long *)(param_1 + 0x18) + 0x98);
  iVar1 = kstrtouint(param_3,10,&local_2c);
  if (iVar1 == 0) {
    if (local_2c == 0) {
      if (*(long *)(lVar4 + 0x3a0) != 0) {
        sysfs_remove_group(*(long *)(lVar4 + 0x3a0),attr_debug_group);
        kobject_put(*(undefined8 *)(lVar4 + 0x3a0));
        *(undefined8 *)(lVar4 + 0x3a0) = 0;
      }
    }
    else {
      if ((local_2c != 1) || (*(long *)(lVar4 + 0x3a0) != 0)) {
        uVar3 = _printk(&DAT_0017e1ac,"syna_sysfs_debug_store");
        return uVar3;
      }
      lVar2 = kobject_create_and_add("utility",*(undefined8 *)(lVar4 + 0x398));
      *(long *)(lVar4 + 0x3a0) = lVar2;
      if (lVar2 == 0) {
        uVar3 = _printk(&DAT_0017e7b5,"syna_sysfs_debug_store");
        return uVar3;
      }
      iVar1 = sysfs_create_group(lVar2,attr_debug_group);
      if (iVar1 < 0) {
        uVar3 = _printk(&DAT_0017eafd,"syna_sysfs_debug_store");
        return uVar3;
      }
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013fd14 syna_sysfs_pwr_store */

long syna_sysfs_pwr_store(long param_1,undefined8 param_2,char *param_3,int param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(*(long *)(param_1 + 0x18) + 0x18);
  lVar4 = *(long *)(lVar3 + 0x98);
  if ((*(byte *)(lVar4 + 0x582) & 1) == 0) {
    lVar3 = _printk(&DAT_0017fb4c,"syna_sysfs_pwr_store");
    return lVar3;
  }
  iVar1 = strncmp(param_3,"resume",6);
  if (iVar1 == 0) {
    pcVar2 = *(code **)(lVar4 + 0x6c0);
  }
  else {
    iVar1 = strncmp(param_3,"suspend",7);
    if (iVar1 != 0) {
      lVar3 = _printk(&DAT_0017e551,"syna_sysfs_pwr_store",param_3);
      return lVar3;
    }
    pcVar2 = *(code **)(lVar4 + 0x6c8);
  }
  if (pcVar2 != (code *)0x0) {
    if (*(int *)(pcVar2 + -4) != 0x2a703c0b) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13fd98);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3);
  }
  return (long)param_4;
}



/* 0013fd88 FUN_0013fd88 */

long FUN_0013fd88(code *param_1)

{
  code *pcVar1;
  uint in_w16;
  uint in_w17;
  int unaff_w19;
  
  if (in_w16 != (in_w17 & 0xffff | 0x2a700000)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x13fd98);
    (*pcVar1)();
  }
  (*param_1)();
  return (long)unaff_w19;
}



/* 0013fe00 syna_sysfs_remove_dir */

void syna_sysfs_remove_dir(long param_1)

{
  if (param_1 != 0) {
    if (*(long *)(param_1 + 0x398) != 0) {
      syna_testing_remove_dir(param_1);
      if (*(long *)(param_1 + 0x3a0) != 0) {
        sysfs_remove_group(*(long *)(param_1 + 0x3a0),attr_debug_group);
        kobject_put(*(undefined8 *)(param_1 + 0x3a0));
      }
      sysfs_remove_group(*(undefined8 *)(param_1 + 0x398),attr_group);
      kobject_put(*(undefined8 *)(param_1 + 0x398));
    }
    return;
  }
  _printk(&DAT_0017eb2d,"syna_sysfs_remove_dir");
  return;
}



/* 0013fe84 syna_tcm_buf_unlock_0 */

void syna_tcm_buf_unlock_0(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\x01') {
    *(undefined1 *)(param_1 + 0x40) = 0;
    mutex_unlock(param_1 + 0x10);
    return;
  }
  _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
  return;
}



/* 0013fef0 syna_tcm_detect_device */

undefined8 syna_tcm_detect_device(long param_1,uint param_2,uint param_3)

{
  int iVar1;
  undefined8 uVar2;
  undefined1 *puVar3;
  
  if (param_1 == 0) {
    puVar3 = &DAT_0017eb2d;
  }
  else {
    *(undefined2 *)(param_1 + 8) = 0;
    if ((param_2 & 0xf) == 1) {
      iVar1 = syna_tcm_v1_detect(param_1,param_2 >> 7 & 1,param_3 & 1);
      if (iVar1 < 0) {
        if (*(int *)(param_1 + 0x248) != 0) {
          puVar3 = *(undefined1 **)(param_1 + 0x240);
          uVar2 = _printk(&DAT_0017e7f5,"syna_tcm_detect_device",*puVar3,puVar3[1],puVar3[2],
                          puVar3[3]);
          return uVar2;
        }
        uVar2 = 0xffffff0b;
      }
      else {
        if ((*(long *)(param_1 + 0x398) == 0) || (*(long *)(param_1 + 0x390) == 0)) {
          uVar2 = _printk(&DAT_001825f9,"syna_tcm_detect_device");
          return uVar2;
        }
        if ((param_2 >> 7 & 1) == 0) {
          if (*(char *)(param_1 + 9) == '\v') {
            uVar2 = _printk(&DAT_00182c13,"syna_tcm_detect_device");
            return uVar2;
          }
          if (*(char *)(param_1 + 9) == '\x01') {
            uVar2 = _printk(&DAT_0017df99,"syna_tcm_detect_device",*(undefined4 *)(param_1 + 0xc),
                            param_1 + 0x82);
            return uVar2;
          }
          uVar2 = _printk(&DAT_0018165b,"syna_tcm_detect_device");
          return uVar2;
        }
        uVar2 = 1;
      }
      return uVar2;
    }
    if ((param_2 & 0xf) == 2) {
      uVar2 = _printk(&DAT_0017e572,"syna_tcm_detect_device",2);
      return uVar2;
    }
    puVar3 = &DAT_0017f39f;
  }
  uVar2 = _printk(puVar3,"syna_tcm_detect_device");
  return uVar2;
}



/* 00140080 syna_tcm_enable_predict_reading */

void syna_tcm_enable_predict_reading(long param_1,byte param_2)

{
  char *pcVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_0017eb2d,"syna_tcm_enable_predict_reading");
    return;
  }
  *(byte *)(param_1 + 0x37a) = param_2 & 1;
  *(undefined4 *)(param_1 + 0x37c) = 0;
  pcVar1 = "enabled";
  if ((param_2 & 1) == 0) {
    pcVar1 = "disabled";
  }
  _printk(&DAT_0017f8f2,"syna_tcm_enable_predict_reading",pcVar1);
  return;
}



/* 001400f4 syna_tcm_enable_report */

void syna_tcm_enable_report(long param_1,undefined1 param_2,ulong param_3,int param_4)

{
  char *pcVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined4 uVar5;
  undefined1 local_3c [4];
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_3c[0] = param_2;
  if (param_1 == 0) {
    _printk(&DAT_0017eb2d,"syna_tcm_enable_report");
    return;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_0017edfb,"syna_tcm_enable_report");
    return;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00182628,"syna_tcm_enable_report");
      return;
    }
    param_4 = 0;
  }
  uVar5 = 5;
  if ((param_3 & 1) == 0) {
    uVar5 = 6;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x140184);
    (*pcVar3)();
  }
  iVar4 = (**(code **)(param_1 + 0x398))(param_1,uVar5,local_3c,1,0,param_4);
  if (iVar4 < 0) {
    pcVar1 = "enable";
    if ((param_3 & 1) == 0) {
      pcVar1 = "disable";
    }
    _printk(&DAT_00181b46,"syna_tcm_enable_report",uVar5,pcVar1,local_3c[0]);
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00140264 syna_tcm_get_event_data */

undefined8 syna_tcm_get_event_data(long param_1,byte *param_2,long param_3)

{
  byte bVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  
  if (param_1 == 0) {
    puVar5 = &DAT_0017eb2d;
LAB_00140328:
    uVar4 = _printk(puVar5,"syna_tcm_get_event_data");
    return uVar4;
  }
  if (param_2 == (byte *)0x0) {
    puVar5 = &DAT_00180da7;
    goto LAB_00140328;
  }
  if (*(int *)(*(code **)(param_1 + 0x390) + -4) != -0x1ef225df) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1402ac);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x390))(param_1,param_2);
  if ((int)uVar4 < 0) {
    uVar4 = _printk(&DAT_00181fd3,"syna_tcm_get_event_data");
    return uVar4;
  }
  if (param_3 != 0) {
    bVar1 = *param_2;
    if (0xffffff10 < bVar1 - 0xff) {
      if (*(int *)(param_1 + 0x10c) == 0) {
        return uVar4;
      }
      iVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x100);
      bVar1 = *param_2;
      if (iVar3 < 0) {
        puVar6 = &DAT_0018266b;
        goto LAB_00140374;
      }
      uVar4 = 0;
    }
    if ((bVar1 - 1 < 0xf) && (*(int *)(param_1 + 0x154) != 0)) {
      iVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
      if (iVar3 < 0) {
        bVar1 = *param_2;
        puVar6 = &DAT_00182e6d;
LAB_00140374:
        uVar4 = _printk(puVar6,"syna_tcm_get_event_data",bVar1);
        return uVar4;
      }
      uVar4 = 0;
    }
  }
  return uVar4;
}



/* 001403a4 syna_tcm_set_custom_gesture_callback */

undefined8 syna_tcm_set_custom_gesture_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uVar1;
  
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x3d0) = param_2;
    *(undefined8 *)(param_1 + 0x3c8) = param_3;
    return 0;
  }
  uVar1 = _printk(&DAT_0017eb2d,"syna_tcm_set_custom_gesture_callback");
  return uVar1;
}



/* 001403f0 syna_tcm_set_custom_touch_entity_callback */

undefined8
syna_tcm_set_custom_touch_entity_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uVar1;
  
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x3c0) = param_2;
    *(undefined8 *)(param_1 + 0x3b8) = param_3;
    return 0;
  }
  uVar1 = _printk(&DAT_0017eb2d,"syna_tcm_set_custom_touch_entity_callback");
  return uVar1;
}



/* 0014043c syna_tcm_set_report_dispatcher */

void syna_tcm_set_report_dispatcher(long param_1,byte param_2,undefined8 param_3,undefined8 param_4)

{
  if (param_1 == 0) {
    _printk(&DAT_0017eb2d,"syna_tcm_set_report_dispatcher");
    return;
  }
  if (param_2 < 0x10) {
    _printk(&DAT_00182c37,"syna_tcm_set_report_dispatcher",param_2);
    return;
  }
  param_1 = param_1 + (ulong)param_2 * 0x10;
  *(undefined8 *)(param_1 + 0x3e0) = param_3;
  *(undefined8 *)(param_1 + 0x3d8) = param_4;
  _printk(&DAT_0017eb56,"syna_tcm_set_report_dispatcher",param_2);
  return;
}



/* 001404fc syna_tcm_testing_0500_check_lower_bound */

ulong syna_tcm_testing_0500_check_lower_bound
                (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  ushort uVar2;
  ulong uVar3;
  
  uVar1 = *param_1;
  uVar2 = *param_2;
  if (uVar2 <= uVar1) {
    return (ulong)(uVar2 <= uVar1);
  }
  uVar3 = _printk(&unk_34372,"syna_tcm_testing_0500_check_lower_bound",param_4,param_3,uVar1,uVar2);
  return uVar3;
}



/* 00140564 syna_tcm_testing_0500_check_upper_bound */

ulong syna_tcm_testing_0500_check_upper_bound
                (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  ushort uVar2;
  ulong uVar3;
  
  uVar1 = *param_1;
  uVar2 = *param_2;
  if (uVar1 <= uVar2) {
    return (ulong)(uVar1 <= uVar2);
  }
  uVar3 = _printk(&unk_3C643,"syna_tcm_testing_0500_check_upper_bound",param_4,param_3,uVar1,uVar2);
  return uVar3;
}



/* 001405cc syna_tcm_testing_0A00_check_lower_bound */

ulong syna_tcm_testing_0A00_check_lower_bound
                (short *param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  ulong uVar3;
  
  sVar1 = *param_1;
  sVar2 = *param_2;
  if (sVar2 <= sVar1) {
    return (ulong)((int)sVar2 <= (int)sVar1);
  }
  uVar3 = _printk(&unk_34372,"syna_tcm_testing_0A00_check_lower_bound",param_4,param_3,(int)sVar1,
                  (int)sVar2);
  return uVar3;
}



/* 00140634 syna_tcm_testing_0A00_check_upper_bound */

ulong syna_tcm_testing_0A00_check_upper_bound
                (short *param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  ulong uVar3;
  
  sVar1 = *param_1;
  sVar2 = *param_2;
  if (sVar1 <= sVar2) {
    return (ulong)((int)sVar1 <= (int)sVar2);
  }
  uVar3 = _printk(&unk_3C643,"syna_tcm_testing_0A00_check_upper_bound",param_4,param_3,(int)sVar1,
                  (int)sVar2);
  return uVar3;
}



/* 0014069c syna_tcm_v1_check_max_rw_size */

undefined8 syna_tcm_v1_check_max_rw_size(long param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ushort uVar4;
  undefined1 *puVar5;
  undefined8 uVar6;
  
  if (param_1 == 0) {
    puVar5 = &DAT_0017eb2d;
  }
  else if (*(char *)(param_1 + 0x80) == '\x01') {
    uVar4 = *(ushort *)(param_1 + 0x96);
    if (uVar4 != 0) {
      uVar3 = *(uint *)(param_1 + 0x40);
      uVar1 = (uint)uVar4;
      if (uVar3 <= uVar4) {
        uVar1 = uVar3;
      }
      uVar2 = (uint)uVar4;
      if (uVar3 != 0) {
        uVar2 = uVar1;
      }
      if (*(uint *)(param_1 + 0x38) != uVar2) {
        *(uint *)(param_1 + 0x38) = uVar2;
      }
      if ((uVar3 != 0) && (*(uint *)(param_1 + 0x44) < *(uint *)(param_1 + 0x3c))) {
        *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x44);
      }
      return 0;
    }
    puVar5 = &DAT_00180500;
  }
  else {
    puVar5 = &DAT_0018037c;
  }
  uVar6 = _printk(puVar5,"syna_tcm_v1_check_max_rw_size");
  return uVar6;
}



/* 00140744 syna_tcm_v1_terminate */

void syna_tcm_v1_terminate(long param_1)

{
  if (param_1 == 0) {
    _printk(&unk_3365A,"syna_tcm_v1_terminate");
    return;
  }
  if (*(int *)(param_1 + 0x1f8) != 1) {
    return;
  }
  _printk(&unk_3B33C,"syna_tcm_v1_terminate",*(undefined1 *)(param_1 + 0x1fc));
  return;
}



/* 001407d0 syna_testing_create_dir */

undefined8 syna_testing_create_dir(long param_1)

{
  int iVar1;
  long lVar2;
  undefined8 uVar3;
  
  lVar2 = kobject_create_and_add("testing",*(undefined8 *)(param_1 + 0x398));
  *(long *)(param_1 + 0x3a8) = lVar2;
  if (lVar2 == 0) {
    uVar3 = _printk(&DAT_00181086,"syna_testing_create_dir");
    return uVar3;
  }
  iVar1 = sysfs_create_group(lVar2,attr_testing_group);
  if (-1 < iVar1) {
    return 0;
  }
  uVar3 = _printk(&DAT_0017f375,"syna_testing_create_dir");
  return uVar3;
}



/* 0014086c syna_testing_pt01_zte */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt01_zte(undefined8 *param_1)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  long lVar6;
  undefined4 *puVar7;
  ulong uVar8;
  long lVar9;
  uint uVar10;
  undefined1 *local_a0;
  undefined8 local_98;
  long local_90;
  undefined8 local_88;
  uint uStack_84;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  ulong local_50;
  long local_48;
  
  lVar6 = sp_el0;
  local_48 = *(long *)(lVar6 + 0x710);
  local_98 = 0;
  local_58 = 0;
  local_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_80 = 0;
  lVar6 = __kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
  if (lVar6 == 0) {
    uVar8 = _printk(&DAT_00182942,"syna_testing_pt01_zte");
    return uVar8;
  }
  puVar7 = (undefined4 *)syna_tcm_get_testing_0100();
  if (puVar7 == (undefined4 *)0x0) {
    uVar8 = scnprintf(lVar6,0x1000,"Invalid testing item id:%d\n",0x100);
    uVar8 = uVar8 & 0xffffffff;
  }
  else {
    local_50 = local_50 & 0xffffffffffffff00;
    local_90 = 0;
    local_88 = 0;
    __mutex_init(&local_80,"(struct mutex *)ptr",&syna_testing_pt01_zte___key);
    *(long **)(puVar7 + 0x36) = &local_90;
    *(undefined1 ***)(puVar7 + 0xe) = &local_a0;
    local_a0 = pt01_limits;
    local_98 = CONCAT44(local_98._4_4_,0x10);
    if (*(int *)(*(code **)(puVar7 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8229,0x140944);
      (*pcVar4)();
    }
    iVar5 = (**(code **)(puVar7 + 6))(*param_1,puVar7,0);
    if (iVar5 < 0) {
      uVar8 = _printk(&DAT_001830c0,"syna_testing_pt01_zte",*(undefined8 *)(puVar7 + 2));
      return uVar8;
    }
    puVar2 = &DAT_00181922;
    if (*(char *)(puVar7 + 4) == '\0') {
      puVar2 = &DAT_001810b6;
    }
    uVar8 = scnprintf(lVar6,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar7 + 2),*puVar7,
                      puVar2);
    uVar8 = uVar8 & 0xffffffff;
    if (uStack_84 != 0) {
      uVar10 = 0;
      do {
        iVar5 = scnprintf(lVar6 + uVar8,0x1000 - uVar8,"x%02X ",
                          *(undefined1 *)(local_90 + (int)uVar10));
        uVar10 = uVar10 + 1;
        uVar1 = iVar5 + (int)uVar8;
        uVar8 = (ulong)uVar1;
      } while (uVar10 < uStack_84);
      iVar5 = scnprintf(lVar6 + uVar8,0x1000 - uVar8,&DAT_00181367);
      uVar8 = (ulong)(iVar5 + uVar1);
    }
    tpd_copy_to_tp_firmware_data(lVar6);
    lVar3 = local_90;
    if ((char)local_50 != '\0') {
      uVar8 = _printk(&DAT_0017f281,"syna_tcm_buf_release");
      return uVar8;
    }
    lVar9 = syna_request_managed_device();
    if (lVar9 == 0) {
      uVar8 = _printk(&DAT_001828ba,"syna_pal_mem_free");
      return uVar8;
    }
    if (lVar3 != 0) {
      devm_kfree(lVar9,lVar3);
    }
    local_88 = 0;
    local_50 = local_50 & 0xffffffffffffff00;
    kfree(lVar6);
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_48) {
    return uVar8;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00140b20 syna_ts_register_for_panel_events */

void syna_ts_register_for_panel_events(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = panel_event_notifier_register(1,0,active_panel,syna_ts_panel_notifier_callback,param_1);
  if (lVar1 == 0) {
    _printk(&DAT_00181dc5,"syna_ts_register_for_panel_events");
    return;
  }
  _printk(&DAT_0018201d,"syna_ts_register_for_panel_events",active_panel);
  return;
}



/* 00140bac tp_alloc_tp_firmware_data */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 tp_alloc_tp_firmware_data(int param_1)

{
  long lVar1;
  undefined8 uVar2;
  long lVar3;
  
  lVar1 = tpd_cdev;
  lVar3 = *(long *)(tpd_cdev + 0xc58);
  if (lVar3 != 0) {
    if (*(long *)(lVar3 + 8) != 0) {
      vfree();
      *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
      **(undefined8 **)(lVar1 + 0xc58) = 0;
      lVar3 = *(long *)(lVar1 + 0xc58);
    }
    kfree(lVar3);
    *(undefined8 *)(lVar1 + 0xc58) = 0;
  }
  *(undefined4 *)(lVar1 + 0x448) = 0;
  lVar3 = __kmalloc_cache_noprof(___check_object_size,0xdc0,0x18);
  *(long *)(lVar1 + 0xc58) = lVar3;
  if (lVar3 != 0) {
    uVar2 = vmalloc_noprof((long)param_1 + 0x18);
    *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = uVar2;
    if ((*(long **)(lVar1 + 0xc58))[1] != 0) {
      **(long **)(lVar1 + 0xc58) = (long)param_1;
      memset(*(void **)(*(long *)(lVar1 + 0xc58) + 8),0,(long)param_1 + 0x18);
      return 0;
    }
    uVar2 = _printk(&DAT_001826cf);
    return uVar2;
  }
  uVar2 = _printk(&DAT_0017e20e);
  return uVar2;
}



/* 00140d10 tp_ghost_check_work */

void tp_ghost_check_work(void)

{
  long lVar1;
  ulong uVar2;
  
  lVar1 = tpd_cdev;
  uVar2 = tp_ghost_check();
  if ((uVar2 & 1) == 0) {
    ghost_check_reset();
    *(undefined1 *)(lVar1 + 0x488) = 0;
    return;
  }
  _printk(&DAT_001826f5);
  return;
}



/* 00140dc4 tp_palm_mode_read */

void tp_palm_mode_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xfa8);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x140e60);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_0017f04e,"tp_palm_mode_read",*(undefined4 *)(lVar2 + 0x478));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00140eb8 tp_palm_mode_write */

undefined8 tp_palm_mode_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_00180744,"tp_palm_mode_write");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00140f8c tp_pen_only_read */

void tp_pen_only_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xf80);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x141028);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_0017fb9b,"tp_pen_only_read",*(undefined1 *)(lVar2 + 0x441));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00141080 tp_pen_only_write */

undefined8 tp_pen_only_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
  undefined8 uVar5;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar4 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar4 == 0) && (iVar4 = kstrtouint(&local_48,0,&local_4c), iVar4 == 0)) {
    bVar3 = local_4c != 0;
    local_4c = (uint)bVar3;
    *(bool *)(lVar2 + 0x441) = bVar3;
    uVar5 = _printk(&DAT_001830e4,"tp_pen_only_write");
    return uVar5;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00141194 tp_self_test_read */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long tp_self_test_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  code *pcVar4;
  long lVar5;
  
  lVar5 = tpd_cdev;
  if (*param_4 == 0) {
    lVar2 = __kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
    if (lVar2 == 0) {
      lVar5 = _printk(&DAT_0017eb90);
      return lVar5;
    }
    if (*param_4 == 0) {
      pcVar4 = *(code **)(lVar5 + 0xf98);
      if (pcVar4 == (code *)0x0) {
        lVar5 = 0;
      }
      else {
        if (*(int *)(pcVar4 + -4) != 0x64f25fb2) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x14123c);
          (*pcVar4)();
        }
        iVar1 = (*pcVar4)(lVar5,lVar2);
        lVar5 = (long)iVar1;
      }
      simple_read_from_buffer(param_2,param_3,param_4,lVar2,lVar5);
      kfree(lVar2);
      lVar2 = tpd_cdev;
      lVar3 = *(long *)(tpd_cdev + 0xc58);
      if (lVar3 != 0) {
        if (*(long *)(lVar3 + 8) != 0) {
          vfree(*(long *)(lVar3 + 8));
          *(undefined8 *)(*(long *)(lVar2 + 0xc58) + 8) = 0;
          **(undefined8 **)(lVar2 + 0xc58) = 0;
          lVar3 = *(long *)(lVar2 + 0xc58);
        }
        kfree(lVar3);
        *(undefined8 *)(lVar2 + 0xc58) = 0;
      }
      *(undefined4 *)(lVar2 + 0x448) = 0;
      return lVar5;
    }
  }
  return 0;
}



/* 001412fc tp_self_test_write */

undefined8 tp_self_test_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  code *pcVar4;
  
  lVar1 = tpd_cdev;
  iVar2 = tp_alloc_tp_firmware_data(0x100000);
  if (iVar2 != 0) {
    uVar3 = _printk(&DAT_0017f919);
    return uVar3;
  }
  pcVar4 = *(code **)(lVar1 + 4000);
  if (pcVar4 != (code *)0x0) {
    if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x14134c);
      (*pcVar4)();
    }
    (*pcVar4)(lVar1);
  }
  lVar1 = tpd_cdev;
  **(ulong **)(tpd_cdev + 0xc58) = (ulong)*(uint *)(tpd_cdev + 0x448);
  *(undefined4 *)(lVar1 + 0x448) = 0;
  return param_3;
}



/* 00141394 tp_wake_gesture_write */

undefined8 tp_wake_gesture_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_0017e501,"tp_wake_gesture_write");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00141468 tpd_copy_to_tp_firmware_data */

ulong tpd_copy_to_tp_firmware_data(char *param_1)

{
  uint uVar1;
  long lVar2;
  size_t sVar3;
  ulong *puVar4;
  uint uVar5;
  ulong uVar6;
  
  lVar2 = tpd_cdev;
  puVar4 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar4 != (ulong *)0x0) && (puVar4[1] != 0)) {
    uVar6 = *puVar4;
    if (uVar6 != 0) {
      uVar1 = *(uint *)(tpd_cdev + 0x448);
      if (uVar1 < uVar6) {
        sVar3 = strlen(param_1);
        uVar5 = (int)uVar6 - uVar1;
        if (uVar1 + (uint)sVar3 <= uVar6) {
          uVar5 = (uint)sVar3;
        }
        memcpy((void *)(*(long *)(*(long *)(lVar2 + 0xc58) + 8) + (ulong)*(uint *)(lVar2 + 0x448)),
               param_1,(long)(int)uVar5);
        *(uint *)(lVar2 + 0x448) = *(int *)(lVar2 + 0x448) + uVar5;
      }
      else {
        uVar5 = 0;
      }
      return (ulong)uVar5;
    }
    uVar6 = _printk(&DAT_00181b85);
    return uVar6;
  }
  uVar6 = _printk(&DAT_00182966);
  return uVar6;
}



/* 00141534 tpd_get_singlegamegesture */

void tpd_get_singlegamegesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x454) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b8);
  _printk(&unk_32D26,"tpd_get_singlegamegesture",*(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5bc)
         );
  return;
}



/* 0014159c tpd_init_tpinfo */

void tpd_init_tpinfo(void)

{
  _printk(&DAT_0017f318,"tpd_init_tpinfo");
  return;
}



/* 00141620 tpd_probe_work_init */

void tpd_probe_work_init(void)

{
  _printk(&DAT_0017e231,"tpd_probe_work_init");
  return;
}



/* 0014169c tpd_proc_deinit */

void tpd_proc_deinit(void)

{
  if (tpd_proc_dir != 0) {
    remove_proc_entry("ts_information");
    remove_proc_entry("wake_gesture",tpd_proc_dir);
    remove_proc_entry("smart_cover",tpd_proc_dir);
    remove_proc_entry("glove_mode",tpd_proc_dir);
    remove_proc_entry("FW_upgrade",tpd_proc_dir);
    remove_proc_entry("suspend",tpd_proc_dir);
    remove_proc_entry("headset_state",tpd_proc_dir);
    remove_proc_entry("rotation_limit_level",tpd_proc_dir);
    remove_proc_entry("mRotation",tpd_proc_dir);
    remove_proc_entry("single_tap",tpd_proc_dir);
    remove_proc_entry("single_aod",tpd_proc_dir);
    remove_proc_entry("get_noise",tpd_proc_dir);
    remove_proc_entry("edge_report_limit",tpd_proc_dir);
    remove_proc_entry("one_key",tpd_proc_dir);
    remove_proc_entry("play_game",tpd_proc_dir);
    remove_proc_entry("tp_report_rate",tpd_proc_dir);
    remove_proc_entry("follow_hand_level",tpd_proc_dir);
    remove_proc_entry("sensibility",tpd_proc_dir);
    remove_proc_entry("game_partition",tpd_proc_dir);
    remove_proc_entry("pen_only",tpd_proc_dir);
    remove_proc_entry("finger_lock_flag",tpd_proc_dir);
    remove_proc_entry("tp_self_test",tpd_proc_dir);
    remove_proc_entry("tp_palm_mode",tpd_proc_dir);
    remove_proc_entry("fold_state",tpd_proc_dir);
    remove_proc_entry("fake_sleep",tpd_proc_dir);
    remove_proc_entry("screen_off_awake",tpd_proc_dir);
    remove_proc_entry("BBAT_test",tpd_proc_dir);
    remove_proc_entry("frame_data",tpd_proc_dir);
    remove_proc_entry("ghost_debug",tpd_proc_dir);
    remove_proc_entry("touchscreen",0);
    return;
  }
  _printk(&unk_3CE70,"tpd_proc_deinit");
  return;
}



/* 001418c0 tpd_set_singleaodgesture */

void tpd_set_singleaodgesture(long param_1,int param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(uint *)(lVar1 + 0x5b4) = (uint)(0 < param_2);
    *(uint *)(lVar1 + 0x5b0) =
         *(uint *)(lVar1 + 0x5b8) | *(uint *)(lVar1 + 0x5bc) | (uint)(0 < param_2);
    _printk(&unk_3526D,"tpd_set_singleaodgesture");
    return;
  }
  _printk(&unk_3B5E0,"tpd_set_singleaodgesture");
  return;
}



/* 00141974 tpd_set_singlefpgesture */

void tpd_set_singlefpgesture(long param_1,int param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(uint *)(lVar1 + 0x5b8) = (uint)(0 < param_2);
    *(uint *)(lVar1 + 0x5b0) =
         *(uint *)(lVar1 + 0x5b4) | *(uint *)(lVar1 + 0x5bc) | (uint)(0 < param_2);
    _printk(&unk_3526D,"tpd_set_singlefpgesture");
    return;
  }
  _printk(&unk_3B5E0,"tpd_set_singlefpgesture");
  return;
}



/* 00141a28 tpd_set_singlegamegesture */

void tpd_set_singlegamegesture(long param_1,int param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(uint *)(lVar1 + 0x5bc) = (uint)(0 < param_2);
    *(uint *)(lVar1 + 0x5b0) =
         *(uint *)(lVar1 + 0x5b4) | *(uint *)(lVar1 + 0x5b8) | (uint)(0 < param_2);
    _printk(&unk_3526D,"tpd_set_singlegamegesture");
    return;
  }
  _printk(&unk_3B5E0,"tpd_set_singlegamegesture");
  return;
}



/* 00141af0 tpd_test_cmd_show */

void tpd_test_cmd_show(void)

{
  _printk(&unk_34878,"tpd_test_cmd_show");
  return;
}



/* 00141b4c tpd_touch_report */

void tpd_touch_report(undefined8 param_1,undefined2 param_2,undefined2 param_3,undefined2 param_4,
                     char param_5,char param_6)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,param_4);
  input_mt_report_slot_state(param_1,0,1);
  input_event(param_1,1,0x14a,1);
  input_event(param_1,3,0x35,param_2);
  input_event(param_1,3,0x36,param_3);
  if (param_6 != '\0') {
    input_event(param_1,3,0x3a,param_6);
  }
  if (param_5 != '\0') {
    input_event(param_1,3,0x30,param_5);
  }
  mutex_unlock(lVar1 + 0xc90);
  return;
}



/* 00141c4c tpd_workqueue_deinit */

void tpd_workqueue_deinit(void)

{
  _printk(&unk_322AA,"tpd_workqueue_deinit");
  return;
}



/* 00141cec tpd_workqueue_init */

void tpd_workqueue_init(void)

{
  _printk(&DAT_00180152);
  return;
}



/* 00141e74 tpd_zlog_check */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 tpd_zlog_check(uint param_1)

{
  long lVar1;
  long lVar2;
  code *pcVar3;
  undefined4 uVar4;
  ulong uVar5;
  undefined8 uVar6;
  ulong uVar7;
  
  if (0x12 < param_1) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x141f20);
    (*pcVar3)();
  }
  uVar7 = (ulong)param_1;
  lVar1 = tpd_cdev + 0xab8;
  if (*(long *)(lVar1 + (ulong)param_1 * 8) != 0) {
    lVar2 = tpd_cdev + 0xb50;
    uVar5 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar7 * 8));
    if (((uint)(uVar5 >> 5) & 0x7ffffff) < 0x753) {
      uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar7 * 8));
      uVar6 = _printk(&DAT_0017e013,uVar4,uVar7);
      return uVar6;
    }
  }
  *(long *)(lVar1 + uVar7 * 8) = *(long *)(lVar1 + uVar7 * 8) + 1;
  return 0;
}



/* 00141f24 tpd_zlog_init */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_zlog_init(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  *(undefined8 *)(tpd_cdev + 0xbe8) = 0;
  *(undefined1 *)(lVar1 + 0xbf0) = 0;
  *(undefined8 *)(lVar1 + 0xbf8) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb50) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb58) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb60) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb68) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb70) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb78) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb80) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb88) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb90) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb98) = _jiffies;
  *(undefined8 *)(lVar1 + 0xba0) = _jiffies;
  *(undefined8 *)(lVar1 + 0xba8) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbb0) = _jiffies;
  *(undefined8 *)(lVar1 + 3000) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbc0) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbc8) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbd0) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbd8) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbe0) = _jiffies;
  return;
}



/* 00141fe0 tpd_zlog_record_notify */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_zlog_record_notify(undefined4 param_1)

{
  long lVar1;
  long lVar2;
  uint uVar3;
  undefined4 uVar4;
  size_t sVar5;
  ulong uVar6;
  long lVar7;
  char *__s;
  
  lVar1 = tpd_cdev;
  if ((*(byte *)(tpd_cdev + 0xbf0) & 1) == 0) {
    tpd_zlog_register(tpd_cdev);
  }
  if ((*(long *)(lVar1 + 0xa48) == 0) || (*(long *)(lVar1 + 0xbe8) == 0)) {
    _printk(&DAT_0017e266);
    return;
  }
  uVar3 = jiffies_to_msecs(_jiffies - *(long *)(lVar1 + 0xbf8));
  __s = *(char **)(lVar1 + 0xbe8);
  sVar5 = strlen(__s);
  snprintf(__s + (int)sVar5,(long)(0x800 - (int)sVar5),
           " IC name: %s,module name:%s, Firmware version: 0x%x",PTR_s_Unknown_00130748,
           PTR_s_Unknown_00130740,(ulong)*(uint *)(lVar1 + 0xd00));
  lVar2 = tpd_cdev;
  switch(param_1) {
  case 1:
    if (*(long *)(tpd_cdev + 0xac0) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb58));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb58));
        _printk(&DAT_0017e013,uVar4,1);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xac0) + 1;
    }
    *(long *)(lVar2 + 0xac0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb58) = _jiffies;
      _printk(&DAT_00182985,*(undefined8 *)(lVar1 + 0xac0),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 2:
    if (*(long *)(tpd_cdev + 0xac8) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb60));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb60));
        _printk(&DAT_0017e013,uVar4,2);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xac8) + 1;
    }
    *(long *)(lVar2 + 0xac8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb60) = _jiffies;
      _printk(&DAT_00182721,*(undefined8 *)(lVar1 + 0xac8),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 3:
    if (*(long *)(tpd_cdev + 0xad0) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb68));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb68));
        _printk(&DAT_0017e013,uVar4,3);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xad0) + 1;
    }
    *(long *)(lVar2 + 0xad0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb68) = _jiffies;
      _printk(&DAT_0017e8be,*(undefined8 *)(lVar1 + 0xad0),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 4:
    if (*(long *)(tpd_cdev + 0xad8) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb70));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb70));
        _printk(&DAT_0017e013,uVar4,4);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xad8) + 1;
    }
    *(long *)(lVar2 + 0xad8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb70) = _jiffies;
      _printk(&DAT_0017f44b,*(undefined8 *)(lVar1 + 0xad8),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 5:
    if (*(long *)(tpd_cdev + 0xae0) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb78));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb78));
        _printk(&DAT_0017e013,uVar4,5);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xae0) + 1;
    }
    *(long *)(lVar2 + 0xae0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb78) = _jiffies;
      _printk(&DAT_0018274e,*(undefined8 *)(lVar1 + 0xae0),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 6:
    if (*(long *)(tpd_cdev + 0xae8) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb80));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb80));
        _printk(&DAT_0017e013,uVar4,6);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xae8) + 1;
    }
    *(long *)(lVar2 + 0xae8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb80) = _jiffies;
      _printk(&DAT_0017e5d0,*(undefined8 *)(lVar1 + 0xae8),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 7:
    if (*(long *)(tpd_cdev + 0xaf0) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb88));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb88));
        _printk(&DAT_0017e013,uVar4,7);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xaf0) + 1;
    }
    *(long *)(lVar2 + 0xaf0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb88) = _jiffies;
      _printk(&DAT_00182ef9,*(undefined8 *)(lVar1 + 0xaf0),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 8:
    if (*(long *)(tpd_cdev + 0xaf8) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb90));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb90));
        _printk(&DAT_0017e013,uVar4,8);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xaf8) + 1;
    }
    *(long *)(lVar2 + 0xaf8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb90) = _jiffies;
      _printk(&DAT_00180e2e,*(undefined8 *)(lVar1 + 0xaf8),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 9:
    if (*(long *)(tpd_cdev + 0xb00) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb98));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb98));
        _printk(&DAT_0017e013,uVar4,9);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb00) + 1;
    }
    *(long *)(lVar2 + 0xb00) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb98) = _jiffies;
      _printk(&DAT_0017e912,*(undefined8 *)(lVar1 + 0xb00),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 10:
    if (*(long *)(tpd_cdev + 0xb08) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xba0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xba0));
        _printk(&DAT_0017e013,uVar4,10);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb08) + 1;
    }
    *(long *)(lVar2 + 0xb08) = lVar7;
    *(long *)(lVar1 + 0xba0) = _jiffies;
    _printk(&DAT_001813a1,*(undefined8 *)(lVar1 + 0xb08),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xb:
    if (*(long *)(tpd_cdev + 0xb10) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xba8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xba8));
        _printk(&DAT_0017e013,uVar4,0xb);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb10) + 1;
    }
    *(long *)(lVar2 + 0xb10) = lVar7;
    *(long *)(lVar1 + 0xba8) = _jiffies;
    _printk(&DAT_0017fe6d,*(undefined8 *)(lVar1 + 0xb10),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xc:
    if (*(long *)(tpd_cdev + 0xb18) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbb0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbb0));
        _printk(&DAT_0017e013,uVar4,0xc);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb18) + 1;
    }
    *(long *)(lVar2 + 0xb18) = lVar7;
    *(long *)(lVar1 + 0xbb0) = _jiffies;
    _printk(&DAT_00182069,*(undefined8 *)(lVar1 + 0xb18),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xd:
    _printk(&DAT_001816fb,*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xe:
    _printk(&DAT_001807ee,*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xf:
    if (*(long *)(tpd_cdev + 0xb30) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbc8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbc8));
        _printk(&DAT_0017e013,uVar4,0xf);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb30) + 1;
    }
    *(long *)(lVar2 + 0xb30) = lVar7;
    *(long *)(lVar1 + 0xbc8) = _jiffies;
    _printk(&DAT_0017e93f,*(undefined8 *)(lVar1 + 0xb30),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0x10:
    if (*(long *)(tpd_cdev + 0xb38) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbd0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbd0));
        _printk(&DAT_0017e013,uVar4,0x10);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb38) + 1;
    }
    *(long *)(lVar2 + 0xb38) = lVar7;
    *(long *)(lVar1 + 0xbd0) = _jiffies;
    _printk(&DAT_0017e286,*(undefined8 *)(lVar1 + 0xb38),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0x11:
    if (*(long *)(tpd_cdev + 0xb40) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbd8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbd8));
        _printk(&DAT_0017e013,uVar4,0x11);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb40) + 1;
    }
    *(long *)(lVar2 + 0xb40) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xbd8) = _jiffies;
      _printk(&DAT_001810fd,*(undefined8 *)(lVar1 + 0xb40),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 0x12:
    if (*(long *)(tpd_cdev + 0xb48) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbe0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbe0));
        _printk(&DAT_0017e013,uVar4,0x12);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb48) + 1;
    }
    *(long *)(lVar2 + 0xb48) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xbe0) = _jiffies;
      _printk(&DAT_00181131,*(undefined8 *)(lVar1 + 0xb48),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
  }
  memset(*(void **)(lVar1 + 0xbe8),0,0x800);
  return;
}



/* 00142d60 tpd_zlog_register */

void tpd_zlog_register(long param_1)

{
  long lVar1;
  
  if (*(long *)(param_1 + 0xa48) != 0) {
    _printk(&DAT_00181167);
    return;
  }
  lVar1 = zlog_register_client(&zlog_tp_dev);
  *(long *)(param_1 + 0xa48) = lVar1;
  if (lVar1 != 0) {
    lVar1 = vmalloc_noprof(0x800);
    *(long *)(param_1 + 0xbe8) = lVar1;
    if (lVar1 != 0) {
      if (*(char *)(param_1 + 0xc00) != -1) {
        if (*(char **)(tpd_cdev + 0xbe8) != (char *)0x0) {
          snprintf(*(char **)(tpd_cdev + 0xbe8),0x800,"tp probe fail, chip id:%d");
        }
        tpd_zlog_record_notify(0xd);
      }
      *(undefined1 *)(param_1 + 0xbf0) = 1;
      return;
    }
    _printk(&DAT_0017f4c6);
    return;
  }
  _printk(&DAT_00180175,"tpd_zlog_register");
  return;
}



/* 00142e6c ufp_mac_init */

undefined8 ufp_mac_init(void)

{
  DAT_0015fb10 = alloc_workqueue(&DAT_0018015f,0x6000a,1,"single_tap_cancel");
  DAT_0015faa8 = 0xfffffffe00000;
  DAT_0015fab0 = &DAT_0015fab0;
  DAT_0015fab8 = &DAT_0015fab0;
  DAT_0015fac0 = ufp_single_tap_work;
  init_timer_key(&DAT_0015fac8,&delayed_work_timer_fn,0x200000,0,0);
  DAT_0015faa0 = 0;
  wakeup_source_add(tp_wakeup);
  DAT_0015fb18 = 0;
  __init_swait_queue_head(&DAT_0015fb20,"&x->wait",&init_completion___key);
  DAT_0015fb38 = 0;
  DAT_0015fb3a = 0;
  if (*(long *)(tpd_cdev + 0xdd0) != 0) {
    ufp_tp_ops = *(long *)(tpd_cdev + 0xdd0);
  }
  return 0;
}



/* 00142f48 zlog_register_work_init */

void zlog_register_work_init(void)

{
  _printk(&DAT_0017e231,"zlog_register_work_init");
  return;
}



/* 00142fc4 zte_reset_frame_list */

void zte_reset_frame_list(long param_1)

{
  mutex_lock(param_1 + 0x470);
  *(undefined8 *)(param_1 + 0x43c) = 0;
  memset(*(void **)(param_1 + 0x460),0,0x32000);
  mutex_unlock(param_1 + 0x470);
  _printk(&DAT_001801ab,"zte_reset_frame_list");
  return;
}



/* 0014302c zte_touch_pdev_register */

void zte_touch_pdev_register(void)

{
  _printk(&DAT_00180b53,"zte_touch_pdev_register");
  return;
}



/* 00143110 zte_touch_shutdown */

void zte_touch_shutdown(void)

{
  _printk(&DAT_001811a8,"zte_touch_shutdown",0xb60);
  return;
}



/* 001431f4 syna_dev_set_up_app_fw */

undefined8 syna_dev_set_up_app_fw(long *param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined *puVar4;
  long lVar5;
  undefined4 uVar6;
  
  if (param_1 == (long *)0x0) {
    return 0xffffffea;
  }
  lVar3 = param_1[0x4e];
  lVar5 = *param_1;
  if (((lVar3 == -0xa8) || (*(int *)(lVar3 + 0xb8) == 0)) || ((*(byte *)(lVar3 + 0xbc) & 1) == 0)) {
    uVar6 = *(undefined4 *)(lVar5 + 0x20c);
  }
  else {
    uVar6 = 0;
  }
  if (*(char *)(lVar5 + 9) == '\x01') {
    iVar1 = syna_tcm_get_app_info(lVar5,lVar5 + 0xb0,uVar6);
    if (iVar1 < 0) {
      puVar4 = &DAT_00167ccc;
    }
    else {
      iVar1 = syna_tcm_preserve_touch_report_config(lVar5,uVar6);
      if (-1 < iVar1) {
        return 0;
      }
      puVar4 = &DAT_0016b6d6;
    }
    uVar2 = _printk(puVar4,"syna_dev_set_up_app_fw");
    return uVar2;
  }
  uVar2 = _printk(&DAT_001682ec,"syna_dev_set_up_app_fw");
  return uVar2;
}



/* 001431f8 FUN_001431f8 */

undefined8 FUN_001431f8(long *param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined *puVar4;
  long lVar5;
  undefined4 uVar6;
  
  lVar3 = param_1[0x4e];
  lVar5 = *param_1;
  if (((lVar3 == -0xa8) || (*(int *)(lVar3 + 0xb8) == 0)) || ((*(byte *)(lVar3 + 0xbc) & 1) == 0)) {
    uVar6 = *(undefined4 *)(lVar5 + 0x20c);
  }
  else {
    uVar6 = 0;
  }
  if (*(char *)(lVar5 + 9) == '\x01') {
    iVar1 = syna_tcm_get_app_info(lVar5,lVar5 + 0xb0,uVar6);
    if (iVar1 < 0) {
      puVar4 = &DAT_00167ccc;
    }
    else {
      iVar1 = syna_tcm_preserve_touch_report_config(lVar5,uVar6);
      if (-1 < iVar1) {
        return 0;
      }
      puVar4 = &DAT_0016b6d6;
    }
    uVar2 = _printk(puVar4,"syna_dev_set_up_app_fw");
    return uVar2;
  }
  uVar2 = _printk(&DAT_001682ec,"syna_dev_set_up_app_fw");
  return uVar2;
}



/* 001432d0 syna_dev_suspend */

undefined8 syna_dev_suspend(long param_1)

{
  undefined8 uVar1;
  
  if (*(int *)(*(long *)(param_1 + 0x98) + 0x57c) != 1) {
    return 0;
  }
  uVar1 = _printk(&DAT_00171a94,"syna_dev_suspend");
  return uVar1;
}



/* 0014345c syna_dev_resume */

void syna_dev_resume(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  long lVar3;
  
  lVar1 = sp_el0;
  lVar3 = *(long *)(param_1 + 0x98);
  if (lVar3 == 0) {
    uVar2 = 0xffffffea;
  }
  else {
    if (*(int *)(lVar3 + 0x57c) != 1) {
      if ((char)DAT_0015fb38 != '\x01') {
        _printk(&DAT_00166b74,"syna_dev_resume");
        return;
      }
      if (*(int *)(lVar3 + 0x5d4) == 0) {
        _printk(&DAT_0016cdb8,"syna_dev_resume");
        return;
      }
      _printk(&DAT_00168362,"syna_dev_resume");
      return;
    }
    uVar2 = 0;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 00143a6c syna_tcm_get_testing_0A00 */

undefined1 * syna_tcm_get_testing_0A00(void)

{
  return test_0A00;
}



/* 00143a7c syna_tcm_get_testing_0001 */

undefined1 * syna_tcm_get_testing_0001(void)

{
  return test_0001;
}



/* 00143a8c syna_tcm_get_testing_0002 */

undefined1 * syna_tcm_get_testing_0002(void)

{
  return test_0002;
}



/* 00143a9c syna_tcm_testing_config_id */

undefined8 syna_tcm_testing_config_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined8 uVar4;
  undefined *puVar5;
  undefined8 *puVar6;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if ((param_1 != 0) && (param_2 != 0)) {
    local_48 = 0;
    uStack_40 = 0;
    local_58 = 0;
    uStack_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    iVar3 = syna_tcm_get_app_info(param_1,&local_68,0);
    if (iVar3 < 0) {
      uVar4 = _printk(&DAT_0017e627,"syna_tcm_testing_config_id");
      return uVar4;
    }
    if ((*(long *)(param_2 + 0xd8) != 0) &&
       (iVar3 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xd8)), -1 < iVar3)) {
      syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xd8),
                       *(undefined4 *)(*(undefined8 **)(param_2 + 0xd8) + 1),&local_58);
      *(undefined4 *)(*(long *)(param_2 + 0xd8) + 0xc) = 0x10;
    }
    if ((param_3 & 1) == 0) {
      puVar6 = *(undefined8 **)(param_2 + 0x38);
      if ((puVar6 != (undefined8 *)0x0) && (*(int *)(puVar6 + 1) != 0)) {
        bVar2 = syna_tcm_testing_0002_check_config_id(&local_58,*puVar6);
        *(byte *)(param_2 + 0x10) = bVar2 & 1;
      }
      puVar5 = &DAT_001811bb;
      if (*(char *)(param_2 + 0x10) == '\0') {
        puVar5 = &DAT_0017ebda;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar5 = &DAT_001811bb;
    }
    uVar4 = _printk(&DAT_0017e97b,"syna_tcm_testing_config_id",puVar5);
    return uVar4;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00143c30 syna_tcm_buf_alloc_0 */

undefined8 syna_tcm_buf_alloc_0(long *param_1)

{
  void *__s;
  long lVar1;
  undefined8 uVar2;
  uint uVar3;
  
  uVar3 = *(uint *)(param_1 + 1);
  __s = (void *)*param_1;
  if (uVar3 < 0x10) {
    if (__s != (void *)0x0) {
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
        uVar2 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar2;
      }
      devm_kfree(lVar1,__s);
    }
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      uVar2 = _printk(&DAT_001828ba,"syna_pal_mem_alloc");
      return uVar2;
    }
    uVar3 = 0x10;
    __s = (void *)devm_kmalloc(lVar1,0x10,0xdc0);
    *param_1 = (long)__s;
    if (__s == (void *)0x0) {
      uVar2 = _printk(&DAT_00180576,"syna_tcm_buf_alloc",0x10);
      return uVar2;
    }
    *(undefined4 *)(param_1 + 1) = 0x10;
  }
  memset(__s,0,(ulong)uVar3);
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return 0;
}



/* 00143d0c syna_tcm_testing_0002_check_config_id */

undefined8 syna_tcm_testing_0002_check_config_id(long param_1,long param_2,int param_3)

{
  undefined8 uVar1;
  int iVar2;
  
  if ((param_1 != 0) && (param_2 != 0)) {
    if (-1 < param_3) {
      iVar2 = 0;
      do {
        if (*(char *)(param_1 + iVar2) != *(char *)(param_2 + iVar2)) {
          uVar1 = _printk(&DAT_0018198b,"syna_tcm_testing_0002_check_config_id",param_1);
          return uVar1;
        }
        iVar2 = iVar2 + 1;
      } while (iVar2 <= param_3);
    }
    return 1;
  }
  return 0;
}



/* 00143d84 syna_tcm_buf_copy_0 */

void syna_tcm_buf_copy_0(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  uint uVar5;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return;
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return;
  }
  mutex_lock(param_2 + 2);
  uVar5 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar5) {
    uVar1 = uVar5 + 1;
    __s = (void *)*param_1;
    if (uVar2 < uVar1) {
      if (__s != (void *)0x0) {
        lVar3 = syna_request_managed_device();
        if (lVar3 == 0) {
          _printk(&DAT_00171996,"syna_pal_mem_free");
          return;
        }
        devm_kfree(lVar3,__s);
      }
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        puVar4 = &DAT_00171996;
LAB_00143fb8:
        _printk(puVar4,"syna_pal_mem_alloc");
        return;
      }
      if (0x7ffffffe < uVar5) {
        puVar4 = &DAT_0016da92;
        goto LAB_00143fb8;
      }
      __s = (void *)devm_kmalloc(lVar3,(ulong)uVar1,0xdc0);
      *param_1 = (long)__s;
      if (__s == (void *)0x0) {
        _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
        return;
      }
      *(uint *)(param_1 + 1) = uVar1;
      __n = (ulong)uVar1;
    }
    memset(__s,0,__n);
    *(undefined4 *)((long)param_1 + 0xc) = 0;
    __n = (ulong)*(uint *)(param_1 + 1);
    uVar5 = *(uint *)((long)param_2 + 0xc);
  }
  if (((void *)*param_1 == (void *)0x0) || ((void *)*param_2 == (void *)0x0)) {
    _printk(&DAT_0016a4dc,"syna_tcm_buf_copy",uVar5);
    return;
  }
  if ((uVar5 <= (uint)__n) && (uVar5 <= *(uint *)(param_2 + 1))) {
    memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar5);
    *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
    if (*(char *)(param_2 + 8) != '\x01') {
      _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return;
    }
    *(undefined1 *)(param_2 + 8) = 0;
    mutex_unlock(param_2 + 2);
    if ((char)param_1[8] != '\x01') {
      _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return;
    }
    *(undefined1 *)(param_1 + 8) = 0;
    mutex_unlock(param_1 + 2);
    return;
  }
  _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar5);
  return;
}



/* 00144004 syna_tcm_testing_check_array_data */

ulong syna_tcm_testing_check_array_data(long param_1,ulong param_2,long param_3,ulong param_4)

{
  ulong uVar1;
  uint uVar2;
  ulong uVar3;
  uint uVar4;
  
  if ((param_1 != 0) && (param_3 != 0)) {
    if ((int)param_2 < 1) {
      uVar4 = 1;
    }
    else {
      uVar3 = 0;
      uVar4 = 1;
      do {
        uVar1 = 0;
        if (param_2 <= param_4) {
          uVar1 = uVar3;
        }
        uVar2 = syna_tcm_testing_0100_check_data(param_1 + uVar3,param_3 + uVar1,uVar3 & 0xffffffff)
        ;
        uVar3 = uVar3 + 1;
        uVar4 = uVar2 & uVar4;
      } while ((param_2 & 0x7fffffff) != uVar3);
    }
    return (ulong)uVar4;
  }
  uVar3 = _printk(&DAT_00168c3a,"syna_tcm_testing_check_array_data");
  return uVar3;
}



/* 001440bc syna_tcm_testing_0100_check_data */

ulong syna_tcm_testing_0100_check_data(byte *param_1,byte *param_2,int param_3)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  bool bVar4;
  ulong uVar5;
  
  bVar1 = *param_1;
  bVar2 = *param_2;
  uVar3 = param_3 << 3;
  bVar4 = (bVar1 & 1) == (bVar2 & 1);
  if (!bVar4) {
    uVar5 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3);
    return uVar5;
  }
  if ((bVar1 >> 1 & 1) != (bVar2 >> 1 & 1)) {
    uVar5 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 1);
    return uVar5;
  }
  if ((bVar1 >> 2 & 1) != (bVar2 >> 2 & 1)) {
    uVar5 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 2);
    return uVar5;
  }
  if ((bVar1 >> 3 & 1) != (bVar2 >> 3 & 1)) {
    uVar5 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 3);
    return uVar5;
  }
  if ((bVar1 >> 4 & 1) != (bVar2 >> 4 & 1)) {
    uVar5 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 4);
    return uVar5;
  }
  if ((bVar1 >> 5 & 1) != (bVar2 >> 5 & 1)) {
    uVar5 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 5);
    return uVar5;
  }
  if ((bVar1 >> 6 & 1) != (bVar2 >> 6 & 1)) {
    uVar5 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 6);
    return uVar5;
  }
  if (bVar1 >> 7 == bVar2 >> 7) {
    return (ulong)bVar4;
  }
  uVar5 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",uVar3 | 7);
  return uVar5;
}



/* 00144204 FUN_00144204 */

undefined8 FUN_00144204(void)

{
  byte bVar1;
  undefined8 uVar2;
  uint unaff_w19;
  byte *unaff_x20;
  uint unaff_w21;
  
  bVar1 = *unaff_x20;
  if ((unaff_w21 >> 4 & 1) != (bVar1 >> 4 & 1)) {
    uVar2 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 4);
    return uVar2;
  }
  if ((unaff_w21 >> 5 & 1) != (bVar1 >> 5 & 1)) {
    uVar2 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 5);
    return uVar2;
  }
  if ((unaff_w21 >> 6 & 1) != (bVar1 >> 6 & 1)) {
    uVar2 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 6);
    return uVar2;
  }
  if (unaff_w21 >> 7 == (uint)(bVar1 >> 7)) {
    return 0;
  }
  uVar2 = _printk(&DAT_00170d56,"syna_tcm_testing_0100_check_data",unaff_w19 | 7);
  return uVar2;
}



/* 001442a4 syna_tcm_get_testing_0500 */

undefined1 * syna_tcm_get_testing_0500(void)

{
  return test_0500;
}



/* 001442b0 syna_tcm_buf_copy_1 */

void syna_tcm_buf_copy_1(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  uint uVar5;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return;
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return;
  }
  mutex_lock(param_2 + 2);
  uVar5 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar5) {
    uVar1 = uVar5 + 1;
    __s = (void *)*param_1;
    if (uVar2 < uVar1) {
      if (__s != (void *)0x0) {
        lVar3 = syna_request_managed_device();
        if (lVar3 == 0) {
          _printk(&DAT_00171996,"syna_pal_mem_free");
          return;
        }
        devm_kfree(lVar3,__s);
      }
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        puVar4 = &DAT_00171996;
LAB_001444e4:
        _printk(puVar4,"syna_pal_mem_alloc");
        return;
      }
      if (0x7ffffffe < uVar5) {
        puVar4 = &DAT_0016da92;
        goto LAB_001444e4;
      }
      __s = (void *)devm_kmalloc(lVar3,(ulong)uVar1,0xdc0);
      *param_1 = (long)__s;
      if (__s == (void *)0x0) {
        _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
        return;
      }
      *(uint *)(param_1 + 1) = uVar1;
      __n = (ulong)uVar1;
    }
    memset(__s,0,__n);
    *(undefined4 *)((long)param_1 + 0xc) = 0;
    __n = (ulong)*(uint *)(param_1 + 1);
    uVar5 = *(uint *)((long)param_2 + 0xc);
  }
  if (((void *)*param_1 == (void *)0x0) || ((void *)*param_2 == (void *)0x0)) {
    _printk(&DAT_0016a4dc,"syna_tcm_buf_copy",uVar5);
    return;
  }
  if ((uVar5 <= (uint)__n) && (uVar5 <= *(uint *)(param_2 + 1))) {
    memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar5);
    *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
    if (*(char *)(param_2 + 8) != '\x01') {
      _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return;
    }
    *(undefined1 *)(param_2 + 8) = 0;
    mutex_unlock(param_2 + 2);
    if ((char)param_1[8] != '\x01') {
      _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return;
    }
    *(undefined1 *)(param_1 + 8) = 0;
    mutex_unlock(param_1 + 2);
    return;
  }
  _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar5);
  return;
}



/* 00144530 syna_tcm_testing_check_frame_data_0 */

ulong syna_tcm_testing_check_frame_data_0
                (long param_1,ulong param_2,int param_3,uint param_4,code *param_5,long param_6,
                ulong param_7)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  ulong uVar7;
  uint uVar8;
  
  if (((param_5 == (code *)0x0) || (param_1 == 0)) || (param_6 == 0)) {
    uVar7 = _printk(&DAT_00183388,"syna_tcm_testing_check_frame_data");
    return uVar7;
  }
  if (param_2 < param_3 * param_4 * 2) {
    uVar7 = _printk(&DAT_001833e0,"syna_tcm_testing_check_frame_data",param_2 & 0xffffffff);
    return uVar7;
  }
  if (param_3 < 1) {
    uVar8 = 1;
  }
  else {
    iVar5 = 0;
    iVar6 = 0;
    uVar8 = 1;
    do {
      if (0 < (int)param_4) {
        uVar7 = 0;
        iVar1 = iVar5;
        do {
          lVar2 = 0;
          if (param_2 <= param_7) {
            lVar2 = (long)iVar1;
          }
          if (*(int *)(param_5 + -4) != -0x5ccd7a0e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8236,0x144618);
            (*pcVar3)();
          }
          uVar4 = (*param_5)(param_1 + iVar1,param_6 + lVar2,uVar7 & 0xffffffff,iVar6);
          uVar7 = uVar7 + 1;
          uVar8 = uVar4 & uVar8;
          iVar1 = iVar1 + 2;
        } while (param_4 != uVar7);
      }
      iVar6 = iVar6 + 1;
      iVar5 = iVar5 + param_4 * 2;
    } while (iVar6 != param_3);
  }
  return (ulong)uVar8;
}



/* 001446a0 syna_tcm_v1_detect */

void syna_tcm_v1_detect(long param_1,ulong param_2,ulong param_3)

{
  long *plVar1;
  int iVar2;
  undefined8 uVar3;
  void *__s;
  long lVar4;
  undefined *puVar5;
  undefined4 uVar6;
  code *pcVar7;
  uint uVar8;
  char *pcVar9;
  undefined1 local_3c [4];
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  local_3c[0] = 0;
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_v1_detect");
    return;
  }
  if ((param_2 & 1) != 0) {
    uVar3 = 0;
    *(code **)(param_1 + 0x390) = syna_tcm_v1_read_message;
    *(code **)(param_1 + 0x398) = syna_tcm_v1_write_message;
    *(code **)(param_1 + 0x3a8) = syna_tcm_v1_set_up_max_rw_size;
    *(code **)(param_1 + 0x3b0) = syna_tcm_v1_check_max_rw_size;
    *(code **)(param_1 + 0x3a0) = syna_tcm_v1_terminate;
    *(undefined4 *)(param_1 + 0x37c) = 0;
    *(undefined1 *)(param_1 + 8) = 1;
LAB_0014481c:
    lVar4 = sp_el0;
    if (*(long *)(lVar4 + 0x710) == local_38) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar3);
  }
  mutex_lock(param_1 + 0x348);
  if (*(char *)(param_1 + 0x280) != '\0') {
    _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return;
  }
  plVar1 = (long *)(param_1 + 0x240);
  mutex_lock(param_1 + 0x250);
  uVar8 = *(uint *)(param_1 + 0x248);
  __s = *(void **)(param_1 + 0x240);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  if (uVar8 < 0x36) {
    if (__s != (void *)0x0) {
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_00171996,"syna_pal_mem_free");
        return;
      }
      devm_kfree(lVar4,__s);
    }
    lVar4 = syna_request_managed_device();
    if (lVar4 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_alloc");
      return;
    }
    uVar8 = 0x36;
    __s = (void *)devm_kmalloc(lVar4,0x36,0xdc0);
    *plVar1 = (long)__s;
    if (__s == (void *)0x0) {
      _printk(&DAT_0016c730,"syna_tcm_buf_alloc",0x36);
      return;
    }
    *(undefined4 *)(param_1 + 0x248) = 0x36;
  }
  memset(__s,0,(ulong)uVar8);
  lVar4 = *(long *)(param_1 + 0x48);
  *(undefined4 *)(param_1 + 0x24c) = 0;
  if (lVar4 == 0) {
    puVar5 = &DAT_0016d5c2;
LAB_00144898:
    _printk(puVar5,"syna_tcm_read");
    return;
  }
  pcVar7 = *(code **)(lVar4 + 0x20);
  if (pcVar7 == (code *)0x0) {
    puVar5 = &DAT_0016b7bc;
    goto LAB_00144898;
  }
  pcVar9 = *(char **)(param_1 + 0x240);
  if (*(int *)(pcVar7 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
    pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x1447e0);
    (*pcVar7)();
  }
  iVar2 = (*pcVar7)(lVar4,pcVar9,0x36);
  if (iVar2 < 0) {
    _printk(&DAT_0016e84c,"syna_tcm_v1_detect");
    return;
  }
  if (*(char *)(param_1 + 0x280) != '\x01') {
    _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return;
  }
  *(undefined1 *)(param_1 + 0x280) = 0;
  mutex_unlock(param_1 + 0x250);
  mutex_unlock(param_1 + 0x348);
  if (*pcVar9 != -0x5b) {
    uVar3 = 0xffffff0b;
    goto LAB_0014481c;
  }
  if ((*(char *)(param_1 + 0x380) == '\x01') && (*(int *)(param_1 + 0x200) != 0)) {
    syna_tcm_buf_lock(plVar1);
    uVar8 = *(int *)(param_1 + 0x200) + 5;
    if (uVar8 < *(uint *)(param_1 + 0x248)) {
      *(undefined2 *)(param_1 + 0x382) = *(undefined2 *)(*(long *)(param_1 + 0x240) + (ulong)uVar8);
      if (*(char *)(param_1 + 900) == '\x01') {
        uVar8 = *(int *)(param_1 + 0x200) + 7;
        if (uVar8 <= *(uint *)(param_1 + 0x248)) {
          *(undefined1 *)(param_1 + 0x385) =
               *(undefined1 *)(*(long *)(param_1 + 0x240) + (ulong)uVar8);
        }
      }
      syna_tcm_buf_unlock(plVar1);
    }
  }
  if (*(short *)(param_1 + 0x382) == 0x5a5a) {
    *(undefined1 *)(param_1 + 0x380) = 0;
  }
  if (*(char *)(param_1 + 0x385) == 'Z') {
    *(undefined1 *)(param_1 + 900) = 0;
  }
  if (pcVar9[1] != '\x10') {
    uVar6 = 4;
    if ((param_3 & 1) == 0) {
      uVar6 = 2;
    }
    iVar2 = syna_tcm_v1_write_message(param_1,uVar6,0,0,local_3c,*(undefined4 *)(param_1 + 0x1ec));
    if (iVar2 < 0) {
      puVar5 = &DAT_0016d700;
      goto LAB_00144a2c;
    }
  }
  if (*(char *)(param_1 + 9) == '\0') {
    syna_tcm_buf_lock(plVar1);
    iVar2 = syna_tcm_v1_parse_idinfo(param_1,pcVar9 + 4,0x34,0x30);
    syna_tcm_buf_unlock(plVar1);
    if (iVar2 < 0) {
      puVar5 = &DAT_0016dc42;
      goto LAB_00144a2c;
    }
  }
  iVar2 = syna_tcm_v1_check_max_rw_size(param_1);
  if (-1 < iVar2) {
    _printk(&DAT_00166c4e,"syna_tcm_v1_detect");
    return;
  }
  puVar5 = &DAT_001721f6;
LAB_00144a2c:
  _printk(puVar5,"syna_tcm_v1_detect");
  return;
}



/* 00144b78 syna_tcm_v1_write_message */

ulong syna_tcm_v1_write_message
                (long param_1,byte param_2,byte *param_3,uint param_4,undefined1 *param_5,
                uint param_6)

{
  bool bVar1;
  uint uVar2;
  uint uVar3;
  byte *pbVar4;
  code *pcVar5;
  bool bVar6;
  int iVar7;
  uint uVar8;
  void *pvVar9;
  long lVar10;
  undefined1 *puVar11;
  undefined *puVar12;
  undefined8 uVar13;
  ulong uVar14;
  uint uVar15;
  ushort uVar16;
  long lVar17;
  uint uVar18;
  uint uVar19;
  uint uVar20;
  uint uVar21;
  uint uVar22;
  uint uVar23;
  
  if (param_1 == 0) {
    puVar11 = &DAT_00168a84;
LAB_00145024:
    uVar14 = _printk(puVar11,"syna_tcm_v1_write_message");
    return uVar14;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar11 = &DAT_00172230;
    goto LAB_00145024;
  }
  if (param_5 != (undefined1 *)0x0) {
    *param_5 = 0xff;
  }
  mutex_lock(param_1 + 0x318);
  mutex_lock(param_1 + 0x348);
  *(undefined4 *)(param_1 + 500) = 1;
  *(undefined4 *)(param_1 + 0x1f8) = 1;
  *(undefined4 *)(param_1 + 0x220) = 0;
  *(byte *)(param_1 + 0x1fc) = param_2;
  if (param_6 == 0) {
    bVar1 = false;
  }
  else {
    lVar17 = *(long *)(param_1 + 0x48);
    if (lVar17 == 0) {
      uVar14 = _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
      return uVar14;
    }
    if (*(long *)(lVar17 + 0x38) == 0) {
      iVar7 = 0;
    }
    else {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar17 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x144c34);
        (*pcVar5)();
      }
      iVar7 = (**(code **)(lVar17 + 0x38))(lVar17,0);
      mutex_unlock(param_1 + 0x50);
    }
    bVar1 = 0 < iVar7;
  }
  if (*(char *)(param_1 + 0x380) == '\x01') {
    uVar16 = *(ushort *)
              (&DAT_00190880 +
              (ulong)((param_4 ^ (uint)*(ushort *)(&DAT_00190880 + (ulong)(byte)~param_2 * 2) << 8 ^
                      (uint)*(ushort *)
                             (&DAT_00190880 +
                             (ulong)(param_4 & 0xff ^
                                    ((*(ushort *)(&DAT_00190880 + (ulong)(byte)~param_2 * 2) ^
                                     0xffffffff) & 0xff00) >> 8) * 2)) >> 8 & 0xff) * 2);
    uVar19 = (uint)uVar16 ^
             (uint)*(ushort *)
                    (&DAT_00190880 +
                    (ulong)(param_4 & 0xff ^
                           ((*(ushort *)(&DAT_00190880 + (ulong)(byte)~param_2 * 2) ^ 0xffffffff) &
                           0xff00) >> 8) * 2) << 8;
    pbVar4 = param_3;
    for (uVar18 = param_4; uVar18 != 0; uVar18 = uVar18 - 1) {
      uVar16 = *(ushort *)(&DAT_00190880 + (ulong)((uint)*pbVar4 ^ (uVar19 & 0xff00) >> 8) * 2);
      uVar19 = (uint)uVar16 ^ uVar19 << 8;
      pbVar4 = pbVar4 + 1;
    }
    uVar18 = uVar19 >> 8 & 0xff;
    uVar19 = param_4 + 5;
  }
  else {
    uVar18 = 0;
    uVar16 = 0;
    uVar19 = param_4 + 3;
  }
  uVar20 = uVar19;
  if (*(uint *)(param_1 + 0x38) != 0) {
    uVar20 = *(uint *)(param_1 + 0x38);
  }
  uVar21 = uVar20;
  if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
    uVar21 = 0;
    if (uVar20 == 0) {
      uVar15 = 0;
      goto LAB_00144d48;
    }
    uVar22 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
    uVar15 = 0;
    if (uVar22 == 0) goto LAB_00144d48;
    uVar21 = 0;
    if (uVar22 != 0) {
      uVar21 = uVar20 / uVar22;
    }
    uVar21 = uVar21 * uVar22;
  }
  if (uVar21 == 0) {
    uVar15 = 0;
  }
  else {
    uVar15 = 0;
    if (uVar21 != 0) {
      uVar15 = ((uVar19 + uVar21) - 1) / uVar21;
    }
  }
LAB_00144d48:
  if (uVar15 < 2) {
    uVar15 = 1;
  }
  if (*(char *)(param_1 + 0x2c8) != '\0') {
    uVar14 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar14;
  }
  mutex_lock(param_1 + 0x298);
  uVar19 = 0;
  *(char *)(param_1 + 0x2c8) = *(char *)(param_1 + 0x2c8) + '\x01';
  uVar22 = 0;
  uVar20 = param_4;
  do {
    uVar2 = uVar22 + 1;
    iVar7 = -3;
    if (uVar22 != 0) {
      iVar7 = -1;
    }
    uVar23 = iVar7 + uVar21;
    if (uVar20 <= uVar21) {
      uVar23 = uVar20;
    }
    bVar6 = uVar2 == uVar15;
    if ((bVar6) && (lVar17 = *(long *)(param_1 + 0x48), (*(byte *)(lVar17 + 0x15) & 1) != 0)) {
      if (*(uint *)(lVar17 + 0x1c) < uVar23) {
        uVar8 = *(uint *)(lVar17 + 0x18);
        iVar7 = 0;
        if (uVar8 != 0) {
          uVar3 = 0;
          if (uVar8 != 0) {
            uVar3 = uVar23 / uVar8;
          }
          iVar7 = uVar3 * uVar8;
        }
        uVar23 = iVar7 - 1;
        bVar6 = uVar23 == uVar20;
        if (!bVar6) {
          uVar15 = uVar15 + 1;
        }
      }
      else {
        bVar6 = true;
      }
    }
    uVar14 = (ulong)*(uint *)(param_1 + 0x290);
    pvVar9 = *(void **)(param_1 + 0x288);
    if (*(uint *)(param_1 + 0x290) < uVar21) {
      if (pvVar9 != (void *)0x0) {
        lVar17 = syna_request_managed_device();
        if (lVar17 == 0) {
          uVar14 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar14;
        }
        devm_kfree(lVar17,pvVar9);
      }
      lVar17 = syna_request_managed_device();
      if (((int)uVar21 < 1) || (lVar17 == 0)) {
        puVar12 = &DAT_00171996;
        if (lVar17 != 0) {
          puVar12 = &DAT_0016da92;
        }
        uVar14 = _printk(puVar12,"syna_pal_mem_alloc");
        return uVar14;
      }
      pvVar9 = (void *)devm_kmalloc(lVar17,(ulong)uVar21,0xdc0);
      *(void **)(param_1 + 0x288) = pvVar9;
      if (pvVar9 == (void *)0x0) {
        uVar14 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar21);
        return uVar14;
      }
      *(uint *)(param_1 + 0x290) = uVar21;
      uVar14 = (ulong)uVar21;
    }
    memset(pvVar9,0,uVar14);
    *(undefined4 *)(param_1 + 0x294) = 0;
    if (uVar22 == 0) {
      **(byte **)(param_1 + 0x288) = param_2;
      *(char *)(*(long *)(param_1 + 0x288) + 1) = (char)param_4;
      *(char *)(*(long *)(param_1 + 0x288) + 2) = (char)(param_4 >> 8);
      if (param_4 != 0) {
        if ((param_3 == (byte *)0x0) ||
           (pvVar9 = (void *)(*(long *)(param_1 + 0x288) + 3), pvVar9 == (void *)0x0))
        goto LAB_00145168;
        uVar22 = *(int *)(param_1 + 0x290) - 3;
        uVar8 = param_4;
        if ((param_4 < uVar23) || (uVar22 < uVar23)) goto LAB_00145160;
        memcpy(pvVar9,param_3,(ulong)uVar23);
      }
      iVar7 = 3;
    }
    else {
      **(byte **)(param_1 + 0x288) = 1;
      if ((param_3 + uVar19 == (byte *)0x0) ||
         (pvVar9 = (void *)(*(long *)(param_1 + 0x288) + 1), pvVar9 == (void *)0x0)) {
LAB_00145168:
        puVar12 = &DAT_00172f64;
        goto LAB_00145170;
      }
      uVar8 = param_4 - uVar19;
      uVar22 = *(int *)(param_1 + 0x290) - 1;
      if ((uVar8 < uVar23) || (uVar22 < uVar23)) {
LAB_00145160:
        uVar14 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar8,uVar22,uVar23);
        return uVar14;
      }
      memcpy(pvVar9,param_3 + uVar19,(ulong)uVar23);
      iVar7 = 1;
    }
    lVar17 = *(long *)(param_1 + 0x288);
    iVar7 = iVar7 + uVar23;
    if ((bVar6 & *(byte *)(param_1 + 0x380)) == 1) {
      uVar14 = (ulong)uVar19;
      if ((ushort *)(lVar17 + uVar14) == (ushort *)0x0) {
        puVar12 = &DAT_00172fa2;
LAB_00145170:
        uVar14 = _printk(puVar12,"syna_tcm_v1_write");
        return uVar14;
      }
      uVar22 = *(int *)(param_1 + 0x290) - uVar19;
      if (uVar22 < 2) {
        uVar14 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",2,uVar22,2);
        return uVar14;
      }
      uVar19 = uVar19 + 2;
      iVar7 = iVar7 + 2;
      *(ushort *)(lVar17 + uVar14) = uVar16 & 0xff | (ushort)(uVar18 << 8);
      lVar17 = *(long *)(param_1 + 0x288);
    }
    lVar10 = *(long *)(param_1 + 0x48);
    if (lVar10 == 0) {
      puVar12 = &DAT_0016d5c2;
LAB_0014506c:
      uVar14 = _printk(puVar12,"syna_tcm_write");
      return uVar14;
    }
    pcVar5 = *(code **)(lVar10 + 0x28);
    if (pcVar5 == (code *)0x0) {
      puVar12 = &DAT_0016d5f6;
      goto LAB_0014506c;
    }
    if (*(int *)(pcVar5 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x144fbc);
      (*pcVar5)();
    }
    uVar8 = (*pcVar5)(lVar10,lVar17,iVar7);
    uVar14 = (ulong)uVar8;
    if ((int)uVar8 < 0) {
      uVar14 = _printk(&DAT_0016a524,"syna_tcm_v1_write",iVar7);
      return uVar14;
    }
    if (((bVar6 == false) && (uVar22 = *(uint *)(param_1 + 0x210), 0 < (int)uVar22)) &&
       (uVar3 = *(uint *)(param_1 + 0x214), 0 < (int)uVar3)) {
      if (uVar3 <= uVar22) {
        uVar3 = uVar22;
      }
      usleep_range_state(uVar22,uVar3,2);
    }
    uVar19 = uVar19 + uVar23;
    uVar20 = uVar20 - uVar23;
    uVar22 = uVar2;
  } while (uVar2 < uVar15);
  if (*(char *)(param_1 + 0x2c8) != '\x01') {
    uVar14 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar14;
  }
  *(undefined1 *)(param_1 + 0x2c8) = 0;
  mutex_unlock(param_1 + 0x298);
  mutex_unlock(param_1 + 0x348);
  if (-1 < (int)uVar8) {
    uVar19 = 0;
    do {
      if (param_6 == 0) {
        pcVar5 = *(code **)(*(long *)(param_1 + 0x48) + 0x30);
        uVar18 = *(uint *)(param_1 + 0x208) >> 2;
        if (pcVar5 == (code *)0x0) {
          uVar13 = __msecs_to_jiffies(*(uint *)(param_1 + 0x208));
          wait_for_completion_timeout(param_1 + 0x220,uVar13);
        }
        else {
          if (*(int *)(pcVar5 + -4) != 0xf989a7b) {
                    /* WARNING: Does not return */
            pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x145220);
            (*pcVar5)();
          }
          (*pcVar5)();
        }
      }
      else {
        uVar18 = param_6;
        if (0 < (int)param_6) {
          msleep(param_6);
        }
      }
      if (*(int *)(param_1 + 0x1f8) == 2) goto LAB_00145274;
      uVar19 = uVar18 + uVar19;
    } while ((((*(int *)(param_1 + 0x1f8) == 1) && (iVar7 = FUN_0014565c(param_1,0), iVar7 < 0)) ||
             (*(int *)(param_1 + 0x1f8) == 1)) && (uVar19 < *(uint *)(param_1 + 0x208)));
    if (*(int *)(param_1 + 0x1f8) != 0) {
      if (*(uint *)(param_1 + 0x208) <= uVar19) {
        uVar14 = _printk(&DAT_0016bdea,"syna_tcm_v1_write_message",param_2);
        return uVar14;
      }
      uVar14 = _printk(&DAT_0016c25a,"syna_tcm_v1_write_message",*(undefined1 *)(param_1 + 0x1fd),
                       param_2);
      return uVar14;
    }
LAB_00145274:
    uVar14 = 0;
  }
  if (param_5 != (undefined1 *)0x0) {
    *param_5 = *(undefined1 *)(param_1 + 0x1fe);
  }
  *(undefined1 *)(param_1 + 0x1fc) = 0;
  if (bVar1) {
    lVar17 = *(long *)(param_1 + 0x48);
    if (lVar17 == 0) {
      uVar14 = _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
      return uVar14;
    }
    if (*(long *)(lVar17 + 0x38) != 0) {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar17 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x1452c8);
        (*pcVar5)();
      }
      (**(code **)(lVar17 + 0x38))(lVar17,1);
      mutex_unlock(param_1 + 0x50);
    }
  }
  *(undefined4 *)(param_1 + 0x1f8) = 0;
  *(undefined4 *)(param_1 + 500) = 0;
  mutex_unlock(param_1 + 0x318);
  return uVar14;
}



/* 0014539c syna_tcm_v1_parse_idinfo */

undefined8 syna_tcm_v1_parse_idinfo(long param_1,void *param_2,undefined8 param_3,uint param_4)

{
  undefined8 uVar1;
  
  if ((param_2 == (void *)0x0) || (param_4 == 0)) {
    uVar1 = _printk(&DAT_00170d8a,"syna_tcm_v1_parse_idinfo");
    return uVar1;
  }
  if (0x2f < param_4) {
    param_4 = 0x30;
  }
  if (param_4 <= (uint)param_3) {
    memcpy((void *)(param_1 + 0x80),param_2,(ulong)param_4);
    if (*(int *)(param_1 + 0xc) != *(int *)(param_1 + 0x92)) {
      *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0x92);
    }
    *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
    return 0;
  }
  uVar1 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",param_3,0x30);
  return uVar1;
}



/* 0014541c FUN_0014541c */

undefined8 FUN_0014541c(void)

{
  return 0xffffff0f;
}



/* 0014545c syna_tcm_v1_read_message */

ulong syna_tcm_v1_read_message(long param_1,undefined1 *param_2)

{
  undefined8 *puVar1;
  long *plVar2;
  undefined8 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  char cVar7;
  byte bVar8;
  uint uVar9;
  uint uVar10;
  bool bVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  long lVar15;
  void *pvVar16;
  void *__dest;
  ulong uVar17;
  undefined *puVar18;
  char *pcVar19;
  long lVar20;
  code *pcVar21;
  ulong uVar22;
  uint uVar23;
  uint uVar24;
  uint uVar25;
  uint uVar26;
  undefined1 *puVar27;
  uint uVar28;
  uint uVar29;
  
  if (param_1 == 0) {
    puVar27 = &DAT_00168a84;
LAB_00145850:
    uVar17 = _printk(puVar27,"syna_tcm_v1_read_message");
    return uVar17;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar27 = &DAT_00172230;
    goto LAB_00145850;
  }
  if (*(char *)(param_1 + 0x37a) == '\x01') {
    bVar11 = *(int *)(param_1 + 0x1f8) == 0;
  }
  else {
    bVar11 = false;
  }
  if (param_2 != (undefined1 *)0x0) {
    *param_2 = 0xff;
  }
  *(undefined1 *)(param_1 + 0x1fd) = 0;
  mutex_lock(param_1 + 0x348);
  if (*(char *)(param_1 + 0x280) != '\0') {
    uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar17;
  }
  mutex_lock(param_1 + 0x250);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  if (bVar11) {
    uVar24 = 4;
    if (*(int *)(param_1 + 0x37c) != 0) {
      iVar12 = 6;
      if (*(char *)(param_1 + 0x380) == '\0') {
        iVar12 = 4;
      }
      uVar24 = *(int *)(param_1 + 0x37c) + (uint)*(byte *)(param_1 + 900) + iVar12 + 1;
    }
  }
  else {
    uVar24 = 4;
  }
  lVar20 = *(long *)(param_1 + 0x48);
  plVar2 = (long *)(param_1 + 0x240);
  if ((*(char *)(lVar20 + 0x15) == '\x01') && (*(uint *)(lVar20 + 0x1c) < uVar24)) {
    uVar28 = *(uint *)(lVar20 + 0x18);
    if (uVar28 != 0) {
      uVar9 = 0;
      if (uVar28 != 0) {
        uVar9 = uVar24 / uVar28;
      }
      uVar24 = uVar9 * uVar28;
      goto LAB_00145558;
    }
    uVar24 = 0;
  }
  else {
LAB_00145558:
    if (*(uint *)(param_1 + 0x248) < uVar24) {
      lVar20 = *plVar2;
      if (lVar20 != 0) {
        lVar15 = syna_request_managed_device();
        if (lVar15 == 0) {
          uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar17;
        }
        devm_kfree(lVar15,lVar20);
      }
      lVar20 = syna_request_managed_device();
      if (lVar20 == 0) {
        puVar18 = &DAT_00171996;
LAB_00146188:
        uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
        return uVar17;
      }
      if ((int)uVar24 < 1) {
        puVar18 = &DAT_0016da92;
        goto LAB_00146188;
      }
      pvVar16 = (void *)devm_kmalloc(lVar20,(ulong)uVar24,0xdc0);
      *plVar2 = (long)pvVar16;
      if (pvVar16 == (void *)0x0) {
        uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar24);
        return uVar17;
      }
      *(uint *)(param_1 + 0x248) = uVar24;
      memset(pvVar16,0,(ulong)uVar24);
      *(undefined4 *)(param_1 + 0x24c) = 0;
    }
  }
  iVar12 = FUN_00146b90(param_1,uVar24,*(undefined8 *)(param_1 + 0x240),*(uint *)(param_1 + 0x248));
  if (iVar12 < 0) {
    uVar17 = _printk(&DAT_0016dc7a,"syna_tcm_v1_read_message",uVar24);
    return uVar17;
  }
  puVar27 = *(undefined1 **)(param_1 + 0x240);
  *(uint *)(param_1 + 0x200) = (uint)*(ushort *)(puVar27 + 2);
  if (puVar27[1] != '\0') {
    *(undefined1 *)(param_1 + 0x1fd) = puVar27[1];
  }
  if (*(char *)(param_1 + 0x280) != '\x01') {
    uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar17;
  }
  *(undefined1 *)(param_1 + 0x280) = 0;
  mutex_unlock(param_1 + 0x250);
  uVar28 = *(uint *)(param_1 + 0x200);
  if (uVar28 != 0) {
    if (puVar27[1] == '\x03') {
      uVar24 = 0x40;
      if (*(uint *)(param_1 + 0x3c) != 0) {
        uVar24 = *(uint *)(param_1 + 0x3c);
      }
      lVar20 = syna_request_managed_device();
      if (lVar20 == 0) {
        puVar18 = &DAT_00171996;
LAB_00146210:
        uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
        return uVar17;
      }
      if (0x7ffffffe < uVar24) {
        puVar18 = &DAT_0016da92;
        goto LAB_00146210;
      }
      lVar20 = devm_kmalloc(lVar20,uVar24 + 1,0xdc0);
      if (lVar20 == 0) {
        puVar18 = &DAT_0016d72c;
        pcVar19 = "syna_tcm_v1_discard_message";
LAB_001463bc:
        uVar17 = _printk(puVar18,pcVar19);
        return uVar17;
      }
      iVar12 = 100;
      do {
        lVar15 = *(long *)(param_1 + 0x48);
        puVar18 = &DAT_0016d5c2;
        if ((lVar15 == 0) ||
           (pcVar21 = *(code **)(lVar15 + 0x20), puVar18 = &DAT_0016b7bc, pcVar21 == (code *)0x0)) {
          uVar17 = _printk(puVar18,"syna_tcm_read");
          return uVar17;
        }
        if (*(int *)(pcVar21 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
          pcVar21 = (code *)SoftwareBreakpoint(0x8228,0x1456a0);
          (*pcVar21)();
        }
        iVar13 = (*pcVar21)(lVar15,lVar20,uVar24);
        if (iVar13 < 0) {
          uVar17 = _printk(&DAT_00166c72,"syna_tcm_v1_discard_message",uVar24);
          return uVar17;
        }
        if (*(char *)(lVar20 + 1) == '\0') break;
        usleep_range_state(1000,2000,2);
        iVar12 = iVar12 + -1;
      } while (iVar12 != 0);
      lVar15 = syna_request_managed_device();
      if (lVar15 == 0) {
        puVar18 = &DAT_00171996;
        pcVar19 = "syna_pal_mem_free";
        goto LAB_001463bc;
      }
      devm_kfree(lVar15,lVar20);
      uVar24 = 0xffffff0e;
      goto LAB_001468e4;
    }
    uVar9 = 0;
    if (uVar24 - 4 <= uVar28) {
      uVar9 = uVar28 - (uVar24 - 4);
    }
    if (uVar24 < 5) {
      uVar9 = uVar28;
    }
    if (uVar9 != 0) {
      if (((uVar9 ^ 0xffffffff) & 0xffff) == 0) goto LAB_001467e4;
      iVar12 = uVar9 + 3;
      iVar13 = *(byte *)(param_1 + 900) + 1;
      uVar24 = uVar28 + 7;
      if (*(byte *)(param_1 + 0x380) == 0) {
        iVar12 = uVar9 + 1;
        uVar24 = uVar28 + 5;
      }
      uVar29 = iVar12 + iVar13;
      uVar24 = uVar24 + iVar13;
      if (((*(byte *)(param_1 + 0x380) | *(byte *)(param_1 + 900)) & 1) == 0) {
        uVar29 = uVar9 + 1;
        uVar24 = uVar28 + 5;
      }
      if (*(char *)(param_1 + 0x280) != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar17;
      }
      mutex_lock(param_1 + 0x250);
      uVar25 = *(uint *)(param_1 + 0x248);
      uVar28 = uVar24 + 1;
      *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
      if (uVar25 < uVar28) {
        pvVar16 = (void *)*plVar2;
        lVar20 = syna_request_managed_device();
        if (lVar20 == 0) {
          puVar18 = &DAT_00171996;
LAB_00146490:
          uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
          return uVar17;
        }
        if (0x7ffffffe < uVar24) {
          puVar18 = &DAT_0016da92;
          goto LAB_00146490;
        }
        __dest = (void *)devm_kmalloc(lVar20,uVar28,0xdc0);
        *plVar2 = (long)__dest;
        if (__dest == (void *)0x0) {
          uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_realloc",uVar28);
          return uVar17;
        }
        if (pvVar16 == (void *)0x0) {
          uVar17 = _printk(&DAT_00166ca2,"syna_tcm_buf_realloc");
          return uVar17;
        }
        memcpy(__dest,pvVar16,(ulong)uVar25);
        lVar20 = syna_request_managed_device();
        if (lVar20 == 0) {
          uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar17;
        }
        devm_kfree(lVar20,pvVar16);
        *(uint *)(param_1 + 0x248) = uVar28;
      }
      uVar28 = uVar24;
      if (*(uint *)(param_1 + 0x3c) != 0) {
        uVar28 = *(uint *)(param_1 + 0x3c);
      }
      if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
        uVar25 = 0;
        if (uVar28 == 0) {
          uVar23 = 0;
        }
        else {
          uVar4 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
          uVar23 = 0;
          if (uVar4 != 0) {
            uVar25 = 0;
            if (uVar4 != 0) {
              uVar25 = uVar28 / uVar4;
            }
            uVar25 = uVar25 * uVar4;
            if (uVar25 != 0) goto LAB_0014582c;
            goto LAB_0014580c;
          }
        }
      }
      else {
        uVar25 = uVar28;
        if (uVar28 == 0) {
LAB_0014580c:
          uVar23 = 0;
        }
        else {
LAB_0014582c:
          uVar23 = 0;
          if (uVar25 != 0) {
            uVar23 = ((uVar24 + uVar25) - 1) / uVar25;
          }
        }
      }
      if (uVar23 < 2) {
        uVar23 = 1;
      }
      uVar24 = (*(int *)(param_1 + 0x200) - uVar9) + 4;
      if (*(char *)(param_1 + 0x310) != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar17;
      }
      mutex_lock(param_1 + 0x2e0);
      iVar12 = 0;
      *(char *)(param_1 + 0x310) = *(char *)(param_1 + 0x310) + '\x01';
      uVar28 = 0;
      do {
        uVar4 = uVar28 + 1;
        uVar26 = uVar25 - 2;
        if (uVar29 <= uVar25) {
          uVar26 = uVar29;
        }
        if (uVar26 == 1) {
          uVar29 = uVar29 - 1;
          *(undefined1 *)(*plVar2 + (ulong)uVar24) = 0x5a;
          uVar24 = uVar24 + 1;
        }
        else {
          if (((uVar4 == uVar23) &&
              (lVar20 = *(long *)(param_1 + 0x48), (*(byte *)(lVar20 + 0x15) & 1) != 0)) &&
             (*(uint *)(lVar20 + 0x1c) < uVar26)) {
            uVar5 = *(uint *)(lVar20 + 0x18);
            iVar13 = 0;
            if (uVar5 != 0) {
              uVar10 = 0;
              if (uVar5 != 0) {
                uVar10 = uVar26 / uVar5;
              }
              iVar13 = uVar10 * uVar5;
            }
            uVar26 = iVar13 - 2;
            if (uVar26 != uVar29) {
              uVar23 = uVar23 + 1;
            }
          }
          uVar5 = uVar26 + 2;
          pvVar16 = *(void **)(param_1 + 0x2d0);
          uVar17 = (ulong)*(uint *)(param_1 + 0x2d8);
          if (*(uint *)(param_1 + 0x2d8) < uVar5) {
            if (pvVar16 != (void *)0x0) {
              lVar20 = syna_request_managed_device();
              if (lVar20 == 0) {
                uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
                return uVar17;
              }
              devm_kfree(lVar20,pvVar16);
            }
            lVar20 = syna_request_managed_device();
            if (lVar20 == 0) {
              puVar18 = &DAT_00171996;
LAB_00146764:
              uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
              return uVar17;
            }
            if ((int)uVar5 < 1) {
              puVar18 = &DAT_0016da92;
              goto LAB_00146764;
            }
            pvVar16 = (void *)devm_kmalloc(lVar20,(ulong)uVar5,0xdc0);
            *(void **)(param_1 + 0x2d0) = pvVar16;
            if (pvVar16 == (void *)0x0) {
              uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar5);
              return uVar17;
            }
            *(uint *)(param_1 + 0x2d8) = uVar5;
            uVar17 = (ulong)uVar5;
          }
          memset(pvVar16,0,uVar17);
          *(undefined4 *)(param_1 + 0x2dc) = 0;
          iVar13 = 5;
          if (5 < iVar12 + 1) {
            iVar13 = iVar12 + 1;
          }
          do {
            uVar10 = *(uint *)(param_1 + 0x210);
            if ((0 < (int)uVar10) && (uVar6 = *(uint *)(param_1 + 0x214), 0 < (int)uVar6)) {
              if (uVar6 <= uVar10) {
                uVar6 = uVar10;
              }
              usleep_range_state(uVar10,uVar6,2);
            }
            iVar14 = FUN_00146b28(param_1,uVar5,*(undefined8 *)(param_1 + 0x2d0),
                                  *(undefined4 *)(param_1 + 0x2d8));
            if (iVar14 < 0) {
              uVar17 = _printk(&DAT_0016c904,"syna_tcm_v1_continued_read",uVar5);
              return uVar17;
            }
            lVar20 = *(long *)(param_1 + 0x2d0);
            *(uint *)(param_1 + 0x2dc) = uVar5;
            cVar7 = *(char *)(lVar20 + 1);
            if (cVar7 == '\x03') goto joined_r0x00145adc;
            iVar12 = iVar12 + 1;
          } while (iVar12 < 5);
          if (cVar7 != '\x03') {
            uVar17 = _printk(&DAT_0016ac22,"syna_tcm_v1_continued_read",cVar7,uVar28,uVar23);
            return uVar17;
          }
          lVar20 = *(long *)(param_1 + 0x2d0);
          iVar12 = iVar13;
joined_r0x00145adc:
          if (((void *)(lVar20 + 2) == (void *)0x0) ||
             ((void *)(*plVar2 + (ulong)uVar24) == (void *)0x0)) {
            uVar17 = _printk(&DAT_00171bee,"syna_tcm_v1_continued_read");
            return uVar17;
          }
          uVar28 = *(int *)(param_1 + 0x2d8) - 2;
          uVar5 = *(int *)(param_1 + 0x248) - uVar24;
          if ((uVar28 < uVar26) || (uVar5 < uVar26)) {
            uVar17 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar28,uVar5,uVar26);
            return uVar17;
          }
          memcpy((void *)(*plVar2 + (ulong)uVar24),(void *)(lVar20 + 2),(ulong)uVar26);
          uVar24 = uVar26 + uVar24;
          uVar29 = uVar29 - uVar26;
        }
        uVar28 = uVar4;
      } while (uVar4 < uVar23);
      *(uint *)(param_1 + 0x24c) = uVar24;
      if (*(char *)(param_1 + 0x310) != '\x01') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x310) = 0;
      mutex_unlock(param_1 + 0x2e0);
      if (*(char *)(param_1 + 0x280) != '\x01') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x280) = 0;
      mutex_unlock(param_1 + 0x250);
      if (false) {
LAB_001467e4:
        uVar17 = _printk(&DAT_001705d6,"syna_tcm_v1_read_message",uVar9,*puVar27,puVar27[1],
                         puVar27[2],puVar27[3]);
        return uVar17;
      }
    }
  }
  if (*(char *)(param_1 + 0x280) != '\0') {
    uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar17;
  }
  mutex_lock(param_1 + 0x250);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  **(undefined1 **)(param_1 + 0x240) = 0xa5;
  *(undefined1 *)(*(long *)(param_1 + 0x240) + 1) = *(undefined1 *)(param_1 + 0x1fd);
  *(char *)(*(long *)(param_1 + 0x240) + 2) = (char)*(undefined4 *)(param_1 + 0x200);
  *(char *)(*(long *)(param_1 + 0x240) + 3) = (char)((uint)*(undefined4 *)(param_1 + 0x200) >> 8);
  if (*(char *)(param_1 + 0x280) != '\x01') {
    uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar17;
  }
  *(undefined1 *)(param_1 + 0x280) = 0;
  mutex_unlock(param_1 + 0x250);
  if ((*(char *)(param_1 + 0x380) == '\x01') && (*(int *)(param_1 + 0x200) != 0)) {
    if (*(char *)(param_1 + 0x280) != '\0') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar17;
    }
    mutex_lock(param_1 + 0x250);
    cVar7 = *(char *)(param_1 + 0x280);
    uVar24 = *(int *)(param_1 + 0x200) + 5;
    *(char *)(param_1 + 0x280) = cVar7 + '\x01';
    if (uVar24 < *(uint *)(param_1 + 0x248)) {
      *(undefined2 *)(param_1 + 0x382) = *(undefined2 *)(*(long *)(param_1 + 0x240) + (ulong)uVar24)
      ;
      if ((*(char *)(param_1 + 900) == '\x01') &&
         (uVar24 = *(int *)(param_1 + 0x200) + 7, uVar24 <= *(uint *)(param_1 + 0x248))) {
        *(undefined1 *)(param_1 + 0x385) =
             *(undefined1 *)(*(long *)(param_1 + 0x240) + (ulong)uVar24);
      }
      if (cVar7 != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock",cVar7 + '\x01');
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x280) = 0;
      mutex_unlock(param_1 + 0x250);
    }
  }
  uVar17 = (ulong)*(byte *)(param_1 + 0x1fd);
  if (*(long *)(param_1 + 0x13d8 + uVar17 * 0x10 + 8) != 0) {
    if (*(char *)(param_1 + 0x280) != '\0') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar17;
    }
    mutex_lock(param_1 + 0x250);
    puVar1 = (undefined8 *)(param_1 + 0x13d8 + (ulong)*(byte *)(param_1 + 0x1fd) * 0x10);
    *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
    pcVar21 = (code *)puVar1[1];
    if (*(int *)(pcVar21 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
      pcVar21 = (code *)SoftwareBreakpoint(0x822b,0x145d00);
      (*pcVar21)();
    }
    (*pcVar21)(*(byte *)(param_1 + 0x1fd),*(long *)(param_1 + 0x240) + 4,
               *(undefined4 *)(param_1 + 0x200),*puVar1);
    if (*(char *)(param_1 + 0x280) != '\x01') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar17;
    }
    *(undefined1 *)(param_1 + 0x280) = 0;
    mutex_unlock(param_1 + 0x250);
    uVar17 = (ulong)*(byte *)(param_1 + 0x1fd);
  }
  if ((uint)uVar17 < 0x10) {
    if (*(int *)(param_1 + 0x1f8) == 1) {
      *(char *)(param_1 + 0x1fe) = (char)uVar17;
      if (*(int *)(param_1 + 0x200) == 0) {
        *(undefined4 *)(param_1 + 0x154) = 0;
        cVar7 = *(char *)(param_1 + 0x1fe);
      }
      else {
        if (*(char *)(param_1 + 0x188) != '\0') {
          uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar17;
        }
        mutex_lock(param_1 + 0x158);
        uVar24 = *(uint *)(param_1 + 0x200);
        uVar17 = (ulong)*(uint *)(param_1 + 0x150);
        pvVar16 = *(void **)(param_1 + 0x148);
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(uint *)(param_1 + 0x150) < uVar24) {
          if (pvVar16 != (void *)0x0) {
            lVar20 = syna_request_managed_device();
            if (lVar20 == 0) {
              uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
              return uVar17;
            }
            devm_kfree(lVar20,pvVar16);
          }
          lVar20 = syna_request_managed_device();
          if (lVar20 == 0) {
            puVar18 = &DAT_00171996;
LAB_00146834:
            uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
            return uVar17;
          }
          if ((int)uVar24 < 1) {
            puVar18 = &DAT_0016da92;
            goto LAB_00146834;
          }
          pvVar16 = (void *)devm_kmalloc(lVar20,(ulong)uVar24,0xdc0);
          *(void **)(param_1 + 0x148) = pvVar16;
          if (pvVar16 == (void *)0x0) {
            uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar24);
            return uVar17;
          }
          *(uint *)(param_1 + 0x150) = uVar24;
          uVar17 = (ulong)uVar24;
        }
        memset(pvVar16,0,uVar17);
        *(undefined4 *)(param_1 + 0x154) = 0;
        if (*(char *)(param_1 + 0x280) != '\0') {
          uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar17;
        }
        mutex_lock(param_1 + 0x250);
        *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
        if ((*(void **)(param_1 + 0x148) == (void *)0x0) ||
           (pvVar16 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar16 == (void *)0x0)) {
          uVar17 = _printk(&DAT_0017065e,"syna_tcm_v1_dispatch_response");
          return uVar17;
        }
        uVar24 = *(uint *)(param_1 + 0x200);
        if ((*(uint *)(param_1 + 0x150) < uVar24) || (*(int *)(param_1 + 0x248) - 4U < uVar24)) {
          uVar17 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
          return uVar17;
        }
        memcpy(*(void **)(param_1 + 0x148),pvVar16,(ulong)uVar24);
        *(undefined4 *)(param_1 + 0x154) = *(undefined4 *)(param_1 + 0x200);
        if (*(char *)(param_1 + 0x280) != '\x01') {
          uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar17;
        }
        *(undefined1 *)(param_1 + 0x280) = 0;
        mutex_unlock(param_1 + 0x250);
        if ((*(char *)(param_1 + 0x1fc) == '\x02') &&
           (iVar12 = FUN_0014541c(param_1,*(undefined8 *)(param_1 + 0x148),
                                  *(undefined4 *)(param_1 + 0x150),*(undefined4 *)(param_1 + 0x154))
           , iVar12 < 0)) {
          uVar17 = _printk(&DAT_0016d106,"syna_tcm_v1_dispatch_response");
          return uVar17;
        }
        if (*(char *)(param_1 + 0x188) != '\x01') {
          uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar17;
        }
        *(undefined1 *)(param_1 + 0x188) = 0;
        mutex_unlock(param_1 + 0x158);
        cVar7 = *(char *)(param_1 + 0x1fe);
      }
      if (cVar7 != '\0') {
        if (cVar7 != '\x01') {
          if (cVar7 != '\x03') {
            uVar17 = _printk(&DAT_0016737a,"syna_tcm_v1_dispatch_response",cVar7,
                             *(undefined1 *)(param_1 + 0x1fc));
            return uVar17;
          }
          uVar17 = _printk(&DAT_0016f878,"syna_tcm_v1_dispatch_response");
          return uVar17;
        }
        goto LAB_0014688c;
      }
    }
  }
  else if (*(int *)(param_1 + 0x200) == 0) {
    *(undefined4 *)(param_1 + 0x10c) = 0;
  }
  else {
    if (*(char *)(param_1 + 0x140) != '\0') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar17;
    }
    mutex_lock(param_1 + 0x110);
    uVar24 = *(uint *)(param_1 + 0x200);
    uVar22 = (ulong)*(uint *)(param_1 + 0x108);
    pvVar16 = *(void **)(param_1 + 0x100);
    *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
    if (*(uint *)(param_1 + 0x108) < uVar24) {
      if (pvVar16 != (void *)0x0) {
        lVar20 = syna_request_managed_device();
        if (lVar20 == 0) {
          uVar17 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar17;
        }
        devm_kfree(lVar20,pvVar16);
      }
      lVar20 = syna_request_managed_device();
      if (lVar20 == 0) {
        puVar18 = &DAT_00171996;
LAB_00146674:
        uVar17 = _printk(puVar18,"syna_pal_mem_alloc");
        return uVar17;
      }
      if ((int)uVar24 < 1) {
        puVar18 = &DAT_0016da92;
        goto LAB_00146674;
      }
      pvVar16 = (void *)devm_kmalloc(lVar20,(ulong)uVar24,0xdc0);
      *(void **)(param_1 + 0x100) = pvVar16;
      if (pvVar16 == (void *)0x0) {
        uVar17 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar24);
        return uVar17;
      }
      *(uint *)(param_1 + 0x108) = uVar24;
      uVar22 = (ulong)uVar24;
    }
    memset(pvVar16,0,uVar22);
    *(undefined4 *)(param_1 + 0x10c) = 0;
    if (*(char *)(param_1 + 0x280) != '\0') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar17;
    }
    mutex_lock(param_1 + 0x250);
    *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
    if ((*(void **)(param_1 + 0x100) == (void *)0x0) ||
       (pvVar16 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar16 == (void *)0x0)) {
      uVar17 = _printk(&DAT_00167e32,"syna_tcm_v1_dispatch_report");
      return uVar17;
    }
    uVar24 = *(uint *)(param_1 + 0x200);
    if ((*(uint *)(param_1 + 0x108) < uVar24) || (*(int *)(param_1 + 0x248) - 4U < uVar24)) {
      uVar17 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
      return uVar17;
    }
    memcpy(*(void **)(param_1 + 0x100),pvVar16,(ulong)uVar24);
    *(undefined4 *)(param_1 + 0x10c) = *(undefined4 *)(param_1 + 0x200);
    if (*(char *)(param_1 + 0x280) != '\x01') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar17;
    }
    *(undefined1 *)(param_1 + 0x280) = 0;
    mutex_unlock(param_1 + 0x250);
    if (*(char *)(param_1 + 0x140) != '\x01') {
      uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar17;
    }
    *(undefined1 *)(param_1 + 0x140) = 0;
    mutex_unlock(param_1 + 0x110);
    if ((uint)uVar17 == 0x10) {
      if (*(char *)(param_1 + 0x280) != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar17;
      }
      mutex_lock(param_1 + 0x250);
      *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
      iVar12 = FUN_00145724(param_1,*(long *)(param_1 + 0x240) + 4,*(int *)(param_1 + 0x248) + -4,
                            *(undefined4 *)(param_1 + 0x200));
      if (iVar12 < 0) {
        uVar17 = _printk(&DAT_0016f846,"syna_tcm_v1_dispatch_report");
        return uVar17;
      }
      if (*(char *)(param_1 + 0x280) != '\x01') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x280) = 0;
      mutex_unlock(param_1 + 0x250);
      if (*(int *)(param_1 + 0x1f8) == 1) {
        bVar8 = *(byte *)(param_1 + 0x1fc);
        if (bVar8 < 0x1f) {
          if ((bVar8 == 4) || (bVar8 == 0x14)) {
LAB_0014688c:
            *(undefined4 *)(param_1 + 0x1f8) = 0;
            uVar17 = completion_done(param_1 + 0x220);
            if ((uVar17 & 1) == 0) {
              complete(param_1 + 0x220);
            }
            goto joined_r0x001468a4;
          }
        }
        else if ((bVar8 == 0x1f) || (bVar8 == 0x31)) goto LAB_0014688c;
        if (*(char *)(param_1 + 0x1f0) != '\x01') {
          uVar17 = _printk(&DAT_00171438,"syna_tcm_v1_dispatch_report",0x10);
          return uVar17;
        }
        *(undefined4 *)(param_1 + 0x1f8) = 0;
        uVar22 = completion_done(param_1 + 0x220);
        if ((uVar22 & 1) == 0) {
          complete(param_1 + 0x220);
        }
      }
    }
    lVar20 = param_1 + uVar17 * 0x10;
    if (*(long *)(lVar20 + 0x3e0) != 0) {
      if (*(char *)(param_1 + 0x140) != '\0') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar17;
      }
      mutex_lock(param_1 + 0x110);
      uVar3 = *(undefined8 *)(lVar20 + 0x3d8);
      pcVar21 = *(code **)(lVar20 + 0x3e0);
      *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
      if (*(int *)(pcVar21 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
        pcVar21 = (code *)SoftwareBreakpoint(0x8229,0x14615c);
        (*pcVar21)();
      }
      (*pcVar21)(uVar17,*(undefined8 *)(param_1 + 0x100),*(undefined4 *)(param_1 + 0x10c),uVar3);
      if (*(char *)(param_1 + 0x140) != '\x01') {
        uVar17 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar17;
      }
      *(undefined1 *)(param_1 + 0x140) = 0;
      mutex_unlock(param_1 + 0x110);
    }
  }
joined_r0x001468a4:
  if (param_2 != (undefined1 *)0x0) {
    *param_2 = *(undefined1 *)(param_1 + 0x1fd);
  }
  uVar24 = 0;
  if (bVar11) {
    uVar9 = *(uint *)(param_1 + 0x200);
    uVar29 = *(int *)(param_1 + 0x3c) - 5;
    uVar28 = uVar9;
    if (uVar29 <= uVar9) {
      uVar28 = uVar29;
    }
    if (*(int *)(param_1 + 0x3c) != 0) {
      uVar9 = uVar28;
    }
    uVar28 = 0;
    if (0xf < *(byte *)(param_1 + 0x1fd)) {
      uVar28 = uVar9;
    }
    *(uint *)(param_1 + 0x37c) = uVar28;
  }
LAB_001468e4:
  uVar28 = *(uint *)(param_1 + 0x210);
  if ((0 < (int)uVar28) && (uVar9 = *(uint *)(param_1 + 0x214), 0 < (int)uVar9)) {
    if (uVar9 <= uVar28) {
      uVar9 = uVar28;
    }
    usleep_range_state(uVar28,uVar9,2);
  }
  mutex_unlock(param_1 + 0x348);
  return (ulong)uVar24;
}



/* 0014565c FUN_0014565c */

undefined8 FUN_0014565c(void)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  long lVar4;
  undefined8 uVar5;
  code *pcVar6;
  long unaff_x19;
  undefined4 unaff_w20;
  long unaff_x21;
  undefined *puVar7;
  int iVar8;
  
  iVar8 = 100;
  do {
    puVar7 = &DAT_0016d5c2;
    if ((*(long *)(unaff_x19 + 0x48) == 0) ||
       (pcVar6 = *(code **)(*(long *)(unaff_x19 + 0x48) + 0x20), puVar7 = &DAT_0016b7bc,
       pcVar6 == (code *)0x0)) {
      uVar5 = _printk(puVar7,"syna_tcm_read");
      return uVar5;
    }
    if (*(int *)(pcVar6 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x1456a0);
      (*pcVar6)();
    }
    iVar3 = (*pcVar6)();
    if (iVar3 < 0) {
      uVar5 = _printk(&DAT_00166c72,"syna_tcm_v1_discard_message",unaff_w20);
      return uVar5;
    }
    if (*(char *)(unaff_x21 + 1) == '\0') break;
    usleep_range_state(1000,2000,2);
    iVar8 = iVar8 + -1;
  } while (iVar8 != 0);
  lVar4 = syna_request_managed_device();
  if (lVar4 == 0) {
    uVar5 = _printk(&DAT_00171996,"syna_pal_mem_free");
    return uVar5;
  }
  devm_kfree();
  uVar1 = *(uint *)(unaff_x19 + 0x210);
  if ((0 < (int)uVar1) && (uVar2 = *(uint *)(unaff_x19 + 0x214), 0 < (int)uVar2)) {
    if (uVar2 <= uVar1) {
      uVar2 = uVar1;
    }
    usleep_range_state(uVar1,uVar2,2);
  }
  mutex_unlock(unaff_x19 + 0x348);
  return 0xffffff0e;
}



/* 00145724 FUN_00145724 */

undefined8 FUN_00145724(undefined8 param_1,undefined8 param_2,int param_3)

{
  undefined8 *puVar1;
  uint uVar2;
  char cVar3;
  byte bVar4;
  code *pcVar5;
  bool in_ZR;
  int iVar6;
  int iVar7;
  long lVar8;
  void *__dest;
  undefined8 uVar9;
  undefined *puVar10;
  uint in_w8;
  int iVar11;
  ulong uVar12;
  uint uVar13;
  ulong in_x9;
  uint in_w10;
  int in_w11;
  int in_w12;
  int in_w13;
  long unaff_x19;
  uint uVar14;
  uint *unaff_x21;
  uint uVar15;
  ulong uVar16;
  void *pvVar17;
  uint uVar18;
  undefined1 *unaff_x24;
  uint uVar19;
  undefined1 *unaff_x25;
  int unaff_w26;
  uint uVar20;
  uint uVar21;
  long unaff_x29;
  int iStack0000000000000004;
  int iStack0000000000000018;
  
  if (in_ZR) {
    in_w11 = in_w13 + 1;
    in_w8 = in_w10;
  }
  uVar21 = in_w11 + in_w12 + 1;
  uVar20 = in_w8 + in_w12 + 1;
  if ((in_x9 & 1) == 0) {
    uVar21 = in_w13 + 1;
    uVar20 = in_w10;
  }
  if (param_3 != 0) {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar9;
  }
  iStack0000000000000018 = in_w13;
  mutex_lock(unaff_x19 + 0x250);
  uVar15 = *(uint *)(unaff_x19 + 0x248);
  uVar13 = uVar20 + 1;
  *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
  if (uVar15 < uVar13) {
    pvVar17 = (void *)**(undefined8 **)(unaff_x29 + -8);
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
      puVar10 = &DAT_00171996;
LAB_00146490:
      uVar9 = _printk(puVar10,"syna_pal_mem_alloc");
      return uVar9;
    }
    if (0x7ffffffe < uVar20) {
      puVar10 = &DAT_0016da92;
      goto LAB_00146490;
    }
    __dest = (void *)devm_kmalloc(lVar8,uVar13,0xdc0);
    **(undefined8 **)(unaff_x29 + -8) = __dest;
    if (__dest == (void *)0x0) {
      uVar9 = _printk(&DAT_0016c730,"syna_tcm_buf_realloc",uVar13);
      return uVar9;
    }
    if (pvVar17 == (void *)0x0) {
      uVar9 = _printk(&DAT_00166ca2,"syna_tcm_buf_realloc");
      return uVar9;
    }
    memcpy(__dest,pvVar17,(ulong)uVar15);
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
      uVar9 = _printk(&DAT_00171996,"syna_pal_mem_free");
      return uVar9;
    }
    devm_kfree(lVar8,pvVar17);
    *unaff_x21 = uVar13;
  }
  uVar13 = uVar20;
  if (*(uint *)(unaff_x19 + 0x3c) != 0) {
    uVar13 = *(uint *)(unaff_x19 + 0x3c);
  }
  if (*(char *)(*(long *)(unaff_x19 + 0x48) + 0x15) == '\x01') {
    uVar15 = 0;
    if (uVar13 == 0) {
      uVar14 = 0;
    }
    else {
      uVar19 = *(uint *)(*(long *)(unaff_x19 + 0x48) + 0x18);
      uVar14 = 0;
      if (uVar19 != 0) {
        uVar15 = 0;
        if (uVar19 != 0) {
          uVar15 = uVar13 / uVar19;
        }
        uVar15 = uVar15 * uVar19;
        if (uVar15 != 0) goto LAB_0014582c;
        goto LAB_0014580c;
      }
    }
  }
  else {
    uVar15 = uVar13;
    if (uVar13 == 0) {
LAB_0014580c:
      uVar14 = 0;
    }
    else {
LAB_0014582c:
      uVar14 = 0;
      if (uVar15 != 0) {
        uVar14 = ((uVar20 + uVar15) - 1) / uVar15;
      }
    }
  }
  if (uVar14 < 2) {
    uVar14 = 1;
  }
  uVar20 = (*(int *)(unaff_x19 + 0x200) - iStack0000000000000018) + 4;
  if (*(char *)(unaff_x19 + 0x310) != '\0') {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar9;
  }
  iStack0000000000000004 = unaff_w26;
  mutex_lock(unaff_x19 + 0x2e0);
  cVar3 = *(char *)(unaff_x19 + 0x310);
  iVar7 = 0;
  uVar13 = uVar15 - 2;
  *(uint *)(unaff_x29 + -0x14) = uVar13;
  *(uint *)(unaff_x29 + -0x10) = uVar15;
  *(char *)(unaff_x19 + 0x310) = cVar3 + '\x01';
  uVar19 = 0;
  do {
    uVar2 = uVar19 + 1;
    uVar18 = uVar13;
    if (uVar21 <= uVar15) {
      uVar18 = uVar21;
    }
    if (uVar18 == 1) {
      uVar21 = uVar21 - 1;
      *(undefined1 *)(**(long **)(unaff_x29 + -8) + (ulong)uVar20) = 0x5a;
      uVar20 = uVar20 + 1;
    }
    else {
      if (((uVar2 == uVar14) &&
          (lVar8 = *(long *)(unaff_x19 + 0x48), (*(byte *)(lVar8 + 0x15) & 1) != 0)) &&
         (*(uint *)(lVar8 + 0x1c) < uVar18)) {
        uVar13 = *(uint *)(lVar8 + 0x18);
        iVar11 = 0;
        if (uVar13 != 0) {
          uVar15 = 0;
          if (uVar13 != 0) {
            uVar15 = uVar18 / uVar13;
          }
          iVar11 = uVar15 * uVar13;
        }
        uVar18 = iVar11 - 2;
        if (uVar18 != uVar21) {
          uVar14 = uVar14 + 1;
        }
      }
      uVar15 = *(uint *)(unaff_x19 + 0x2d8);
      *(uint *)(unaff_x29 + -0xc) = uVar14;
      uVar13 = uVar18 + 2;
      pvVar17 = *(void **)(unaff_x19 + 0x2d0);
      uVar16 = (ulong)uVar15;
      if (uVar15 < uVar13) {
        if (pvVar17 != (void *)0x0) {
          lVar8 = syna_request_managed_device();
          if (lVar8 == 0) {
            uVar9 = _printk(&DAT_00171996,"syna_pal_mem_free");
            return uVar9;
          }
          devm_kfree(lVar8,pvVar17);
        }
        lVar8 = syna_request_managed_device();
        if (lVar8 == 0) {
          puVar10 = &DAT_00171996;
LAB_00146764:
          uVar9 = _printk(puVar10,"syna_pal_mem_alloc");
          return uVar9;
        }
        if ((int)uVar13 < 1) {
          puVar10 = &DAT_0016da92;
          goto LAB_00146764;
        }
        pvVar17 = (void *)devm_kmalloc(lVar8,(ulong)uVar13,0xdc0);
        *(void **)(unaff_x19 + 0x2d0) = pvVar17;
        if (pvVar17 == (void *)0x0) {
          uVar9 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar13);
          return uVar9;
        }
        *(uint *)(unaff_x19 + 0x2d8) = uVar13;
        uVar16 = (ulong)uVar13;
      }
      memset(pvVar17,0,uVar16);
      *(undefined4 *)(unaff_x19 + 0x2dc) = 0;
      iVar11 = 5;
      if (5 < iVar7 + 1) {
        iVar11 = iVar7 + 1;
      }
      do {
        uVar15 = *(uint *)(unaff_x19 + 0x210);
        if ((0 < (int)uVar15) && (uVar14 = *(uint *)(unaff_x19 + 0x214), 0 < (int)uVar14)) {
          if (uVar14 <= uVar15) {
            uVar14 = uVar15;
          }
          usleep_range_state(uVar15,uVar14,2);
        }
        iVar6 = FUN_00146b28();
        if (iVar6 < 0) {
          uVar9 = _printk(&DAT_0016c904,"syna_tcm_v1_continued_read",uVar13);
          return uVar9;
        }
        lVar8 = *(long *)(unaff_x19 + 0x2d0);
        *(uint *)(unaff_x19 + 0x2dc) = uVar13;
        cVar3 = *(char *)(lVar8 + 1);
        if (cVar3 == '\x03') {
          uVar15 = *(uint *)(unaff_x29 + -0x10);
          goto joined_r0x00145adc;
        }
        iVar7 = iVar7 + 1;
      } while (iVar7 < 5);
      uVar15 = *(uint *)(unaff_x29 + -0x10);
      if (cVar3 != '\x03') {
        uVar9 = _printk(&DAT_0016ac22,"syna_tcm_v1_continued_read",cVar3,uVar19,
                        *(undefined4 *)(unaff_x29 + -0xc));
        return uVar9;
      }
      lVar8 = *(long *)(unaff_x19 + 0x2d0);
      iVar7 = iVar11;
joined_r0x00145adc:
      if (((void *)(lVar8 + 2) == (void *)0x0) ||
         (pvVar17 = (void *)(**(long **)(unaff_x29 + -8) + (ulong)uVar20), pvVar17 == (void *)0x0))
      {
        uVar9 = _printk(&DAT_00171bee,"syna_tcm_v1_continued_read");
        return uVar9;
      }
      uVar13 = *(int *)(unaff_x19 + 0x2d8) - 2;
      uVar14 = *(int *)(unaff_x19 + 0x248) - uVar20;
      if ((uVar13 < uVar18) || (uVar14 < uVar18)) {
        uVar9 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar13,uVar14,uVar18);
        return uVar9;
      }
      memcpy(pvVar17,(void *)(lVar8 + 2),(ulong)uVar18);
      uVar14 = *(uint *)(unaff_x29 + -0xc);
      uVar13 = *(uint *)(unaff_x29 + -0x14);
      uVar20 = uVar18 + uVar20;
      uVar21 = uVar21 - uVar18;
    }
    uVar19 = uVar2;
  } while (uVar2 < uVar14);
  *(uint *)(unaff_x19 + 0x24c) = uVar20;
  if (*(char *)(unaff_x19 + 0x310) != '\x01') {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar9;
  }
  *(undefined1 *)(unaff_x19 + 0x310) = 0;
  mutex_unlock(unaff_x19 + 0x2e0);
  if (*(char *)(unaff_x19 + 0x280) != '\x01') {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar9;
  }
  *(undefined1 *)(unaff_x19 + 0x280) = 0;
  mutex_unlock(unaff_x19 + 0x250);
  if (false) {
    uVar9 = _printk(&DAT_001705d6,"syna_tcm_v1_read_message",iStack0000000000000018,*unaff_x24,
                    unaff_x24[1],unaff_x24[2],unaff_x24[3]);
    return uVar9;
  }
  if (*(char *)(unaff_x19 + 0x280) != '\0') {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar9;
  }
  mutex_lock(unaff_x19 + 0x250);
  *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
  **(undefined1 **)(unaff_x19 + 0x240) = 0xa5;
  *(undefined1 *)(*(long *)(unaff_x19 + 0x240) + 1) = *(undefined1 *)(unaff_x19 + 0x1fd);
  *(char *)(*(long *)(unaff_x19 + 0x240) + 2) = (char)*(undefined4 *)(unaff_x19 + 0x200);
  *(char *)(*(long *)(unaff_x19 + 0x240) + 3) =
       (char)((uint)*(undefined4 *)(unaff_x19 + 0x200) >> 8);
  if (*(char *)(unaff_x19 + 0x280) != '\x01') {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar9;
  }
  *(undefined1 *)(unaff_x19 + 0x280) = 0;
  mutex_unlock(unaff_x19 + 0x250);
  if ((*(char *)(unaff_x19 + 0x380) == '\x01') && (*(int *)(unaff_x19 + 0x200) != 0)) {
    if (*(char *)(unaff_x19 + 0x280) != '\0') {
      uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar9;
    }
    mutex_lock(unaff_x19 + 0x250);
    cVar3 = *(char *)(unaff_x19 + 0x280);
    uVar21 = *(int *)(unaff_x19 + 0x200) + 5;
    *(char *)(unaff_x19 + 0x280) = cVar3 + '\x01';
    if (uVar21 < *(uint *)(unaff_x19 + 0x248)) {
      *(undefined2 *)(unaff_x19 + 0x382) =
           *(undefined2 *)(*(long *)(unaff_x19 + 0x240) + (ulong)uVar21);
      if ((*(char *)(unaff_x19 + 900) == '\x01') &&
         (uVar21 = *(int *)(unaff_x19 + 0x200) + 7, uVar21 <= *(uint *)(unaff_x19 + 0x248))) {
        *(undefined1 *)(unaff_x19 + 0x385) =
             *(undefined1 *)(*(long *)(unaff_x19 + 0x240) + (ulong)uVar21);
      }
      if (cVar3 != '\0') {
        uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock",cVar3 + '\x01');
        return uVar9;
      }
      *(undefined1 *)(unaff_x19 + 0x280) = 0;
      mutex_unlock(unaff_x19 + 0x250);
    }
  }
  uVar16 = (ulong)*(byte *)(unaff_x19 + 0x1fd);
  if (*(long *)(unaff_x19 + 0x13d8 + uVar16 * 0x10 + 8) != 0) {
    if (*(char *)(unaff_x19 + 0x280) != '\0') {
      uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar9;
    }
    mutex_lock(unaff_x19 + 0x250);
    puVar1 = (undefined8 *)(unaff_x19 + 0x13d8 + (ulong)*(byte *)(unaff_x19 + 0x1fd) * 0x10);
    *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
    pcVar5 = (code *)puVar1[1];
    if (*(int *)(pcVar5 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x822b,0x145d00);
      (*pcVar5)();
    }
    (*pcVar5)(*(byte *)(unaff_x19 + 0x1fd),*(long *)(unaff_x19 + 0x240) + 4,
              *(undefined4 *)(unaff_x19 + 0x200),*puVar1);
    if (*(char *)(unaff_x19 + 0x280) != '\x01') {
      uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar9;
    }
    *(undefined1 *)(unaff_x19 + 0x280) = 0;
    mutex_unlock(unaff_x19 + 0x250);
    uVar16 = (ulong)*(byte *)(unaff_x19 + 0x1fd);
  }
  if ((uint)uVar16 < 0x10) {
    if (*(int *)(unaff_x19 + 0x1f8) != 1) goto joined_r0x001468a4;
    *(char *)(unaff_x19 + 0x1fe) = (char)uVar16;
    if (*(int *)(unaff_x19 + 0x200) == 0) {
      *(undefined4 *)(unaff_x19 + 0x154) = 0;
      cVar3 = *(char *)(unaff_x19 + 0x1fe);
    }
    else {
      if (*(char *)(unaff_x19 + 0x188) != '\0') {
        uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar9;
      }
      mutex_lock(unaff_x19 + 0x158);
      uVar21 = *(uint *)(unaff_x19 + 0x200);
      uVar16 = (ulong)*(uint *)(unaff_x19 + 0x150);
      pvVar17 = *(void **)(unaff_x19 + 0x148);
      *(char *)(unaff_x19 + 0x188) = *(char *)(unaff_x19 + 0x188) + '\x01';
      if (*(uint *)(unaff_x19 + 0x150) < uVar21) {
        if (pvVar17 != (void *)0x0) {
          lVar8 = syna_request_managed_device();
          if (lVar8 == 0) {
            uVar9 = _printk(&DAT_00171996,"syna_pal_mem_free");
            return uVar9;
          }
          devm_kfree(lVar8,pvVar17);
        }
        lVar8 = syna_request_managed_device();
        if (lVar8 == 0) {
          puVar10 = &DAT_00171996;
LAB_00146834:
          uVar9 = _printk(puVar10,"syna_pal_mem_alloc");
          return uVar9;
        }
        if ((int)uVar21 < 1) {
          puVar10 = &DAT_0016da92;
          goto LAB_00146834;
        }
        pvVar17 = (void *)devm_kmalloc(lVar8,(ulong)uVar21,0xdc0);
        *(void **)(unaff_x19 + 0x148) = pvVar17;
        if (pvVar17 == (void *)0x0) {
          uVar9 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar21);
          return uVar9;
        }
        *(uint *)(unaff_x19 + 0x150) = uVar21;
        uVar16 = (ulong)uVar21;
      }
      memset(pvVar17,0,uVar16);
      *(undefined4 *)(unaff_x19 + 0x154) = 0;
      if (*(char *)(unaff_x19 + 0x280) != '\0') {
        uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
        return uVar9;
      }
      mutex_lock(unaff_x19 + 0x250);
      *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
      if ((*(void **)(unaff_x19 + 0x148) == (void *)0x0) ||
         (pvVar17 = (void *)(*(long *)(unaff_x19 + 0x240) + 4), pvVar17 == (void *)0x0)) {
        uVar9 = _printk(&DAT_0017065e,"syna_tcm_v1_dispatch_response");
        return uVar9;
      }
      uVar21 = *(uint *)(unaff_x19 + 0x200);
      if ((*(uint *)(unaff_x19 + 0x150) < uVar21) || (*(int *)(unaff_x19 + 0x248) - 4U < uVar21)) {
        uVar9 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
        return uVar9;
      }
      memcpy(*(void **)(unaff_x19 + 0x148),pvVar17,(ulong)uVar21);
      *(undefined4 *)(unaff_x19 + 0x154) = *(undefined4 *)(unaff_x19 + 0x200);
      if (*(char *)(unaff_x19 + 0x280) != '\x01') {
        uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar9;
      }
      *(undefined1 *)(unaff_x19 + 0x280) = 0;
      mutex_unlock(unaff_x19 + 0x250);
      if ((*(char *)(unaff_x19 + 0x1fc) == '\x02') && (iVar7 = FUN_0014541c(), iVar7 < 0)) {
        uVar9 = _printk(&DAT_0016d106,"syna_tcm_v1_dispatch_response");
        return uVar9;
      }
      if (*(char *)(unaff_x19 + 0x188) != '\x01') {
        uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
        return uVar9;
      }
      *(undefined1 *)(unaff_x19 + 0x188) = 0;
      mutex_unlock(unaff_x19 + 0x158);
      cVar3 = *(char *)(unaff_x19 + 0x1fe);
    }
    if (cVar3 == '\0') goto joined_r0x001468a4;
    if (cVar3 != '\x01') {
      if (cVar3 == '\x03') {
        uVar9 = _printk(&DAT_0016f878,"syna_tcm_v1_dispatch_response");
        return uVar9;
      }
      uVar9 = _printk(&DAT_0016737a,"syna_tcm_v1_dispatch_response",cVar3,
                      *(undefined1 *)(unaff_x19 + 0x1fc));
      return uVar9;
    }
    goto LAB_0014688c;
  }
  if (*(int *)(unaff_x19 + 0x200) == 0) {
    *(undefined4 *)(unaff_x19 + 0x10c) = 0;
    goto joined_r0x001468a4;
  }
  if (*(char *)(unaff_x19 + 0x140) != '\0') {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar9;
  }
  mutex_lock(unaff_x19 + 0x110);
  uVar21 = *(uint *)(unaff_x19 + 0x200);
  uVar12 = (ulong)*(uint *)(unaff_x19 + 0x108);
  pvVar17 = *(void **)(unaff_x19 + 0x100);
  *(char *)(unaff_x19 + 0x140) = *(char *)(unaff_x19 + 0x140) + '\x01';
  if (*(uint *)(unaff_x19 + 0x108) < uVar21) {
    if (pvVar17 != (void *)0x0) {
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        uVar9 = _printk(&DAT_00171996,"syna_pal_mem_free");
        return uVar9;
      }
      devm_kfree(lVar8,pvVar17);
    }
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
      puVar10 = &DAT_00171996;
LAB_00146674:
      uVar9 = _printk(puVar10,"syna_pal_mem_alloc");
      return uVar9;
    }
    if ((int)uVar21 < 1) {
      puVar10 = &DAT_0016da92;
      goto LAB_00146674;
    }
    pvVar17 = (void *)devm_kmalloc(lVar8,(ulong)uVar21,0xdc0);
    *(void **)(unaff_x19 + 0x100) = pvVar17;
    if (pvVar17 == (void *)0x0) {
      uVar9 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar21);
      return uVar9;
    }
    *(uint *)(unaff_x19 + 0x108) = uVar21;
    uVar12 = (ulong)uVar21;
  }
  memset(pvVar17,0,uVar12);
  *(undefined4 *)(unaff_x19 + 0x10c) = 0;
  if (*(char *)(unaff_x19 + 0x280) != '\0') {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar9;
  }
  mutex_lock(unaff_x19 + 0x250);
  *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
  if ((*(void **)(unaff_x19 + 0x100) == (void *)0x0) ||
     (pvVar17 = (void *)(*(long *)(unaff_x19 + 0x240) + 4), pvVar17 == (void *)0x0)) {
    uVar9 = _printk(&DAT_00167e32,"syna_tcm_v1_dispatch_report");
    return uVar9;
  }
  uVar21 = *(uint *)(unaff_x19 + 0x200);
  if ((*(uint *)(unaff_x19 + 0x108) < uVar21) || (*(int *)(unaff_x19 + 0x248) - 4U < uVar21)) {
    uVar9 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy");
    return uVar9;
  }
  memcpy(*(void **)(unaff_x19 + 0x100),pvVar17,(ulong)uVar21);
  *(undefined4 *)(unaff_x19 + 0x10c) = *(undefined4 *)(unaff_x19 + 0x200);
  if (*(char *)(unaff_x19 + 0x280) != '\x01') {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar9;
  }
  *(undefined1 *)(unaff_x19 + 0x280) = 0;
  mutex_unlock(unaff_x19 + 0x250);
  if (*(char *)(unaff_x19 + 0x140) != '\x01') {
    uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar9;
  }
  *(undefined1 *)(unaff_x19 + 0x140) = 0;
  mutex_unlock(unaff_x19 + 0x110);
  if ((uint)uVar16 == 0x10) {
    if (*(char *)(unaff_x19 + 0x280) != '\0') {
      uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar9;
    }
    mutex_lock(unaff_x19 + 0x250);
    *(char *)(unaff_x19 + 0x280) = *(char *)(unaff_x19 + 0x280) + '\x01';
    iVar7 = FUN_00145724();
    if (iVar7 < 0) {
      uVar9 = _printk(&DAT_0016f846,"syna_tcm_v1_dispatch_report");
      return uVar9;
    }
    if (*(char *)(unaff_x19 + 0x280) != '\x01') {
      uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar9;
    }
    *(undefined1 *)(unaff_x19 + 0x280) = 0;
    mutex_unlock(unaff_x19 + 0x250);
    if (*(int *)(unaff_x19 + 0x1f8) == 1) {
      bVar4 = *(byte *)(unaff_x19 + 0x1fc);
      if (bVar4 < 0x1f) {
        if ((bVar4 == 4) || (bVar4 == 0x14)) {
LAB_0014688c:
          *(undefined4 *)(unaff_x19 + 0x1f8) = 0;
          uVar16 = completion_done(unaff_x19 + 0x220);
          if ((uVar16 & 1) == 0) {
            complete(unaff_x19 + 0x220);
          }
          goto joined_r0x001468a4;
        }
      }
      else if ((bVar4 == 0x1f) || (bVar4 == 0x31)) goto LAB_0014688c;
      if (*(char *)(unaff_x19 + 0x1f0) != '\x01') {
        uVar9 = _printk(&DAT_00171438,"syna_tcm_v1_dispatch_report",0x10);
        return uVar9;
      }
      *(undefined4 *)(unaff_x19 + 0x1f8) = 0;
      uVar12 = completion_done(unaff_x19 + 0x220);
      if ((uVar12 & 1) == 0) {
        complete(unaff_x19 + 0x220);
      }
    }
  }
  lVar8 = unaff_x19 + uVar16 * 0x10;
  if (*(long *)(lVar8 + 0x3e0) != 0) {
    if (*(char *)(unaff_x19 + 0x140) != '\0') {
      uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar9;
    }
    mutex_lock(unaff_x19 + 0x110);
    uVar9 = *(undefined8 *)(lVar8 + 0x3d8);
    pcVar5 = *(code **)(lVar8 + 0x3e0);
    *(char *)(unaff_x19 + 0x140) = *(char *)(unaff_x19 + 0x140) + '\x01';
    if (*(int *)(pcVar5 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8229,0x14615c);
      (*pcVar5)();
    }
    (*pcVar5)(uVar16,*(undefined8 *)(unaff_x19 + 0x100),*(undefined4 *)(unaff_x19 + 0x10c),uVar9);
    if (*(char *)(unaff_x19 + 0x140) != '\x01') {
      uVar9 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar9;
    }
    *(undefined1 *)(unaff_x19 + 0x140) = 0;
    mutex_unlock(unaff_x19 + 0x110);
  }
joined_r0x001468a4:
  if (unaff_x25 != (undefined1 *)0x0) {
    *unaff_x25 = *(undefined1 *)(unaff_x19 + 0x1fd);
  }
  if (iStack0000000000000004 != 0) {
    uVar20 = *(uint *)(unaff_x19 + 0x200);
    uVar13 = *(int *)(unaff_x19 + 0x3c) - 5;
    uVar21 = uVar20;
    if (uVar13 <= uVar20) {
      uVar21 = uVar13;
    }
    if (*(int *)(unaff_x19 + 0x3c) != 0) {
      uVar20 = uVar21;
    }
    uVar21 = 0;
    if (0xf < *(byte *)(unaff_x19 + 0x1fd)) {
      uVar21 = uVar20;
    }
    *(uint *)(unaff_x19 + 0x37c) = uVar21;
  }
  uVar21 = *(uint *)(unaff_x19 + 0x210);
  if ((0 < (int)uVar21) && (uVar20 = *(uint *)(unaff_x19 + 0x214), 0 < (int)uVar20)) {
    if (uVar20 <= uVar21) {
      uVar20 = uVar21;
    }
    usleep_range_state(uVar21,uVar20,2);
  }
  mutex_unlock(unaff_x19 + 0x348);
  return 0;
}



/* 001469cc syna_tcm_v1_set_up_max_rw_size */

undefined8 syna_tcm_v1_set_up_max_rw_size(long param_1,uint param_2,uint param_3)

{
  uint uVar1;
  ushort uVar2;
  undefined1 *puVar3;
  undefined8 uVar4;
  uint uVar5;
  
  if (param_1 == 0) {
    puVar3 = &DAT_00168a84;
  }
  else {
    if (*(char *)(param_1 + 0x80) == '\x01') {
      uVar2 = *(ushort *)(param_1 + 0x96);
      uVar1 = *(uint *)(param_1 + 0x40);
      if (param_2 <= uVar2) {
        uVar5 = (uint)uVar2;
        if (uVar1 <= uVar2) {
          uVar5 = uVar1;
        }
        if (param_2 <= uVar5) {
          uVar5 = param_2;
        }
        if (uVar1 != 0) {
          param_2 = uVar5;
        }
        if (*(uint *)(param_1 + 0x38) != param_2) {
          *(uint *)(param_1 + 0x38) = param_2;
        }
      }
      uVar5 = param_3;
      if ((uVar1 != 0) && (uVar5 = *(uint *)(param_1 + 0x44), param_3 <= *(uint *)(param_1 + 0x44)))
      {
        uVar5 = param_3;
      }
      if (*(uint *)(param_1 + 0x3c) != uVar5) {
        *(uint *)(param_1 + 0x3c) = uVar5;
      }
      return 0;
    }
    puVar3 = &DAT_0016c2b0;
  }
  uVar4 = _printk(puVar3,"syna_tcm_v1_set_up_max_rw_size");
  return uVar4;
}



/* 00146a84 syna_tcm_v1_read */

undefined8 syna_tcm_v1_read(long param_1,uint param_2,char *param_3,uint param_4)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  undefined8 uVar4;
  code *pcVar5;
  
  if (param_3 == (char *)0x0) {
    uVar4 = _printk(&DAT_0016924c,"syna_tcm_v1_read");
    return uVar4;
  }
  if (param_2 == 0) {
    return 0;
  }
  if (param_4 < param_2) {
    puVar3 = &DAT_001713fe;
  }
  else {
    if ((*(uint *)(param_1 + 0x3c) == 0) || (param_2 <= *(uint *)(param_1 + 0x3c))) {
      lVar2 = *(long *)(param_1 + 0x48);
      if (lVar2 == 0) {
        puVar3 = &DAT_0016d5c2;
      }
      else {
        pcVar5 = *(code **)(lVar2 + 0x20);
        if (pcVar5 != (code *)0x0) {
          if (*(int *)(pcVar5 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
            pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x146aec);
            (*pcVar5)();
          }
          iVar1 = (*pcVar5)(lVar2,param_3,param_2);
          if (-1 < iVar1) {
            if (*param_3 == -0x5b) {
              return 0;
            }
            uVar4 = _printk(&DAT_0016dcb4,"syna_tcm_v1_read");
            return uVar4;
          }
          uVar4 = _printk(&DAT_00166c72,"syna_tcm_v1_read",param_2);
          return uVar4;
        }
        puVar3 = &DAT_0016b7bc;
      }
      uVar4 = _printk(puVar3,"syna_tcm_read");
      return uVar4;
    }
    puVar3 = &DAT_00168c96;
  }
  uVar4 = _printk(puVar3,"syna_tcm_v1_read",param_2);
  return uVar4;
}



/* 00146b28 FUN_00146b28 */

undefined8 FUN_00146b28(void)

{
  return 0xffffff0f;
}



/* 00146b90 FUN_00146b90 */

void FUN_00146b90(long param_1)

{
  undefined4 unaff_w19;
  
  _printk(param_1 + 0xc72,"syna_tcm_v1_read",unaff_w19);
  return;
}



/* 00146bcc syna_tcm_config_timings */

undefined8 syna_tcm_config_timings(long param_1,int *param_2,int param_3,uint param_4)

{
  undefined8 uVar1;
  
  if ((param_2 == (int *)0x0) && (param_4 == 0xffff)) {
    uVar1 = _printk(&DAT_00171c12,"syna_tcm_config_timings");
    return uVar1;
  }
  if ((param_2 != (int *)0x0) && ((param_4 >> 2 & 1) != 0)) {
    if (param_2[2] != 0) {
      *(int *)(param_1 + 0x210) = param_2[2];
    }
    param_3 = param_2[3];
    if (param_3 != 0) {
      *(int *)(param_1 + 0x214) = param_3;
    }
  }
  if ((param_4 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      param_3 = *param_2;
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x208) = param_3;
    }
  }
  if ((param_4 >> 1 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (param_2[1] != 0)) {
      param_3 = param_2[1];
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x20c) = param_3;
    }
  }
  if (((param_2 != (int *)0x0) && ((param_4 >> 3 & 1) != 0)) && (param_3 = param_2[4], param_3 != 0)
     ) {
    *(int *)(param_1 + 0x218) = param_3;
  }
  if ((param_4 >> 8 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (param_2[8] != 0)) {
      param_3 = param_2[8];
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x1e8) = param_3;
    }
  }
  if ((param_4 >> 9 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (param_2[9] != 0)) {
      param_3 = param_2[9];
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x1ec) = param_3;
    }
  }
  return 0;
}



/* 00146cbc syna_tcm_allocate_device */

void syna_tcm_allocate_device(undefined8 param_1,long param_2)

{
  undefined *puVar1;
  
  if (param_2 == 0) {
    puVar1 = &DAT_00170698;
  }
  else if (*(long *)(param_2 + 0x20) == 0) {
    puVar1 = &DAT_0016dce4;
  }
  else {
    if (*(long *)(param_2 + 0x28) != 0) {
      _printk(&DAT_0016be48,"syna_tcm_allocate_device");
      return;
    }
    puVar1 = &DAT_00169886;
  }
  _printk(puVar1,"syna_tcm_allocate_device");
  return;
}



/* 00147264 syna_tcm_buf_copy_2 */

undefined8 syna_tcm_buf_copy_2(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  undefined8 uVar5;
  ulong __n;
  uint uVar6;
  
  if ((char)param_1[8] != '\0') {
    uVar5 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar5;
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    uVar5 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar5;
  }
  mutex_lock(param_2 + 2);
  uVar6 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar6) {
    if (param_1 == (long *)0x0) {
      uVar5 = _printk(&DAT_00171568,"syna_tcm_buf_alloc");
      return uVar5;
    }
    uVar1 = uVar6 + 1;
    __s = (void *)*param_1;
    if (uVar2 < uVar1) {
      if (__s != (void *)0x0) {
        lVar3 = syna_request_managed_device();
        if (lVar3 == 0) {
          uVar5 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar5;
        }
        devm_kfree(lVar3,__s);
      }
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        puVar4 = &DAT_00171996;
LAB_001474d0:
        uVar5 = _printk(puVar4,"syna_pal_mem_alloc");
        return uVar5;
      }
      if (0x7ffffffe < uVar6) {
        puVar4 = &DAT_0016da92;
        goto LAB_001474d0;
      }
      __s = (void *)devm_kmalloc(lVar3,(ulong)uVar1,0xdc0);
      *param_1 = (long)__s;
      if (__s == (void *)0x0) {
        uVar5 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
        return uVar5;
      }
      *(uint *)(param_1 + 1) = uVar1;
      __n = (ulong)uVar1;
    }
    memset(__s,0,__n);
    *(undefined4 *)((long)param_1 + 0xc) = 0;
    __n = (ulong)*(uint *)(param_1 + 1);
    uVar6 = *(uint *)((long)param_2 + 0xc);
  }
  if (((void *)*param_1 == (void *)0x0) || ((void *)*param_2 == (void *)0x0)) {
    uVar5 = _printk(&DAT_0016a4dc,"syna_tcm_buf_copy",uVar6);
    return uVar5;
  }
  if ((uVar6 <= (uint)__n) && (uVar6 <= *(uint *)(param_2 + 1))) {
    memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar6);
    *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
    if (*(char *)(param_2 + 8) != '\x01') {
      uVar5 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar5;
    }
    *(undefined1 *)(param_2 + 8) = 0;
    mutex_unlock(param_2 + 2);
    if ((char)param_1[8] != '\x01') {
      uVar5 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar5;
    }
    *(undefined1 *)(param_1 + 8) = 0;
    mutex_unlock(param_1 + 2);
    return 0;
  }
  uVar5 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar6);
  return uVar5;
}



/* 001475a8 syna_tcm_identify */

void syna_tcm_identify(long param_1,undefined8 param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_identify");
    return;
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00171524,"syna_tcm_identify");
      return;
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x14764c);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,2,0,0,0,param_3);
  if (iVar2 < 0) {
    _printk(&DAT_0016f442,"syna_tcm_identify",2);
    return;
  }
  *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
  _printk(&DAT_00171c44,"syna_tcm_identify",*(undefined1 *)(param_1 + 0x81),
          *(undefined1 *)(param_1 + 0x80));
  return;
}



/* 00147794 syna_tcm_buf_unlock */

void syna_tcm_buf_unlock(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\x01') {
    *(undefined1 *)(param_1 + 0x40) = 0;
    mutex_unlock(param_1 + 0x10);
    return;
  }
  _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
  return;
}



/* 00147800 syna_tcm_wait_for_report */

void syna_tcm_wait_for_report(long param_1,char param_2,long param_3,uint param_4,uint param_5)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *puVar4;
  ulong uVar5;
  long lVar6;
  bool bVar7;
  char local_5c [4];
  long local_58;
  
  lVar6 = sp_el0;
  local_58 = *(long *)(lVar6 + 0x710);
  local_5c[0] = '\0';
  if (param_1 == 0) {
    puVar4 = &DAT_00168a84;
LAB_001478d4:
    _printk(puVar4,"syna_tcm_wait_for_report");
    return;
  }
  if (param_3 == 0) {
    puVar4 = &DAT_0016feaa;
    goto LAB_001478d4;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_00169282,"syna_tcm_wait_for_report");
    return;
  }
  lVar6 = *(long *)(param_1 + 0x48);
  uVar1 = param_4;
  if (*(char *)(lVar6 + 0x14) == '\x01') {
    if (lVar6 == 0) {
      _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
      return;
    }
    if (*(long *)(lVar6 + 0x38) != 0) {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar6 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1478a0);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(lVar6 + 0x38))(lVar6,0);
      mutex_unlock(param_1 + 0x50);
      bVar7 = iVar3 < 1;
      goto joined_r0x00147930;
    }
  }
  bVar7 = true;
joined_r0x00147930:
  while( true ) {
    if (0 < (int)param_4) {
      msleep(param_4);
    }
    uVar5 = syna_tcm_get_event_data(param_1,local_5c,param_3);
    if ((((-1 < (int)uVar5) && (local_5c[0] == param_2)) && (*(int *)(param_3 + 0xc) != 0)) ||
       (param_5 <= uVar1)) break;
    uVar1 = uVar1 + param_4;
  }
  lVar6 = *(long *)(param_1 + 0x48);
  if (!bVar7 && ((*(byte *)(lVar6 + 0x14) ^ 0xff) & 1) == 0) {
    if (lVar6 == 0) {
      _printk(&DAT_0016d5c2,"syna_tcm_enable_irq");
      return;
    }
    if (*(long *)(lVar6 + 0x38) != 0) {
      uVar5 = uVar5 & 0xffffffff;
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar6 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1479c8);
        (*pcVar2)();
      }
      (**(code **)(lVar6 + 0x38))(lVar6,1);
      mutex_unlock(param_1 + 0x50);
    }
  }
  if ((param_5 <= uVar1) && ((local_5c[0] != param_2 || (*(int *)(param_3 + 0xc) == 0)))) {
    uVar5 = 0xffffff0c;
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  return;
}



/* 00147a60 syna_tcm_switch_fw_mode */

undefined8 syna_tcm_switch_fw_mode(long param_1,char param_2,uint param_3)

{
  code *pcVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined8 uVar4;
  undefined *puVar5;
  char *pcVar6;
  uint uVar7;
  
  if (param_1 == 0) {
    puVar3 = &DAT_00168a84;
LAB_00147b30:
    uVar4 = _printk(puVar3,"syna_tcm_switch_fw_mode");
    return uVar4;
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar4 = _printk(&DAT_0017074a,"syna_tcm_switch_fw_mode");
      return uVar4;
    }
    uVar7 = 0;
  }
  else {
    uVar7 = *(uint *)(param_1 + 0x1e8);
    if (*(uint *)(param_1 + 0x1e8) <= param_3) {
      uVar7 = param_3;
    }
  }
  if (param_2 == '\v') {
    if (*(char *)(param_1 + 9) == '\v') {
LAB_00147ae0:
      pcVar1 = *(code **)(param_1 + 0x3b0);
      if (pcVar1 != (code *)0x0) {
        if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147b00);
          (*pcVar1)();
        }
        (*pcVar1)();
      }
      return 0;
    }
    if (uVar7 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        uVar4 = _printk(&DAT_00171524,"syna_tcm_run_bootloader_fw");
        return uVar4;
      }
      uVar7 = 0;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147cac);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x1f,0,0,0,uVar7);
    if (iVar2 < 0) {
      uVar4 = _printk(&DAT_0016f442,"syna_tcm_run_bootloader_fw",0x1f);
      return uVar4;
    }
    if (*(char *)(param_1 + 9) != '\v') {
      uVar4 = _printk(&DAT_0016dd26,"syna_tcm_run_bootloader_fw");
      return uVar4;
    }
    puVar5 = &DAT_001722f6;
    pcVar6 = "syna_tcm_run_bootloader_fw";
  }
  else {
    if (param_2 != '\x01') {
      puVar3 = &DAT_0016c356;
      goto LAB_00147b30;
    }
    if (*(char *)(param_1 + 9) == '\x01') goto LAB_00147ae0;
    if (uVar7 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        uVar4 = _printk(&DAT_00171524,"syna_tcm_run_application_fw");
        return uVar4;
      }
      uVar7 = 0;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147be8);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x14,0,0,0,uVar7);
    if (iVar2 < 0) {
      uVar4 = _printk(&DAT_0016f442,"syna_tcm_run_application_fw",0x14);
      return uVar4;
    }
    if (*(char *)(param_1 + 9) != '\x01') {
      uVar4 = _printk(&DAT_0016a60c,"syna_tcm_run_application_fw");
      return uVar4;
    }
    puVar5 = &DAT_001707a4;
    pcVar6 = "syna_tcm_run_application_fw";
  }
  uVar4 = _printk(puVar5,pcVar6);
  return uVar4;
}



/* 00147d3c syna_tcm_get_boot_info */

undefined8 syna_tcm_get_boot_info(long param_1,void *param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  uint uVar4;
  ulong __n;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_get_boot_info");
    return uVar3;
  }
  if (*(char *)(param_1 + 9) != '\v') {
    uVar3 = _printk(&DAT_00170e54,"syna_tcm_get_boot_info");
    return uVar3;
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_get_boot_info");
      return uVar3;
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147db4);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x10,0,0,0,param_3);
  if (iVar2 < 0) {
    uVar3 = _printk(&DAT_0016f442,"syna_tcm_get_boot_info",0x10);
    return uVar3;
  }
  uVar4 = *(uint *)(param_1 + 0x154);
  if (0x1f < uVar4) {
    uVar4 = 0x20;
  }
  __n = (ulong)uVar4;
  if (*(char *)(param_1 + 0x188) != '\0') {
    uVar3 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar3;
  }
  mutex_lock(param_1 + 0x158);
  *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
  if (*(void **)(param_1 + 0x148) == (void *)0x0) {
    uVar3 = _printk(&DAT_0016efee,"syna_tcm_get_boot_info");
    return uVar3;
  }
  if (uVar4 <= *(uint *)(param_1 + 0x150)) {
    memcpy((void *)(param_1 + 0xe0),*(void **)(param_1 + 0x148),__n);
    if (*(char *)(param_1 + 0x188) == '\x01') {
      *(undefined1 *)(param_1 + 0x188) = 0;
      mutex_unlock(param_1 + 0x158);
      if (param_2 != (void *)0x0) {
        memcpy(param_2,(void *)(param_1 + 0xe0),__n);
      }
      return 0;
    }
    uVar3 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
    return uVar3;
  }
  uVar3 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x20,__n);
  return uVar3;
}



/* 00147f7c syna_tcm_get_app_info */

undefined8 syna_tcm_get_app_info(long param_1,void *param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  undefined *puVar3;
  undefined8 uVar4;
  uint uVar5;
  ulong __n;
  
  if (param_1 == 0) {
    uVar4 = _printk(&DAT_00168a84,"syna_tcm_get_app_info");
    return uVar4;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar4 = _printk(&DAT_00169282,"syna_tcm_get_app_info");
    return uVar4;
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar4 = _printk(&DAT_00171524,"syna_tcm_get_app_info");
      return uVar4;
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147ff4);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x20,0,0,0,param_3);
  if (iVar2 < 0) {
    uVar4 = _printk(&DAT_0016f442,"syna_tcm_get_app_info",0x20);
    return uVar4;
  }
  uVar5 = *(uint *)(param_1 + 0x154);
  if (0x2f < uVar5) {
    uVar5 = 0x30;
  }
  __n = (ulong)uVar5;
  if (*(char *)(param_1 + 0x188) != '\0') {
    uVar4 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
    return uVar4;
  }
  mutex_lock(param_1 + 0x158);
  *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
  if (*(void **)(param_1 + 0x148) == (void *)0x0) {
    uVar4 = _printk(&DAT_0016d142,"syna_tcm_get_app_info");
    return uVar4;
  }
  if (uVar5 <= *(uint *)(param_1 + 0x150)) {
    memcpy((void *)(param_1 + 0xb0),*(void **)(param_1 + 0x148),__n);
    if (*(char *)(param_1 + 0x188) != '\x01') {
      uVar4 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar4;
    }
    *(undefined1 *)(param_1 + 0x188) = 0;
    mutex_unlock(param_1 + 0x158);
    if (param_2 != (void *)0x0) {
      memcpy(param_2,(void *)(param_1 + 0xb0),__n);
    }
    if (*(short *)(param_1 + 0xb2) == 0) {
      *(uint *)(param_1 + 0x10) = (uint)*(ushort *)(param_1 + 0xd0);
      *(uint *)(param_1 + 0x14) = (uint)*(ushort *)(param_1 + 0xd2);
      *(uint *)(param_1 + 0x18) = (uint)*(ushort *)(param_1 + 0xd4);
      *(uint *)(param_1 + 0x1c) = (uint)*(ushort *)(param_1 + 0xd8);
      *(uint *)(param_1 + 0x20) = (uint)*(ushort *)(param_1 + 0xda);
      *(undefined8 *)(param_1 + 0x2c) = *(undefined8 *)(param_1 + 200);
      *(undefined8 *)(param_1 + 0x24) = *(undefined8 *)(param_1 + 0xc0);
      return 0;
    }
    if (*(short *)(param_1 + 0xb2) == 0xff) {
      puVar3 = &DAT_0016fef2;
    }
    else {
      puVar3 = &DAT_0016ac5e;
    }
    uVar4 = _printk(puVar3,"syna_tcm_get_app_info");
    return uVar4;
  }
  uVar4 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x30,__n);
  return uVar4;
}



/* 00148220 syna_tcm_get_dynamic_config */

void syna_tcm_get_dynamic_config(long param_1,undefined1 param_2,undefined2 *param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_get_dynamic_config");
    return;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_00169282,"syna_tcm_get_dynamic_config");
    return;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00171524,"syna_tcm_get_dynamic_config");
      return;
    }
    param_4 = 0;
  }
  local_3c[0] = param_2;
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1482b0);
    (*pcVar2)();
  }
  iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x23,local_3c,1,0,param_4);
  if (iVar3 < 0) {
    _printk(&DAT_00166d16,"syna_tcm_get_dynamic_config",0x23,param_2);
    return;
  }
  if (1 < *(uint *)(param_1 + 0x154)) {
    *param_3 = **(undefined2 **)(param_1 + 0x148);
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == local_38) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0);
  }
  _printk(&DAT_0016c936,"syna_tcm_get_dynamic_config");
  return;
}



/* 001483ac syna_tcm_set_dynamic_config */

void syna_tcm_set_dynamic_config(long param_1,undefined1 param_2,uint param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined1 local_3c;
  undefined1 local_3b;
  undefined1 local_3a;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_set_dynamic_config");
    return;
  }
  local_3a = (undefined1)(param_3 >> 8);
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_00169282,"syna_tcm_set_dynamic_config");
    return;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00171524,"syna_tcm_set_dynamic_config");
      return;
    }
    param_4 = 0;
  }
  local_3b = (undefined1)param_3;
  local_3c = param_2;
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8229,0x148440);
    (*pcVar2)();
  }
  iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x24,&local_3c,3,0,param_4);
  if (iVar3 < 0) {
    _printk(&DAT_00172958,"syna_tcm_set_dynamic_config",0x24,param_3 & 0xffff,param_2);
    return;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00148510 syna_tcm_sleep */

undefined8 syna_tcm_sleep(long param_1,ulong param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 uVar4;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_sleep");
    return uVar3;
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_sleep");
      return uVar3;
    }
    param_3 = 0;
  }
  uVar4 = 0x2c;
  if ((param_2 & 1) == 0) {
    uVar4 = 0x2d;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x14857c);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,uVar4,0,0,0,param_3);
  if (-1 < iVar2) {
    return 0;
  }
  uVar3 = _printk(&DAT_00171ccc,"syna_tcm_sleep",uVar4);
  return uVar3;
}



/* 0014861c syna_tcm_get_features */

undefined8 syna_tcm_get_features(long param_1,void *param_2,int param_3)

{
  uint uVar1;
  code *pcVar2;
  undefined8 uVar3;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_get_features");
    return uVar3;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar3 = _printk(&DAT_00169282,"syna_tcm_get_features");
    return uVar3;
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_get_features");
      return uVar3;
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x148694);
    (*pcVar2)();
  }
  uVar3 = (**(code **)(param_1 + 0x398))(param_1,0x32,0,0,0,param_3);
  if ((int)uVar3 < 0) {
    uVar3 = _printk(&DAT_0016f442,"syna_tcm_get_features",0x32);
    return uVar3;
  }
  if (param_2 != (void *)0x0) {
    if (*(char *)(param_1 + 0x188) != '\0') {
      uVar3 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar3;
    }
    mutex_lock(param_1 + 0x158);
    uVar1 = *(uint *)(param_1 + 0x154);
    if (0xf < uVar1) {
      uVar1 = 0x10;
    }
    *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
    if (*(void **)(param_1 + 0x148) == (void *)0x0) {
      uVar3 = _printk(&DAT_001729ae,"syna_tcm_get_features");
      return uVar3;
    }
    if (*(uint *)(param_1 + 0x150) < uVar1) {
      uVar3 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x10);
      return uVar3;
    }
    memcpy(param_2,*(void **)(param_1 + 0x148),(ulong)uVar1);
    if (*(char *)(param_1 + 0x188) != '\x01') {
      uVar3 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
      return uVar3;
    }
    *(undefined1 *)(param_1 + 0x188) = 0;
    mutex_unlock(param_1 + 0x158);
    uVar3 = 0;
  }
  return uVar3;
}



/* 00148848 syna_tcm_rezero */

undefined8 syna_tcm_rezero(long param_1,int param_2)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_rezero");
    return uVar3;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar3 = _printk(&DAT_00169282,"syna_tcm_rezero");
    return uVar3;
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_rezero");
      return uVar3;
    }
    param_2 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1488b0);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x27,0,0,0,param_2);
  if (-1 < iVar2) {
    return 0;
  }
  uVar3 = _printk(&DAT_0016f442,"syna_tcm_rezero",0x27);
  return uVar3;
}



/* 00148958 syna_tcm_reset */

undefined8 syna_tcm_reset(long param_1,uint param_2)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  uint uVar4;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_reset");
    return uVar3;
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_reset");
      return uVar3;
    }
    uVar4 = 0;
  }
  else {
    uVar4 = *(uint *)(param_1 + 0x1ec);
    if (*(uint *)(param_1 + 0x1ec) <= param_2) {
      uVar4 = param_2;
    }
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1489c4);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,4,0,0,0,uVar4);
  if (iVar2 < 0) {
    uVar3 = _printk(&DAT_0016f442,"syna_tcm_reset",4);
    return uVar3;
  }
  pcVar1 = *(code **)(param_1 + 0x3b0);
  *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1489f8);
      (*pcVar1)();
    }
    (*pcVar1)(param_1);
  }
  pcVar1 = *(code **)(param_1 + 0x23e0);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148a20);
      (*pcVar1)();
    }
    iVar2 = (*pcVar1)(*(undefined8 *)(param_1 + 0x23d8));
    if (iVar2 < 0) {
      uVar3 = _printk(&DAT_00167ea4,"syna_tcm_reset");
      return uVar3;
    }
  }
  return 0;
}



/* 00148ac8 syna_tcm_run_production_test */

void syna_tcm_run_production_test(long param_1,undefined1 param_2,long param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_run_production_test");
    return;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_00169282,"syna_tcm_run_production_test");
    return;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00171524,"syna_tcm_run_production_test");
      return;
    }
    param_4 = 0;
  }
  local_3c[0] = param_2;
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x148b54);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x398))(param_1,0x2a,local_3c,1,0,param_4);
  if ((int)uVar4 < 0) {
    _printk(&DAT_0016f91c,"syna_tcm_run_production_test",local_3c[0],0x2a);
    return;
  }
  if (param_3 != 0) {
    iVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
    if (iVar3 < 0) {
      _printk(&DAT_0016c960,"syna_tcm_run_production_test");
      return;
    }
    uVar4 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 00148c54 syna_tcm_set_game_partition_config */

undefined8
syna_tcm_set_game_partition_config
          (long param_1,undefined1 param_2,int param_3,long param_4,int param_5)

{
  code *pcVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined1 *puVar5;
  char *__s;
  undefined8 uVar6;
  ulong uVar7;
  long lVar8;
  ulong uVar9;
  
  uVar9 = (ulong)(param_3 + 1);
  puVar5 = (undefined1 *)__kmalloc_noprof(uVar9,0xcc0);
  if (param_1 == 0) {
    uVar6 = _printk(&DAT_00168a84,"syna_tcm_set_game_partition_config");
    return uVar6;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar6 = _printk(&DAT_00171c8e,"syna_tcm_set_game_partition_config");
    return uVar6;
  }
  if (param_5 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar6 = _printk(&DAT_0016f46e,"syna_tcm_set_game_partition_config");
      return uVar6;
    }
    param_5 = 0;
  }
  iVar4 = param_3 * 6 + 0x20;
  __s = (char *)__kmalloc_noprof((long)iVar4,0xcc0);
  if (__s == (char *)0x0) {
    iVar2 = 0;
  }
  else {
    iVar2 = snprintf(__s,(long)iVar4,"out values: ");
  }
  if (uVar9 == 0) {
LAB_00148f20:
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x148f24);
    (*pcVar1)();
  }
  uVar7 = (ulong)(param_3 + 1U);
  *puVar5 = param_2;
  if (1 < (int)(param_3 + 1U)) {
    lVar8 = 0;
    do {
      if (uVar9 <= lVar8 + 1U) goto LAB_00148f20;
      puVar5[lVar8 + 1] = *(undefined1 *)(param_4 + lVar8);
      if ((__s != (char *)0x0) && (iVar2 < param_3 * 6 + 0x18)) {
        iVar3 = snprintf(__s + iVar2,(long)(iVar4 - iVar2),"%02x ");
        iVar2 = iVar3 + iVar2;
      }
      lVar8 = lVar8 + 1;
    } while (uVar7 - 1 != lVar8);
  }
  if (__s != (char *)0x0) {
    uVar6 = _printk(&DAT_0017299c,"syna_tcm_set_game_partition_config",__s);
    return uVar6;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148e98);
    (*pcVar1)();
  }
  iVar4 = (**(code **)(param_1 + 0x398))(param_1,199,puVar5,uVar7,0,param_5);
  if (-1 < iVar4) {
    return 0;
  }
  uVar6 = _printk(&DAT_00172958,"syna_tcm_set_game_partition_config",199,uVar7,param_2);
  return uVar6;
}



/* 00148f28 syna_tcm_set_static_config */

undefined8 syna_tcm_set_static_config(long param_1,undefined8 param_2,uint param_3,int param_4)

{
  code *pcVar1;
  int iVar2;
  undefined8 uVar3;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_set_static_config");
    return uVar3;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar3 = _printk(&DAT_00169282,"syna_tcm_set_static_config");
    return uVar3;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_set_static_config");
      return uVar3;
    }
    param_4 = 0;
  }
  if (*(ushort *)(param_1 + 0xb4) == param_3) {
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148fa8);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x22,param_2,param_3,0,param_4);
    if (-1 < iVar2) {
      return 0;
    }
    uVar3 = _printk(&DAT_0016f442,"syna_tcm_set_static_config",0x22);
    return uVar3;
  }
  uVar3 = _printk(&DAT_0016a5ca,"syna_tcm_set_static_config",param_3);
  return uVar3;
}



/* 00149074 syna_tcm_get_static_config */

undefined8 syna_tcm_get_static_config(long param_1,void *param_2,uint param_3,int param_4)

{
  uint uVar1;
  code *pcVar2;
  undefined8 uVar3;
  
  if (param_1 == 0) {
    uVar3 = _printk(&DAT_00168a84,"syna_tcm_get_static_config");
    return uVar3;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    uVar3 = _printk(&DAT_00169282,"syna_tcm_get_static_config");
    return uVar3;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar3 = _printk(&DAT_00171524,"syna_tcm_get_static_config");
      return uVar3;
    }
    param_4 = 0;
  }
  if (*(ushort *)(param_1 + 0xb4) <= param_3) {
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1490fc);
      (*pcVar2)();
    }
    uVar3 = (**(code **)(param_1 + 0x398))(param_1,0x21,0,0,0,param_4);
    if ((int)uVar3 < 0) {
      uVar3 = _printk(&DAT_0016f442,"syna_tcm_get_static_config",0x21);
      return uVar3;
    }
    if (param_2 != (void *)0x0) {
      if (*(uint *)(param_1 + 0x154) <= param_3) {
        if (*(char *)(param_1 + 0x188) != '\0') {
          uVar3 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
          return uVar3;
        }
        mutex_lock(param_1 + 0x158);
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(void **)(param_1 + 0x148) == (void *)0x0) {
          uVar3 = _printk(&DAT_0016f8e2,"syna_tcm_get_static_config");
          return uVar3;
        }
        uVar1 = *(uint *)(param_1 + 0x154);
        if ((param_3 < uVar1) || (*(uint *)(param_1 + 0x150) < uVar1)) {
          uVar3 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),param_3);
          return uVar3;
        }
        memcpy(param_2,*(void **)(param_1 + 0x148),(ulong)uVar1);
        if (*(char *)(param_1 + 0x188) != '\x01') {
          uVar3 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar3;
        }
        *(undefined1 *)(param_1 + 0x188) = 0;
        mutex_unlock(param_1 + 0x158);
        uVar3 = 0;
      }
    }
    return uVar3;
  }
  uVar3 = _printk(&DAT_00166cd4,"syna_tcm_get_static_config",param_3);
  return uVar3;
}



/* 001492a4 tp_edge_report_limit_write */

void tp_edge_report_limit_write(undefined8 param_1,long param_2,ulong param_3)

{
  ushort uVar1;
  long lVar2;
  int iVar3;
  long lVar4;
  uint uVar5;
  ulong local_c0;
  char *local_b8;
  char local_b0 [104];
  long local_48;
  
  lVar2 = tpd_cdev;
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  local_b0[0x60] = '\0';
  local_b0[0x61] = '\0';
  local_b0[0x62] = '\0';
  local_b0[99] = '\0';
  if (99 < param_3) {
    param_3 = 100;
  }
  local_b0[0x50] = '\0';
  local_b0[0x51] = '\0';
  local_b0[0x52] = '\0';
  local_b0[0x53] = '\0';
  local_b0[0x54] = '\0';
  local_b0[0x55] = '\0';
  local_b0[0x56] = '\0';
  local_b0[0x57] = '\0';
  local_b0[0x58] = '\0';
  local_b0[0x59] = '\0';
  local_b0[0x5a] = '\0';
  local_b0[0x5b] = '\0';
  local_b0[0x5c] = '\0';
  local_b0[0x5d] = '\0';
  local_b0[0x5e] = '\0';
  local_b0[0x5f] = '\0';
  local_b0[0x40] = '\0';
  local_b0[0x41] = '\0';
  local_b0[0x42] = '\0';
  local_b0[0x43] = '\0';
  local_b0[0x44] = '\0';
  local_b0[0x45] = '\0';
  local_b0[0x46] = '\0';
  local_b0[0x47] = '\0';
  local_b0[0x48] = '\0';
  local_b0[0x49] = '\0';
  local_b0[0x4a] = '\0';
  local_b0[0x4b] = '\0';
  local_b0[0x4c] = '\0';
  local_b0[0x4d] = '\0';
  local_b0[0x4e] = '\0';
  local_b0[0x4f] = '\0';
  local_b0[0x30] = '\0';
  local_b0[0x31] = '\0';
  local_b0[0x32] = '\0';
  local_b0[0x33] = '\0';
  local_b0[0x34] = '\0';
  local_b0[0x35] = '\0';
  local_b0[0x36] = '\0';
  local_b0[0x37] = '\0';
  local_b0[0x38] = '\0';
  local_b0[0x39] = '\0';
  local_b0[0x3a] = '\0';
  local_b0[0x3b] = '\0';
  local_b0[0x3c] = '\0';
  local_b0[0x3d] = '\0';
  local_b0[0x3e] = '\0';
  local_b0[0x3f] = '\0';
  local_b0[0x20] = '\0';
  local_b0[0x21] = '\0';
  local_b0[0x22] = '\0';
  local_b0[0x23] = '\0';
  local_b0[0x24] = '\0';
  local_b0[0x25] = '\0';
  local_b0[0x26] = '\0';
  local_b0[0x27] = '\0';
  local_b0[0x28] = '\0';
  local_b0[0x29] = '\0';
  local_b0[0x2a] = '\0';
  local_b0[0x2b] = '\0';
  local_b0[0x2c] = '\0';
  local_b0[0x2d] = '\0';
  local_b0[0x2e] = '\0';
  local_b0[0x2f] = '\0';
  local_b0[0x10] = '\0';
  local_b0[0x11] = '\0';
  local_b0[0x12] = '\0';
  local_b0[0x13] = '\0';
  local_b0[0x14] = '\0';
  local_b0[0x15] = '\0';
  local_b0[0x16] = '\0';
  local_b0[0x17] = '\0';
  local_b0[0x18] = '\0';
  local_b0[0x19] = '\0';
  local_b0[0x1a] = '\0';
  local_b0[0x1b] = '\0';
  local_b0[0x1c] = '\0';
  local_b0[0x1d] = '\0';
  local_b0[0x1e] = '\0';
  local_b0[0x1f] = '\0';
  local_b0[0] = '\0';
  local_b0[1] = '\0';
  local_b0[2] = '\0';
  local_b0[3] = '\0';
  local_b0[4] = '\0';
  local_b0[5] = '\0';
  local_b0[6] = '\0';
  local_b0[7] = '\0';
  local_b0[8] = '\0';
  local_b0[9] = '\0';
  local_b0[10] = '\0';
  local_b0[0xb] = '\0';
  local_b0[0xc] = '\0';
  local_b0[0xd] = '\0';
  local_b0[0xe] = '\0';
  local_b0[0xf] = '\0';
  local_c0 = 0;
  if (param_2 != 0) {
    __check_object_size(local_b0,param_3,0);
    lVar4 = _inline_copy_from_user(local_b0,param_2,param_3);
    if (lVar4 != 0) {
      _printk(&DAT_0017ee66);
      return;
    }
  }
  iVar3 = get_tp_algo_item_id(local_b0);
  if (-1 < iVar3) {
    local_b8 = strchr(local_b0,0x3a);
    local_b8 = local_b8 + 1;
    _printk(&DAT_0017de9b,local_b8);
    return;
  }
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_c0);
  if (iVar3 == 0) {
    if ((uint)local_c0 < 0xb) {
      uVar1 = *(ushort *)(lVar2 + 0x442);
      *(char *)(lVar2 + 0x38) = (char)local_c0;
      if ((uint)local_c0 < 6) {
        uVar5 = ((uint)local_c0 * uVar1 * 7) / 1000;
      }
      else {
        uVar5 = ((uint)uVar1 * 0x23) / 1000 + ((uint)local_c0 + 0xfffb) * ((uVar1 >> 1) / 0x7d);
      }
      *(short *)(lVar2 + 0x2c) = (short)uVar5;
      *(undefined2 *)(lVar2 + 0x2e) = 0;
      _printk(&DAT_0017e653,local_c0 & 0xffffffff,uVar5 & 0xffff,0);
      return;
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0xffffffffffffffea);
}



/* 00149660 tp_edge_report_limit_read */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long tp_edge_report_limit_read
               (undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined8 *puVar4;
  ulong uVar5;
  
  lVar3 = tpd_cdev;
  if (*param_4 == 0) {
    puVar4 = (undefined8 *)__kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
    if (puVar4 == (undefined8 *)0x0) {
      lVar3 = _printk(&DAT_0017eb90);
      return lVar3;
    }
    builtin_strncpy((char *)(puVar4 + 0xc),"algo_ope",8);
    builtin_strncpy((char *)(puVar4 + 0xd),"n:1 > ed",8);
    builtin_strncpy((char *)(puVar4 + 0xe),"ge_repor",8);
    builtin_strncpy((char *)(puVar4 + 0xf),"t_limit\n",8);
    builtin_strncpy((char *)(puVar4 + 10),"algo_ope",8);
    builtin_strncpy((char *)(puVar4 + 0xb),"n, echo ",8);
    puVar4[3] = 0x2323232323232323;
    *(char (*) [8])(puVar4 + 4) = (char  [8])0x23232323232323;
    builtin_strncpy((char *)(puVar4 + 0x15),"e_report",8);
    builtin_strncpy((char *)(puVar4 + 0x16),"_limit\n",8);
    puVar4[1] = 0x2323232323232323;
    puVar4[2] = 0x2323232323232323;
    builtin_strncpy((char *)(puVar4 + 0x10),"jitter_p",8);
    builtin_strncpy((char *)(puVar4 + 0x11),"ixel, ec",8);
    builtin_strncpy((char *)(puVar4 + 0x13),"r_pixel:",8);
    builtin_strncpy((char *)(puVar4 + 0x14),"10 > edg",8);
    builtin_strncpy((char *)(puVar4 + 0x12),"ho jitte",8);
    *puVar4 = 0x2323232323232323;
    *(undefined1 *)((long)puVar4 + 0x4f) = 10;
    builtin_strncpy((char *)((long)puVar4 + 199),"ho jitte",8);
    builtin_strncpy((char *)((long)puVar4 + 0xbf),"imer, ec",8);
    builtin_strncpy((char *)((long)puVar4 + 0xb7),"jitter_t",8);
    *(undefined8 *)((long)puVar4 + 0x2f) = 0x2323232323232323;
    *(undefined8 *)((long)puVar4 + 0x37) = 0x2323232323232323;
    builtin_strncpy((char *)((long)puVar4 + 0xe7),"t_limit\n",8);
    builtin_strncpy((char *)((long)puVar4 + 0xdf),"ge_repor",8);
    *(undefined8 *)((long)puVar4 + 0x3f) = 0x2323232323232323;
    builtin_strncpy((char *)((long)puVar4 + 0xd7),"100 > ed",8);
    builtin_strncpy((char *)((long)puVar4 + 0xcf),"r_timer:",8);
    builtin_strncpy((char *)((long)puVar4 + 0x47),"#######\n",8);
    builtin_strncpy((char *)((long)puVar4 + 0xff),"o click_",8);
    builtin_strncpy((char *)((long)puVar4 + 0xf7),"xel, ech",8);
    builtin_strncpy((char *)((long)puVar4 + 0xef),"click_pi",8);
    builtin_strncpy((char *)((long)puVar4 + 0x11c),"t_limit\n",8);
    *(undefined8 *)((long)puVar4 + 0x27) = 0x2323232323232323;
    *(undefined1 *)((long)puVar4 + 0x223) = 10;
    builtin_strncpy((char *)((long)puVar4 + 0x10f)," > edge_",8);
    builtin_strncpy((char *)((long)puVar4 + 0x117),"report_l",8);
    builtin_strncpy((char *)((long)puVar4 + 0x107),"pixel:10",8);
    *(undefined4 *)((long)puVar4 + 0x15c) = 0xa74696d;
    builtin_strncpy((char *)((long)puVar4 + 0x124),"long_pre",8);
    builtin_strncpy((char *)((long)puVar4 + 300),"ss_open,",8);
    builtin_strncpy((char *)((long)puVar4 + 0x14c),"> edge_r",8);
    builtin_strncpy((char *)((long)puVar4 + 0x154),"eport_li",8);
    builtin_strncpy((char *)((long)puVar4 + 0x134)," echo lo",8);
    builtin_strncpy((char *)((long)puVar4 + 0x13c),"ng_press",8);
    builtin_strncpy((char *)((long)puVar4 + 0x144),"_open:1 ",8);
    builtin_strncpy((char *)(puVar4 + 0x2e),", echo l",8);
    builtin_strncpy((char *)(puVar4 + 0x2f),"ong_pres",8);
    builtin_strncpy((char *)(puVar4 + 0x2c),"long_pre",8);
    builtin_strncpy((char *)(puVar4 + 0x2d),"ss_timer",8);
    builtin_strncpy((char *)(puVar4 + 0x32),"ge_repor",8);
    builtin_strncpy((char *)(puVar4 + 0x33),"t_limit\n",8);
    builtin_strncpy((char *)(puVar4 + 0x30),"s_timer:",8);
    builtin_strncpy((char *)(puVar4 + 0x31),"500 > ed",8);
    *(undefined4 *)(puVar4 + 0x3b) = 0xa7469;
    builtin_strncpy((char *)(puVar4 + 0x34),"pixel li",8);
    builtin_strncpy((char *)(puVar4 + 0x35),"mit leve",8);
    builtin_strncpy((char *)(puVar4 + 0x39)," edge_re",8);
    builtin_strncpy((char *)(puVar4 + 0x3a),"port_lim",8);
    builtin_strncpy((char *)(puVar4 + 0x36),"l,user s",8);
    builtin_strncpy((char *)(puVar4 + 0x37),"etting. ",8);
    builtin_strncpy((char *)(puVar4 + 0x38),"echo 5 >",8);
    builtin_strncpy((char *)((long)puVar4 + 0x1eb),", echo l",8);
    builtin_strncpy((char *)((long)puVar4 + 499),"ong_pres",8);
    builtin_strncpy((char *)((long)puVar4 + 0x1db),"long_pre",8);
    builtin_strncpy((char *)((long)puVar4 + 0x1e3),"ss_pixel",8);
    builtin_strncpy((char *)((long)puVar4 + 0x213),"ge_repor",8);
    builtin_strncpy((char *)((long)puVar4 + 0x21b),"t_limit\n",8);
    builtin_strncpy((char *)((long)puVar4 + 0x1fb),"s_pixel:",8);
    builtin_strncpy((char *)((long)puVar4 + 0x203),"10,10,20",8);
    builtin_strncpy((char *)((long)puVar4 + 0x20b),",20 > ed",8);
    *(undefined8 *)((long)puVar4 + 0x23c) = 0x2323232323232323;
    *(char (*) [8])((long)puVar4 + 0x244) = (char  [8])0x23232323232323;
    *(undefined8 *)((long)puVar4 + 0x22c) = 0x2323232323232323;
    *(undefined8 *)((long)puVar4 + 0x234) = 0x2323232323232323;
    *(undefined8 *)((long)puVar4 + 0x224) = 0x2323232323232323;
    *(undefined2 *)((long)puVar4 + 0x273) = 10;
    *(undefined8 *)((long)puVar4 + 0x25b) = 0x2323232323232323;
    *(undefined8 *)((long)puVar4 + 0x263) = 0x2323232323232323;
    builtin_strncpy((char *)((long)puVar4 + 0x26b),"#######\n",8);
    *(undefined8 *)((long)puVar4 + 0x24b) = 0x2323232323232323;
    *(undefined8 *)((long)puVar4 + 0x253) = 0x2323232323232323;
    iVar2 = snprintf((char *)((long)puVar4 + 0x274),0xd8c,"algo_open:%5u\n",
                     (ulong)*(byte *)(lVar3 + 0x1b));
    lVar1 = (long)iVar2 + 0x274;
    iVar2 = snprintf((char *)((long)puVar4 + lVar1),0xd8c - (long)iVar2,"jitter_pixel:%5u\n",
                     (ulong)*(byte *)(lVar3 + 0x24));
    lVar1 = lVar1 + iVar2;
    iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"jitter_timer:%5u\n",
                     (ulong)*(ushort *)(lVar3 + 0x3e));
    lVar1 = lVar1 + iVar2;
    iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"click_pixel:%5u\n",
                     (ulong)*(byte *)(lVar3 + 0x26));
    lVar1 = lVar1 + iVar2;
    iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"long_press_open:%5u\n",
                     (ulong)*(byte *)(lVar3 + 0x25));
    lVar1 = lVar1 + iVar2;
    iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"long_press_timer:%5u\n",
                     (ulong)*(ushort *)(lVar3 + 0x3c));
    lVar1 = lVar1 + iVar2;
    iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"pixel limit level:%5u\n",
                     (ulong)*(byte *)(lVar3 + 0x38));
    lVar1 = lVar1 + iVar2;
    iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"click_pixel width:");
    uVar5 = lVar1 + iVar2;
    if (uVar5 < 0xffb) {
      iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                       (ulong)*(byte *)(lVar3 + 0x27));
      uVar5 = uVar5 + (long)iVar2;
      if (uVar5 < 0xffb) {
        iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                         (ulong)*(byte *)(lVar3 + 0x28));
        uVar5 = uVar5 + (long)iVar2;
        if (uVar5 < 0xffb) {
          iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                           (ulong)*(byte *)(lVar3 + 0x29));
          uVar5 = uVar5 + (long)iVar2;
          if (uVar5 < 0xffb) {
            iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                             (ulong)*(byte *)(lVar3 + 0x2a));
            uVar5 = uVar5 + (long)iVar2;
          }
        }
      }
    }
    iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"\n long_press_pixel:");
    uVar5 = uVar5 + (long)iVar2;
    if (uVar5 < 0xffb) {
      iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                       (ulong)*(byte *)(lVar3 + 0x34));
      uVar5 = uVar5 + (long)iVar2;
      if (uVar5 < 0xffb) {
        iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                         (ulong)*(byte *)(lVar3 + 0x35));
        uVar5 = uVar5 + (long)iVar2;
        if (uVar5 < 0xffb) {
          iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                           (ulong)*(byte *)(lVar3 + 0x36));
          uVar5 = uVar5 + (long)iVar2;
          if (uVar5 < 0xffb) {
            iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                             (ulong)*(byte *)(lVar3 + 0x37));
            uVar5 = uVar5 + (long)iVar2;
          }
        }
      }
    }
    iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"\n");
    lVar3 = uVar5 + (long)iVar2;
    simple_read_from_buffer(param_2,param_3,param_4,puVar4,lVar3);
    kfree(puVar4);
  }
  else {
    lVar3 = 0;
  }
  return lVar3;
}



/* 00149b40 FUN_00149b40 */

void FUN_00149b40(void)

{
  return;
}



/* 00149ba0 get_one_key */

void get_one_key(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xef0);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x149c3c);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_00181cf8,"get_one_key",*(undefined4 *)(lVar2 + 0x458));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00149e70 syna_tcm_send_command */

void syna_tcm_send_command
               (long param_1,uint param_2,undefined8 param_3,undefined4 param_4,byte *param_5,
               long param_6,int param_7)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  ulong uVar4;
  undefined *puVar5;
  byte local_5c [4];
  long local_58;
  
  lVar1 = sp_el0;
  local_58 = *(long *)(lVar1 + 0x710);
  local_5c[0] = 0;
  if (param_1 == 0) {
    _printk(&DAT_00168a84,"syna_tcm_send_command");
    return;
  }
  if (param_7 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      _printk(&DAT_00171524,"syna_tcm_send_command");
      return;
    }
    param_7 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x149ef4);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x398))(param_1,param_2,param_3,param_4,local_5c,param_7);
  if ((int)uVar4 < 0) {
    _printk(&DAT_0016c386,"syna_tcm_send_command",param_2 & 0xff);
    return;
  }
  if (param_5 != (byte *)0x0) {
    *param_5 = local_5c[0];
  }
  if (param_6 != 0) {
    if (local_5c[0] - 0x10 < 0xef) {
      if (*(int *)(param_1 + 0x10c) != 0) {
        uVar4 = uVar4 & 0xffffffff;
        iVar3 = syna_tcm_buf_copy(param_6,param_1 + 0x100);
        if (iVar3 < 0) {
          puVar5 = &DAT_001714f2;
LAB_00149f8c:
          _printk(puVar5,"syna_tcm_send_command",local_5c[0]);
          return;
        }
      }
    }
    else if ((local_5c[0] - 1 < 0xf) && (*(int *)(param_1 + 0x154) != 0)) {
      uVar4 = uVar4 & 0xffffffff;
      iVar3 = syna_tcm_buf_copy(param_6,param_1 + 0x148);
      if (iVar3 < 0) {
        puVar5 = &DAT_00172280;
        goto LAB_00149f8c;
      }
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0014a050 syna_cdev_open */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void syna_cdev_open(void)

{
  long *plVar1;
  long lVar2;
  long *plVar3;
  long *plVar4;
  
  plVar4 = *(long **)(g_cdev_data + 0xa8);
  mutex_lock(&DAT_0015eb00);
  if (*(int *)((long)plVar4 + 900) == 0) {
    *(undefined4 *)((long)plVar4 + 900) = 1;
    _DAT_0015eb60 = 0;
    DAT_0015eb68 = 0;
    DAT_0015eb70._0_4_ = *(undefined4 *)(*plVar4 + 0x3c);
    _DAT_0015eb6c = *(undefined4 *)(*plVar4 + 0x38);
    *(undefined1 *)(*plVar4 + 0x37a) = 0;
    *(undefined1 *)((long)plVar4 + 0x584) = 0;
    mutex_lock();
    plVar3 = (long *)plVar4[0x9f];
    while (plVar3 != plVar4 + 0x9f) {
      plVar1 = (long *)plVar3[1];
      if (((long *)*plVar1 == plVar3) && (lVar2 = *plVar3, *(long **)(lVar2 + 8) == plVar3)) {
        *(long **)(lVar2 + 8) = plVar1;
        *plVar1 = lVar2;
      }
      else {
        __list_del_entry_valid_or_report(plVar3);
      }
      *plVar3 = -0x2152ffffffffff00;
      plVar3[1] = -0x2152fffffffffede;
      kfree(plVar3[2]);
      kfree(plVar3);
      if ((int)plVar4[0x9e] != 0) {
        *(int *)(plVar4 + 0x9e) = (int)plVar4[0x9e] + -1;
      }
      plVar3 = (long *)plVar4[0x9f];
    }
    mutex_unlock(&DAT_0015eb30);
    syna_tcm_clear_data_duplicator(*plVar4);
    mutex_unlock(&DAT_0015eb00);
    _printk(&unk_34E37,"syna_cdev_open");
    return;
  }
  _printk(&unk_366C2,"syna_cdev_open");
  return;
}



/* 0014a1b8 set_lcd_reset_processing */

void set_lcd_reset_processing(byte param_1)

{
  *(byte *)(tpd_cdev + 0x18) = param_1;
  _printk(&DAT_00181402,param_1 & 1);
  return;
}



/* 0014a1f4 set_one_key */

undefined8 set_one_key(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_00180744,"set_one_key");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014a2c8 get_play_game */

void get_play_game(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xf00);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14a364);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_00181cf8,"get_play_game",*(undefined4 *)(lVar2 + 0x45c));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014a3bc set_play_game */

undefined8 set_play_game(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    uVar3 = _printk(&DAT_00180744,"set_play_game",local_2c);
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014a484 get_tp_report_rate */

void get_tp_report_rate(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xf18);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14a520);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_00181cf8,"get_tp_report_rate",*(undefined4 *)(lVar2 + 0x464));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014a578 set_tp_report_rate */

undefined8 set_tp_report_rate(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    uVar3 = _printk(&DAT_00180744,"set_tp_report_rate",local_2c);
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014a640 get_follow_hand_level */

void get_follow_hand_level(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xf28);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14a6dc);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_00181cf8,"get_follow_hand_level",*(undefined4 *)(lVar2 + 0x468));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014a734 set_follow_hand_level */

undefined8 set_follow_hand_level(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    uVar3 = _printk(&DAT_00180744,"set_follow_hand_level",local_2c);
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014a7fc get_stability_level */

void get_stability_level(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xf38);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14a898);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_00181cf8,"get_stability_level",*(undefined4 *)(lVar2 + 0x46c));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014a8f0 set_stability_level */

undefined8 set_stability_level(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    uVar3 = _printk(&DAT_00180744,"set_stability_level",local_2c);
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014a9b8 tp_sensibility_level_read */

void tp_sensibility_level_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xf60);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14aa54);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_001831bf,"tp_sensibility_level_read",*(undefined1 *)(lVar2 + 0x40));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014aaac tp_sensibility_level_write */

undefined8 tp_sensibility_level_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    *(char *)(lVar2 + 0x40) = (char)local_4c;
    uVar4 = _printk(&DAT_0017ebfc,"tp_sensibility_level_write",local_4c & 0xff);
    return uVar4;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014abb8 syna_dev_set_follow_hand_level */

void syna_dev_set_follow_hand_level(void)

{
  _printk(&DAT_00170282,"syna_dev_set_follow_hand_level","syna_dev_set_follow_hand_level");
  return;
}



/* 0014ad44 syna_dev_set_stability_level */

void syna_dev_set_stability_level(void)

{
  _printk(&DAT_00170282,"syna_dev_set_stability_level","syna_dev_set_stability_level");
  return;
}



/* 0014aed0 syna_dev_set_display_rotation */

void syna_dev_set_display_rotation(undefined8 param_1,undefined4 param_2)

{
  _printk(&DAT_0016d990,"syna_dev_set_display_rotation",param_2);
  return;
}



/* 0014afd8 syna_recovery_game_mode_after_reset */

undefined8 syna_recovery_game_mode_after_reset(long *param_1)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  undefined4 uVar4;
  
  if (param_1 == (long *)0x0) {
    return 0xffffffea;
  }
  lVar3 = param_1[0x4e];
  if (((lVar3 == -0xa8) || (*(int *)(lVar3 + 0xb8) == 0)) || ((*(byte *)(lVar3 + 0xbc) & 1) == 0)) {
    uVar4 = *(undefined4 *)(*param_1 + 0x20c);
  }
  else {
    uVar4 = 0;
  }
  if (*(int *)((long)param_1 + 0x5dc) == 0) {
    iVar1 = syna_dev_set_tp_report_rate(param_1,(int)param_1[0xbf],uVar4);
    if (iVar1 < 0) {
      uVar2 = _printk(&DAT_0016d508,"syna_recovery_game_mode_after_reset");
      return uVar2;
    }
    uVar2 = _printk(&DAT_0016fc36,"syna_recovery_game_mode_after_reset");
    return uVar2;
  }
  uVar2 = _printk(&DAT_0016b55c,"syna_dev_set_play_game",1);
  return uVar2;
}



/* 0014b174 tp_game_partition_read */

void tp_game_partition_read(void)

{
  long lVar1;
  long *in_x3;
  undefined1 auStack_448 [1024];
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  memset(auStack_448,0,0x400);
  if (*in_x3 == 0) {
    _printk(&DAT_00171172,"tp_game_partition_read",tpd_cdev + 0x41);
    return;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014b250 tp_game_partition_write */

void tp_game_partition_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_0016eba0,"tp_game_partition_write",0x400,param_3);
  return;
}



/* 0014b394 tp_fold_state_read */

void tp_fold_state_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xfb8);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14b430);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_001694f2,"tp_fold_state_read",*(undefined4 *)(lVar2 + 0x47c));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014b488 tp_fold_state_write */

undefined8 tp_fold_state_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_0016cc56,"tp_fold_state_write");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014b55c get_fake_sleep */

void get_fake_sleep(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xfc8);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14b5f8);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_0016fb00,"get_fake_sleep",*(undefined4 *)(lVar2 + 0x480));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014b650 set_fake_sleep */

undefined8 set_fake_sleep(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_0016cc56,"set_fake_sleep");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014b724 get_screen_off_awake */

void get_screen_off_awake(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xfd8);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14b7c0);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_0016fb00,"get_screen_off_awake",*(undefined4 *)(lVar2 + 0x484));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014b818 set_screen_off_awake */

undefined8 set_screen_off_awake(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_0016cc56,"set_screen_off_awake");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014b8ec tp_zlog_debug_read */

void tp_zlog_debug_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  undefined8 uVar2;
  char local_50 [56];
  long local_18;
  
  lVar1 = sp_el0;
  uVar2 = 0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_50[0x2c] = '\0';
  local_50[0x2d] = '\0';
  local_50[0x2e] = '\0';
  local_50[0x2f] = '\0';
  local_50[0x30] = '\0';
  local_50[0x31] = '\0';
  local_50[0x24] = '\0';
  local_50[0x25] = '\0';
  local_50[0x26] = '\0';
  local_50[0x27] = '\0';
  local_50[0x28] = '\0';
  local_50[0x29] = '\0';
  local_50[0x2a] = '\0';
  local_50[0x2b] = '\0';
  local_50[0x1c] = '\0';
  local_50[0x1d] = '\0';
  local_50[0x1e] = '\0';
  local_50[0x1f] = '\0';
  local_50[0x20] = '\0';
  local_50[0x21] = '\0';
  local_50[0x22] = '\0';
  local_50[0x23] = '\0';
  local_50[0x14] = '\0';
  local_50[0x15] = '\0';
  local_50[0x16] = '\0';
  local_50[0x17] = '\0';
  local_50[0x18] = '\0';
  local_50[0x19] = '\0';
  local_50[0x1a] = '\0';
  local_50[0x1b] = '\0';
  local_50[0xc] = '\0';
  local_50[0xd] = '\0';
  local_50[0xe] = '\0';
  local_50[0xf] = '\0';
  local_50[0x10] = '\0';
  local_50[0x11] = '\0';
  local_50[0x12] = '\0';
  local_50[0x13] = '\0';
  if (*param_4 == 0) {
    builtin_strncpy(local_50 + 8,"use",4);
    builtin_strncpy(local_50,"this no ",8);
    uVar2 = simple_read_from_buffer(param_2,param_3,param_4,local_50,0xb);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 0014b98c tp_zlog_debug_write */

ulong tp_zlog_debug_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  int iVar2;
  uint local_3c;
  undefined8 local_38;
  undefined2 local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  if (8 < param_3) {
    param_3 = 9;
  }
  local_3c = 0;
  local_30 = 0;
  local_38 = 0;
  __check_object_size(&local_38,param_3,0);
  iVar2 = _inline_copy_from_user(&local_38,param_2,param_3);
  if ((iVar2 == 0) && (iVar2 = kstrtouint(&local_38,0,&local_3c), iVar2 == 0)) {
    if ((local_3c < 0x10) && ((1 << (ulong)(local_3c & 0x1f) & 0xee66U) != 0)) {
      tpd_zlog_record_notify();
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014ba60 ghost_debug_read */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 ghost_debug_read(void)

{
  long lVar1;
  long lVar2;
  undefined8 uVar3;
  long *in_x3;
  
  lVar1 = tpd_cdev;
  if (*in_x3 != 0) {
    return 0;
  }
  lVar2 = __kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
  if (lVar2 == 0) {
    uVar3 = _printk(&DAT_00168826);
    return uVar3;
  }
  uVar3 = _printk(&DAT_001687da,*(undefined1 *)(lVar1 + 0x491));
  return uVar3;
}



/* 0014bdb4 ghost_debug_write */

ulong ghost_debug_write(undefined8 param_1,long param_2,ulong param_3)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  char *pcVar5;
  ulong uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  undefined1 uVar11;
  undefined1 uVar12;
  undefined1 uVar13;
  undefined1 uVar14;
  undefined1 uVar15;
  undefined4 local_e4;
  char *local_e0;
  undefined8 local_d8;
  undefined8 local_d0;
  undefined8 local_c8;
  undefined8 local_c0;
  undefined8 uStack_b8;
  char local_b0 [104];
  long local_48;
  
  lVar1 = tpd_cdev;
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  local_b0[0x60] = '\0';
  local_b0[0x61] = '\0';
  local_b0[0x62] = '\0';
  local_b0[99] = '\0';
  if (99 < param_3) {
    param_3 = 100;
  }
  local_b0[0x50] = '\0';
  local_b0[0x51] = '\0';
  local_b0[0x52] = '\0';
  local_b0[0x53] = '\0';
  local_b0[0x54] = '\0';
  local_b0[0x55] = '\0';
  local_b0[0x56] = '\0';
  local_b0[0x57] = '\0';
  local_b0[0x58] = '\0';
  local_b0[0x59] = '\0';
  local_b0[0x5a] = '\0';
  local_b0[0x5b] = '\0';
  local_b0[0x5c] = '\0';
  local_b0[0x5d] = '\0';
  local_b0[0x5e] = '\0';
  local_b0[0x5f] = '\0';
  local_b0[0x40] = '\0';
  local_b0[0x41] = '\0';
  local_b0[0x42] = '\0';
  local_b0[0x43] = '\0';
  local_b0[0x44] = '\0';
  local_b0[0x45] = '\0';
  local_b0[0x46] = '\0';
  local_b0[0x47] = '\0';
  local_b0[0x48] = '\0';
  local_b0[0x49] = '\0';
  local_b0[0x4a] = '\0';
  local_b0[0x4b] = '\0';
  local_b0[0x4c] = '\0';
  local_b0[0x4d] = '\0';
  local_b0[0x4e] = '\0';
  local_b0[0x4f] = '\0';
  local_b0[0x30] = '\0';
  local_b0[0x31] = '\0';
  local_b0[0x32] = '\0';
  local_b0[0x33] = '\0';
  local_b0[0x34] = '\0';
  local_b0[0x35] = '\0';
  local_b0[0x36] = '\0';
  local_b0[0x37] = '\0';
  local_b0[0x38] = '\0';
  local_b0[0x39] = '\0';
  local_b0[0x3a] = '\0';
  local_b0[0x3b] = '\0';
  local_b0[0x3c] = '\0';
  local_b0[0x3d] = '\0';
  local_b0[0x3e] = '\0';
  local_b0[0x3f] = '\0';
  local_b0[0x20] = '\0';
  local_b0[0x21] = '\0';
  local_b0[0x22] = '\0';
  local_b0[0x23] = '\0';
  local_b0[0x24] = '\0';
  local_b0[0x25] = '\0';
  local_b0[0x26] = '\0';
  local_b0[0x27] = '\0';
  local_b0[0x28] = '\0';
  local_b0[0x29] = '\0';
  local_b0[0x2a] = '\0';
  local_b0[0x2b] = '\0';
  local_b0[0x2c] = '\0';
  local_b0[0x2d] = '\0';
  local_b0[0x2e] = '\0';
  local_b0[0x2f] = '\0';
  local_b0[0x10] = '\0';
  local_b0[0x11] = '\0';
  local_b0[0x12] = '\0';
  local_b0[0x13] = '\0';
  local_b0[0x14] = '\0';
  local_b0[0x15] = '\0';
  local_b0[0x16] = '\0';
  local_b0[0x17] = '\0';
  local_b0[0x18] = '\0';
  local_b0[0x19] = '\0';
  local_b0[0x1a] = '\0';
  local_b0[0x1b] = '\0';
  local_b0[0x1c] = '\0';
  local_b0[0x1d] = '\0';
  local_b0[0x1e] = '\0';
  local_b0[0x1f] = '\0';
  local_b0[0] = '\0';
  local_b0[1] = '\0';
  local_b0[2] = '\0';
  local_b0[3] = '\0';
  local_b0[4] = '\0';
  local_b0[5] = '\0';
  local_b0[6] = '\0';
  local_b0[7] = '\0';
  local_b0[8] = '\0';
  local_b0[9] = '\0';
  local_b0[10] = '\0';
  local_b0[0xb] = '\0';
  local_b0[0xc] = '\0';
  local_b0[0xd] = '\0';
  local_b0[0xe] = '\0';
  local_b0[0xf] = '\0';
  local_e4 = 0;
  local_c0 = 0;
  uStack_b8 = 0;
  local_d0 = 0;
  local_c8 = 0;
  local_d8 = 0;
  if (param_2 != 0) {
    __check_object_size(local_b0,param_3,0);
    lVar4 = FUN_00149b40(local_b0,param_2,param_3);
    if (lVar4 != 0) {
      uVar6 = _printk(&DAT_0016706c);
      return uVar6;
    }
  }
  local_e0 = local_b0;
  pcVar5 = strsep(&local_e0,",");
  if (pcVar5 == (char *)0x0) {
    uVar7 = 0;
    uVar8 = 0;
    uVar9 = 0;
    uVar10 = 0;
    uVar11 = 0;
    uVar12 = 0;
    uVar13 = 0;
    uVar14 = 0;
    uVar15 = 0;
  }
  else {
    uVar7 = 0;
    do {
      iVar3 = kstrtouint(pcVar5,10,&local_e4);
      if (iVar3 == 0) {
        if (0x13 < uVar7) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(1,0x14bf6c);
          (*pcVar2)();
        }
        *(short *)((long)&local_d8 + (ulong)uVar7 * 2) = (short)local_e4;
        uVar7 = uVar7 + 1;
      }
      pcVar5 = strsep(&local_e0,",");
    } while ((pcVar5 != (char *)0x0) && (uVar7 < 10));
    uVar10 = (uint)local_d0._2_2_;
    uVar9 = (uint)local_d0._4_2_;
    uVar8 = (uint)local_d0._6_2_;
    uVar7 = (uint)(ushort)local_c8;
    uVar11 = (undefined1)local_d0;
    uVar12 = local_d8._6_1_;
    uVar13 = local_d8._4_1_;
    uVar14 = local_d8._2_1_;
    uVar15 = (undefined1)local_d8;
  }
  *(undefined1 *)(lVar1 + 0x491) = uVar15;
  *(undefined1 *)(lVar1 + 0x492) = uVar14;
  *(undefined1 *)(lVar1 + 0x493) = uVar13;
  *(undefined1 *)(lVar1 + 0x494) = uVar12;
  *(undefined1 *)(lVar1 + 0x495) = uVar11;
  *(uint *)(lVar1 + 0x498) = uVar10;
  *(uint *)(lVar1 + 0x49c) = uVar9;
  *(uint *)(lVar1 + 0x4a0) = uVar8;
  *(uint *)(lVar1 + 0x4a4) = uVar7;
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014bf74 tp_BBAT_test_read */

void tp_BBAT_test_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  int iVar1;
  undefined8 uVar2;
  long lVar3;
  code *pcVar4;
  char local_48 [16];
  long local_38;
  
  lVar3 = sp_el0;
  uVar2 = 0;
  local_38 = *(long *)(lVar3 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar4 = *(code **)(tpd_cdev + 0xfe8);
    if (pcVar4 == (code *)0x0) {
      lVar3 = (ulong)(*(char *)(tpd_cdev + 0x14) == '\0') << 1;
    }
    else {
      if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x14bfe0);
        (*pcVar4)();
      }
      iVar1 = (*pcVar4)();
      if (iVar1 != 0) {
        _printk(&DAT_00172684);
        return;
      }
      lVar3 = 0;
    }
    iVar1 = snprintf(local_48,10,"%d\n",lVar3);
    uVar2 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar1);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 0014c07c tp_BBAT_test_write */

void tp_BBAT_test_write(void)

{
  _printk(&DAT_0016f6d8);
  return;
}



/* 0014c0b4 tp_test_read */

void tp_test_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    if (*(char *)(tpd_cdev + 0xc00) == -1) {
      _printk(&DAT_001726a0,*(undefined1 *)(tpd_cdev + 0x446));
      return;
    }
    _printk(&DAT_0016951e);
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014c1c0 tp_test_write */

void tp_test_write(void)

{
  _printk(&DAT_0016f6d8);
  return;
}



/* 0014c1f8 tp_frame_data_read */

void tp_frame_data_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0x1000);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14c294);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_0016fb00,"tp_frame_data_read",*(undefined4 *)(lVar2 + 0x460));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014c2ec tp_frame_data_write */

undefined8 tp_frame_data_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_0016cc56,"tp_frame_data_write");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014c3c0 tpd_sysfs_fwimage_show */

size_t tpd_sysfs_fwimage_show(void)

{
  long lVar1;
  size_t sVar2;
  void *in_x3;
  size_t in_x5;
  long *plVar3;
  ulong uVar4;
  ulong uVar5;
  
  lVar1 = tpd_cdev;
  plVar3 = *(long **)(tpd_cdev + 0xc58);
  if ((plVar3 == (long *)0x0) || (plVar3[1] == 0)) {
    sVar2 = _printk(&DAT_001717e6);
    return sVar2;
  }
  if (*plVar3 == 0) {
    sVar2 = _printk(&DAT_0016f684);
    return sVar2;
  }
  mutex_lock(tpd_cdev + 0xc60);
  uVar4 = (ulong)*(uint *)(lVar1 + 0x448);
  uVar5 = **(ulong **)(lVar1 + 0xc58);
  if (uVar4 <= uVar5 && uVar5 - uVar4 != 0) {
    sVar2 = uVar5 - uVar4;
    if (uVar4 + in_x5 <= uVar5) {
      sVar2 = in_x5;
    }
    memcpy(in_x3,(void *)(*(long *)(*(long *)(lVar1 + 0xc58) + 8) + (ulong)*(uint *)(lVar1 + 0x448))
           ,sVar2);
    *(int *)(lVar1 + 0x448) = *(int *)(lVar1 + 0x448) + (int)sVar2;
    mutex_unlock(lVar1 + 0xc60);
    return sVar2;
  }
  *(undefined4 *)(lVar1 + 0x448) = 0;
  vfree((*(ulong **)(lVar1 + 0xc58))[1]);
  *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
  kfree(*(undefined8 *)(lVar1 + 0xc58));
  *(undefined8 *)(lVar1 + 0xc58) = 0;
  sVar2 = _printk(&DAT_0016a980);
  return sVar2;
}



/* 0014c4d4 tpd_sysfs_fwimage_store */

undefined8 tpd_sysfs_fwimage_store(void)

{
  long lVar1;
  undefined8 uVar2;
  ulong uVar3;
  long in_x5;
  ulong *puVar4;
  ulong uVar5;
  
  puVar4 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar4 == (ulong *)0x0) || (puVar4[1] == 0)) {
    uVar2 = _printk(&DAT_001717e6);
    return uVar2;
  }
  uVar5 = *puVar4;
  if (uVar5 == 0) {
    uVar2 = _printk(&DAT_0016f684);
    return uVar2;
  }
  uVar3 = (ulong)*(uint *)(tpd_cdev + 0x448);
  if (uVar5 < uVar3 || uVar5 - uVar3 == 0) {
    *(undefined4 *)(tpd_cdev + 0x448) = 0;
    return 0xffffffffffffffea;
  }
  lVar1 = uVar5 - uVar3;
  if (uVar3 + in_x5 <= uVar5) {
    lVar1 = in_x5;
  }
  uVar2 = _printk(&DAT_0016a99a,uVar3,lVar1);
  return uVar2;
}



/* 0014c5b4 zte_touch_deinit */

void zte_touch_deinit(void)

{
  if ((tpd_cdev != 0) && (zte_touch_deinit_ztp_release != '\x01')) {
    ufp_mac_exit();
    _printk(&DAT_00167518,"zlog_register_work_deinit");
    return;
  }
  _printk(&DAT_00167672);
  return;
}



/* 0014c730 tpd_touch_press */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_touch_press(long param_1,uint param_2,uint param_3,ulong param_4,undefined4 param_5,
                    undefined4 param_6)

{
  uint *puVar1;
  int iVar2;
  byte bVar3;
  ushort uVar4;
  int iVar5;
  code *pcVar6;
  uint uVar7;
  uint uVar8;
  ulong uVar9;
  undefined *puVar10;
  uint uVar11;
  uint uVar12;
  long lVar13;
  long lVar14;
  ulong uVar15;
  ulong uVar16;
  
  lVar13 = tpd_cdev;
  uVar7 = param_2 & 0xffff;
  uVar12 = param_3 & 0xffff;
  if ((param_2 & 0xfffe) == 0) {
    uVar7 = 1;
  }
  if ((param_3 & 0xfffe) == 0) {
    uVar12 = 1;
  }
  if (*(int *)(tpd_cdev + 0x10) != 0) {
    param_2 = uVar7;
    param_3 = uVar12;
  }
  uVar7 = (uint)param_4 & 0xffff;
  if ((param_1 == 0) || (9 < uVar7)) {
    _printk(&DAT_0016fb3c,"tpd_touch_press");
    return;
  }
  uVar15 = param_4 & 0xffffffff;
  uVar16 = ((param_4 & 0xffff) + (param_4 & 0xffff) * 0x10) * 8;
  puVar1 = (uint *)(point_report_info + uVar16);
  *(long *)(point_report_info + uVar16 + 0x80) = param_1;
  if (point_report_info[uVar16 + 0x50] == '\x01') {
    if (((*(char *)(lVar13 + 0x25) != '\0') && ((point_report_info[uVar16 + 0x59] & 1) == 0)) &&
       ((*(uint *)(lVar13 + 0x10) | 2) != 3)) {
      uVar4 = *(ushort *)(lVar13 + 0x442);
      uVar11 = (uint)uVar4;
      uVar12 = param_2 & 0xffff;
      uVar8 = (uint)(uVar4 >> 2);
      if ((uVar8 < uVar12) && (uVar12 < (uint)uVar4 * 3 >> 2)) {
        point_report_info[uVar16 + 0x59] = 1;
        uVar11 = (uint)*(ushort *)(lVar13 + 0x442);
        uVar8 = (uint)(*(ushort *)(lVar13 + 0x442) >> 2);
      }
      if (((int)*(uint *)(point_report_info + uVar16 + 0x18) < (int)uVar8) ||
         (uVar11 * 3 >> 2 < *(uint *)(point_report_info + uVar16 + 0x18))) {
        if (*(char *)(lVar13 + 0x25) == '\0') {
LAB_0014ce90:
          point_report_info[uVar16 + 0x58] = 0;
        }
        else {
          if ((*(uint *)(lVar13 + 0x10) | 2) == 3) {
            if (((((uint)*(byte *)(lVar13 + 0x34) <= (param_2 & 0xffff)) &&
                 ((int)uVar12 <= (int)(uVar11 - *(byte *)(lVar13 + 0x35)))) &&
                ((uint)*(byte *)(lVar13 + 0x36) <= (param_3 & 0xffff))) &&
               ((int)(param_3 & 0xffff) <=
                (int)((uint)*(ushort *)(lVar13 + 0x444) - (uint)*(byte *)(lVar13 + 0x37)))) {
              if ((*(char *)(lVar13 + 0x38) == '\0') ||
                 ((param_3 & 0xffff) <= (uint)*(ushort *)(lVar13 + 0x2e))) goto LAB_0014ce90;
              uVar8 = (uint)*(ushort *)(lVar13 + 0x2c);
              if ((uint)*(ushort *)(lVar13 + 0x2c) <= (param_2 & 0xffff)) goto LAB_0014ce84;
            }
          }
          else if ((uint)*(byte *)(lVar13 + 0x34) <= (param_2 & 0xffff)) {
            uVar8 = (uint)*(byte *)(lVar13 + 0x35);
LAB_0014ce84:
            if ((int)uVar12 <= (int)(uVar11 - uVar8)) goto LAB_0014ce90;
          }
          if (point_report_info[uVar16 + 0x58] == '\x01') {
            lVar14 = *(long *)(point_report_info + uVar16 + 0x68);
          }
          else {
            *(uint *)(point_report_info + uVar16 + 0x30) = uVar12;
            *(uint *)(point_report_info + uVar16 + 0x34) = param_3 & 0xffff;
            point_report_info[uVar16 + 0x58] = 1;
            lVar14 = _jiffies;
            *(long *)(point_report_info + uVar16 + 0x68) = _jiffies;
          }
          uVar8 = jiffies_to_msecs(_jiffies - lVar14);
          if (800 < uVar8) {
            iVar5 = *(int *)(point_report_info + uVar16 + 0x30) - uVar12;
            iVar2 = -iVar5;
            if (-1 < iVar5) {
              iVar2 = iVar5;
            }
            if (iVar2 < 0x15) {
              iVar5 = *(int *)(point_report_info + uVar16 + 0x34) - (param_3 & 0xffff);
              iVar2 = -iVar5;
              if (-1 < iVar5) {
                iVar2 = iVar5;
              }
              if (iVar2 < 0x15) {
                tpd_touch_release(*(undefined8 *)(point_report_info + uVar16 + 0x80),uVar15);
                point_report_info[uVar16 + 0x58] = 0;
                return;
              }
            }
            *(uint *)(point_report_info + uVar16 + 0x30) = uVar12;
            *(uint *)(point_report_info + uVar16 + 0x34) = param_3 & 0xffff;
            *(long *)(point_report_info + uVar16 + 0x68) = _jiffies;
          }
        }
      }
    }
  }
  else {
    uVar9 = FUN_0014e854(param_2,param_3);
    if ((uVar9 & 1) != 0) goto LAB_0014c8c0;
    if (*(char *)(tpd_cdev + 0x25) != '\0') {
      if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
        uVar12 = param_2 & 0xffff;
        if (((uVar12 < *(byte *)(tpd_cdev + 0x34)) ||
            ((((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35)) <
               (int)uVar12 || ((param_3 & 0xffff) < (uint)*(byte *)(tpd_cdev + 0x36))) ||
             ((int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x37)) <
              (int)(param_3 & 0xffff))))) ||
           (((*(char *)(tpd_cdev + 0x38) != '\0' &&
             ((uint)*(ushort *)(tpd_cdev + 0x2e) < (param_3 & 0xffff))) &&
            (((param_2 & 0xffff) < (uint)*(ushort *)(tpd_cdev + 0x2c) ||
             ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(ushort *)(tpd_cdev + 0x2c)) <
              (int)uVar12)))))) {
LAB_0014c8c0:
          uVar9 = FUN_0014e844(param_2,param_3);
          if (((uVar9 & 1) == 0) && (*(char *)(tpd_cdev + 0x25) != '\0')) {
            if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
              uVar12 = param_2 & 0xffff;
              if (((*(byte *)(tpd_cdev + 0x34) <= uVar12) &&
                  ((((int)uVar12 <=
                     (int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35))
                    && ((uint)*(byte *)(tpd_cdev + 0x36) <= (param_3 & 0xffff))) &&
                   ((int)(param_3 & 0xffff) <=
                    (int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x37)))))
                  ) && (((*(char *)(tpd_cdev + 0x38) == '\0' ||
                         ((param_3 & 0xffff) <= (uint)*(ushort *)(tpd_cdev + 0x2e))) ||
                        (((uint)*(ushort *)(tpd_cdev + 0x2c) <= (param_2 & 0xffff) &&
                         ((int)uVar12 <=
                          (int)((uint)*(ushort *)(tpd_cdev + 0x442) -
                               (uint)*(ushort *)(tpd_cdev + 0x2c)))))))) goto LAB_0014cb10;
            }
            else if (((uint)*(byte *)(tpd_cdev + 0x34) <= (param_2 & 0xffff)) &&
                    ((int)(param_2 & 0xffff) <=
                     (int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35))))
            goto LAB_0014cb10;
            if ((point_report_info[uVar16 + 0x55] & 1) == 0) {
              point_report_info[uVar16 + 0x55] = 1;
              *(long *)(point_report_info + uVar16 + 0x70) = _jiffies;
              _printk(&DAT_0017022c,uVar7,param_2 & 0xffff,param_3 & 0xffff);
              return;
            }
            if ((((((point_report_info[0x53] & 1) == 0) && ((point_report_info[0xdb] & 1) == 0)) &&
                 (((point_report_info[0x163] & 1) == 0 &&
                  (((((point_report_info[0x1eb] & 1) == 0 && ((point_report_info[0x273] & 1) == 0))
                    && ((point_report_info[0x2fb] & 1) == 0)) &&
                   (((point_report_info[899] & 1) == 0 && ((point_report_info[0x40b] & 1) == 0))))))
                 )) && ((point_report_info[0x493] & 1) == 0)) &&
               (point_report_info[0x51b] != '\x01')) goto LAB_0014cb18;
            point_report_info[uVar16 + 0x56] = 1;
            bVar3 = point_report_info[uVar16 + 0x51];
          }
          else {
LAB_0014cb10:
            if ((point_report_info[uVar16 + 0x55] & 1) == 0) {
              point_report_info[uVar16 + 0x55] = 1;
              _printk(&DAT_0016bbf6,uVar7,param_2 & 0xffff,param_3 & 0xffff);
              return;
            }
LAB_0014cb18:
            bVar3 = point_report_info[uVar16 + 0x51];
          }
          if ((bVar3 & 1) == 0) {
            *puVar1 = param_2 & 0xffff;
            if ((uVar16 | 4) < 0x551) {
              point_report_info[uVar16 + 8] = (char)param_5;
              *(uint *)(point_report_info + uVar16 + 4) = param_3 & 0xffff;
              point_report_info[uVar16 + 9] = (char)param_6;
              point_report_info[uVar16 + 0x51] = 1;
              return;
            }
            goto LAB_0014cd54;
          }
          iVar5 = *puVar1 - (param_2 & 0xffff);
          iVar2 = -iVar5;
          if (-1 < iVar5) {
            iVar2 = iVar5;
          }
          if (iVar2 < 0x65) {
            if (0x550 < (uVar16 | 4)) goto LAB_0014cd54;
            iVar5 = *(int *)(point_report_info + uVar16 + 4) - (param_3 & 0xffff);
            iVar2 = -iVar5;
            if (-1 < iVar5) {
              iVar2 = iVar5;
            }
            if (iVar2 < 0x65) {
              return;
            }
          }
        }
      }
      else if (((param_2 & 0xffff) < (uint)*(byte *)(tpd_cdev + 0x34)) ||
              ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35)) <
               (int)(param_2 & 0xffff))) goto LAB_0014c8c0;
    }
    if ((point_report_info[uVar16 + 0x51] & 1) == 0) {
      point_report_info[uVar16 + 0x52] = 0;
    }
    else {
      point_report_info[uVar16 + 0x14] = (char)param_5;
      *(uint *)(point_report_info + uVar16 + 0xc) = param_2 & 0xffff;
      *(uint *)(point_report_info + uVar16 + 0x10) = param_3 & 0xffff;
      point_report_info[uVar16 + 0x15] = (char)param_6;
      point_report_info[uVar16 + 0x52] = 1;
    }
  }
  point_report_info[uVar16 + 0x50] = 1;
  if (point_report_info[uVar16 + 0x52] == '\x01') {
    if ((point_report_info[uVar16 + 0x53] & 1) == 0) {
      point_report_info[uVar16 + 0x53] = 1;
      lVar14 = _jiffies;
      point_report_info[uVar16 + 0x5a] = 1;
      *(long *)(point_report_info + uVar16 + 0x60) = lVar14;
      *(int *)(lVar13 + 0x48c) = *(int *)(lVar13 + 0x48c) + 1;
      *(uint *)(point_report_info + uVar16 + 0x18) = *puVar1;
      if ((uVar16 | 4) < 0x551) {
        *(undefined4 *)(point_report_info + uVar16 + 0x1c) =
             *(undefined4 *)(point_report_info + uVar16 + 4);
        point_report_reset(uVar7);
        _printk(&DAT_0016d40c,uVar7,*puVar1,*(undefined4 *)(point_report_info + uVar16 + 4));
        return;
      }
LAB_0014cd54:
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(1,0x14cd58);
      (*pcVar6)();
    }
    if (0x550 < (uVar16 | 4)) goto LAB_0014cd54;
    tpd_touch_report(param_1,*puVar1,*(undefined4 *)(point_report_info + uVar16 + 4),uVar15,param_5,
                     param_6);
    input_event(param_1,0,0,0);
    usleep_range_state(1000,0x5dc,2);
    if ((point_report_info[uVar16 + 0x53] & 1) == 0) {
      point_report_info[uVar16 + 0x53] = 1;
      lVar14 = _jiffies;
      point_report_info[uVar16 + 0x5a] = 1;
      *(long *)(point_report_info + uVar16 + 0x60) = lVar14;
      *(int *)(lVar13 + 0x48c) = *(int *)(lVar13 + 0x48c) + 1;
      *(uint *)(point_report_info + uVar16 + 0x18) = *puVar1;
      *(undefined4 *)(point_report_info + uVar16 + 0x1c) =
           *(undefined4 *)(point_report_info + uVar16 + 4);
      FUN_0014fd78(uVar7);
      _printk(&DAT_0016d40c,uVar7,*(undefined4 *)(point_report_info + uVar16 + 0xc),
              *(undefined4 *)(point_report_info + uVar16 + 0x10));
      return;
    }
    uVar12 = *(uint *)(point_report_info + uVar16 + 0xc);
    uVar8 = *(uint *)(point_report_info + uVar16 + 0x10);
  }
  else {
    uVar12 = param_2;
    uVar8 = param_3;
    if (*(char *)(lVar13 + 0x24) == '\0') {
      if ((point_report_info[uVar16 + 0x53] & 1) == 0) {
        point_report_info[uVar16 + 0x53] = 1;
        *(int *)(lVar13 + 0x48c) = *(int *)(lVar13 + 0x48c) + 1;
        *(uint *)(point_report_info + uVar16 + 0x18) = param_2 & 0xffff;
        *(uint *)(point_report_info + uVar16 + 0x1c) = param_3 & 0xffff;
        FUN_0014fe38(uVar7);
        puVar10 = &DAT_001701b0;
        lVar13 = _jiffies;
        goto LAB_0014ce68;
      }
    }
    else {
      if ((point_report_info[uVar16 + 0x53] & 1) == 0) {
        point_report_info[uVar16 + 0x53] = 1;
        *(int *)(lVar13 + 0x48c) = *(int *)(lVar13 + 0x48c) + 1;
        FUN_0014fd9c(uVar7);
        *(uint *)(point_report_info + uVar16 + 0x18) = param_2 & 0xffff;
        *(uint *)(point_report_info + uVar16 + 0x1c) = param_3 & 0xffff;
        lVar13 = _jiffies;
        puVar10 = &DAT_00171f92;
        point_report_info[uVar16 + 0x57] = 1;
LAB_0014ce68:
        *(long *)(point_report_info + uVar16 + 0x60) = lVar13;
        _printk(puVar10,uVar7,param_2 & 0xffff,param_3 & 0xffff);
        return;
      }
      if (point_report_info[uVar16 + 0x57] == '\x01') {
        uVar7 = jiffies_to_msecs(_jiffies - *(long *)(point_report_info + uVar16 + 0x60));
        iVar5 = *(int *)(point_report_info + uVar16 + 0x18) - (param_2 & 0xffff);
        iVar2 = -iVar5;
        if (-1 < iVar5) {
          iVar2 = iVar5;
        }
        uVar12 = (uint)*(byte *)(lVar13 + 0x24);
        if (uVar7 < 0x65) {
          uVar12 = (uint)*(byte *)(lVar13 + 0x24) * 3;
        }
        if (iVar2 <= (int)uVar12) {
          iVar5 = *(int *)(point_report_info + uVar16 + 0x1c) - (param_3 & 0xffff);
          iVar2 = -iVar5;
          if (-1 < iVar5) {
            iVar2 = iVar5;
          }
          if (iVar2 <= (int)uVar12) goto LAB_0014ccbc;
        }
        tpd_workqueue_deinit(param_1,param_2,param_3,uVar15,param_5,param_6);
        point_report_info[uVar16 + 0x57] = 0;
        goto LAB_0014ccbc;
      }
    }
  }
  tpd_workqueue_deinit(param_1,uVar12,uVar8,uVar15,param_5,param_6);
LAB_0014ccbc:
  point_report_info[uVar16 + 0x52] = 0;
  *(uint *)(point_report_info + uVar16 + 0x24) = param_2 & 0xffff;
  *(uint *)(point_report_info + uVar16 + 0x28) = param_3 & 0xffff;
  return;
}



/* 0014cf78 tpd_touch_release */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_touch_release(long param_1,ushort param_2)

{
  long lVar1;
  int iVar2;
  int iVar3;
  code *pcVar4;
  uint uVar5;
  ulong uVar6;
  long lVar7;
  
  lVar1 = tpd_cdev;
  if (10 < param_2) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x14d504);
    (*pcVar4)();
  }
  if (param_1 == 0) {
    _printk(&DAT_0016fb3c,"tpd_touch_release",param_2);
    return;
  }
  if (param_2 == 10) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(1,0x14d508);
    (*pcVar4)();
  }
  lVar7 = ((ulong)param_2 + (ulong)param_2 * 0x10) * 8;
  if (point_report_info[lVar7 + 0x53] != '\x01') {
    if (((*(char *)(tpd_cdev + 0x25) == '\x01') && ((point_report_info[lVar7 + 0x56] & 1) == 0)) &&
       (*(long *)(point_report_info + lVar7 + 0x70) != 0)) {
      uVar5 = jiffies_to_msecs(_jiffies - *(long *)(point_report_info + lVar7 + 0x70));
      if (uVar5 < *(ushort *)(lVar1 + 0x3c)) {
        _printk(&DAT_0016d920,"edge_point_report",param_2);
        return;
      }
    }
    iVar3 = is_screen_off_awake_mode;
    iVar2 = is_fake_sleep_mode;
    *(undefined8 *)(point_report_info + lVar7 + 0x70) = 0;
    point_report_info[lVar7 + 0x53] = 0;
    *(undefined2 *)(point_report_info + lVar7 + 0x50) = 0;
    *(undefined4 *)(point_report_info + lVar7 + 0x55) = 0;
    *(undefined2 *)(point_report_info + lVar7 + 0x59) = 0;
    if (iVar2 != 0 || iVar3 != 0) {
      *(undefined4 *)(point_report_info + lVar7 + 0x3c) =
           *(undefined4 *)(point_report_info + lVar7 + 0x18);
      *(undefined4 *)(point_report_info + lVar7 + 0x40) =
           *(undefined4 *)(point_report_info + lVar7 + 0x1c);
      *(undefined8 *)(point_report_info + lVar7 + 0x48) =
           *(undefined8 *)(point_report_info + lVar7 + 0x60);
    }
    return;
  }
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,param_2);
  input_mt_report_slot_state(param_1,0,0);
  uVar6 = jiffies_to_msecs(_jiffies - *(long *)(point_report_info + lVar7 + 0x60));
  *(ulong *)(point_report_info + lVar7 + 0x78) = uVar6 & 0xffffffff;
  _printk(&DAT_0017186c,param_2,*(undefined4 *)(point_report_info + lVar7 + 0x24),
          *(undefined4 *)(point_report_info + lVar7 + 0x28));
  return;
}



/* 0014d5b4 ghost_check_area */

undefined8 ghost_check_area(long param_1)

{
  uint uVar1;
  int iVar2;
  ushort uVar3;
  ushort uVar4;
  undefined *puVar5;
  undefined8 uVar6;
  uint uVar7;
  
  uVar1 = *(uint *)(tpd_cdev + 0x10);
  uVar7 = (uint)*(ushort *)(param_1 + 0x18);
  if ((uVar1 | 2) == 3) {
    uVar3 = *(ushort *)(param_1 + 0x1c);
    iVar2 = *(int *)(tpd_cdev + 0x49c);
    if ((((iVar2 <= (int)(uint)uVar3) &&
         ((int)(uint)uVar3 <= (int)((uint)*(ushort *)(tpd_cdev + 0x444) - iVar2))) &&
        (iVar2 <= (int)(uint)*(ushort *)(param_1 + 0x18))) &&
       (uVar4 = *(ushort *)(tpd_cdev + 0x442), (int)uVar7 <= (int)((uint)uVar4 - iVar2))) {
LAB_0014d62c:
      uVar6 = 1;
      if ((int)uVar1 < 2) {
        if (uVar1 != 0) {
          if (uVar1 != 1) {
            return uVar6;
          }
          goto LAB_0014d658;
        }
        if ((int)(uint)uVar3 <=
            (int)((uint)*(ushort *)(tpd_cdev + 0x444) - *(int *)(tpd_cdev + 0x4a4))) {
          return uVar6;
        }
LAB_0014d6c0:
        if ((*(int *)(tpd_cdev + 0x4a0) <= (int)uVar7) &&
           ((int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x4a0)))) {
          return uVar6;
        }
      }
      else {
        if (uVar1 == 2) {
          if (*(int *)(tpd_cdev + 0x4a4) <= (int)(uint)uVar3) {
            return uVar6;
          }
          goto LAB_0014d6c0;
        }
        if (uVar1 != 3) {
          return uVar6;
        }
LAB_0014d658:
        if ((*(int *)(tpd_cdev + 0x4a4) <= (int)uVar7) &&
           ((int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x4a4)))) {
          return uVar6;
        }
        if ((*(int *)(tpd_cdev + 0x4a0) <= (int)(uint)uVar3) &&
           ((int)(uint)uVar3 <=
            (int)((uint)*(ushort *)(tpd_cdev + 0x444) - *(int *)(tpd_cdev + 0x4a0)))) {
          return uVar6;
        }
      }
      puVar5 = &DAT_001718b2;
      goto code_r0x0014d6e8;
    }
  }
  else if ((*(int *)(tpd_cdev + 0x49c) <= (int)uVar7) &&
          (uVar4 = *(ushort *)(tpd_cdev + 0x442),
          (int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x49c)))) {
    uVar3 = *(ushort *)(param_1 + 0x1c);
    goto LAB_0014d62c;
  }
  puVar5 = &DAT_001676ae;
code_r0x0014d6e8:
  uVar6 = _printk(puVar5);
  return uVar6;
}



/* 0014d708 tp_ghost_check */

undefined8 tp_ghost_check(void)

{
  long lVar1;
  uint uVar2;
  byte bVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  char *__s;
  undefined8 uVar7;
  uint uVar8;
  ulong uVar9;
  ushort uVar10;
  uint uVar12;
  long lVar13;
  ushort uVar11;
  
  lVar13 = tpd_cdev;
  __s = (char *)vmalloc_noprof(0x800);
  if (__s == (char *)0x0) {
    uVar7 = _printk(&DAT_0016e062);
    return uVar7;
  }
  uVar9 = (ulong)(ushort)point_report_info._94_2_;
  bVar4 = point_report_info._230_2_ != 0;
  if (point_report_info._94_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._366_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  iVar5 = *(int *)(lVar13 + 0x498);
  if (point_report_info._502_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._638_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._774_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._910_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._1046_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._1182_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (point_report_info._1318_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  uVar12 = (uint)bVar4;
  uVar2 = *(uint *)(lVar13 + 0x48c);
  if ((int)*(uint *)(lVar13 + 0x48c) <= (int)uVar12) {
    uVar2 = uVar12;
  }
  lVar1 = 0x493;
  if (2 < uVar2) {
    lVar1 = 0x494;
  }
  bVar3 = *(byte *)(lVar13 + lVar1);
  uVar12 = bVar3 * uVar12;
  uVar10 = (ushort)bVar3;
  uVar11 = (ushort)bVar3;
  if (iVar5 == 0) {
    uVar9 = 0;
LAB_0014d828:
    if ((ushort)point_report_info._228_2_ < uVar10) {
      if (point_report_info._230_2_ != 0) {
        uVar8 = (uint)(ushort)point_report_info._230_2_ + (int)uVar9;
        uVar9 = (ulong)uVar8;
        if ((5 < bVar4) && (uVar8 = uVar8 & 0xffff, uVar12 < uVar8)) {
          uVar9 = (ulong)uVar8;
          goto LAB_0014dac8;
        }
      }
      uVar8 = (uint)uVar9;
      if (iVar5 == 2) {
LAB_0014d898:
        if ((ushort)point_report_info._500_2_ < uVar10) {
          if (((point_report_info._502_2_ != 0) &&
              (uVar8 = (ushort)point_report_info._502_2_ + uVar8, 5 < bVar4)) &&
             (uVar12 < (uVar8 & 0xffff))) {
            uVar9 = (ulong)(uVar8 & 0xffff);
            goto LAB_0014dac8;
          }
          if (iVar5 != 4) goto LAB_0014d8d0;
LAB_0014d908:
          if ((ushort)point_report_info._772_2_ < uVar11) {
            if (((point_report_info._774_2_ == 0) ||
                (uVar8 = (ushort)point_report_info._774_2_ + uVar8, bVar4 < 6)) ||
               ((uVar8 & 0xffff) <= uVar12)) {
              if (iVar5 != 6) goto LAB_0014d940;
LAB_0014d978:
              if (uVar11 <= (ushort)point_report_info._1044_2_) {
                uVar7 = 7;
                goto LAB_0014da7c;
              }
              if (((point_report_info._1046_2_ == 0) ||
                  (uVar8 = (ushort)point_report_info._1046_2_ + uVar8, bVar4 < 6)) ||
                 ((uVar8 & 0xffff) <= uVar12)) {
                if (iVar5 != 8) goto LAB_0014d9b0;
LAB_0014d9e8:
                if (uVar10 <= (ushort)point_report_info._1316_2_) {
                  uVar7 = 9;
                  goto LAB_0014da7c;
                }
                if (((point_report_info._1318_2_ == 0) || (bVar4 < 6)) ||
                   (uVar8 = (ushort)point_report_info._1318_2_ + uVar8 & 0xffff,
                   uVar9 = (ulong)uVar8, uVar8 <= uVar12)) {
LAB_0014da18:
                  vfree(__s);
                  return 0;
                }
              }
              else {
                uVar9 = (ulong)(uVar8 & 0xffff);
              }
            }
            else {
              uVar9 = (ulong)(uVar8 & 0xffff);
            }
LAB_0014dac8:
            iVar5 = snprintf(__s,0x800,"multi ghost detect,ghost_count:%d. ",uVar9);
            goto LAB_0014dadc;
          }
          uVar7 = 5;
        }
        else {
          uVar7 = 3;
        }
      }
      else {
LAB_0014d860:
        uVar8 = (uint)uVar9;
        if ((ushort)point_report_info._364_2_ < uVar10) {
          if (((point_report_info._366_2_ != 0) &&
              (uVar8 = (ushort)point_report_info._366_2_ + uVar8, 5 < bVar4)) &&
             (uVar12 < (uVar8 & 0xffff))) {
            uVar9 = (ulong)(uVar8 & 0xffff);
            goto LAB_0014dac8;
          }
          if (iVar5 != 3) goto LAB_0014d898;
LAB_0014d8d0:
          if ((ushort)point_report_info._636_2_ < uVar10) {
            if (((point_report_info._638_2_ != 0) &&
                (uVar8 = (ushort)point_report_info._638_2_ + uVar8, 5 < bVar4)) &&
               (uVar12 < (uVar8 & 0xffff))) {
              uVar9 = (ulong)(uVar8 & 0xffff);
              goto LAB_0014dac8;
            }
            if (iVar5 != 5) goto LAB_0014d908;
LAB_0014d940:
            if ((ushort)point_report_info._908_2_ < uVar11) {
              if (((point_report_info._910_2_ == 0) ||
                  (uVar8 = (ushort)point_report_info._910_2_ + uVar8, bVar4 < 6)) ||
                 ((uVar8 & 0xffff) <= uVar12)) {
                if (iVar5 != 7) goto LAB_0014d978;
LAB_0014d9b0:
                if (uVar11 <= (ushort)point_report_info._1180_2_) {
                  uVar7 = 8;
                  goto LAB_0014da7c;
                }
                if (((point_report_info._1182_2_ == 0) ||
                    (uVar8 = (ushort)point_report_info._1182_2_ + uVar8, bVar4 < 6)) ||
                   ((uVar8 & 0xffff) <= uVar12)) {
                  if (iVar5 == 9) goto LAB_0014da18;
                  goto LAB_0014d9e8;
                }
                uVar9 = (ulong)(uVar8 & 0xffff);
              }
              else {
                uVar9 = (ulong)(uVar8 & 0xffff);
              }
              goto LAB_0014dac8;
            }
            uVar7 = 6;
          }
          else {
            uVar7 = 4;
          }
        }
        else {
          uVar7 = 2;
        }
      }
    }
    else {
      uVar7 = 1;
    }
  }
  else {
    if ((uint)(ushort)point_report_info._92_2_ < (uint)bVar3) {
      if (((point_report_info._94_2_ == 0) || (bVar4 < 6)) ||
         ((ushort)point_report_info._94_2_ <= uVar12)) {
        if (iVar5 != 1) goto LAB_0014d828;
        goto LAB_0014d860;
      }
      goto LAB_0014dac8;
    }
    uVar7 = 0;
  }
LAB_0014da7c:
  iVar5 = snprintf(__s,0x800,"single ghost detect,touch id:%d, count:%d ",uVar7);
LAB_0014dadc:
  iVar6 = snprintf(__s + iVar5,(long)(0x800 - iVar5),"point_down_num: %d.",(ulong)uVar2);
  uVar12 = 0;
  lVar13 = -0x550;
  iVar6 = iVar6 + iVar5;
  do {
    if (*(short *)(dummy_task_struct + lVar13 + 0x46) != 0) {
      iVar5 = snprintf(__s + iVar6,(long)(0x800 - iVar6)," point[%d] down: %d, %d. ",(ulong)uVar12,
                       (ulong)*(uint *)(dummy_task_struct + lVar13),
                       (ulong)*(uint *)(dummy_task_struct + lVar13 + 4));
      iVar5 = iVar5 + iVar6;
      iVar6 = snprintf(__s + iVar5,(long)(0x800 - iVar5)," point[%d] up: %d, %d. ",(ulong)uVar12,
                       (ulong)*(uint *)(dummy_task_struct + lVar13 + 0xc),
                       (ulong)*(uint *)(dummy_task_struct + lVar13 + 0x10));
      iVar6 = iVar6 + iVar5;
    }
    lVar13 = lVar13 + 0x88;
    uVar12 = uVar12 + 1;
  } while (lVar13 != 0);
  uVar7 = _printk(&DAT_0016c622,"tp_ghost_check",__s);
  return uVar7;
}



/* 0014dc2c ghost_check_reset */

void ghost_check_reset(void)

{
  point_report_info._92_4_ = 0;
  point_report_info._228_4_ = 0;
  point_report_info._364_4_ = 0;
  point_report_info._500_4_ = 0;
  point_report_info._636_4_ = 0;
  point_report_info._772_4_ = 0;
  point_report_info._908_4_ = 0;
  point_report_info._1044_4_ = 0;
  point_report_info._1180_4_ = 0;
  point_report_info._1316_4_ = 0;
  return;
}



/* 0014dc64 tpd_clean_all_event */

void tpd_clean_all_event(void)

{
  point_report_info._352_7_ = 0;
  point_report_info._359_4_ = 0;
  point_report_info._488_7_ = 0;
  point_report_info._495_4_ = 0;
  point_report_info._896_7_ = 0;
  point_report_info._903_4_ = 0;
  point_report_info._92_4_ = 0;
  point_report_info._228_4_ = 0;
  point_report_info._364_4_ = 0;
  point_report_info._500_4_ = 0;
  point_report_info._636_4_ = 0;
  point_report_info._772_4_ = 0;
  point_report_info._908_4_ = 0;
  point_report_info._1044_4_ = 0;
  point_report_info._1180_4_ = 0;
  point_report_info._1316_4_ = 0;
  point_report_info._80_7_ = 0;
  point_report_info._87_4_ = 0;
  point_report_info._216_7_ = 0;
  point_report_info._223_4_ = 0;
  point_report_info._624_7_ = 0;
  point_report_info._631_4_ = 0;
  point_report_info._760_7_ = 0;
  point_report_info._767_4_ = 0;
  point_report_info._1032_7_ = 0;
  point_report_info._1039_4_ = 0;
  point_report_info._1168_7_ = 0;
  point_report_info._1304_7_ = 0;
  point_report_info._1175_4_ = 0;
  point_report_info._1311_4_ = 0;
  return;
}



/* 0014dd0c tpd_report_work_init */

void tpd_report_work_init(void)

{
  _printk(&DAT_00167518,"tpd_report_work_init");
  return;
}



/* 0014dfb0 tpd_resume_work_init */

void tpd_resume_work_init(void)

{
  _printk(&DAT_0017e231,"tpd_resume_work_init");
  return;
}



/* 0014e064 tpd_id0_report_work */

void tpd_id0_report_work(void)

{
  FUN_0014e868(point_report_info._128_8_,0);
  return;
}



/* 0014e090 tpd_id1_report_work */

void tpd_id1_report_work(void)

{
  FUN_0014e884(point_report_info._264_8_,1);
  return;
}



/* 0014e0bc tpd_id2_report_work */

void tpd_id2_report_work(void)

{
  FUN_0014e888(point_report_info._400_8_,2);
  return;
}



/* 0014e0e8 tpd_id3_report_work */

void tpd_id3_report_work(void)

{
  FUN_0014e86c(point_report_info._536_8_,3);
  return;
}



/* 0014e114 tpd_id4_report_work */

void tpd_id4_report_work(void)

{
  FUN_0014e928(point_report_info._672_8_,4);
  return;
}



/* 0014e140 tpd_id5_report_work */

void tpd_id5_report_work(void)

{
  FUN_0014e914(point_report_info._808_8_,5);
  return;
}



/* 0014e16c tpd_id6_report_work */

void tpd_id6_report_work(void)

{
  FUN_0014e868(point_report_info._944_8_,6);
  return;
}



/* 0014e198 tpd_id7_report_work */

void tpd_id7_report_work(void)

{
  FUN_0014e8ac(point_report_info._1080_8_,7);
  return;
}



/* 0014e1c4 tpd_id8_report_work */

void tpd_id8_report_work(void)

{
  FUN_0014e888(point_report_info._1216_8_,8);
  return;
}



/* 0014e1f0 tpd_id9_report_work */

void tpd_id9_report_work(void)

{
  FUN_0014ea04(point_report_info._1352_8_,9);
  return;
}



/* 0014e21c tpd_report_work_deinit */

void tpd_report_work_deinit(void)

{
  _printk(&DAT_00167518,"tpd_report_work_deinit");
  return;
}



/* 0014e2ac one_key_report */

void one_key_report(int param_1,int param_2,int param_3,uint param_4)

{
  ushort uVar1;
  long lVar2;
  code *pcVar3;
  char *pcVar4;
  char *local_40;
  undefined *puStack_38;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    if (9 < param_4) {
LAB_0014e3e4:
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x14e3e8);
      (*pcVar3)();
    }
    if ((&one_key_report_one_key_finger)[param_4] != '\0') {
      (&one_key_report_one_key_finger)[param_4] = 0;
      pcVar4 = "fp_gesture_up=true";
      one_key_report_one_key_down = 0;
LAB_0014e3a0:
      puStack_38 = (&one_key_finger_id)[param_4];
      local_30 = 0;
      local_40 = pcVar4;
      kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
      _printk(&one_key_report_log_fmt,pcVar4);
      return;
    }
  }
  else {
    uVar1 = *(ushort *)(tpd_cdev + 0x22);
    if ((int)((uint)*(ushort *)(tpd_cdev + 0x1e) - (uint)uVar1) < param_2 &&
        param_2 < (int)((uint)uVar1 + (uint)*(ushort *)(tpd_cdev + 0x1e))) {
      if (((int)((uint)*(ushort *)(tpd_cdev + 0x20) - (uint)uVar1) < param_3) &&
         (param_3 < (int)((uint)*(ushort *)(tpd_cdev + 0x20) + (uint)uVar1))) {
        if (9 < param_4) goto LAB_0014e3e4;
        if (((&one_key_report_one_key_finger)[param_4] == '\0') &&
           ((one_key_report_one_key_down & 1) == 0)) {
          (&one_key_report_one_key_finger)[param_4] = 1;
          pcVar4 = "fp_gesture_down=true";
          one_key_report_one_key_down = 1;
          goto LAB_0014e3a0;
        }
      }
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014e3ec uf_touch_report */

void uf_touch_report(int param_1,int param_2,int param_3,uint param_4)

{
  ushort uVar1;
  long lVar2;
  code *pcVar3;
  char *pcVar4;
  char *local_30;
  undefined *local_28;
  undefined8 uStack_20;
  long local_18;
  
  lVar2 = sp_el0;
  local_18 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    if (param_4 < 10) {
      if (*(int *)(&uf_touch_report_fp_finger + (ulong)param_4 * 4) == 0) goto LAB_0014e4f4;
      *(undefined4 *)(&uf_touch_report_fp_finger + (ulong)param_4 * 4) = 0;
      uf_touch_report_area_meet_down = 0;
      if (ufp_tp_ops == 0) {
LAB_0014e530:
        _printk(&uf_touch_report_missing_pdev_str);
        return;
      }
      local_30 = "areameet_up=true";
      if (current_lcd_state < 3) {
        local_28 = (&uf_touch_report_tppower_to_str)[current_lcd_state];
        uStack_20 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_30);
        pcVar4 = "areameet_up=true";
LAB_0014e590:
        _printk(&uf_touch_report_log_fmt,pcVar4,local_28);
        return;
      }
    }
    goto LAB_0014e59c;
  }
  uVar1 = *(ushort *)(tpd_cdev + 0x22);
  if ((int)((uint)*(ushort *)(tpd_cdev + 0x1e) - (uint)uVar1) < param_2 &&
      param_2 < (int)((uint)uVar1 + (uint)*(ushort *)(tpd_cdev + 0x1e))) {
    if (((int)((uint)*(ushort *)(tpd_cdev + 0x20) - (uint)uVar1) < param_3) &&
       (param_3 < (int)((uint)*(ushort *)(tpd_cdev + 0x20) + (uint)uVar1))) {
      if (param_4 < 10) {
        if ((*(int *)(&uf_touch_report_fp_finger + (ulong)param_4 * 4) != 0) ||
           ((uf_touch_report_area_meet_down & 1) != 0)) goto LAB_0014e4f4;
        *(undefined4 *)(&uf_touch_report_fp_finger + (ulong)param_4 * 4) = 1;
        uf_touch_report_area_meet_down = 1;
        if (ufp_tp_ops == 0) goto LAB_0014e530;
        local_30 = "areameet_down=true";
        if (current_lcd_state < 3) {
          local_28 = (&uf_touch_report_tppower_to_str)[current_lcd_state];
          uStack_20 = 0;
          kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_30);
          pcVar4 = "areameet_down=true";
          goto LAB_0014e590;
        }
      }
LAB_0014e59c:
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x14e5a0);
      (*pcVar3)();
    }
  }
LAB_0014e4f4:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014e5a4 ufp_report_lcd_state */

void ufp_report_lcd_state(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  if (ufp_tp_ops == 0) {
    _printk(&uf_touch_report_missing_pdev_str);
    return;
  }
  _printk(&ufp_report_lcd_state_event_fmt);
  return;
}



/* 0014e644 point_is_in_limit_area */

undefined8 point_is_in_limit_area(uint param_1,ushort param_2)

{
  uint uVar1;
  ushort uVar2;
  undefined8 uVar3;
  
  uVar1 = param_1 & 0xffff;
  if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
    if (uVar1 < *(byte *)(tpd_cdev + 0x27)) {
      return 1;
    }
    if ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x28)) <
        (int)(param_1 & 0xffff)) {
      return 1;
    }
    if (param_2 < *(byte *)(tpd_cdev + 0x29)) {
      return 1;
    }
    if ((int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x2a)) <
        (int)(uint)param_2) {
      return 1;
    }
  }
  else {
    if (uVar1 < *(byte *)(tpd_cdev + 0x27)) {
      return 1;
    }
    uVar2 = *(ushort *)(tpd_cdev + 0x442);
    if ((int)((uint)uVar2 - (uint)*(byte *)(tpd_cdev + 0x28)) < (int)uVar1) {
      return 1;
    }
    if (((*(uint *)(tpd_cdev + 0x10) == 0) &&
        ((uVar1 < (uint)*(byte *)(tpd_cdev + 0x34) * 3 >> 1 ||
         ((int)((uint)uVar2 - ((uint)*(byte *)(tpd_cdev + 0x35) * 3 >> 1)) < (int)uVar1)))) &&
       (((point_report_info[0x53] & 1) != 0 ||
        (((((((point_report_info[0xdb] & 1) != 0 || ((point_report_info[0x163] & 1) != 0)) ||
            ((point_report_info[0x1eb] & 1) != 0)) ||
           (((point_report_info[0x273] & 1) != 0 || ((point_report_info[0x2fb] & 1) != 0)))) ||
          (((point_report_info[899] & 1) != 0 ||
           (((point_report_info[0x40b] & 1) != 0 || ((point_report_info[0x493] & 1) != 0)))))) ||
         (point_report_info[0x51b] == '\x01')))))) {
      uVar3 = _printk(&DAT_0016a9c4,uVar1,param_2);
      return uVar3;
    }
    if ((*(char *)(tpd_cdev + 0x38) != '\0') && (*(ushort *)(tpd_cdev + 0x2e) < param_2)) {
      if (uVar1 < *(ushort *)(tpd_cdev + 0x2c)) {
        return 1;
      }
      if ((int)((uint)uVar2 - (uint)*(ushort *)(tpd_cdev + 0x2c)) < (int)uVar1) {
        return 1;
      }
    }
  }
  return 0;
}



/* 0014e804 edge_long_press_up */

void edge_long_press_up(undefined8 param_1,ushort param_2)

{
  long lVar1;
  code *pcVar2;
  ulong uVar3;
  
  lVar1 = tpd_cdev;
  if (9 < param_2) goto LAB_0014ea70;
  uVar3 = ((ulong)param_2 + (ulong)param_2 * 0x10) * 8;
  if (point_report_info[uVar3 + 0x54] == '\0') {
    return;
  }
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,param_2);
  input_mt_report_slot_state(param_1,0,0);
  if (param_2 == 0) {
LAB_0014e8b0:
    if (((point_report_info[0xdb] & 1) == 0) && ((point_report_info[0xdc] & 1) == 0)) {
      if (param_2 != 2) goto LAB_0014e920;
LAB_0014e8d4:
      if (((point_report_info[0x1eb] & 1) == 0) && ((point_report_info[0x1ec] & 1) == 0)) {
        if (param_2 != 4) goto LAB_0014e944;
LAB_0014e968:
        if (((point_report_info[0x2fb] & 1) == 0) && ((point_report_info[0x2fc] & 1) == 0)) {
          if (param_2 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
          if (((point_report_info[0x40b] & 1) == 0) && ((point_report_info[0x40c] & 1) == 0)) {
            if (param_2 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
            if (((point_report_info[0x51b] & 1) == 0) && ((point_report_info[0x51c] & 1) == 0)) {
LAB_0014ea10:
              input_event(param_1,1,0x14a,0);
            }
          }
        }
      }
    }
  }
  else if (((point_report_info[0x53] & 1) == 0) && ((point_report_info[0x54] & 1) == 0)) {
    if (param_2 != 1) goto LAB_0014e8b0;
LAB_0014e920:
    if (((point_report_info[0x163] & 1) == 0) && ((point_report_info[0x164] & 1) == 0)) {
      if (param_2 != 3) goto LAB_0014e8d4;
LAB_0014e944:
      if (((point_report_info[0x273] & 1) == 0) && ((point_report_info[0x274] & 1) == 0)) {
        if (param_2 != 5) goto LAB_0014e968;
LAB_0014e98c:
        if (((point_report_info[899] & 1) == 0) && ((point_report_info[900] & 1) == 0)) {
          if (param_2 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
          if (((point_report_info[0x493] & 1) == 0) && ((point_report_info[0x494] & 1) == 0)) {
            if (param_2 != 9) goto LAB_0014e9f8;
            goto LAB_0014ea10;
          }
        }
      }
    }
  }
  input_event(param_1,0,0,0);
  mutex_unlock(lVar1 + 0xc90);
  point_report_info[uVar3 + 0x54] = 0;
  if ((uVar3 | 4) < 0x551) {
    _printk(&DAT_0016f152,"edge_long_press_up",param_2,*(undefined4 *)(point_report_info + uVar3),
            *(undefined4 *)(point_report_info + uVar3 + 4));
    return;
  }
LAB_0014ea70:
                    /* WARNING: Does not return */
  pcVar2 = (code *)SoftwareBreakpoint(1,0x14ea74);
  (*pcVar2)();
}



/* 0014e844 FUN_0014e844 */

void FUN_0014e844(long param_1,undefined8 param_2)

{
  undefined4 *puVar1;
  long lVar2;
  code *pcVar3;
  short unaff_w20;
  ulong unaff_x24;
  
  lVar2 = tpd_cdev;
  puVar1 = (undefined4 *)(param_1 + unaff_x24);
  if (*(char *)(puVar1 + 0x15) == '\0') {
    return;
  }
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_2,3,0x2f,unaff_w20);
  input_mt_report_slot_state(param_2,0,0);
  if (unaff_w20 == 0) {
LAB_0014e8b0:
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 2) goto LAB_0014e920;
LAB_0014e8d4:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 4) goto LAB_0014e944;
LAB_0014e968:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014ea24;
  }
  else {
    if (((point_report_info[0x53] & 1) != 0) || ((point_report_info[0x54] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 1) goto LAB_0014e8b0;
LAB_0014e920:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 3) goto LAB_0014e8d4;
LAB_0014e944:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 5) goto LAB_0014e968;
LAB_0014e98c:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 9) goto LAB_0014e9f8;
  }
  input_event(param_2,1,0x14a,0);
LAB_0014ea24:
  input_event(param_2,0,0,0);
  mutex_unlock(lVar2 + 0xc90);
  *(undefined1 *)(puVar1 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(1,0x14ea74);
    (*pcVar3)();
  }
  _printk(&DAT_0016f152,"edge_long_press_up",unaff_w20,*puVar1,puVar1[1]);
  return;
}



/* 0014e854 FUN_0014e854 */

void FUN_0014e854(void)

{
  return;
}



/* 0014e868 FUN_0014e868 */

void FUN_0014e868(void)

{
  return;
}



/* 0014e86c FUN_0014e86c */

void FUN_0014e86c(undefined8 param_1)

{
  long lVar1;
  code *pcVar2;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,unaff_w20);
  input_mt_report_slot_state(param_1,0,0);
  if (unaff_w20 == 0) {
LAB_0014e8b0:
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 2) goto LAB_0014e920;
LAB_0014e8d4:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 4) goto LAB_0014e944;
LAB_0014e968:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014ea24;
  }
  else {
    if (((point_report_info[0x53] & 1) != 0) || ((point_report_info[0x54] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 1) goto LAB_0014e8b0;
LAB_0014e920:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 3) goto LAB_0014e8d4;
LAB_0014e944:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 5) goto LAB_0014e968;
LAB_0014e98c:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 9) goto LAB_0014e9f8;
  }
  input_event(param_1,1,0x14a,0);
LAB_0014ea24:
  input_event(param_1,0,0,0);
  mutex_unlock(lVar1 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(1,0x14ea74);
    (*pcVar2)();
  }
  _printk(&DAT_0016f152,"edge_long_press_up",unaff_w20,*unaff_x23,unaff_x23[1]);
  return;
}



/* 0014e884 FUN_0014e884 */

void FUN_0014e884(void)

{
  code *pcVar1;
  int unaff_w19;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  input_event();
  input_mt_report_slot_state();
  if (unaff_w19 == 0) {
LAB_0014e8b0:
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 2) goto LAB_0014e920;
LAB_0014e8d4:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 4) goto LAB_0014e944;
LAB_0014e968:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014ea24;
  }
  else {
    if (((point_report_info[0x53] & 1) != 0) || ((point_report_info[0x54] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 1) goto LAB_0014e8b0;
LAB_0014e920:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 3) goto LAB_0014e8d4;
LAB_0014e944:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 5) goto LAB_0014e968;
LAB_0014e98c:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 9) goto LAB_0014e9f8;
  }
  input_event();
LAB_0014ea24:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14ea74);
    (*pcVar1)();
  }
  _printk(&DAT_0016f152,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
  return;
}



/* 0014e888 FUN_0014e888 */

void FUN_0014e888(undefined8 param_1)

{
  code *pcVar1;
  int unaff_w19;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  input_event(param_1,3,0x2f,unaff_w19);
  input_mt_report_slot_state();
  if (unaff_w19 == 0) {
LAB_0014e8b0:
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 2) goto LAB_0014e920;
LAB_0014e8d4:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 4) goto LAB_0014e944;
LAB_0014e968:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014ea24;
  }
  else {
    if (((point_report_info[0x53] & 1) != 0) || ((point_report_info[0x54] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 1) goto LAB_0014e8b0;
LAB_0014e920:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 3) goto LAB_0014e8d4;
LAB_0014e944:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 5) goto LAB_0014e968;
LAB_0014e98c:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 9) goto LAB_0014e9f8;
  }
  input_event();
LAB_0014ea24:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14ea74);
    (*pcVar1)();
  }
  _printk(&DAT_0016f152,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
  return;
}



/* 0014e8ac FUN_0014e8ac */

void FUN_0014e8ac(void)

{
  code *pcVar1;
  int unaff_w19;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  if (unaff_w19 == 0) {
LAB_0014e8b0:
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 2) goto LAB_0014e920;
LAB_0014e8d4:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 4) goto LAB_0014e944;
LAB_0014e968:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014ea24;
  }
  else {
    if (((point_report_info[0x53] & 1) != 0) || ((point_report_info[0x54] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 1) goto LAB_0014e8b0;
LAB_0014e920:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 3) goto LAB_0014e8d4;
LAB_0014e944:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 5) goto LAB_0014e968;
LAB_0014e98c:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 9) goto LAB_0014e9f8;
  }
  input_event();
LAB_0014ea24:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14ea74);
    (*pcVar1)();
  }
  _printk(&DAT_0016f152,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
  return;
}



/* 0014e914 FUN_0014e914 */

void FUN_0014e914(void)

{
  code *pcVar1;
  undefined4 unaff_w19;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  if (unaff_w20 == 1) {
LAB_0014e920:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 3) goto LAB_0014e8d4;
LAB_0014e944:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 5) goto LAB_0014e968;
LAB_0014e98c:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 9) goto LAB_0014e9f8;
  }
  else {
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 2) goto LAB_0014e920;
LAB_0014e8d4:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 4) goto LAB_0014e944;
LAB_0014e968:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014ea24;
  }
  input_event();
LAB_0014ea24:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14ea74);
    (*pcVar1)();
  }
  _printk(&DAT_0016f152,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
  return;
}



/* 0014e928 FUN_0014e928 */

void FUN_0014e928(ulong param_1)

{
  code *pcVar1;
  undefined4 unaff_w19;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  if (((param_1 & 1) != 0) || ((point_report_info[0x164] & 1) != 0)) goto LAB_0014ea24;
  if (unaff_w20 == 3) {
LAB_0014e944:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 5) goto LAB_0014e968;
LAB_0014e98c:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 7) goto LAB_0014e9b0;
LAB_0014e9d4:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 9) goto LAB_0014e9f8;
  }
  else {
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 4) goto LAB_0014e944;
LAB_0014e968:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 6) goto LAB_0014e98c;
LAB_0014e9b0:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014ea24;
    if (unaff_w20 != 8) goto LAB_0014e9d4;
LAB_0014e9f8:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014ea24;
  }
  input_event();
LAB_0014ea24:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14ea74);
    (*pcVar1)();
  }
  _printk(&DAT_0016f152,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
  return;
}



/* 0014ea04 FUN_0014ea04 */

void FUN_0014ea04(void)

{
  code *pcVar1;
  undefined4 unaff_w19;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  if ((point_report_info[0x51c] & 1) == 0) {
    input_event();
  }
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if ((unaff_x24 | 4) < 0x551) {
    _printk(&DAT_0016f152,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
    return;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(1,0x14ea74);
  (*pcVar1)();
}



/* 0014ea78 change_tp_state */

void change_tp_state(uint param_1)

{
  code *pcVar1;
  
  mutex_lock(tpd_cdev + 0xcc0);
  if ((param_1 < 4) && (current_lcd_state < 3)) {
    _printk(&DAT_00172c96,(&PTR_s_screen_on_001929f0)[current_lcd_state],
            (&PTR_s_lcd_exit_lp_00192a08)[param_1]);
    return;
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x14ebf0);
  (*pcVar1)();
}



/* 0014ebf4 syna_ts_check_dt */

ulong syna_ts_check_dt(long param_1)

{
  undefined8 *puVar1;
  long lVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  ulong uVar6;
  uint uVar7;
  int iVar8;
  undefined8 *local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  iVar3 = of_count_phandle_with_args(*(undefined8 *)(param_1 + 0x2e8),"panel",0);
  if (iVar3 < 1) {
    uVar7 = 0xffffffed;
  }
  else {
    iVar8 = 0;
    puVar5 = &DAT_00168944;
    uVar7 = 0xffffffff;
    do {
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      local_a8 = 0;
      uStack_a0 = 0;
      local_b8 = (undefined8 *)0x0;
      uStack_b0 = 0;
      iVar4 = __of_parse_phandle_with_args
                        (*(undefined8 *)(param_1 + 0x2e8),"panel",0,0,iVar8,&local_b8);
      puVar1 = local_b8;
      if (iVar4 != 0) {
        puVar1 = (undefined8 *)0x0;
      }
      if (puVar1 != (undefined8 *)0x0) {
        uVar6 = _printk(&DAT_001670d4,"syna_ts_check_dt","syna_ts_check_dt",*puVar1);
        return uVar6;
      }
      uVar6 = of_drm_find_panel(0);
      if (uVar6 < 0xfffffffffffff001) {
        strncpy(DEVICE_NODE_NAME,pcRam0000000000000000,100);
        uVar7 = 0;
        active_panel = uVar6;
        break;
      }
      if (uVar6 == 0xffffffffffffffed) {
        puVar5 = &DAT_00169048;
LAB_0014ec84:
        uVar6 = _printk(puVar5,"syna_ts_check_dt","syna_ts_check_dt");
        return uVar6;
      }
      if (uVar6 == 0xfffffffffffffdfb) goto LAB_0014ec84;
      iVar8 = iVar8 + 1;
    } while (iVar3 != iVar8);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return (ulong)uVar7;
}



/* 0014ed94 syna_tcm_preserve_touch_report_config */

undefined8 syna_tcm_preserve_touch_report_config(long param_1,int param_2)

{
  uint uVar1;
  undefined4 uVar2;
  byte bVar3;
  bool bVar4;
  bool bVar5;
  code *pcVar6;
  int iVar7;
  void *__s;
  long lVar8;
  undefined *puVar9;
  undefined8 uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  ulong uVar14;
  uint uVar15;
  ulong __n;
  
  if (param_1 == 0) {
    uVar10 = _printk(&DAT_00168a84,"syna_tcm_preserve_touch_report_config");
    return uVar10;
  }
  uVar11 = (uint)*(byte *)(param_1 + 9);
  if (*(byte *)(param_1 + 9) != 1) {
    puVar9 = &DAT_0016c48e;
LAB_0014f12c:
    uVar10 = _printk(puVar9,"syna_tcm_preserve_touch_report_config",uVar11);
    return uVar10;
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      uVar10 = _printk(&DAT_00171524,"syna_tcm_preserve_touch_report_config");
      return uVar10;
    }
    param_2 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x14ee08);
    (*pcVar6)();
  }
  iVar7 = (**(code **)(param_1 + 0x398))(param_1,0x25,0,0,0,param_2);
  if (iVar7 < 0) {
    uVar10 = _printk(&DAT_00168e30,"syna_tcm_preserve_touch_report_config");
    return uVar10;
  }
  uVar11 = *(uint *)(param_1 + 0x150);
  if (*(long *)(param_1 + 0x148) == 0) {
    uVar2 = *(undefined4 *)(param_1 + 0x154);
    puVar9 = &DAT_00171710;
  }
  else {
    if (uVar11 == 0) {
      uVar11 = *(uint *)(param_1 + 0x154);
      puVar9 = &DAT_0016a0ca;
      goto LAB_0014f12c;
    }
    if (*(char *)(param_1 + 0x188) != '\0') {
      uVar10 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar10;
    }
    mutex_lock(param_1 + 0x158);
    *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
    if (*(char *)(param_1 + 0x1d0) != '\0') {
      uVar10 = _printk(&DAT_0016da50,"syna_tcm_buf_lock");
      return uVar10;
    }
    mutex_lock(param_1 + 0x1a0);
    *(char *)(param_1 + 0x1d0) = *(char *)(param_1 + 0x1d0) + '\x01';
    *(undefined4 *)(param_1 + 0x38c) = 1;
    uVar1 = *(uint *)(param_1 + 0x154);
    __n = (ulong)uVar1;
    __s = *(void **)(param_1 + 400);
    uVar14 = (ulong)*(uint *)(param_1 + 0x198);
    if (*(uint *)(param_1 + 0x198) < uVar1) {
      if (__s != (void *)0x0) {
        lVar8 = syna_request_managed_device();
        if (lVar8 == 0) {
          uVar10 = _printk(&DAT_00171996,"syna_pal_mem_free");
          return uVar10;
        }
        devm_kfree(lVar8,__s);
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        puVar9 = &DAT_00171996;
LAB_0014f238:
        uVar10 = _printk(puVar9,"syna_pal_mem_alloc");
        return uVar10;
      }
      if ((int)uVar1 < 1) {
        puVar9 = &DAT_0016da92;
        goto LAB_0014f238;
      }
      __s = (void *)devm_kmalloc(lVar8,__n,0xdc0);
      *(void **)(param_1 + 400) = __s;
      if (__s == (void *)0x0) {
        uVar10 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
        return uVar10;
      }
      *(uint *)(param_1 + 0x198) = uVar1;
      uVar14 = __n;
    }
    memset(__s,0,uVar14);
    uVar11 = *(uint *)(param_1 + 0x150);
    *(undefined4 *)(param_1 + 0x19c) = 0;
    if (*(void **)(param_1 + 0x148) != (void *)0x0) {
      if (uVar11 != 0) {
        if (*(void **)(param_1 + 400) == (void *)0x0) {
          uVar10 = _printk(&DAT_0016b3be,"syna_tcm_preserve_touch_report_config");
          return uVar10;
        }
        if ((uVar11 < uVar1) || (*(uint *)(param_1 + 0x198) < uVar1)) {
          uVar10 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",uVar11,*(uint *)(param_1 + 0x198),uVar1)
          ;
          return uVar10;
        }
        memcpy(*(void **)(param_1 + 400),*(void **)(param_1 + 0x148),__n);
        *(uint *)(param_1 + 0x19c) = uVar1;
        if (*(char *)(param_1 + 0x1d0) != '\x01') {
          uVar10 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar10;
        }
        *(undefined1 *)(param_1 + 0x1d0) = 0;
        mutex_unlock(param_1 + 0x1a0);
        if (*(char *)(param_1 + 0x188) != '\x01') {
          uVar10 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock");
          return uVar10;
        }
        *(undefined1 *)(param_1 + 0x188) = 0;
        mutex_unlock(param_1 + 0x158);
        if (uVar1 == 0) {
          iVar7 = 0;
          uVar12 = 0;
          uVar11 = 0;
        }
        else {
          uVar13 = 0;
          uVar11 = 0;
          uVar12 = 0;
          iVar7 = 0;
          bVar5 = false;
          bVar4 = false;
          do {
            bVar3 = *(byte *)(*(long *)(param_1 + 400) + (ulong)uVar13);
            uVar14 = (ulong)uVar13 + 1;
            uVar15 = (uint)bVar3;
            if (bVar3 < 3) {
              if (uVar15 - 1 < 2) {
                bVar4 = true;
              }
              else if (uVar15 == 0) {
                bVar4 = false;
                bVar5 = false;
              }
              else {
LAB_0014efdc:
                bVar3 = *(byte *)(*(long *)(param_1 + 400) + uVar14);
                uVar14 = (ulong)(uVar13 + 2);
                uVar13 = uVar12 + bVar3;
                uVar15 = uVar13;
                if (!bVar4) {
                  uVar15 = uVar12;
                }
                if (bVar5) {
                  uVar11 = uVar11 + bVar3;
                  bVar5 = true;
                  uVar12 = uVar15;
                }
                else if (bVar4) {
                  bVar5 = false;
                  bVar4 = true;
                  uVar12 = uVar13;
                }
                else {
                  bVar4 = false;
                  bVar5 = false;
                  iVar7 = iVar7 + (uint)bVar3;
                }
              }
            }
            else if (uVar15 == 3) {
              bVar4 = false;
              *(int *)(param_1 + 0x1d8) = (int)uVar14;
              bVar5 = true;
            }
            else {
              if (uVar15 != 4) goto LAB_0014efdc;
              uVar13 = uVar12 + 7 & 0xfffffff8;
              if (!bVar4) {
                uVar13 = uVar12;
              }
              uVar12 = uVar13;
              if (bVar5) {
                bVar5 = true;
                uVar11 = uVar11 + 7 & 0xfffffff8;
              }
              else {
                bVar5 = false;
              }
            }
            uVar13 = (uint)uVar14;
          } while (uVar13 < uVar1);
        }
        *(int *)(param_1 + 0x1e0) = iVar7;
        *(uint *)(param_1 + 0x1dc) = uVar12;
        *(uint *)(param_1 + 0x1e4) = uVar11;
        *(undefined4 *)(param_1 + 0x38c) = 0;
        return 0;
      }
      uVar11 = *(uint *)(param_1 + 0x154);
      puVar9 = &DAT_001708b0;
      goto LAB_0014f12c;
    }
    uVar2 = *(undefined4 *)(param_1 + 0x154);
    puVar9 = &DAT_00171e0e;
  }
  uVar10 = _printk(puVar9,"syna_tcm_preserve_touch_report_config",uVar11,uVar2);
  return uVar10;
}



/* 0014f300 syna_tcm_get_partition_id_string */

undefined * syna_tcm_get_partition_id_string(int param_1)

{
  if (param_1 - 1U < 0x17) {
    return (&PTR_s_APP_CODE_00197338)[param_1 - 1U];
  }
  return &DAT_00167ae8;
}



/* 0014f32c syna_tcm_parse_fw_image */

undefined8 syna_tcm_parse_fw_image(int *param_1,int param_2,int *param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  size_t __n;
  undefined8 uVar5;
  undefined *puVar6;
  char *pcVar7;
  long lVar8;
  long lVar9;
  uint uVar10;
  int iVar11;
  uint uVar12;
  ulong __maxlen;
  char *__string;
  
  if (param_1 == (int *)0x0) {
    puVar6 = &DAT_0016f5b4;
  }
  else if (param_3 == (int *)0x0) {
    puVar6 = &DAT_0016f9b2;
  }
  else if (param_2 == 0) {
    puVar6 = &DAT_0016d75a;
  }
  else {
    memset(param_3 + 1,0,0x30c);
    *(int **)(param_3 + 2) = param_1;
    *param_3 = param_2;
    if (*param_1 == 0x4818472b) {
      iVar2 = param_1[1];
      if (iVar2 != 0) {
        iVar11 = 0;
        pcVar7 = " ";
        uVar12 = 8;
        do {
          piVar1 = (int *)((long)param_1 + (ulong)*(uint *)((long)param_1 + (ulong)uVar12));
          if (*piVar1 == 0x7c05e516) {
            uVar10 = 0x16;
            while( true ) {
              if (uVar10 < 0x17) {
                __maxlen = *(ulong *)(&UNK_0019bc48 + (ulong)uVar10 * 8);
                __string = (&PTR_s_APP_CODE_0019bd00)[uVar10];
              }
              else {
                __maxlen = 2;
                __string = pcVar7;
              }
              __n = strnlen(__string,__maxlen);
              if (__maxlen < __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(2,__maxlen,__n + 1);
              }
              if (__maxlen <= __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(4,__maxlen,__n + 1);
              }
              iVar3 = strncmp((char *)(piVar1 + 1),__string,__n);
              if (iVar3 == 0) break;
              uVar10 = uVar10 - 1;
              if (uVar10 == 0xfffffffe) {
                uVar5 = _printk(&DAT_0016d804,"syna_tcm_get_partition_id",piVar1 + 1);
                return uVar5;
              }
            }
            if (uVar10 < 0x17) {
              uVar10 = uVar10 + 1;
              lVar9 = 0x1c;
              lVar8 = 0x24;
LAB_0014f4a4:
              param_3 = param_3 + (ulong)uVar10 * 8 + 4;
              if (param_3 == (int *)0x0) {
                puVar6 = &DAT_00168734;
              }
              else {
                if (piVar1 != (int *)0x0) {
                  iVar2 = *(int *)((long)piVar1 + lVar9);
                  lVar8 = (long)piVar1 + lVar8;
                  if (uVar10 == 0x14) {
                    *(long *)(param_3 + 2) = lVar8;
                    *(undefined1 *)(param_3 + 6) = 0x14;
                    param_3[4] = iVar2;
                    param_3[5] = 0;
                    *(undefined1 *)param_3 = 1;
                    uVar5 = _printk(&DAT_0016f9ee,"syna_tcm_save_flash_partition_data",iVar2);
                    return uVar5;
                  }
                  uVar12 = piVar1[8];
                  uVar4 = crc32_le(0xffffffff,lVar8,iVar2);
                  if (uVar12 == ~uVar4) {
                    iVar11 = piVar1[6];
                    *(char *)(param_3 + 6) = (char)uVar10;
                    iVar11 = iVar11 << 1;
                    *(long *)(param_3 + 2) = lVar8;
                    param_3[7] = uVar12;
                    *(undefined1 *)param_3 = 1;
                    param_3[4] = iVar2;
                    param_3[5] = iVar11;
                    if (uVar10 - 1 < 0x17) {
                      pcVar7 = (&PTR_s_APP_CODE_0019bdb8)[uVar10 - 1];
                    }
                    uVar5 = _printk(&DAT_0016940c,"syna_tcm_save_flash_partition_data",pcVar7,iVar11
                                    ,iVar11,iVar2);
                    return uVar5;
                  }
                  if (uVar10 - 1 < 0x17) {
                    pcVar7 = (&PTR_s_APP_CODE_0019bdb8)[uVar10 - 1];
                  }
                  uVar5 = _printk(&DAT_00171e56,"syna_tcm_save_flash_partition_data",pcVar7,uVar12);
                  return uVar5;
                }
                puVar6 = &DAT_001730ac;
              }
              uVar5 = _printk(puVar6,"syna_tcm_save_flash_partition_data");
              return uVar5;
            }
          }
          else if (*piVar1 == -0x3e04be28) {
            uVar10 = 0x14;
            lVar9 = 4;
            lVar8 = 8;
            goto LAB_0014f4a4;
          }
          iVar11 = iVar11 + 1;
          uVar12 = uVar12 + 4;
        } while (iVar11 != iVar2);
      }
      return 0;
    }
    puVar6 = &DAT_00168042;
  }
  uVar5 = _printk(puVar6,"syna_tcm_parse_fw_image");
  return uVar5;
}



/* 0014f68c string_change */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined1 * string_change(long param_1,char *param_2,int *param_3)

{
  bool bVar1;
  ulong uVar2;
  bool bVar3;
  bool bVar4;
  code *pcVar5;
  undefined1 uVar6;
  size_t sVar7;
  char *__s;
  undefined1 *puVar8;
  char *pcVar9;
  char *pcVar10;
  long lVar11;
  undefined8 uVar12;
  undefined8 uVar13;
  undefined8 uVar14;
  undefined8 uVar15;
  ulong uVar16;
  int iVar17;
  undefined1 uVar18;
  char *local_80;
  char *local_78;
  char *local_70;
  long local_68;
  
  lVar11 = sp_el0;
  local_68 = *(long *)(lVar11 + 0x710);
  if ((param_2 == (char *)0x0) || (*param_2 == '\0')) {
    puVar8 = (undefined1 *)__kmalloc_cache_noprof(_vfree,0xcc0,1);
    if (puVar8 != (undefined1 *)0x0) {
      *puVar8 = 0;
    }
  }
  else {
    sVar7 = strlen(param_2);
    __s = (char *)__kmalloc_noprof(sVar7 + 1,0xcc0);
    if (__s == (char *)0x0) {
      puVar8 = (undefined1 *)0x0;
    }
    else {
      memcpy(__s,param_2,sVar7 + 1);
      sVar7 = strlen(param_2);
      uVar2 = sVar7 * 3;
      puVar8 = (undefined1 *)__kmalloc_noprof(uVar2,0xcc0);
      if (puVar8 != (undefined1 *)0x0) {
        pcVar9 = strchr(__s,0x3a);
        pcVar10 = (char *)0x0;
        local_70 = __s;
        if (pcVar9 == (char *)0x0) {
LAB_0014f758:
          local_78 = pcVar10;
          if ((*__s == '\0') || (pcVar9 = strsep(&local_70,","), pcVar9 == (char *)0x0))
          goto joined_r0x0014f848;
          bVar4 = false;
          uVar18 = 0;
          iVar17 = 0;
          bVar1 = true;
          do {
            pcVar10 = (char *)trim();
            if (*pcVar10 != '\0') {
              uVar6 = simple_strtoul(pcVar10,0,0x10);
              if ((iVar17 < 0) || (uVar16 = (ulong)iVar17, uVar2 <= uVar16)) goto LAB_0014fbb4;
              iVar17 = iVar17 + 1;
              if (bVar1) {
                bVar4 = true;
                uVar18 = uVar6;
              }
              puVar8[uVar16] = uVar6;
              bVar1 = false;
            }
            pcVar9 = strsep(&local_70,",");
            pcVar10 = local_78;
          } while (pcVar9 != (char *)0x0);
        }
        else {
          pcVar10 = pcVar9 + 1;
          *pcVar9 = '\0';
          if (__s != (char *)0x0) goto LAB_0014f758;
          local_78 = pcVar10;
          pcVar10 = pcVar9 + 1;
joined_r0x0014f848:
          bVar4 = false;
          uVar18 = 0;
          iVar17 = 0;
        }
        if (((pcVar10 != (char *)0x0) && (*pcVar10 != '\0')) &&
           (pcVar10 = strsep(&local_78,"."), pcVar10 != (char *)0x0)) {
          bVar1 = true;
          do {
            pcVar10 = (char *)trim();
            if (*pcVar10 != '\0') {
              bVar3 = false;
              if (!bVar1) {
                bVar3 = bVar4;
              }
              if (bVar3) {
                if ((iVar17 < 0) || (uVar16 = (ulong)iVar17, uVar2 <= uVar16)) {
LAB_0014fbb4:
                    /* WARNING: Does not return */
                  pcVar5 = (code *)SoftwareBreakpoint(1,0x14fbb8);
                  (*pcVar5)();
                }
                iVar17 = iVar17 + 1;
                puVar8[uVar16] = uVar18;
              }
              pcVar9 = strchr(pcVar10,0x3a);
              if (pcVar9 != (char *)0x0) {
                *pcVar9 = '\0';
                lVar11 = trim(pcVar10);
                pcVar10 = (char *)trim(pcVar9 + 1);
                if (lVar11 != 0) {
                  uVar6 = simple_strtoul(lVar11,0,0x10);
                  if ((iVar17 < 0) || (uVar16 = (ulong)iVar17, uVar2 <= uVar16)) goto LAB_0014fbb4;
                  iVar17 = iVar17 + 1;
                  puVar8[uVar16] = uVar6;
                }
              }
              local_80 = pcVar10;
              pcVar10 = strsep(&local_80,",");
              if (pcVar10 != (char *)0x0) {
                uVar12 = trim();
                pcVar10 = strsep(&local_80,",");
                if (pcVar10 != (char *)0x0) {
                  uVar13 = trim();
                  pcVar10 = strsep(&local_80,",");
                  if (pcVar10 != (char *)0x0) {
                    uVar14 = trim();
                    pcVar10 = strsep(&local_80,",");
                    if (pcVar10 != (char *)0x0) {
                      uVar15 = trim();
                      simple_strtoul(uVar12,0,10);
                      simple_strtoul(uVar13,0,10);
                      simple_strtoul(uVar14,0,10);
                      simple_strtoul(uVar15,0,10);
                      puVar8 = (undefined1 *)
                               _printk(&DAT_00169442,"change_coordinate",
                                       *(undefined4 *)(param_1 + 0x608));
                      return puVar8;
                    }
                  }
                }
              }
              bVar1 = false;
            }
            pcVar10 = strsep(&local_78,".");
          } while (pcVar10 != (char *)0x0);
        }
        kfree(__s);
        *param_3 = iVar17;
        goto LAB_0014fc5c;
      }
      kfree();
    }
  }
  *param_3 = 0;
LAB_0014fc5c:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return puVar8;
}



/* 0014fc9c trim */

byte * trim(long param_1)

{
  byte *pbVar1;
  size_t sVar2;
  byte *pbVar3;
  byte *__s;
  
  if (param_1 == 0) {
    __s = (byte *)0x0;
  }
  else {
    __s = (byte *)(param_1 + -1);
    do {
      __s = __s + 1;
    } while (((byte)(&_ctype)[*__s] >> 5 & 1) != 0);
    if (*__s != 0) {
      sVar2 = strlen((char *)__s);
      pbVar3 = __s + sVar2;
      do {
        pbVar1 = pbVar3;
        pbVar3 = pbVar1 + -1;
        if (pbVar3 <= __s) break;
      } while (((byte)(&_ctype)[*pbVar3] >> 5 & 1) != 0);
      *pbVar1 = 0;
    }
  }
  return __s;
}



/* 0014fd18 point_report_reset */

void point_report_reset(uint param_1)

{
  code *pcVar1;
  
  if (9 < param_1) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14fdf0);
    (*pcVar1)();
  }
  if (point_report_info[(ulong)param_1 * 0x88 + 0x54] != '\x01') {
    return;
  }
  _printk(&DAT_0016c114,"point_report_reset",param_1);
  return;
}



/* 0014fd78 FUN_0014fd78 */

void FUN_0014fd78(undefined8 param_1,undefined8 param_2)

{
  undefined4 unaff_w19;
  
  _printk(&DAT_0016c114,param_2,unaff_w19);
  return;
}



/* 0014fd9c FUN_0014fd9c */

void FUN_0014fd9c(undefined8 param_1)

{
  undefined4 unaff_w19;
  long unaff_x20;
  long unaff_x21;
  
  input_event(param_1,3,0x2f,unaff_w19);
  input_mt_report_slot_state(*(undefined8 *)(unaff_x20 + 0x80),0,0);
  input_event(*(undefined8 *)(unaff_x20 + 0x80),0,0,0);
  mutex_unlock(unaff_x21 + 0xc90);
  usleep_range_state(1000,0x44c,2);
  return;
}



/* 0014fdf0 syna_dev_enter_normal_sensing */

undefined8 syna_dev_enter_normal_sensing(long *param_1)

{
  int iVar1;
  undefined8 uVar2;
  undefined *puVar3;
  undefined4 uVar4;
  
  if ((*(int *)(param_1[0x4e] + 0xb8) == 0) || ((*(byte *)(param_1[0x4e] + 0xbc) & 1) == 0)) {
    uVar4 = *(undefined4 *)(*param_1 + 0x20c);
  }
  else {
    uVar4 = 0;
  }
  iVar1 = syna_tcm_sleep(*param_1,0,uVar4);
  if (-1 < iVar1) {
    if (*(char *)((long)param_1 + 0x581) == '\x01') {
      iVar1 = syna_dev_enable_lowpwr_gesture(param_1,0,uVar4);
      if (iVar1 < 0) {
        puVar3 = &DAT_0016cdd8;
        goto LAB_0014fe88;
      }
      msleep(100);
    }
    return 0;
  }
  puVar3 = &DAT_0016d572;
LAB_0014fe88:
  uVar2 = _printk(puVar3,"syna_dev_enter_normal_sensing");
  return uVar2;
}



/* 0014fe38 FUN_0014fe38 */

undefined8 FUN_0014fe38(void)

{
  int iVar1;
  undefined8 uVar2;
  long unaff_x19;
  
  if (*(char *)(unaff_x19 + 0x581) == '\x01') {
    iVar1 = syna_dev_enable_lowpwr_gesture();
    if (iVar1 < 0) {
      uVar2 = _printk(&DAT_0016cdd8,"syna_dev_enter_normal_sensing");
      return uVar2;
    }
    msleep(100);
  }
  return 0;
}



/* 0014fea8 syna_sysfs_fw_update_store */

long syna_sysfs_fw_update_store(long param_1,undefined8 param_2,undefined8 param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  long *plVar5;
  undefined4 local_2c;
  long local_28;
  
  lVar4 = sp_el0;
  local_28 = *(long *)(lVar4 + 0x710);
  local_2c = 0;
  plVar5 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)plVar5 + 0x582) & 1) == 0) {
    lVar4 = _printk(&DAT_0016b1fc,"syna_sysfs_fw_update_store");
    return lVar4;
  }
  iVar3 = kstrtouint(param_3,10,&local_2c);
  if (iVar3 == 0) {
    iVar3 = syna_dev_do_reflash(plVar5,1);
    if (iVar3 < 0) {
      lVar4 = _printk(&DAT_001676e2,"syna_sysfs_fw_update_store");
      return lVar4;
    }
    if (*(char *)(*plVar5 + 9) == '\x01') {
      if (*(int *)((code *)plVar5[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x14ff44);
        (*pcVar2)();
      }
      (*(code *)plVar5[0xd7])(plVar5);
    }
    lVar4 = (long)param_4;
  }
  else {
    lVar4 = -0x16;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return lVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014ffb8 suspend_show */

void suspend_show(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xe58);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x150058);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_0016fb00,"suspend_show",*(undefined1 *)(lVar2 + 0x15));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 001500b0 tpd_report_uevent */

void tpd_report_uevent(char param_1)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  if (param_1 == '\x02') {
    _printk(&DAT_0016d8ae,"tpd_report_uevent");
    return;
  }
  if (param_1 != '\x01') {
    if (param_1 == '\0') {
      _printk(&DAT_0016ea8e,"tpd_report_uevent");
      return;
    }
    _printk(&DAT_0016f050,"tpd_report_uevent",param_1);
    return;
  }
  _printk(&DAT_0016e512,"tpd_report_uevent");
  return;
}



/* 001501b8 syna_tpd_register_fw_class */

void syna_tpd_register_fw_class(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_0016ea1e,"syna_tpd_register_fw_class");
  return;
}



/* 0015052c syna_work_charger_detect_work */

void syna_work_charger_detect_work(long param_1)

{
  long lVar1;
  long lVar2;
  
  lVar1 = sp_el0;
  if (param_1 != 0x620) {
    _printk(&DAT_0016a7c8,"syna_work_charger_detect_work");
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != *(long *)(lVar1 + 0x710)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 00150708 syna_dev_set_tp_report_rate */

void syna_dev_set_tp_report_rate(void)

{
  _printk(&DAT_00170282,"syna_dev_set_tp_report_rate","syna_dev_set_tp_report_rate");
  return;
}



/* 0015086c ufp_report_gesture_uevent */

void ufp_report_gesture_uevent(char *param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char *local_38;
  undefined8 uStack_30;
  undefined8 local_28;
  
  lVar1 = sp_el0;
  local_28 = *(undefined8 *)(lVar1 + 0x710);
  uStack_30 = 0;
  local_38 = param_1;
  kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_38);
  pm_wakeup_ws_event(tp_wakeup,2000,0);
  iVar2 = strcmp(param_1,"single_tap=true");
  if (iVar2 == 0) {
    uVar3 = 0x96;
    DAT_0015faa0 = 1;
  }
  else {
    iVar2 = strcmp(param_1,"double_tap=true");
    if (iVar2 != 0) goto LAB_00150914;
    uVar3 = 0;
  }
  mod_delayed_work_on(0x20,DAT_0015fb10,&DAT_0015faa8,uVar3);
LAB_00150914:
  _printk(&DAT_00171210,param_1);
  return;
}



/* 00150954 report_ufp_uevent */

void report_ufp_uevent(int param_1)

{
  byte bVar1;
  long lVar2;
  code *pcVar3;
  char *local_40;
  char *local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  if ((param_1 == 0) || ((report_ufp_uevent_area_meet_down & 1) != 0)) {
    bVar1 = 0;
    if (param_1 == 0) {
      bVar1 = report_ufp_uevent_area_meet_down;
    }
    if (bVar1 != 1) {
      lVar2 = sp_el0;
      if (*(long *)(lVar2 + 0x710) == local_28) {
        return;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    report_ufp_uevent_area_meet_down = 0;
    if (ufp_tp_ops == 0) {
      _printk(&DAT_0016d442);
      return;
    }
    local_40 = "areameet_up=true";
    if (current_lcd_state < 3) {
      local_38 = (&report_ufp_uevent_tppower_to_str)[current_lcd_state];
      uStack_30 = 0;
      kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
      _printk(&DAT_0016d47a,"areameet_up=true",local_38);
      return;
    }
  }
  else {
    report_ufp_uevent_area_meet_down = 1;
    if (current_lcd_state == 0) {
      if (ufp_tp_ops == 0) {
        _printk(&DAT_0016d442);
        return;
      }
      local_40 = "areameet_down=true";
      if (true) {
        local_38 = "TP_POWER_STATUS=2";
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0016d47a,"areameet_down=true",local_38);
        return;
      }
    }
    else {
      if (ufp_tp_ops == 0) {
        _printk(&DAT_0016d442);
        return;
      }
      ufp_report_gesture_uevent("single_tap=true");
      local_40 = "aod_areameet_down=true";
      if (current_lcd_state < 3) {
        local_38 = (&report_ufp_uevent_tppower_to_str)[current_lcd_state];
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0016d47a,"aod_areameet_down=true",local_38);
        return;
      }
    }
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x150bd8);
  (*pcVar3)();
}



/* 00150bdc tpd_test_cmd_store */

void tpd_test_cmd_store(long param_1)

{
  if (*(int *)(*(long *)(param_1 + 0xdb8) + 0x57c) == 1) {
    _printk(&DAT_00169dbe,"tpd_test_cmd_store");
    return;
  }
  _printk(&DAT_0017105e,"tpd_test_cmd_store");
  return;
}



/* 00150cb0 tpd_set_tp_report_rate */

void tpd_set_tp_report_rate(void)

{
  _printk(&DAT_00169dbe,"tpd_set_tp_report_rate");
  return;
}



/* 00150d70 tpd_get_sensibility_level */

undefined8 tpd_get_sensibility_level(long param_1)

{
  *(char *)(param_1 + 0x40) = (char)*(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5fc);
  return 0;
}



/* 00150d8c tpd_set_sensibility_level */

void tpd_set_sensibility_level(void)

{
  _printk(&DAT_00169dbe,"tpd_set_sensibility_level");
  return;
}



/* 00150e50 tpd_get_follow_hand_level */

undefined8 tpd_get_follow_hand_level(long param_1)

{
  *(undefined4 *)(param_1 + 0x468) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x600);
  return 0;
}



/* 00150e6c tpd_set_follow_hand_level */

void tpd_set_follow_hand_level(void)

{
  _printk(&DAT_00169dbe,"tpd_set_follow_hand_level");
  return;
}



/* 00150f2c tpd_get_stability_level */

undefined8 tpd_get_stability_level(long param_1)

{
  *(undefined4 *)(param_1 + 0x46c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x604);
  return 0;
}



/* 00150f48 tpd_set_stability_level */

void tpd_set_stability_level(void)

{
  _printk(&DAT_00169dbe,"tpd_set_stability_level");
  return;
}



/* 00151008 tpd_get_rotation_limit_level */

undefined8 tpd_get_rotation_limit_level(long param_1)

{
  *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x60c);
  return 0;
}



/* 00151024 tpd_set_rotation_limit_level */

void tpd_set_rotation_limit_level(void)

{
  _printk(&DAT_00169dbe,"tpd_set_rotation_limit_level");
  return;
}



/* 001510f0 tpd_set_display_rotation */

void tpd_set_display_rotation(void)

{
  _printk(&DAT_00169dbe,"tpd_set_display_rotation");
  return;
}



/* 001512b0 tpd_set_play_game */

void tpd_set_play_game(void)

{
  _printk(&DAT_00169dbe,"tpd_set_play_game");
  return;
}



/* 0015138c tpd_set_frame_data */

void tpd_set_frame_data(void)

{
  _printk(&DAT_00169dbe,"tpd_set_frame_data");
  return;
}



/* 00151458 syna_dev_disconnect */

void syna_dev_disconnect(long param_1)

{
  long lVar1;
  undefined *puVar2;
  undefined1 *puVar3;
  int iVar4;
  code *pcVar5;
  long lVar6;
  long lVar7;
  
  if (*(char *)(param_1 + 0x582) == '\0') {
    puVar3 = &DAT_00169cdc;
  }
  else {
    lVar6 = *(long *)(param_1 + 0x270);
    if (*(int *)(param_1 + 0x57c) == 3) {
      _printk(&DAT_0016f246,"syna_dev_disconnect");
      return;
    }
    if (*(long *)(param_1 + 0x430) != 0) {
      cancel_delayed_work_sync(param_1 + 0x3c8);
      __flush_workqueue(*(undefined8 *)(param_1 + 0x430));
      destroy_workqueue(*(undefined8 *)(param_1 + 0x430));
      *(undefined8 *)(param_1 + 0x430) = 0;
    }
    if (*(int *)(lVar6 + 0xb8) != 0) {
      lVar7 = *(long *)(param_1 + 0x270);
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
        puVar2 = &DAT_00171996;
LAB_00151554:
        _printk(puVar2,"syna_dev_release_irq");
        return;
      }
      iVar4 = *(int *)(lVar7 + 0xb8);
      if (0 < iVar4) {
        pcVar5 = *(code **)(lVar7 + 0x40);
        if (pcVar5 != (code *)0x0) {
          if (*(int *)(pcVar5 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x151530);
            (*pcVar5)();
          }
          (*pcVar5)(lVar7 + 8,0);
          iVar4 = *(int *)(lVar7 + 0xb8);
        }
        devm_free_irq(lVar1,iVar4,param_1);
        puVar2 = &DAT_0016b6ac;
        *(undefined4 *)(lVar7 + 0xb8) = 0;
        *(undefined1 *)(lVar7 + 0xbc) = 0;
        goto LAB_00151554;
      }
    }
    if (*(long *)(param_1 + 0x3b0) != 0) {
      input_unregister_device();
      *(undefined8 *)(param_1 + 0x3b0) = 0;
    }
    *(undefined8 *)(param_1 + 0x3b8) = 0;
    *(undefined4 *)(param_1 + 0x3c0) = 0;
    pcVar5 = *(code **)(lVar6 + 0x180);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x1515a0);
        (*pcVar5)();
      }
      (*pcVar5)(lVar6,0);
    }
    puVar3 = &DAT_0016b686;
    *(undefined4 *)(param_1 + 0x57c) = 0;
    *(undefined1 *)(param_1 + 0x582) = 0;
  }
  _printk(puVar3,"syna_dev_disconnect","synaptics_tcm");
  return;
}



/* 001515e4 syna_mmap */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_mmap(long param_1,long *param_2)

{
  int iVar1;
  ulong uVar2;
  uint uVar3;
  
  uVar2 = param_2[1] - *param_2;
  if (uVar2 < 0x32001) {
    iVar1 = remap_pfn_range(param_2,*param_2,
                            (long)((_memstart_addr >> 0xc) * 0x40 +
                                  ((param_2[10] * 0x100000 +
                                    *(long *)(*(long *)(param_1 + 0x20) + 0x460) * 0x100 >> 8) +
                                   0x8000000000U >> 6)) >> 6,uVar2,param_2[3]);
    uVar3 = 0;
    if (iVar1 != 0) {
      uVar3 = 0xfffffff5;
    }
    return (ulong)uVar3;
  }
  uVar2 = _printk(&DAT_0016f28e,"syna_mmap",uVar2 & 0xffffffff,0x32000);
  return uVar2;
}



/* 00151698 syna_dev_isr */

undefined8 syna_dev_isr(undefined8 param_1,undefined8 *param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined8 uVar3;
  long lVar4;
  undefined1 local_2c [4];
  long local_28;
  
  lVar4 = sp_el0;
  local_28 = *(long *)(lVar4 + 0x710);
  lVar4 = param_2[0x4e];
  local_2c[0] = 0;
  if (((*(int *)((long)param_2 + 0x57c) != 1) && (*(char *)(param_2 + 0xaf) == '\x01')) &&
     (iVar1 = wait_for_completion_timeout(param_2 + 0xab,0xaf), iVar1 == 0)) {
    puVar2 = &DAT_0016899a;
LAB_00151764:
    uVar3 = _printk(puVar2,"syna_dev_isr");
    return uVar3;
  }
  gpio_to_desc(*(undefined4 *)(lVar4 + 0xa8));
  iVar1 = gpiod_get_raw_value();
  if (iVar1 == *(int *)(lVar4 + 0xac)) {
    lVar4 = sp_el0;
    *(undefined4 *)(param_2 + 0x5e) = *(undefined4 *)(lVar4 + 0x708);
    iVar1 = syna_tcm_get_event_data(*param_2,local_2c,param_2 + 0x55);
    if (iVar1 < 0) {
      puVar2 = &DAT_0016b00e;
      goto LAB_00151764;
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015177c syna_dev_probe */

void syna_dev_probe(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_0016bc60,"syna_dev_probe");
  return;
}



/* 00151828 FUN_00151828 */

void FUN_00151828(void)

{
  long lVar1;
  long unaff_x29;
  
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == *(long *)(unaff_x29 + -8)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00151a68 FUN_00151a68 */

void FUN_00151a68(undefined8 param_1)

{
  _printk(param_1,"syna_dev_probe");
  return;
}



/* 00151d00 syna_dev_process_touch_report */

void syna_dev_process_touch_report(char param_1,void *param_2,ulong param_3,long *param_4)

{
  long *plVar1;
  int iVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  undefined8 uVar6;
  uint uVar7;
  uint uVar8;
  long lVar9;
  ulong uVar10;
  long *plVar11;
  int iVar12;
  ulong uVar13;
  ulong uVar14;
  int iVar15;
  char *local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  if (param_4 == (long *)0x0) {
    _printk(&DAT_0017f098,"syna_dev_process_touch_report");
    return;
  }
  if (param_1 != '\x11') {
    _printk(&DAT_001801c7,"syna_dev_process_touch_report",param_1);
    return;
  }
  if ((0 < *(int *)((long)param_4 + 900)) && (*(char *)((long)param_4 + 0x584) != '\x01'))
  goto LAB_0015210c;
  if ((int)param_4[0xbc] != 0) {
    uVar7 = (uint)param_3;
    param_3 = param_3 & 0xffffffff;
    if (0x31fff < uVar7) {
      uVar7 = 0x32000;
    }
    memcpy((void *)param_4[0x8c],param_2,(ulong)uVar7);
    *(uint *)(param_4 + 0x87) = uVar7;
    *(undefined4 *)(param_4 + 0x8d) = 1;
    __wake_up(param_4 + 0x89,1,1,0);
  }
  iVar5 = syna_tcm_parse_touch_report(*param_4,param_2,param_3,param_4 + 2);
  lVar3 = tpd_cdev;
  if (iVar5 < 0) {
    _printk(&DAT_001820c7,"syna_dev_process_touch_report");
    return;
  }
  lVar9 = param_4[0x76];
  if (lVar9 == 0) goto LAB_0015210c;
  uVar7 = *(uint *)(*param_4 + 0x18);
  mutex_lock(param_4 + 0x4f);
  if ((*(int *)((long)param_4 + 0x57c) == 2) && (*(char *)((long)param_4 + 0x2f4) == '\x01')) {
    _printk(&DAT_0017fede,"syna_dev_report_input_events",(int)param_4[0x44]);
    return;
  }
  if ((int)param_4[0x44] == 0x80) {
    uVar6 = 1;
LAB_00151e1c:
    report_ufp_uevent(uVar6);
  }
  else if ((int)param_4[0x44] == 0x81) {
    uVar6 = 0;
    goto LAB_00151e1c;
  }
  if (*(int *)((long)param_4 + 0x57c) != 2) {
    if (uVar7 == 0) {
LAB_001520c8:
      input_event(lVar9,1,0x14a,0);
      input_event(lVar9,1,0x145,0);
    }
    else {
      uVar10 = 0;
      iVar5 = 0;
      plVar11 = param_4 + 5;
      do {
        if (((char)plVar11[-2] == '\x06') && (*(int *)((long)param_4 + 0x5e4) != 0)) {
          if (ufp_tp_ops == 0) {
            _printk(&DAT_0017ee8d);
            return;
          }
          if (-1 < large_area_ignore_count) {
            large_area_ignore_count = large_area_ignore_count + -1;
            _printk(&DAT_0017f539);
            return;
          }
          if (large_area_uevent_count < 3) {
            local_78 = "large_area=true";
            uStack_70 = 0;
            kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_78);
            _printk(&DAT_0017e9cc);
            return;
          }
        }
        if (uVar10 == 10) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x152238);
          (*pcVar4)();
        }
        uVar8 = (uint)*(byte *)(plVar11 + -2);
        if ((*(char *)((long)param_4 + uVar10 + 0x264) != '\0') || (uVar8 != 0)) {
          if (uVar8 - 1 < 2) {
            uVar13 = (ulong)*(uint *)((long)plVar11 + -0xc);
            if ((int)param_4[0xc3] == 4) {
              iVar15 = *(int *)((long)plVar11 + -4);
              iVar12 = (int)*plVar11;
              uVar13 = uVar13 / 10;
              uVar14 = (ulong)*(uint *)(plVar11 + -1) / 10;
LAB_00151fac:
              input_event(lVar9,3,0x2f,uVar10 & 0xffffffff);
              input_mt_report_slot_state(lVar9,0,1);
              input_event(lVar9,1,0x14a,1);
              input_event(lVar9,1,0x145,1);
              input_event(lVar9,3,0x35,uVar13);
              input_event(lVar9,3,0x36,uVar14);
              iVar2 = iVar15;
              if (iVar15 <= iVar12) {
                iVar2 = iVar12;
              }
              if (iVar12 <= iVar15) {
                iVar15 = iVar12;
              }
              input_event(lVar9,3,0x30,iVar2);
              input_event(lVar9,3,0x31,iVar15);
            }
            else {
              iVar12 = (int)*plVar11;
              uVar14 = (ulong)*(uint *)(plVar11 + -1);
              iVar15 = *(int *)((long)plVar11 + -4);
              if (*(char *)(lVar3 + 0x1b) != '\x01') goto LAB_00151fac;
              if (iVar15 <= iVar12) {
                iVar15 = iVar12;
              }
              tpd_touch_press(lVar9,uVar13,uVar14,uVar10 & 0xffffffff,iVar15,0);
              one_key_report(1,uVar13,uVar14,uVar10 & 0xffffffff);
            }
            iVar5 = iVar5 + 1;
          }
          else if (uVar8 == 0) {
            if ((*(char *)(lVar3 + 0x1b) == '\x01') && ((int)param_4[0xc3] != 4)) {
              tpd_touch_release(lVar9,uVar10 & 0xffffffff);
              one_key_report(0,0xffffffff,0xffffffff,uVar10 & 0xffffffff);
            }
            else {
              input_event(lVar9,3,0x2f,uVar10 & 0xffffffff);
              input_mt_report_slot_state(lVar9,0,0);
            }
          }
        }
        plVar1 = plVar11 + -2;
        plVar11 = (long *)((long)plVar11 + 0x34);
        *(char *)((long)param_4 + uVar10 + 0x264) = (char)*plVar1;
        uVar10 = uVar10 + 1;
      } while (uVar7 != uVar10);
      if (iVar5 == 0) goto LAB_001520c8;
    }
    input_event(lVar9,0,0,0);
  }
  mutex_unlock(param_4 + 0x4f);
LAB_0015210c:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015223c syna_dev_enable_lowpwr_gesture */

undefined8 syna_dev_enable_lowpwr_gesture(undefined8 *param_1,ulong param_2,undefined4 param_3)

{
  char *pcVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 uVar4;
  undefined *puVar5;
  
  if (*(char *)((long)param_1 + 0x581) != '\x01') {
    return 0;
  }
  if ((param_2 & 1) == 0) {
    if (*(byte *)((long)param_1 + 0x2f4) == 0) {
      uVar4 = 0;
      goto LAB_001522e0;
    }
    uVar4 = 0;
    puVar5 = &UNK_0017fc6d;
  }
  else {
    uVar4 = 1;
    if ((*(byte *)((long)param_1 + 0x2f4) & 1) != 0) {
LAB_001522e0:
      iVar2 = syna_tcm_set_dynamic_config(*param_1,9,uVar4,param_3);
      if (iVar2 < 0) {
        pcVar1 = "enable";
        if ((param_2 & 1) == 0) {
          pcVar1 = "disable";
        }
        uVar3 = _printk(&DAT_0017ec4b,"syna_dev_enable_lowpwr_gesture",pcVar1);
        return uVar3;
      }
      iVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xfe,
                         *(uint *)((long)param_1 + 0x5c4) | *(int *)(param_1 + 0xb6) << 0xd,param_3)
      ;
      if (iVar2 < 0) {
        uVar3 = _printk(&DAT_001822e5,"syna_dev_enable_lowpwr_gesture");
        return uVar3;
      }
      uVar3 = _printk(&DAT_0017e6a7,"syna_dev_enable_lowpwr_gesture",*(undefined4 *)(param_1 + 0xb6)
                      ,*(undefined4 *)((long)param_1 + 0x5c4));
      return uVar3;
    }
    puVar5 = &DAT_0018041e;
    uVar4 = 1;
  }
  irq_set_irq_wake(*(undefined4 *)(param_1[0x4e] + 0xb8),uVar4);
  uVar3 = _printk(puVar5,"syna_dev_enable_lowpwr_gesture");
  return uVar3;
}



/* 00152404 syna_cdev_release */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void syna_cdev_release(void)

{
  long *plVar1;
  long lVar2;
  long *plVar3;
  undefined8 *puVar4;
  
  puVar4 = *(undefined8 **)(g_cdev_data + 0xa8);
  if (*(int *)((long)puVar4 + 900) < 1) {
    _printk(&DAT_0017f6d8,"syna_cdev_release");
    return;
  }
  mutex_lock(&DAT_0015eb00);
  *(int *)((long)puVar4 + 900) = *(int *)((long)puVar4 + 900) + -1;
  mutex_lock(&DAT_0015eb30);
  plVar3 = (long *)puVar4[0x9f];
  while (plVar3 != puVar4 + 0x9f) {
    plVar1 = (long *)plVar3[1];
    if (((long *)*plVar1 == plVar3) && (lVar2 = *plVar3, *(long **)(lVar2 + 8) == plVar3)) {
      *(long **)(lVar2 + 8) = plVar1;
      *plVar1 = lVar2;
    }
    else {
      __list_del_entry_valid_or_report(plVar3);
    }
    *plVar3 = -0x2152ffffffffff00;
    plVar3[1] = -0x2152fffffffffede;
    kfree(plVar3[2]);
    kfree(plVar3);
    if (*(int *)(puVar4 + 0x9e) != 0) {
      *(int *)(puVar4 + 0x9e) = *(int *)(puVar4 + 0x9e) + -1;
    }
    plVar3 = (long *)puVar4[0x9f];
  }
  mutex_unlock(&DAT_0015eb30);
  syna_tcm_clear_data_duplicator(*puVar4);
  mutex_unlock(&DAT_0015eb00);
  _DAT_0015eb60 = 0;
  DAT_0015eb68 = 0;
  _printk(&DAT_0018088e,"syna_cdev_release");
  return;
}



/* 0015257c syna_cdev_ioctl_raw_read */

ulong syna_cdev_ioctl_raw_read(long *param_1,ulong param_2,undefined8 param_3,uint param_4)

{
  undefined8 uVar1;
  void *pvVar2;
  uint uVar3;
  int iVar4;
  long lVar5;
  undefined1 *puVar6;
  undefined *puVar7;
  code *pcVar8;
  ulong uVar9;
  undefined8 *puVar10;
  ulong uVar11;
  ulong uVar12;
  size_t __n;
  
  uVar12 = (ulong)param_4;
  if ((uint)param_3 < param_4) {
    uVar12 = _printk(&DAT_0018122a,"syna_cdev_ioctl_raw_read",param_3,uVar12);
    return uVar12;
  }
  if (param_4 == 0) {
    uVar12 = _printk(&DAT_001820f1,"syna_cdev_ioctl_raw_read");
    return uVar12;
  }
  mutex_lock(*param_1 + 0x348);
  if (DAT_0015eaf8 != '\0') {
    uVar12 = _printk(&DAT_00180d77,"syna_tcm_buf_lock");
    return uVar12;
  }
  mutex_lock(&DAT_0015eac8);
  pvVar2 = DAT_0015eab8;
  __n = (size_t)(uint)DAT_0015eac0;
  DAT_0015eaf8 = DAT_0015eaf8 + '\x01';
  uVar3 = (uint)DAT_0015eac0;
  if (param_4 <= (uint)DAT_0015eac0) {
LAB_0015263c:
    DAT_0015eac0._0_4_ = uVar3;
    memset(DAT_0015eab8,0,__n);
    pvVar2 = DAT_0015eab8;
    DAT_0015eac0._4_4_ = 0;
    if (*param_1 == 0) {
      puVar6 = &DAT_0017eb2d;
    }
    else {
      lVar5 = *(long *)(*param_1 + 0x48);
      if (lVar5 == 0) {
        puVar6 = &DAT_00180beb;
      }
      else {
        pcVar8 = *(code **)(lVar5 + 0x20);
        if (pcVar8 != (code *)0x0) {
          if (*(int *)(pcVar8 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(0x8228,0x152688);
            (*pcVar8)();
          }
          iVar4 = (*pcVar8)(lVar5,DAT_0015eab8,uVar12);
          if (iVar4 < 0) {
            uVar12 = _printk(&DAT_001827a5,"syna_cdev_ioctl_raw_read",uVar12);
            return uVar12;
          }
          if ((int)param_4 < 0) {
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(0x800,0x1528f8);
            (*pcVar8)();
          }
          __check_object_size(pvVar2,uVar12,1);
          puVar10 = (undefined8 *)sp_el0;
          if (((*(byte *)((long)puVar10 + 0x46) >> 5 & 1) != 0) ||
             (uVar11 = param_2, ((uint)*puVar10 >> 0x1a & 1) != 0)) {
            uVar11 = param_2 & (long)(param_2 << 8) >> 8;
          }
          if (uVar11 <= 0x8000000000 - uVar12) {
            uVar1 = daif;
            uVar11 = daif;
            daif = uVar11 | 0xc0;
            uVar9 = puVar10[1];
            uVar11 = ttbr1_el1;
            ttbr1_el1 = uVar9 & 0xffff000000000000 | uVar11 & 0xffffffffffff;
            ttbr0_el1 = uVar9;
            InstructionSynchronizationBarrier();
            daif = uVar1;
            lVar5 = __arch_copy_to_user(uVar9,param_2 & 0xff7fffffffffffff,pvVar2,uVar12);
            puVar10 = (undefined8 *)daif;
            uVar11 = daif;
            daif = uVar11 | 0xc0;
            uVar11 = ttbr1_el1;
            ttbr0_el1 = (uVar11 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar11 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = puVar10;
            if (lVar5 == 0) {
              if (DAT_0015eaf8 != '\x01') {
                uVar12 = _printk(puVar10,&DAT_00180d77,"syna_tcm_buf_unlock");
                return uVar12;
              }
              DAT_0015eaf8 = 0;
              mutex_unlock();
              mutex_unlock(*param_1 + 0x348);
              return uVar12;
            }
          }
          uVar12 = _printk(puVar10,&DAT_0017ff28,"syna_cdev_ioctl_raw_read");
          return uVar12;
        }
        puVar6 = &DAT_0017ff65;
      }
    }
    uVar12 = _printk(puVar6,"syna_tcm_read");
    return uVar12;
  }
  if (DAT_0015eab8 != (void *)0x0) {
    lVar5 = syna_request_managed_device();
    if (lVar5 == 0) {
      uVar12 = _printk(&DAT_001828ba,"syna_pal_mem_free");
      return uVar12;
    }
    devm_kfree(lVar5,pvVar2);
  }
  lVar5 = syna_request_managed_device();
  if (lVar5 == 0) {
    puVar7 = &DAT_001828ba;
  }
  else {
    if (0 < (int)param_4) {
      __n = (size_t)param_4;
      DAT_0015eab8 = (void *)devm_kmalloc(lVar5,__n,0xdc0);
      uVar3 = param_4;
      if (DAT_0015eab8 == (void *)0x0) {
        uVar12 = _printk(&DAT_00180576,"syna_tcm_buf_alloc",uVar12);
        return uVar12;
      }
      goto LAB_0015263c;
    }
    puVar7 = &DAT_00180da7;
  }
  uVar12 = _printk(puVar7,"syna_pal_mem_alloc");
  return uVar12;
}



/* 001528fc syna_cdev_ioctl_raw_write */

ulong syna_cdev_ioctl_raw_write(long *param_1,ulong param_2,undefined8 param_3,uint param_4)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  void *pvVar3;
  uint uVar4;
  int iVar5;
  long lVar6;
  undefined1 *puVar7;
  undefined *puVar8;
  ulong uVar9;
  code *pcVar10;
  ulong uVar11;
  ulong uVar12;
  size_t __n;
  
  uVar12 = (ulong)param_4;
  if ((uint)param_3 < param_4) {
    uVar12 = _printk(&DAT_00181269,"syna_cdev_ioctl_raw_write",param_3,uVar12);
    return uVar12;
  }
  if (param_4 == 0) {
    uVar12 = _printk(&DAT_00182f81,"syna_cdev_ioctl_raw_write");
    return uVar12;
  }
  mutex_lock(*param_1 + 0x348);
  if (DAT_0015eaf8 != '\0') {
    uVar12 = _printk(&DAT_00180d77,"syna_tcm_buf_lock");
    return uVar12;
  }
  mutex_lock(&DAT_0015eac8);
  pvVar3 = DAT_0015eab8;
  __n = (size_t)(uint)DAT_0015eac0;
  DAT_0015eaf8 = DAT_0015eaf8 + '\x01';
  uVar4 = (uint)DAT_0015eac0;
  if ((uint)DAT_0015eac0 < param_4) {
    if (DAT_0015eab8 != (void *)0x0) {
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        uVar12 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar12;
      }
      devm_kfree(lVar6,pvVar3);
    }
    lVar6 = syna_request_managed_device();
    if (lVar6 == 0) {
      puVar8 = &DAT_001828ba;
LAB_00152be8:
      uVar12 = _printk(puVar8,"syna_pal_mem_alloc");
      return uVar12;
    }
    if ((int)param_4 < 1) {
      puVar8 = &DAT_00180da7;
      goto LAB_00152be8;
    }
    __n = (size_t)param_4;
    DAT_0015eab8 = (void *)devm_kmalloc(lVar6,__n,0xdc0);
    uVar4 = param_4;
    if (DAT_0015eab8 == (void *)0x0) {
      uVar12 = _printk(&DAT_00180576,"syna_tcm_buf_alloc",uVar12);
      return uVar12;
    }
  }
  DAT_0015eac0._0_4_ = uVar4;
  memset(DAT_0015eab8,0,__n);
  pvVar3 = DAT_0015eab8;
  DAT_0015eac0._4_4_ = 0;
  if ((int)param_4 < 0) {
                    /* WARNING: Does not return */
    pcVar10 = (code *)SoftwareBreakpoint(0x800,0x152ca8);
    (*pcVar10)();
  }
  __check_object_size(DAT_0015eab8,uVar12,0);
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar11 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar11 = param_2 & (long)(param_2 << 8) >> 8;
  }
  uVar9 = uVar12;
  if (uVar11 <= 0x8000000000 - uVar12) {
    uVar2 = daif;
    uVar11 = daif;
    daif = uVar11 | 0xc0;
    uVar9 = puVar1[1];
    uVar11 = ttbr1_el1;
    ttbr1_el1 = uVar9 & 0xffff000000000000 | uVar11 & 0xffffffffffff;
    ttbr0_el1 = uVar9;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    uVar9 = __arch_copy_from_user(uVar9,pvVar3,param_2 & 0xff7fffffffffffff,uVar12);
    uVar2 = daif;
    uVar11 = daif;
    daif = uVar11 | 0xc0;
    uVar11 = ttbr1_el1;
    ttbr0_el1 = (uVar11 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar11 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    if (uVar9 == 0) goto LAB_00152ac4;
  }
  memset((void *)((long)pvVar3 + (uVar12 - uVar9)),0,uVar9);
  if ((int)uVar9 != 0) {
    uVar12 = _printk(&DAT_0017f576,"syna_cdev_ioctl_raw_write",uVar9 & 0xffffffff);
    return uVar12;
  }
LAB_00152ac4:
  if (*param_1 == 0) {
    puVar7 = &DAT_0017eb2d;
  }
  else {
    lVar6 = *(long *)(*param_1 + 0x48);
    if (lVar6 == 0) {
      puVar7 = &DAT_00180beb;
    }
    else {
      pcVar10 = *(code **)(lVar6 + 0x28);
      if (pcVar10 != (code *)0x0) {
        if (*(int *)(pcVar10 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
          pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x152afc);
          (*pcVar10)();
        }
        iVar5 = (*pcVar10)(lVar6,pvVar3,uVar12);
        if (-1 < iVar5) {
          if (DAT_0015eaf8 != '\x01') {
            uVar12 = _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
            return uVar12;
          }
          DAT_0015eaf8 = 0;
          mutex_unlock();
          mutex_unlock(*param_1 + 0x348);
          return uVar12;
        }
        uVar12 = _printk(&DAT_001805df,"syna_cdev_ioctl_raw_write",uVar12);
        return uVar12;
      }
      puVar7 = &DAT_00180c1e;
    }
  }
  uVar12 = _printk(puVar7,"syna_tcm_write");
  return uVar12;
}



/* 00152cb4 syna_cdev_process_reports */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 syna_cdev_process_reports(undefined1 param_1,void *param_2,uint param_3,long *param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  undefined2 uVar5;
  long lVar6;
  undefined1 *__src;
  undefined8 uVar7;
  void *__dest;
  undefined *puVar8;
  long *plVar9;
  long *plVar10;
  code *pcVar11;
  long lVar12;
  ulong __n;
  long *plVar13;
  uint uVar14;
  undefined1 *local_70;
  
  if (param_4 == (long *)0x0) {
    uVar7 = _printk(&DAT_00181456,"syna_cdev_process_reports");
    return uVar7;
  }
  if (param_2 == (void *)0x0) {
    uVar7 = _printk(&DAT_0017fc94,"syna_cdev_update_fifo");
    return uVar7;
  }
  lVar12 = *param_4;
  uVar1 = param_3 + 3;
  uVar3 = _DAT_0015eb64 & ((int)_DAT_0015eb64 >> 0x1f ^ 0xffffffffU);
  uVar2 = uVar3 + uVar1;
  __n = (ulong)uVar2;
  lVar6 = syna_request_managed_device();
  if (lVar6 == 0) {
    puVar8 = &DAT_001828ba;
LAB_00153068:
    uVar7 = _printk(puVar8,"syna_pal_mem_alloc");
    return uVar7;
  }
  if ((int)uVar2 < 1) {
    puVar8 = &DAT_00180da7;
    goto LAB_00153068;
  }
  __src = (undefined1 *)devm_kmalloc(lVar6,__n,0xdc0);
  uVar14 = _DAT_0015eb64;
  if (__src == (undefined1 *)0x0) {
    uVar7 = _printk(&DAT_0017f9b3,"syna_cdev_update_fifo",uVar2,param_3);
    return uVar7;
  }
  if ((int)_DAT_0015eb64 < 1) {
    uVar14 = 0;
    local_70 = (undefined1 *)0x0;
  }
  else {
    lVar6 = syna_request_managed_device();
    if (lVar6 == 0) {
      uVar7 = _printk(&DAT_001828ba,"syna_pal_mem_alloc");
      return uVar7;
    }
    local_70 = (undefined1 *)devm_kmalloc(lVar6,uVar14,0xdc0);
    if (local_70 == (undefined1 *)0x0) {
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        uVar7 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar7;
      }
      devm_kfree(lVar6,__src);
      uVar7 = _printk(&DAT_00182fa5,"syna_cdev_update_fifo",_DAT_0015eb64);
      return uVar7;
    }
  }
  *__src = param_1;
  if ((uVar2 != 1) && (__src[1] = (char)param_3, uVar2 != 2)) {
    __src[2] = (char)(param_3 >> 8);
    if (param_3 != 0) {
      if (__src + 3 == (undefined1 *)0x0) {
        uVar7 = _printk(&DAT_0017eeb9,"syna_cdev_update_fifo",param_3);
        return uVar7;
      }
      if (uVar3 + param_3 < param_3) {
        uVar7 = _printk(&DAT_00181608,"syna_pal_mem_cpy",param_3,uVar3 + param_3,param_3);
        return uVar7;
      }
      if (__n - 3 < (ulong)param_3) goto LAB_0015321c;
      memcpy(__src + 3,param_2,(ulong)param_3);
    }
    if ((int)_DAT_0015eb64 < 2) {
LAB_00152e5c:
      lVar6 = param_4[0x4e];
      mutex_lock(&DAT_0015eb30);
      if (*(uint *)(param_4 + 0x9e) < 0x4b0) {
        if (0x4af < (int)syna_cdev_push_data_to_fifo_pre_remaining_frames) {
          uVar7 = _printk(&DAT_00180c66,"syna_cdev_push_data_to_fifo");
          return uVar7;
        }
      }
      else {
        if (*(uint *)(param_4 + 0x9e) != syna_cdev_push_data_to_fifo_pre_remaining_frames) {
          uVar7 = _printk(&DAT_0017f0f6,"syna_cdev_push_data_to_fifo");
          return uVar7;
        }
        plVar13 = (long *)param_4[0x9f];
        plVar10 = (long *)plVar13[1];
        if (((long *)*plVar10 == plVar13) && (lVar12 = *plVar13, *(long **)(lVar12 + 8) == plVar13))
        {
          *(long **)(lVar12 + 8) = plVar10;
          *plVar10 = lVar12;
        }
        else {
          __list_del_entry_valid_or_report(plVar13);
        }
        *plVar13 = -0x2152ffffffffff00;
        plVar13[1] = -0x2152fffffffffede;
        kfree(plVar13[2]);
        kfree(plVar13);
        syna_cdev_push_data_to_fifo_pre_remaining_frames = *(uint *)(param_4 + 0x9e);
        *(uint *)(param_4 + 0x9e) = syna_cdev_push_data_to_fifo_pre_remaining_frames - 1;
      }
      plVar10 = (long *)__kmalloc_cache_noprof(_delayed_work_timer_fn,0xcc0,0x30);
      if (plVar10 == (long *)0x0) {
        uVar7 = _printk(&DAT_0017fcbe,"syna_cdev_push_data_to_fifo");
        return uVar7;
      }
      __dest = (void *)__kmalloc_noprof(__n,0xcc0);
      plVar10[2] = (long)__dest;
      if (__dest == (void *)0x0) {
        uVar7 = _printk(&DAT_0017e098,"syna_cdev_push_data_to_fifo",uVar2);
        return uVar7;
      }
      *(uint *)(plVar10 + 3) = uVar2;
      memcpy(__dest,__src,__n);
      ktime_get_real_ts64(plVar10 + 4);
      plVar13 = param_4 + 0x9f;
      plVar9 = (long *)param_4[0xa0];
      if (((plVar10 == plVar13) || (plVar9 == plVar10)) || ((long *)*plVar9 != plVar13)) {
        __list_add_valid_or_report(plVar10);
      }
      else {
        param_4[0xa0] = (long)plVar10;
        *plVar10 = (long)plVar13;
        plVar10[1] = (long)plVar9;
        *plVar9 = (long)plVar10;
      }
      uVar1 = (int)param_4[0x9e] + 1;
      uVar2 = DAT_0015eb68 - 1;
      *(uint *)(param_4 + 0x9e) = uVar1;
      if ((uVar2 < uVar1) && (pcVar11 = *(code **)(lVar6 + 0x40), pcVar11 != (code *)0x0)) {
        if (*(int *)(pcVar11 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x152fbc);
          (*pcVar11)();
        }
        (*pcVar11)(lVar6 + 8,0);
      }
      mutex_unlock(&DAT_0015eb30);
      __wake_up(param_4 + 0xa1,1,1,0);
      lVar6 = syna_request_managed_device();
      if (lVar6 != 0) {
        if (local_70 != (undefined1 *)0x0) {
          devm_kfree(lVar6,local_70);
        }
        lVar6 = syna_request_managed_device();
        if (lVar6 != 0) {
          devm_kfree(lVar6,__src);
          if (true) {
            return 0;
          }
          uVar7 = _printk(&DAT_001819c3,"syna_cdev_process_reports",param_1,param_3);
          return uVar7;
        }
        uVar7 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar7;
      }
      uVar7 = _printk(&DAT_001828ba,"syna_pal_mem_free");
      return uVar7;
    }
    if (uVar14 != 0) {
      uVar5 = *(undefined2 *)(lVar12 + 0x382);
      *local_70 = (char)uVar5;
      if (uVar14 != 1) {
        local_70[1] = (char)((ushort)uVar5 >> 8);
        if ((_DAT_0015eb64 + 0xfffe & 0xffff) != 0) {
          if (uVar14 == 2) goto LAB_00153218;
          local_70[2] = *(undefined1 *)(lVar12 + 0x385);
        }
        if ((__src + (int)uVar1 == (undefined1 *)0x0) || (local_70 == (undefined1 *)0x0)) {
          uVar7 = _printk(&DAT_001808eb,"syna_cdev_update_fifo");
          return uVar7;
        }
        if (uVar3 < _DAT_0015eb64) {
          uVar7 = _printk(&DAT_00181608,"syna_pal_mem_cpy",_DAT_0015eb64,uVar3,_DAT_0015eb64);
          return uVar7;
        }
        uVar4 = 0;
        if (uVar1 <= uVar2) {
          uVar4 = __n - (long)(int)uVar1;
        }
        if (uVar4 < _DAT_0015eb64) {
LAB_0015321c:
                    /* WARNING: Subroutine does not return */
          __fortify_panic(0x11);
        }
        memcpy(__src + (int)uVar1,local_70,(ulong)_DAT_0015eb64);
        goto LAB_00152e5c;
      }
    }
  }
LAB_00153218:
                    /* WARNING: Does not return */
  pcVar11 = (code *)SoftwareBreakpoint(1,0x15321c);
  (*pcVar11)();
}



/* 00153308 syna_dev_reflash_startup_work */

void syna_dev_reflash_startup_work(long param_1)

{
  int iVar1;
  
  wait_for_completion_timeout(param_1 + 0x1c0,0xfa);
  if ((*(byte *)(param_1 + 0x1bb) & 1) == 0) {
    _printk(&DAT_00180215,"syna_dev_reflash_startup_work");
    return;
  }
  pm_stay_awake(*(long *)(param_1 + -0x3c0) + 0x10);
  iVar1 = syna_dev_do_reflash(param_1 + -0x3c8,0);
  if (iVar1 < 0) {
    pm_relax(*(long *)(param_1 + -0x3c0) + 0x10);
    return;
  }
  _printk(param_1 + -0x3c8);
  return;
}



/* 0015343c syna_sysfs_reset_store */

long syna_sysfs_reset_store(long param_1,undefined8 param_2,undefined8 param_3,int param_4)

{
  long lVar1;
  int iVar2;
  code *pcVar3;
  long *plVar4;
  long lVar5;
  undefined1 local_40 [4];
  int local_3c;
  long local_38;
  
  lVar5 = sp_el0;
  local_38 = *(long *)(lVar5 + 0x710);
  local_3c = 0;
  local_40[0] = 0;
  plVar4 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  lVar5 = plVar4[0x4e];
  iVar2 = kstrtouint(param_3,10,&local_3c);
  if (iVar2 == 0) {
    if ((*(byte *)((long)plVar4 + 0x582) & 1) == 0) {
      lVar5 = _printk(&DAT_0017fb4c,"syna_sysfs_reset_store");
      return lVar5;
    }
    if (*(int *)((long)plVar4 + 0x57c) == 3 || local_3c == 2) {
      pcVar3 = *(code **)(plVar4[0x4e] + 0x188);
      if (pcVar3 == (code *)0x0) {
        lVar5 = _printk(&DAT_00181e47,"syna_sysfs_reset_store");
        return lVar5;
      }
      if (*(int *)(pcVar3 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1534dc);
        (*pcVar3)();
      }
      (*pcVar3)();
      if ((*(byte *)(lVar5 + 0xbc) & 1) == 0) {
        syna_tcm_get_event_data(*plVar4,local_40,0);
      }
    }
    else {
      if (local_3c != 1) {
        lVar5 = _printk(&DAT_0017ec8f,"syna_sysfs_reset_store");
        return lVar5;
      }
      iVar2 = syna_tcm_reset(*plVar4,*(undefined4 *)(*plVar4 + 0x20c));
      if (iVar2 < 0) {
        lVar5 = _printk(&DAT_00181a01,"syna_sysfs_reset_store");
        return lVar5;
      }
    }
    lVar5 = (long)param_4;
  }
  else {
    lVar5 = -0x16;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return lVar5;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001535c0 syna_spi_remove */

void syna_spi_remove(void)

{
  if (0 < DAT_0013103c) {
    gpio_free();
  }
  if (0 < DAT_00131084) {
    gpio_free();
  }
  if (0 < DAT_00131034) {
    gpio_free();
  }
  if (rx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_001828ba,"syna_pal_mem_free");
      return;
    }
    devm_kfree();
    rx_buf = 0;
  }
  if (tx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_001828ba,"syna_pal_mem_free");
      return;
    }
    devm_kfree();
    tx_buf = 0;
  }
  if (xfer != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_001828ba,"syna_pal_mem_free");
      return;
    }
    devm_kfree();
    xfer = 0;
  }
  if (DAT_001310bc == 1) {
    if (DAT_001310c8 != 0) {
      devm_regulator_put();
    }
  }
  else if ((0 < DAT_001310bc) && (0 < DAT_001310d4)) {
    gpio_free();
  }
  if (DAT_00131094 == 1) {
    if (DAT_001310a0 != 0) {
      devm_regulator_put();
    }
  }
  else if ((0 < DAT_00131094) && (0 < DAT_001310ac)) {
    gpio_free();
  }
  return;
}



/* 00153750 syna_sysfs_irq_en_store */

long syna_sysfs_irq_en_store(long param_1,undefined8 param_2,undefined8 param_3,int param_4)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  code *pcVar4;
  long lVar5;
  long lVar6;
  int local_3c;
  long local_38;
  
  lVar5 = sp_el0;
  local_38 = *(long *)(lVar5 + 0x710);
  local_3c = 0;
  lVar5 = *(long *)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  lVar6 = *(long *)(lVar5 + 0x270);
  iVar2 = kstrtouint(param_3,10,&local_3c);
  if (iVar2 == 0) {
    lVar1 = lVar6 + 8;
    if ((lVar1 == 0) || (pcVar4 = *(code **)(lVar6 + 0x40), pcVar4 == (code *)0x0)) {
      lVar5 = 0;
    }
    else {
      if ((*(byte *)(lVar5 + 0x582) & 1) == 0) {
        lVar5 = _printk(&DAT_0017fb4c,"syna_sysfs_irq_en_store");
        return lVar5;
      }
      if (*(int *)(lVar5 + 0x57c) == 3) {
        lVar5 = _printk(&DAT_00180eb1,"syna_sysfs_irq_en_store");
        return lVar5;
      }
      if (local_3c == 1) {
        if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x153838);
          (*pcVar4)();
        }
        iVar2 = (*pcVar4)(lVar1,1);
        if (iVar2 < 0) {
          puVar3 = &DAT_0017ef0c;
          goto LAB_001538d0;
        }
      }
      else {
        if (local_3c != 0) {
          lVar5 = _printk(&DAT_0017e1ac,"syna_sysfs_irq_en_store");
          return lVar5;
        }
        if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1537fc);
          (*pcVar4)();
        }
        iVar2 = (*pcVar4)(lVar1,0);
        if (iVar2 < 0) {
          puVar3 = &DAT_0017e9fd;
LAB_001538d0:
          lVar5 = _printk(puVar3,"syna_sysfs_irq_en_store");
          return lVar5;
        }
      }
      lVar5 = (long)param_4;
    }
  }
  else {
    lVar5 = -0x16;
  }
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_38) {
    return lVar5;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001538e8 syna_testing_check_dev_id_show */

void syna_testing_check_dev_id_show(long param_1,undefined8 param_2,long param_3)

{
  undefined *puVar1;
  code *pcVar2;
  int iVar3;
  uint uVar4;
  undefined4 *puVar5;
  long lVar6;
  long lVar7;
  ulong uVar8;
  undefined8 *puVar9;
  undefined *local_f8;
  undefined8 local_f0;
  undefined4 *local_e8;
  undefined8 local_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  ulong local_a8;
  long local_a0;
  undefined8 local_98;
  int iStack_94;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  ulong local_60;
  long local_58;
  
  lVar6 = sp_el0;
  local_58 = *(long *)(lVar6 + 0x710);
  local_68 = 0;
  local_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  local_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_f0 = 0;
  puVar9 = *(undefined8 **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)puVar9 + 0x582) & 1) == 0) {
    iVar3 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0001();
    if (puVar5 != (undefined4 *)0x0) {
      local_a8 = local_a8 & 0xffffffffffffff00;
      local_e8 = (undefined4 *)0x0;
      local_e0 = 0;
      __mutex_init(&local_d8,"(struct mutex *)ptr",&DAT_001628c4);
      *(undefined4 ***)(puVar5 + 0x36) = &local_e8;
      local_60 = local_60 & 0xffffffffffffff00;
      local_a0 = 0;
      local_98 = 0;
      __mutex_init(&uStack_90,"(struct mutex *)ptr",&DAT_001628c4);
      *(long **)(puVar5 + 0x38) = &local_a0;
      local_f8 = &DAT_00182a89;
      local_f0 = CONCAT44(local_f0._4_4_,4);
      *(undefined8 *)(puVar5 + 0xe) = 0;
      *(undefined ***)(puVar5 + 0x10) = &local_f8;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1539f0);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(puVar5 + 6))(*puVar9,puVar5,0);
      if (iVar3 < 0) {
        _printk(&DAT_001830c0,"syna_testing_check_dev_id_show",*(undefined8 *)(puVar5 + 2));
        return;
      }
      puVar1 = &DAT_00181922;
      if (*(char *)(puVar5 + 4) == '\0') {
        puVar1 = &DAT_001810b6;
      }
      uVar4 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),
                        *puVar5,puVar1);
      uVar8 = (ulong)uVar4;
      if (local_e0._4_4_ != 0) {
        iVar3 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"Build ID: %d\n",*local_e8);
        uVar8 = (ulong)(iVar3 + uVar4);
      }
      if (iStack_94 != 0) {
        iVar3 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"Device ID: %s\n",local_a0);
        uVar8 = (ulong)(uint)(iVar3 + (int)uVar8);
      }
      puVar5 = local_e8;
      if ((char)local_a8 != '\0') {
        _printk(&DAT_0017f281,"syna_tcm_buf_release");
        return;
      }
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_001828ba,"syna_pal_mem_free");
        return;
      }
      if (puVar5 != (undefined4 *)0x0) {
        devm_kfree(lVar6,puVar5);
      }
      lVar6 = local_a0;
      local_e0 = 0;
      local_a8 = local_a8 & 0xffffffffffffff00;
      if ((char)local_60 != '\0') {
        _printk(&DAT_0017f281,"syna_tcm_buf_release");
        return;
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
        _printk(&DAT_001828ba,"syna_pal_mem_free");
        return;
      }
      if (lVar6 != 0) {
        devm_kfree(lVar7,lVar6);
      }
      goto LAB_00153b14;
    }
    iVar3 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",1);
  }
  uVar8 = (ulong)iVar3;
LAB_00153b14:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}



/* 00153bd4 syna_dev_connect */

undefined8 syna_dev_connect(long *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined8 uVar3;
  undefined *puVar4;
  code *pcVar5;
  long lVar6;
  long lVar7;
  
  lVar6 = *param_1;
  if (lVar6 == 0) {
    uVar3 = _printk(&DAT_0017e341,"syna_dev_connect");
    return uVar3;
  }
  if (*(char *)((long)param_1 + 0x582) == '\x01') {
    uVar3 = _printk(&DAT_00181e70,"syna_dev_connect","synaptics_tcm");
    return uVar3;
  }
  lVar7 = param_1[0x4e];
  pcVar5 = *(code **)(lVar7 + 0x180);
  if (pcVar5 != (code *)0x0) {
    if (*(int *)(pcVar5 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x153c2c);
      (*pcVar5)();
    }
    iVar1 = (*pcVar5)(lVar7,1);
    if (iVar1 < 0) {
      return 0xffffffed;
    }
    if (0 < *(int *)(lVar7 + 0x154)) {
      msleep();
    }
  }
  pcVar5 = *(code **)(lVar7 + 0x188);
  if (pcVar5 != (code *)0x0) {
    if (*(int *)(pcVar5 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x153cc0);
      (*pcVar5)();
    }
    (*pcVar5)(lVar7);
  }
  iVar1 = syna_tcm_detect_device(*param_1,1,0);
  if (iVar1 < 0) {
    puVar4 = &DAT_0017f127;
  }
  else {
    if (*(char *)(lVar6 + 9) != '\x01') {
      uVar3 = _printk(&DAT_0017e74e,"syna_dev_connect");
      return uVar3;
    }
    iVar1 = FUN_001431f8(param_1);
    if (iVar1 < 0) {
      uVar3 = _printk(&DAT_00181753,"syna_dev_connect");
      return uVar3;
    }
    iVar1 = FUN_0013fd88(param_1);
    if (-1 < iVar1) {
      iVar1 = syna_tcm_set_report_dispatcher(lVar6,0x10,syna_dev_process_unexpected_reset,param_1);
      if (iVar1 < 0) {
        uVar3 = _printk(&DAT_0017e360,"syna_dev_connect");
        return uVar3;
      }
      lVar7 = param_1[0x4e];
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        puVar4 = &DAT_001828ba;
      }
      else if (*(int *)(lVar7 + 0xa8) < 0) {
        puVar4 = &DAT_00181a48;
      }
      else {
        gpio_to_desc(*(int *)(lVar7 + 0xa8));
        uVar2 = gpiod_to_irq();
        *(undefined4 *)(lVar7 + 0xb8) = uVar2;
        iVar1 = devm_request_threaded_irq
                          (lVar6,uVar2,0,syna_dev_isr,*(undefined8 *)(lVar7 + 0xb0),"synaptics_tcm",
                           param_1);
        if (-1 < iVar1) {
          *(undefined1 *)(lVar7 + 0xbc) = 1;
          uVar3 = _printk(&DAT_0017ffc1,"syna_dev_request_irq");
          return uVar3;
        }
        puVar4 = &DAT_001827e5;
      }
      uVar3 = _printk(puVar4,"syna_dev_request_irq");
      return uVar3;
    }
    puVar4 = &DAT_00181e9b;
  }
  uVar3 = _printk(puVar4,"syna_dev_connect");
  return uVar3;
}



/* 00153fc4 syna_cdev_ioctls */

long syna_cdev_ioctls(undefined8 param_1,byte param_2,ulong param_3)

{
  undefined8 *puVar1;
  ulong uVar2;
  ulong uVar3;
  int iVar4;
  ulong uVar5;
  long lVar6;
  ulong uVar7;
  undefined *puVar8;
  undefined8 uVar9;
  char *pcVar10;
  code *pcVar11;
  ulong uVar12;
  long *plVar13;
  undefined8 local_188;
  ulong local_180;
  undefined1 auStack_178 [8];
  uint local_170 [64];
  long local_70;
  
  lVar6 = sp_el0;
  local_70 = *(long *)(lVar6 + 0x710);
  local_188 = 0;
  local_180 = 0;
  plVar13 = *(long **)(g_cdev_data + 0xa8);
  mutex_lock(&DAT_0015eb00);
  if (0xf < param_2) {
    if (param_2 == 0x10) {
      iVar4 = 1;
      goto LAB_001557b4;
    }
    puVar1 = (undefined8 *)sp_el0;
    uVar2 = (long)(param_3 << 8) >> 8;
    if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
       (uVar12 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
      uVar12 = param_3 & uVar2;
    }
    if (uVar12 < 0x7ffffffff1) {
      uVar9 = daif;
      uVar12 = daif;
      daif = uVar12 | 0xc0;
      uVar12 = ttbr1_el1;
      ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar12 & 0xffffffffffff;
      ttbr0_el1 = puVar1[1];
      InstructionSynchronizationBarrier();
      daif = uVar9;
      uVar5 = __arch_copy_from_user(uVar9,&local_188,param_3 & 0xff7fffffffffffff,0x10);
      uVar3 = local_180;
      uVar12 = daif;
      uVar7 = daif;
      daif = uVar7 | 0xc0;
      uVar7 = ttbr1_el1;
      ttbr0_el1 = (uVar7 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar7 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar12;
      if (uVar5 == 0) {
        uVar12 = (ulong)local_188._4_4_;
        if (0x1000 < local_188._4_4_) {
          lVar6 = _printk(&DAT_00180939,"syna_cdev_ioctls");
          return lVar6;
        }
        if (param_2 - 0x11 < 0x12) {
switchD_00154150_caseD_2:
                    /* WARNING: Could not find normalized switch variable to match jumptable */
          switch(param_2) {
          case 0:
            lVar6 = _printk(&DAT_00180c88,"syna_cdev_ioctl_store_pid");
            return lVar6;
          case 1:
            goto switchD_00154150_caseD_1;
          default:
            goto switchD_00154150_caseD_2;
          }
        }
        pcVar10 = "syna_cdev_ioctl_dispatch";
        goto LAB_001551d0;
      }
    }
    else {
      uVar5 = 0x10;
    }
    if (0x10 < uVar5) {
                    /* WARNING: Subroutine does not return */
      __fortify_panic(uVar12,0xf,0,uVar5);
    }
    memset(auStack_178 + -uVar5,0,uVar5);
    puVar8 = &DAT_0017f150;
    uVar5 = uVar5 & 0xffffffff;
    goto LAB_00155810;
  }
  if (param_2 < 2) {
    if (param_2 == 0) {
      iVar4 = syna_tcm_reset(*plVar13,*(undefined4 *)(*plVar13 + 0x20c));
      if (iVar4 < 0) {
        puVar8 = &DAT_00181a01;
LAB_001551e8:
        lVar6 = _printk(puVar8,"syna_cdev_ioctl_old_dispatch");
        return lVar6;
      }
      if (*(char *)(*plVar13 + 9) == '\x01') {
        if (*(int *)((code *)plVar13[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
          pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x154264);
          (*pcVar11)();
        }
        iVar4 = (*(code *)plVar13[0xd7])(plVar13);
        if (iVar4 < 0) {
          puVar8 = &DAT_0017e3aa;
          goto LAB_001551e8;
        }
      }
      goto LAB_001557b4;
    }
    if (param_2 == 1) {
      pcVar11 = *(code **)(plVar13[0x4e] + 0x40);
      if (pcVar11 == (code *)0x0) {
        iVar4 = -0x16;
        goto LAB_001557b4;
      }
      if (param_3 == 1) {
        uVar9 = 1;
      }
      else {
        if (param_3 != 0) goto LAB_001557b0;
        uVar9 = 0;
      }
      if (*(int *)(pcVar11 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x1542a4);
        (*pcVar11)();
      }
      iVar4 = (*pcVar11)(plVar13[0x4e] + 8,uVar9);
      goto LAB_001557b4;
    }
  }
  else {
    if (param_2 == 2) {
LAB_001557b0:
      iVar4 = 0;
LAB_001557b4:
      mutex_unlock(&DAT_0015eb00);
      lVar6 = sp_el0;
      if (*(long *)(lVar6 + 0x710) != local_70) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      return (long)iVar4;
    }
    if (param_2 == 3) {
      iVar4 = 0;
      *(undefined1 *)((long)plVar13 + 0x584) = 1;
      goto LAB_001557b4;
    }
  }
  pcVar10 = "syna_cdev_ioctl_old_dispatch";
LAB_001551d0:
  lVar6 = _printk(&DAT_0017fa0a,pcVar10,param_2);
  return lVar6;
switchD_00154150_caseD_1:
  local_170[0] = 0;
  if ((*(byte *)((long)plVar13 + 0x582) & 1) == 0) {
    lVar6 = _printk(&DAT_00183267,"syna_cdev_ioctl_enable_irq");
    return lVar6;
  }
  if (*(int *)((long)plVar13 + 0x57c) == 3) {
    lVar6 = _printk(&DAT_00180eb1,"syna_cdev_ioctl_enable_irq");
    return lVar6;
  }
  if ((local_188._4_4_ < 4) || ((uint)local_188 < 4)) {
    lVar6 = _printk(&DAT_001817e0,"syna_cdev_ioctl_enable_irq",local_188._4_4_);
    return lVar6;
  }
  lVar6 = plVar13[0x4e];
  if (*(long *)(lVar6 + 0x40) == 0) {
    lVar6 = _printk(&DAT_0017ef62,"syna_cdev_ioctl_enable_irq");
    return lVar6;
  }
  if (4 < local_188._4_4_) {
    __copy_overflow(4,uVar12);
    goto LAB_00154208;
  }
  __check_object_size(local_170,uVar12,0);
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar5 = uVar3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar5 = uVar3 & (long)(uVar3 << 8) >> 8;
  }
  uVar7 = uVar12;
  if (0x8000000000 - uVar12 < uVar5) {
LAB_001541d4:
    uVar12 = uVar12 - uVar7;
    uVar5 = 0;
    if (uVar12 < 5) {
      uVar5 = 4 - uVar12;
    }
    if (uVar5 < uVar7) {
                    /* WARNING: Subroutine does not return */
      __fortify_panic(0xf,uVar5,uVar7);
    }
    memset((void *)((long)local_170 + uVar12),0,uVar7);
    uVar12 = uVar7 & 0xffffffff;
    if ((int)uVar7 != 0) {
LAB_00154208:
      lVar6 = _printk(&DAT_0017f576,"syna_cdev_ioctl_enable_irq",uVar12);
      return lVar6;
    }
  }
  else {
    uVar9 = daif;
    uVar5 = daif;
    daif = uVar5 | 0xc0;
    uVar5 = ttbr1_el1;
    ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar5 & 0xffffffffffff;
    ttbr0_el1 = puVar1[1];
    InstructionSynchronizationBarrier();
    daif = uVar9;
    uVar7 = __arch_copy_from_user(uVar9,local_170,uVar3 & 0xff7fffffffffffff,uVar12);
    uVar9 = daif;
    uVar5 = daif;
    daif = uVar5 | 0xc0;
    uVar5 = ttbr1_el1;
    ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar5 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar9;
    if (uVar7 != 0) goto LAB_001541d4;
  }
  if (local_170[0] == 1) {
    if ((*(byte *)(plVar13[0x4e] + 0xbc) & 1) == 0) {
      if (*(int *)(*(code **)(lVar6 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x155ed8);
        (*pcVar11)();
      }
      iVar4 = (**(code **)(lVar6 + 0x40))(lVar6 + 8,1);
      if (-1 < iVar4) {
        lVar6 = _printk(&DAT_001824a5,"syna_cdev_ioctl_enable_irq");
        return lVar6;
      }
      goto LAB_00155ee0;
    }
  }
  else {
    if (local_170[0] != 0) {
      if (*(int *)(*(code **)(lVar6 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x155e4c);
        (*pcVar11)();
      }
      iVar4 = (**(code **)(lVar6 + 0x40))(lVar6 + 8,1);
      if (-1 < iVar4) {
        if (local_170[0] < *(uint *)(*plVar13 + 0x20c)) {
          local_170[0] = *(uint *)(*plVar13 + 0x20c);
        }
        DAT_0015eb60 = local_170[0];
        lVar6 = _printk(&DAT_001824a5,"syna_cdev_ioctl_enable_irq");
        return lVar6;
      }
LAB_00155ee0:
      puVar8 = &DAT_0017ef0c;
LAB_00155eec:
      lVar6 = _printk(puVar8,"syna_cdev_ioctl_enable_irq");
      return lVar6;
    }
    if (*(char *)(plVar13[0x4e] + 0xbc) == '\x01') {
      if (*(int *)(*(code **)(lVar6 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x155344);
        (*pcVar11)();
      }
      iVar4 = (**(code **)(lVar6 + 0x40))(lVar6 + 8,0);
      if (-1 < iVar4) {
        lVar6 = _printk(&DAT_0018095c,"syna_cdev_ioctl_enable_irq");
        return lVar6;
      }
      puVar8 = &DAT_0017e9fd;
      goto LAB_00155eec;
    }
  }
  iVar4 = 0;
  if (false) goto LAB_001557b4;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar12 = param_3, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar12 = param_3 & uVar2;
  }
  if (uVar12 < 0x7ffffffff1) {
    uVar9 = daif;
    uVar2 = daif;
    daif = uVar2 | 0xc0;
    uVar2 = ttbr1_el1;
    ttbr1_el1 = puVar1[1] & 0xffff000000000000 | uVar2 & 0xffffffffffff;
    ttbr0_el1 = puVar1[1];
    InstructionSynchronizationBarrier();
    daif = uVar9;
    uVar5 = __arch_copy_to_user(uVar9,param_3 & 0xff7fffffffffffff,&local_188,0x10);
    uVar9 = daif;
    uVar2 = daif;
    daif = uVar2 | 0xc0;
    uVar2 = ttbr1_el1;
    ttbr0_el1 = (uVar2 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar2 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar9;
    if ((int)uVar5 == 0) goto LAB_001557b0;
  }
  else {
    uVar5 = 0x10;
  }
  puVar8 = &DAT_00182811;
LAB_00155810:
  lVar6 = _printk(puVar8,"syna_cdev_ioctls",uVar5);
  return lVar6;
}



/* 00156150 syna_spi_probe */

void syna_spi_probe(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_00182abb,"syna_spi_probe");
  return;
}



/* 0015727c syna_spi_read */

ulong syna_spi_read(undefined8 *param_1,void *param_2,uint param_3)

{
  undefined8 ****ppppuVar1;
  undefined8 *puVar2;
  uint uVar3;
  void *pvVar4;
  int iVar5;
  undefined *puVar6;
  long lVar7;
  ulong uVar8;
  ulong extraout_x9;
  ulong uVar9;
  ulong extraout_x10;
  long lVar10;
  long extraout_x11;
  long lVar11;
  long extraout_x12;
  undefined8 uVar12;
  undefined8 extraout_x13;
  undefined8 ****ppppuVar13;
  undefined8 ****extraout_x14;
  long lVar14;
  long *plVar15;
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
  
  lVar14 = sp_el0;
  local_48 = *(long *)(lVar14 + 0x710);
  plVar15 = (long *)*param_1;
  local_58 = (undefined8 ***)0x0;
  uStack_50 = 0;
  local_68 = 0;
  local_60 = (undefined8 ***)0x0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = (undefined8 ***)0x0;
  local_b0 = (undefined8 ***)0x0;
  if (plVar15 == (long *)0x0) {
    puVar6 = &DAT_00181d7e;
  }
  else {
    lVar14 = *plVar15;
    if (lVar14 != 0) {
      mutex_lock(plVar15 + 0xe);
      if (((param_3 ^ 0xffffffff) & 0xffff) == 0) {
        uVar8 = _printk(&DAT_0017e45b,"syna_spi_read",0xffff);
        return uVar8;
      }
      local_b8 = &local_b8;
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
      local_60 = &local_60;
      uVar3 = param_3;
      if (*(int *)((long)plVar15 + 100) == 0) {
        uVar3 = 1;
      }
      local_b0 = local_b8;
      local_58 = local_60;
      iVar5 = syna_spi_alloc_mem(uVar3,param_3);
      if (iVar5 < 0) {
        uVar8 = _printk(&DAT_00182ae9,"syna_spi_read");
        return uVar8;
      }
      if (*(int *)((long)plVar15 + 100) == 0) {
        memset(tx_buf,0xff,(ulong)param_3);
        puVar2 = xfer;
        *xfer = tx_buf;
        pvVar4 = rx_buf;
        ppppuVar13 = (undefined8 ****)(puVar2 + 0xe);
        *(uint *)(puVar2 + 2) = param_3;
        puVar2[1] = pvVar4;
        if (((ppppuVar13 == &local_b8) || ((undefined8 ****)local_b0 == ppppuVar13)) ||
           ((undefined8 ****)*local_b0 != &local_b8)) {
          __list_add_valid_or_report(ppppuVar13,local_b0,&local_b8);
        }
        else {
          puVar2[0xe] = &local_b8;
          puVar2[0xf] = local_b0;
          *local_b0 = ppppuVar13;
          local_b0 = ppppuVar13;
        }
      }
      else {
        *(undefined1 *)tx_buf = 0xff;
        if (param_3 != 0) {
          uVar8 = 0;
          uVar9 = (ulong)param_3;
          lVar10 = 0x70;
          lVar11 = 0x15e000;
          uVar12 = 1;
          ppppuVar13 = &local_b8;
          do {
            lVar7 = *(long *)(lVar11 + 0xd18);
            ppppuVar1 = (undefined8 ****)(lVar7 + lVar10);
            *(int *)(ppppuVar1 + -0xc) = (int)uVar12;
            ppppuVar1[-0xe] = tx_buf;
            ppppuVar1[-0xd] = (undefined8 ***)((long)rx_buf + uVar8);
            if (((ppppuVar1 == ppppuVar13) || (ppppuVar1 == (undefined8 ****)local_b0)) ||
               ((undefined8 ****)*local_b0 != ppppuVar13)) {
              __list_add_valid_or_report(ppppuVar1,local_b0,&local_b8);
              uVar8 = extraout_x9;
              uVar9 = extraout_x10;
              lVar10 = extraout_x11;
              lVar11 = extraout_x12;
              uVar12 = extraout_x13;
              ppppuVar13 = extraout_x14;
            }
            else {
              puVar2 = (undefined8 *)(lVar7 + lVar10);
              *puVar2 = ppppuVar13;
              puVar2[1] = local_b0;
              *local_b0 = ppppuVar1;
              local_b0 = ppppuVar1;
            }
            uVar8 = uVar8 + 1;
            lVar10 = lVar10 + 0x88;
          } while (uVar9 != uVar8);
        }
      }
      iVar5 = spi_sync(lVar14,&local_b8);
      if (iVar5 != 0) {
        uVar8 = _printk(&DAT_0017faa5,"syna_spi_read",iVar5);
        return uVar8;
      }
      if ((param_2 != (void *)0x0) && (rx_buf != (void *)0x0)) {
        memcpy(param_2,rx_buf,(ulong)param_3);
        mutex_unlock(plVar15 + 0xe);
        lVar14 = sp_el0;
        if (*(long *)(lVar14 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
          __stack_chk_fail();
        }
        return (ulong)param_3;
      }
      uVar8 = _printk(&DAT_00182283,"syna_spi_read");
      return uVar8;
    }
    puVar6 = &DAT_00181c7f;
  }
  uVar8 = _printk(puVar6,"syna_spi_read");
  return uVar8;
}



/* 00157560 syna_spi_write */

ulong syna_spi_write(undefined8 *param_1,void *param_2,uint param_3)

{
  long ****pppplVar1;
  undefined8 *puVar2;
  uint uVar3;
  int iVar4;
  undefined *puVar5;
  long lVar6;
  ulong uVar7;
  ulong extraout_x9;
  long lVar8;
  long extraout_x10;
  long lVar9;
  long extraout_x11;
  undefined8 uVar10;
  undefined8 extraout_x12;
  long ****pppplVar11;
  long ****extraout_x13;
  long lVar12;
  long *plVar13;
  long ***local_b8;
  long ***local_b0;
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
  
  lVar12 = sp_el0;
  local_48 = *(long *)(lVar12 + 0x710);
  plVar13 = (long *)*param_1;
  local_58 = (undefined8 ***)0x0;
  uStack_50 = 0;
  local_68 = 0;
  local_60 = (undefined8 ***)0x0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = (long ***)0x0;
  local_b0 = (long ***)0x0;
  if (plVar13 == (long *)0x0) {
    puVar5 = &DAT_00181d7e;
  }
  else {
    lVar12 = *plVar13;
    if (lVar12 != 0) {
      mutex_lock(plVar13 + 0xe);
      if (((param_3 ^ 0xffffffff) & 0xffff) == 0) {
        uVar7 = _printk(&DAT_00180698,"syna_spi_write",0xffff);
        return uVar7;
      }
      local_b8 = (long ***)&local_b8;
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
      local_60 = &local_60;
      uVar3 = param_3;
      if (*(int *)((long)plVar13 + 100) == 0) {
        uVar3 = 1;
      }
      local_b0 = local_b8;
      local_58 = local_60;
      iVar4 = syna_spi_alloc_mem(uVar3,param_3);
      if (iVar4 < 0) {
        uVar7 = _printk(&DAT_0017fcbe,"syna_spi_write");
        return uVar7;
      }
      if ((param_2 == (void *)0x0) || (tx_buf == (void *)0x0)) {
        uVar7 = _printk(&DAT_001815a4,"syna_spi_write");
        return uVar7;
      }
      memcpy(tx_buf,param_2,(ulong)param_3);
      puVar2 = xfer;
      if (*(int *)((long)plVar13 + 100) == 0) {
        *xfer = tx_buf;
        pppplVar11 = (long ****)(puVar2 + 0xe);
        *(uint *)(puVar2 + 2) = param_3;
        if (((pppplVar11 == &local_b8) || ((long ****)local_b0 == pppplVar11)) ||
           ((long ****)*local_b0 != &local_b8)) {
          __list_add_valid_or_report(pppplVar11,local_b0,&local_b8);
        }
        else {
          puVar2[0xe] = &local_b8;
          puVar2[0xf] = local_b0;
          *local_b0 = (long **)pppplVar11;
          local_b0 = (long ***)pppplVar11;
        }
      }
      else if (param_3 != 0) {
        uVar7 = 0;
        lVar8 = 0x70;
        lVar9 = 0x15e000;
        uVar10 = 1;
        pppplVar11 = &local_b8;
        do {
          lVar6 = *(long *)(lVar9 + 0xd18);
          pppplVar1 = (long ****)(lVar6 + lVar8);
          *(int *)(pppplVar1 + -0xc) = (int)uVar10;
          pppplVar1[-0xe] = (long ***)((long)tx_buf + uVar7);
          if (((pppplVar1 == pppplVar11) || (pppplVar1 == (long ****)local_b0)) ||
             ((long ****)*local_b0 != pppplVar11)) {
            __list_add_valid_or_report(pppplVar1,local_b0,&local_b8);
            uVar7 = extraout_x9;
            lVar8 = extraout_x10;
            lVar9 = extraout_x11;
            uVar10 = extraout_x12;
            pppplVar11 = extraout_x13;
          }
          else {
            puVar2 = (undefined8 *)(lVar6 + lVar8);
            *puVar2 = pppplVar11;
            puVar2[1] = local_b0;
            *local_b0 = (long **)pppplVar1;
            local_b0 = (long ***)pppplVar1;
          }
          uVar7 = uVar7 + 1;
          lVar8 = lVar8 + 0x88;
        } while (param_3 != uVar7);
      }
      iVar4 = spi_sync(lVar12,&local_b8);
      if (iVar4 != 0) {
        uVar7 = _printk(&DAT_00181891,"syna_spi_write",iVar4);
        return uVar7;
      }
      mutex_unlock(plVar13 + 0xe);
      lVar12 = sp_el0;
      if (*(long *)(lVar12 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      return (ulong)param_3;
    }
    puVar5 = &DAT_00181c7f;
  }
  uVar7 = _printk(puVar5,"syna_spi_write");
  return uVar7;
}



/* 0015781c syna_spi_power_on */

void syna_spi_power_on(undefined8 param_1,ulong param_2)

{
  char *pcVar1;
  
  pcVar1 = "enable";
  if ((param_2 & 1) == 0) {
    pcVar1 = "disable";
  }
  _printk(&DAT_0017efab,"syna_spi_power_on",pcVar1);
  return;
}



/* 00157a84 syna_spi_alloc_mem */

undefined8 syna_spi_alloc_mem(uint param_1,uint param_2)

{
  uint uVar1;
  undefined *puVar2;
  undefined1 *puVar3;
  undefined8 uVar4;
  
  if (param_1 <= syna_spi_alloc_mem_xfer_count) {
    memset(xfer,0,(ulong)(param_1 * 0x88));
    uVar1 = syna_spi_alloc_mem_xfer_count;
LAB_00157b30:
    syna_spi_alloc_mem_xfer_count = uVar1;
    if (param_2 <= buf_size) {
      return 0;
    }
    if (rx_buf != 0) {
      if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
        uVar4 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar4;
      }
      devm_kfree();
      rx_buf = 0;
    }
    if (tx_buf != 0) {
      if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
        uVar4 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar4;
      }
      devm_kfree();
      tx_buf = 0;
    }
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      puVar2 = &DAT_001828ba;
    }
    else {
      if (0 < (int)param_2) {
        rx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
        if (rx_buf == 0) {
          puVar3 = &DAT_00181cc6;
        }
        else {
          if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
            uVar4 = _printk(&DAT_001828ba,"syna_pal_mem_alloc");
            return uVar4;
          }
          tx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
          if (tx_buf != 0) {
            buf_size = param_2;
            return 0;
          }
          puVar3 = &DAT_0017ed7f;
          tx_buf = 0;
        }
        uVar4 = _printk(puVar3,"syna_spi_alloc_mem");
        return uVar4;
      }
      puVar2 = &DAT_00180da7;
    }
    uVar4 = _printk(puVar2,"syna_pal_mem_alloc");
    return uVar4;
  }
  if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
    uVar4 = _printk(&DAT_001828ba,"syna_pal_mem_free");
    return uVar4;
  }
  if (xfer != (void *)0x0) {
    devm_kfree(*(long *)(p_device + 0x70),xfer);
  }
  if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
    puVar2 = &DAT_001828ba;
  }
  else {
    if (0 < (int)(param_1 * 0x88)) {
      xfer = (void *)devm_kmalloc(*(long *)(p_device + 0x70),(ulong)param_1 * 0x88,0xdc0);
      uVar1 = param_1;
      if (xfer == (void *)0x0) {
        uVar4 = _printk(&DAT_0017f5c4,"syna_spi_alloc_mem");
        return uVar4;
      }
      goto LAB_00157b30;
    }
    puVar2 = &DAT_00180da7;
  }
  uVar4 = _printk(puVar2,"syna_pal_mem_alloc");
  return uVar4;
}



/* 00157d00 syna_sysfs_info_show */

long syna_sysfs_info_show(long param_1,undefined8 param_2,long param_3)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  bool bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  long lVar8;
  char *pcVar9;
  long lVar10;
  long lVar11;
  long *plVar12;
  
  plVar12 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  lVar11 = *plVar12;
  uVar4 = scnprintf(param_3,0x1000,"Driver version:     %d.%s\n",1,&DAT_001818ca);
  uVar5 = uVar4;
  if ((int)uVar4 < 0) goto LAB_001580a4;
  param_3 = param_3 + (ulong)uVar4;
  uVar5 = scnprintf(param_3,0x1000 - (ulong)uVar4,"Core lib version:   %d.%02d\n\n",2,0xc);
  if ((int)uVar5 < 0) goto LAB_001580a4;
  param_3 = param_3 + (ulong)uVar5;
  uVar4 = uVar5 + uVar4;
  bVar3 = *(int *)((long)plVar12 + 0x57c) != 3;
  if ((*(byte *)((long)plVar12 + 0x582) & 1) == 0) {
    if (!bVar3) goto LAB_00157e2c;
    pcVar9 = "Device is NOT connected\n";
  }
  else {
    if (bVar3) {
      uVar6 = scnprintf(param_3,0x1000 - (ulong)uVar4,
                        "Character Dev. Node: /dev/%s* (ref. count:%d)\n\n",&DAT_001812d4,
                        *(undefined4 *)((long)plVar12 + 900));
      uVar5 = uVar6;
      if (-1 < (int)uVar6) {
        uVar5 = scnprintf(param_3 + (ulong)uVar6,0x1000 - (ulong)(uVar6 + uVar4),
                          "TouchComm version:  %d\n",*(undefined1 *)(lVar11 + 0x80));
        if (-1 < (int)uVar5) {
          lVar10 = param_3 + (ulong)uVar6 + (ulong)uVar5;
          uVar4 = uVar5 + uVar6 + uVar4;
          if (*(char *)(lVar11 + 0x81) == '\v') {
            lVar8 = 0x1000 - (ulong)uVar4;
            pcVar9 = "Firmware mode:      Bootloader, 0x%02x\n";
          }
          else if (*(char *)(lVar11 + 0x81) == '\x01') {
            lVar8 = 0x1000 - (ulong)uVar4;
            pcVar9 = "Firmware mode:      Application Firmware, 0x%02x\n";
          }
          else {
            lVar8 = 0x1000 - (ulong)uVar4;
            pcVar9 = "Firmware mode:      Mode 0x%02x\n";
          }
          uVar6 = scnprintf(lVar10,lVar8,pcVar9);
          uVar5 = uVar6;
          if (-1 < (int)uVar6) {
            lVar10 = lVar10 + (ulong)uVar6;
            uVar5 = scnprintf(lVar10,0x1000 - (ulong)(uVar6 + uVar4),"Part number:        ");
            if (-1 < (int)uVar5) {
              if (((undefined8 *)(lVar11 + 0x82) == (undefined8 *)0x0) ||
                 (puVar1 = (undefined8 *)(lVar10 + (ulong)uVar5), puVar1 == (undefined8 *)0x0)) {
                lVar11 = _printk(&DAT_00182514,"syna_sysfs_info_show");
                return lVar11;
              }
              iVar7 = uVar6 + uVar4 + uVar5;
              uVar4 = 0x1000 - iVar7;
              if (uVar4 < 0x10) {
                lVar11 = _printk(&DAT_00181608,"syna_pal_mem_cpy",0x10,uVar4,0x10);
                return lVar11;
              }
              uVar2 = *(undefined8 *)(lVar11 + 0x8a);
              uVar4 = iVar7 + 0x10;
              *puVar1 = *(undefined8 *)(lVar11 + 0x82);
              puVar1[1] = uVar2;
              uVar5 = scnprintf(puVar1 + 2,0x1000 - (ulong)uVar4,&DAT_00181367);
              if (-1 < (int)uVar5) {
                lVar10 = (long)(puVar1 + 2) + (ulong)uVar5;
                uVar4 = uVar5 + uVar4;
                uVar6 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Packrat number:     %d\n\n",
                                  *(undefined4 *)(lVar11 + 0xc));
                uVar5 = uVar6;
                if (-1 < (int)uVar6) {
                  uVar4 = uVar6 + uVar4;
                  uVar5 = uVar4;
                  if (*(char *)(lVar11 + 0x81) == '\x01') {
                    lVar10 = lVar10 + (ulong)uVar6;
                    uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Config ID:          ");
                    if (-1 < (int)uVar5) {
                      lVar10 = lVar10 + (ulong)uVar5;
                      lVar8 = 0;
                      uVar4 = uVar5 + uVar4;
                      do {
                        uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"0x%2x ",
                                          *(undefined1 *)(lVar11 + 0x24 + lVar8));
                        if ((int)uVar5 < 0) goto LAB_001580a4;
                        lVar8 = lVar8 + 1;
                        lVar10 = lVar10 + (ulong)uVar5;
                        uVar4 = uVar5 + uVar4;
                      } while (lVar8 != 0x10);
                      uVar6 = scnprintf(lVar10,0x1000 - (ulong)uVar4,&DAT_00181367);
                      uVar5 = uVar6;
                      if (-1 < (int)uVar6) {
                        uVar5 = scnprintf(lVar10 + (ulong)uVar6,0x1000 - (ulong)(uVar6 + uVar4),
                                          "Max X & Y:          %d, %d\n",
                                          *(undefined4 *)(lVar11 + 0x10),
                                          *(undefined4 *)(lVar11 + 0x14));
                        if (-1 < (int)uVar5) {
                          lVar10 = lVar10 + (ulong)uVar6 + (ulong)uVar5;
                          uVar4 = uVar5 + uVar6 + uVar4;
                          uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Num of objects:     %d\n",
                                            *(undefined4 *)(lVar11 + 0x18));
                          if (-1 < (int)uVar5) {
                            lVar10 = lVar10 + (ulong)uVar5;
                            uVar4 = uVar5 + uVar4;
                            uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                              "Num of cols & rows: %d, %d\n",
                                              *(undefined4 *)(lVar11 + 0x20),
                                              *(undefined4 *)(lVar11 + 0x1c));
                            if (-1 < (int)uVar5) {
                              lVar10 = lVar10 + (ulong)uVar5;
                              uVar4 = uVar5 + uVar4;
                              uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                                "Max. Read Size:     %d bytes\n",
                                                *(undefined4 *)(lVar11 + 0x3c));
                              if (-1 < (int)uVar5) {
                                uVar4 = uVar5 + uVar4;
                                iVar7 = scnprintf(lVar10 + (ulong)uVar5,0x1000 - (ulong)uVar4,
                                                  "Max. Write Size:    %d bytes\n",
                                                  *(undefined4 *)(lVar11 + 0x38));
                                uVar5 = 0;
                                if (-1 < iVar7) {
                                  uVar5 = uVar4;
                                }
                                uVar5 = uVar5 + iVar7;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      goto LAB_001580a4;
    }
LAB_00157e2c:
    pcVar9 = "Device in BARE connection\n";
  }
  iVar7 = scnprintf(param_3,0x1000 - (ulong)uVar4,pcVar9);
  uVar5 = iVar7 + uVar4;
LAB_001580a4:
  return (long)(int)uVar5;
}



/* 00158100 syna_sysfs_get_delta_show */

long syna_sysfs_get_delta_show(long param_1,undefined8 param_2,undefined8 param_3)

{
  code *pcVar1;
  int iVar2;
  undefined1 *puVar3;
  long lVar4;
  long lVar5;
  long *plVar6;
  uint uVar7;
  long local_b0;
  undefined8 local_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  plVar6 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar4 = *plVar6;
  iVar2 = syna_tcm_enable_report(lVar4,0x12,1,10);
  if (iVar2 < 0) {
    iVar2 = scnprintf(param_3,0x1000,"Fail to enable report %x\n",0x12);
LAB_001584bc:
    lVar4 = sp_el0;
    if (*(long *)(lVar4 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    return (long)iVar2;
  }
  if (lVar4 == 0) {
    puVar3 = &DAT_0017eb2d;
  }
  else {
    lVar5 = *(long *)(lVar4 + 0x48);
    if (lVar5 != 0) {
      if (*(long *)(lVar5 + 0x38) != 0) {
        mutex_lock(lVar4 + 0x50);
        if (*(int *)(*(code **)(lVar5 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1581ac);
          (*pcVar1)();
        }
        (**(code **)(lVar5 + 0x38))(lVar5,0);
        mutex_unlock(lVar4 + 0x50);
      }
      local_70 = local_70 & 0xffffffffffffff00;
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      uVar7 = 0;
      do {
        iVar2 = syna_tcm_wait_for_report(lVar4,0x12,&local_b0,100,1000);
        if ((-1 < iVar2) && (iStack_a4 != 0)) {
          lVar4 = _printk(&DAT_00183340,"syna_sysfs_get_delta_show",1);
          return lVar4;
        }
        uVar7 = uVar7 + 1;
      } while ((true) && (uVar7 < 5));
      syna_tcm_enable_report(*plVar6,0x12,0,10);
      if (lVar4 == 0) {
        lVar4 = _printk(&DAT_0017eb2d,"syna_tcm_enable_irq");
        return lVar4;
      }
      lVar5 = *(long *)(lVar4 + 0x48);
      if (lVar5 == 0) {
        lVar4 = _printk(&DAT_00180beb,"syna_tcm_enable_irq");
        return lVar4;
      }
      if (*(long *)(lVar5 + 0x38) != 0) {
        mutex_lock(lVar4 + 0x50);
        if (*(int *)(*(code **)(lVar5 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x158458);
          (*pcVar1)();
        }
        (**(code **)(lVar5 + 0x38))(lVar5,1);
        mutex_unlock(lVar4 + 0x50);
      }
      lVar4 = local_b0;
      if ((char)local_70 != '\0') {
        lVar4 = _printk(&DAT_0017f281,"syna_tcm_buf_release");
        return lVar4;
      }
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) {
        lVar4 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return lVar4;
      }
      if (lVar4 != 0) {
        devm_kfree(lVar5,lVar4);
      }
      local_a8 = 0;
      local_70 = local_70 & 0xffffffffffffff00;
      iVar2 = scnprintf(param_3,0x1000,"Done\n");
      goto LAB_001584bc;
    }
    puVar3 = &DAT_00180beb;
  }
  lVar4 = _printk(puVar3,"syna_tcm_enable_irq");
  return lVar4;
}



/* 001585cc syna_testing_check_config_id_show */

void syna_testing_check_config_id_show(long param_1,undefined8 param_2,long param_3)

{
  undefined *puVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  uint uVar5;
  undefined4 *puVar6;
  long lVar7;
  ulong uVar8;
  undefined8 *puVar9;
  char *local_90;
  undefined8 local_88;
  long local_80;
  undefined8 uStack_78;
  int iStack_74;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  ulong local_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_48 = 0;
  local_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_88 = 0;
  local_70 = 0;
  puVar9 = *(undefined8 **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)puVar9 + 0x582) & 1) == 0) {
    iVar4 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar6 = (undefined4 *)syna_tcm_get_testing_0002();
    if (puVar6 != (undefined4 *)0x0) {
      local_40 = local_40 & 0xffffffffffffff00;
      local_80 = 0;
      uStack_78 = 0;
      __mutex_init(&local_70,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_90 = "Default";
      *(long **)(puVar6 + 0x36) = &local_80;
      local_88 = CONCAT44(local_88._4_4_,0x10);
      *(char ***)(puVar6 + 0xe) = &local_90;
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x158694);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*puVar9,puVar6,0);
      if (iVar4 < 0) {
        _printk(&DAT_001830c0,"syna_testing_check_config_id_show",*(undefined8 *)(puVar6 + 2));
        return;
      }
      puVar1 = &DAT_00181922;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar1 = &DAT_001810b6;
      }
      uVar5 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar6 + 2),
                        *puVar6,puVar1);
      uVar8 = (ulong)uVar5;
      if (iStack_74 != 0) {
        iVar4 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"\nConfig ID: %s\n",local_80);
        uVar8 = (ulong)(iVar4 + uVar5);
      }
      lVar2 = local_80;
      if ((char)local_40 != '\0') {
        _printk(&DAT_0017f281,"syna_tcm_buf_release");
        return;
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
        _printk(&DAT_001828ba,"syna_pal_mem_free");
        return;
      }
      if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_00158760;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",2);
  }
  uVar8 = (ulong)iVar4;
LAB_00158760:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}



/* 001587e8 syna_testing_pt01_show */

void syna_testing_pt01_show(long param_1,undefined8 param_2,long param_3)

{
  uint uVar1;
  undefined *puVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  undefined4 *puVar6;
  ulong uVar7;
  long lVar8;
  undefined8 *puVar9;
  uint uVar10;
  undefined1 *local_a0;
  undefined8 local_98;
  long local_90;
  undefined8 uStack_88;
  uint uStack_84;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  ulong local_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  local_58 = 0;
  local_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_98 = 0;
  local_80 = 0;
  puVar9 = *(undefined8 **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)puVar9 + 0x582) & 1) == 0) {
    iVar5 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar6 = (undefined4 *)syna_tcm_get_testing_0100();
    if (puVar6 != (undefined4 *)0x0) {
      local_50 = local_50 & 0xffffffffffffff00;
      local_90 = 0;
      uStack_88 = 0;
      __mutex_init(&local_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_a0 = &pt01_limits;
      *(long **)(puVar6 + 0x36) = &local_90;
      local_98 = CONCAT44(local_98._4_4_,0x10);
      *(undefined1 ***)(puVar6 + 0xe) = &local_a0;
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1588b4);
        (*pcVar4)();
      }
      iVar5 = (**(code **)(puVar6 + 6))(*puVar9,puVar6,0);
      if (iVar5 < 0) {
        _printk(&DAT_001830c0,"syna_testing_pt01_show",*(undefined8 *)(puVar6 + 2));
        return;
      }
      puVar2 = &DAT_00181922;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar2 = &DAT_001810b6;
      }
      uVar7 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar6 + 2),
                        *puVar6,puVar2);
      uVar7 = uVar7 & 0xffffffff;
      if (uStack_84 != 0) {
        uVar10 = 0;
        do {
          iVar5 = scnprintf(param_3 + uVar7,0x1000 - uVar7,"x%02X ",
                            *(undefined1 *)(local_90 + (int)uVar10));
          uVar10 = uVar10 + 1;
          uVar1 = iVar5 + (int)uVar7;
          uVar7 = (ulong)uVar1;
        } while (uVar10 < uStack_84);
        iVar5 = scnprintf(param_3 + uVar7,0x1000 - uVar7,&DAT_00181367);
        uVar7 = (ulong)(iVar5 + uVar1);
      }
      lVar3 = local_90;
      if ((char)local_50 != '\0') {
        _printk(&DAT_0017f281,"syna_tcm_buf_release");
        return;
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        _printk(&DAT_001828ba,"syna_pal_mem_free");
        return;
      }
      if (lVar3 != 0) {
        devm_kfree(lVar8,lVar3);
      }
      goto LAB_001589b8;
    }
    iVar5 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0x100);
  }
  uVar7 = (ulong)iVar5;
LAB_001589b8:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar7);
  }
  return;
}



/* 00158a44 syna_tcm_testing_noise */

undefined8 syna_tcm_testing_noise(long param_1,long param_2,ulong param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  long lVar3;
  byte bVar4;
  byte bVar5;
  int iVar6;
  undefined8 uVar7;
  undefined *puVar8;
  undefined8 *puVar9;
  undefined8 local_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  if ((param_1 != 0) && (param_2 != 0)) {
    local_58 = 0;
    uStack_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    local_78 = 0;
    uStack_70 = 0;
    local_88 = 0;
    uStack_80 = 0;
    local_90 = 0;
    __mutex_init(&uStack_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
    uVar1 = *(undefined4 *)(param_1 + 0x1c);
    uVar2 = *(undefined4 *)(param_1 + 0x20);
    iVar6 = syna_tcm_run_production_test(param_1,10,&local_90,0);
    if (iVar6 < 0) {
      uVar7 = _printk(&DAT_0018255c,"syna_tcm_testing_noise",10);
      return uVar7;
    }
    if (*(long *)(param_2 + 0xd8) != 0) {
      syna_tcm_buf_copy(*(long *)(param_2 + 0xd8),&local_90);
    }
    if ((param_3 & 1) == 0) {
      puVar9 = *(undefined8 **)(param_2 + 0x38);
      if (puVar9 == (undefined8 *)0x0) {
        bVar4 = 0;
      }
      else {
        bVar4 = syna_tcm_testing_check_frame_data
                          (local_90,local_88._4_4_,uVar1,uVar2,
                           syna_tcm_testing_0A00_check_upper_bound,*puVar9,
                           *(undefined4 *)(puVar9 + 1));
      }
      puVar9 = *(undefined8 **)(param_2 + 0x40);
      if (puVar9 == (undefined8 *)0x0) {
        bVar5 = 0;
      }
      else {
        bVar5 = syna_tcm_testing_check_frame_data
                          (local_90,local_88._4_4_,uVar1,uVar2,
                           syna_tcm_testing_0A00_check_lower_bound,*puVar9,
                           *(undefined4 *)(puVar9 + 1));
      }
      bVar4 = bVar4 & bVar5 & 1;
      *(byte *)(param_2 + 0x10) = bVar4;
      puVar8 = &DAT_001811bb;
      if (bVar4 == 0) {
        puVar8 = &DAT_0017ebda;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar8 = &DAT_001811bb;
    }
    uVar7 = _printk(&DAT_0017e97b,"syna_tcm_testing_noise",puVar8);
    return uVar7;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00158c84 syna_tcm_buf_copy */

void syna_tcm_buf_copy(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  uint uVar5;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_00180d77,"syna_tcm_buf_lock");
    return;
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_00180d77,"syna_tcm_buf_lock");
    return;
  }
  mutex_lock(param_2 + 2);
  uVar5 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar5) {
    uVar1 = uVar5 + 1;
    __s = (void *)*param_1;
    if (uVar2 < uVar1) {
      if (__s != (void *)0x0) {
        lVar3 = syna_request_managed_device();
        if (lVar3 == 0) {
          _printk(&DAT_001828ba,"syna_pal_mem_free");
          return;
        }
        devm_kfree(lVar3,__s);
      }
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        puVar4 = &DAT_001828ba;
LAB_00158eb8:
        _printk(puVar4,"syna_pal_mem_alloc");
        return;
      }
      if (0x7ffffffe < uVar5) {
        puVar4 = &DAT_00180da7;
        goto LAB_00158eb8;
      }
      __s = (void *)devm_kmalloc(lVar3,(ulong)uVar1,0xdc0);
      *param_1 = (long)__s;
      if (__s == (void *)0x0) {
        _printk(&DAT_00180576,"syna_tcm_buf_alloc",uVar1);
        return;
      }
      *(uint *)(param_1 + 1) = uVar1;
      __n = (ulong)uVar1;
    }
    memset(__s,0,__n);
    *(undefined4 *)((long)param_1 + 0xc) = 0;
    __n = (ulong)*(uint *)(param_1 + 1);
    uVar5 = *(uint *)((long)param_2 + 0xc);
  }
  if (((void *)*param_1 == (void *)0x0) || ((void *)*param_2 == (void *)0x0)) {
    _printk(&DAT_0017f87b,"syna_tcm_buf_copy",uVar5);
    return;
  }
  if ((uVar5 <= (uint)__n) && (uVar5 <= *(uint *)(param_2 + 1))) {
    memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar5);
    *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
    if (*(char *)(param_2 + 8) != '\x01') {
      _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
      return;
    }
    *(undefined1 *)(param_2 + 8) = 0;
    mutex_unlock(param_2 + 2);
    if ((char)param_1[8] != '\x01') {
      _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
      return;
    }
    *(undefined1 *)(param_1 + 8) = 0;
    mutex_unlock(param_1 + 2);
    return;
  }
  _printk(&DAT_00181608,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar5);
  return;
}



/* 00158d24 FUN_00158d24 */

void FUN_00158d24(void)

{
  uint uVar1;
  bool in_CY;
  void *__s;
  undefined8 *unaff_x19;
  undefined8 *unaff_x20;
  ulong unaff_x22;
  
  if (in_CY) {
    _printk(&DAT_00180da7,"syna_pal_mem_alloc");
    return;
  }
  __s = (void *)devm_kmalloc();
  *unaff_x19 = __s;
  if (__s == (void *)0x0) {
    _printk(&DAT_00180576,"syna_tcm_buf_alloc",unaff_x22 & 0xffffffff);
    return;
  }
  *(int *)(unaff_x19 + 1) = (int)unaff_x22;
  memset(__s,0,unaff_x22);
  *(undefined4 *)((long)unaff_x19 + 0xc) = 0;
  uVar1 = *(uint *)((long)unaff_x20 + 0xc);
  if (((void *)*unaff_x19 == (void *)0x0) || ((void *)*unaff_x20 == (void *)0x0)) {
    _printk(&DAT_0017f87b,"syna_tcm_buf_copy",uVar1);
    return;
  }
  if ((uVar1 <= *(uint *)(unaff_x19 + 1)) && (uVar1 <= *(uint *)(unaff_x20 + 1))) {
    memcpy((void *)*unaff_x19,(void *)*unaff_x20,(ulong)uVar1);
    *(undefined4 *)((long)unaff_x19 + 0xc) = *(undefined4 *)((long)unaff_x20 + 0xc);
    if (*(char *)(unaff_x20 + 8) != '\x01') {
      _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
      return;
    }
    *(undefined1 *)(unaff_x20 + 8) = 0;
    mutex_unlock(unaff_x20 + 2);
    if (*(char *)(unaff_x19 + 8) == '\x01') {
      *(undefined1 *)(unaff_x19 + 8) = 0;
      mutex_unlock(unaff_x19 + 2);
      return;
    }
    _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
    return;
  }
  _printk(&DAT_00181608,"syna_pal_mem_cpy",*(uint *)(unaff_x20 + 1),*(uint *)(unaff_x19 + 1),uVar1);
  return;
}



/* 00158db4 FUN_00158db4 */

void FUN_00158db4(undefined8 param_1,undefined8 param_2,int param_3)

{
  long unaff_x19;
  
  if (param_3 == 1) {
    *(undefined1 *)(unaff_x19 + 0x40) = 0;
    mutex_unlock(unaff_x19 + 0x10);
    return;
  }
  _printk(&DAT_00180d77,"syna_tcm_buf_unlock");
  return;
}



/* 00158f04 syna_tcm_testing_check_frame_data */

ulong syna_tcm_testing_check_frame_data
                (long param_1,ulong param_2,int param_3,uint param_4,code *param_5,long param_6,
                ulong param_7)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  ulong uVar7;
  uint uVar8;
  
  if (((param_5 == (code *)0x0) || (param_1 == 0)) || (param_6 == 0)) {
    uVar7 = _printk(&DAT_0018341c,"syna_tcm_testing_check_frame_data");
    return uVar7;
  }
  if (param_2 < param_3 * param_4 * 2) {
    uVar7 = _printk(&UNK_00183474,"syna_tcm_testing_check_frame_data",param_2 & 0xffffffff);
    return uVar7;
  }
  if (param_3 < 1) {
    uVar8 = 1;
  }
  else {
    iVar5 = 0;
    iVar6 = 0;
    uVar8 = 1;
    do {
      if (0 < (int)param_4) {
        uVar7 = 0;
        iVar1 = iVar5;
        do {
          lVar2 = 0;
          if (param_2 <= param_7) {
            lVar2 = (long)iVar1;
          }
          if (*(int *)(param_5 + -4) != -0x5ccd7a0e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8236,0x158fec);
            (*pcVar3)();
          }
          uVar4 = (*param_5)(param_1 + iVar1,param_6 + lVar2,uVar7 & 0xffffffff,iVar6);
          uVar7 = uVar7 + 1;
          uVar8 = uVar4 & uVar8;
          iVar1 = iVar1 + 2;
        } while (param_4 != uVar7);
      }
      iVar6 = iVar6 + 1;
      iVar5 = iVar5 + param_4 * 2;
    } while (iVar6 != param_3);
  }
  return (ulong)uVar8;
}



/* 00159004 FUN_00159004 */

uint FUN_00159004(void)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  uint uVar4;
  ulong unaff_x19;
  ulong unaff_x20;
  long unaff_x21;
  code *unaff_x22;
  ulong unaff_x23;
  long unaff_x25;
  int unaff_w26;
  ulong uVar5;
  uint unaff_w28;
  long unaff_x29;
  int iStack0000000000000000;
  int iStack0000000000000004;
  int in_stack_00000008;
  
  do {
    do {
      unaff_w26 = unaff_w26 + 1;
      iVar1 = *(int *)(unaff_x29 + -4) + iStack0000000000000000;
      if (unaff_w26 == iStack0000000000000004) {
        return unaff_w28 & 1;
      }
      *(int *)(unaff_x29 + -4) = iVar1;
    } while (in_stack_00000008 < 1);
    uVar5 = 0;
    do {
      lVar2 = 0;
      if (unaff_x19 <= unaff_x20) {
        lVar2 = (long)iVar1;
      }
      if (*(int *)(unaff_x22 + -4) != -0x5ccd7a0e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8236,0x158fec);
        (*pcVar3)();
      }
      uVar4 = (*unaff_x22)(unaff_x25 + iVar1,unaff_x21 + lVar2,uVar5 & 0xffffffff,unaff_w26);
      uVar5 = uVar5 + 1;
      unaff_w28 = uVar4 & unaff_w28;
      iVar1 = iVar1 + 2;
    } while (unaff_x23 != uVar5);
  } while( true );
}



/* 00159054 FUN_00159054 */

void FUN_00159054(long param_1)

{
  undefined4 unaff_w19;
  
  _printk(param_1 + 0x474,"syna_tcm_testing_check_frame_data",unaff_w19);
  return;
}



/* 00159074 syna_tcm_testing_build_id */

undefined8 syna_tcm_testing_build_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined8 uVar4;
  undefined *puVar5;
  undefined8 *puVar6;
  int local_7c;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  if ((param_1 == 0) || (param_2 == 0)) {
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == local_48) {
      return 0xffffff5f;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_7c = 0;
  iVar3 = syna_tcm_identify(param_1,&local_78,0);
  if (iVar3 < 0) {
    uVar4 = _printk(&DAT_0017e4cb,"syna_tcm_testing_build_id");
    return uVar4;
  }
  local_7c = local_68._2_4_;
  if ((*(long *)(param_2 + 0xd8) != 0) &&
     (iVar3 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xd8),4), -1 < iVar3)) {
    syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xd8),
                     *(undefined4 *)(*(undefined8 **)(param_2 + 0xd8) + 1),&local_7c,4,4);
    *(undefined4 *)(*(long *)(param_2 + 0xd8) + 0xc) = 4;
  }
  if ((*(long *)(param_2 + 0xe0) != 0) &&
     (iVar3 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xe0),0x10), -1 < iVar3)) {
    syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xe0),
                     *(undefined4 *)(*(undefined8 **)(param_2 + 0xe0) + 1),(ulong)&local_78 | 2,0x10
                     ,0x10);
    *(undefined4 *)(*(long *)(param_2 + 0xe0) + 0xc) = 0x10;
  }
  if ((param_3 & 1) == 0) {
    puVar6 = *(undefined8 **)(param_2 + 0x38);
    if (((puVar6 != (undefined8 *)0x0) && (3 < *(uint *)(puVar6 + 1))) &&
       (*(int *)*puVar6 != local_7c)) {
      uVar4 = _printk(&DAT_0017f5f4,"syna_tcm_testing_0001_check_build_id");
      return uVar4;
    }
    puVar6 = *(undefined8 **)(param_2 + 0x40);
    if ((puVar6 == (undefined8 *)0x0) || (*(int *)(puVar6 + 1) == 0)) {
      bVar2 = 1;
    }
    else {
      bVar2 = syna_tcm_testing_0001_check_device_id((ulong)&local_78 | 2,*puVar6);
    }
    *(byte *)(param_2 + 0x10) = bVar2 & 1;
    puVar5 = &DAT_001811bb;
    if ((bVar2 & 1) == 0) {
      puVar5 = &DAT_0017ebda;
    }
  }
  else {
    *(undefined1 *)(param_2 + 0x10) = 1;
    puVar5 = &DAT_001811bb;
  }
  uVar4 = _printk(&DAT_0017e97b,"syna_tcm_testing_build_id",puVar5);
  return uVar4;
}



/* 001592cc syna_tcm_buf_alloc */

undefined8 syna_tcm_buf_alloc(long *param_1,uint param_2)

{
  void *__s;
  long lVar1;
  undefined8 uVar2;
  ulong __n;
  
  __n = (ulong)*(uint *)(param_1 + 1);
  __s = (void *)*param_1;
  if (*(uint *)(param_1 + 1) < param_2) {
    __n = (ulong)param_2;
    if (__s != (void *)0x0) {
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
        uVar2 = _printk(&DAT_001828ba,"syna_pal_mem_free");
        return uVar2;
      }
      devm_kfree(lVar1,__s);
    }
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      uVar2 = _printk(&DAT_001828ba,"syna_pal_mem_alloc");
      return uVar2;
    }
    __s = (void *)devm_kmalloc(lVar1,__n,0xdc0);
    *param_1 = (long)__s;
    if (__s == (void *)0x0) {
      uVar2 = _printk(&DAT_00180576,"syna_tcm_buf_alloc",__n);
      return uVar2;
    }
    *(uint *)(param_1 + 1) = param_2;
  }
  memset(__s,0,__n);
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return 0;
}



/* 001593b4 syna_pal_mem_cpy */

void syna_pal_mem_cpy(void *param_1,uint param_2,void *param_3,uint param_4,uint param_5)

{
  if ((param_1 != (void *)0x0) && (param_3 != (void *)0x0)) {
    if ((param_2 < param_5) || (param_4 < param_5)) {
      _printk(&DAT_00181608,"syna_pal_mem_cpy",param_4,param_2);
      return;
    }
    memcpy(param_1,param_3,(ulong)param_5);
  }
  return;
}



/* 0015941c syna_tcm_testing_0001_check_device_id */

undefined8 syna_tcm_testing_0001_check_device_id(long param_1,char *param_2,uint param_3)

{
  char cVar1;
  int iVar2;
  undefined8 uVar3;
  int iVar4;
  
  if ((param_1 == 0) || (param_2 == (char *)0x0)) {
    return 0;
  }
  if (-1 < (int)(0x10 - param_3)) {
    cVar1 = *param_2;
    iVar4 = 0;
    do {
      if ((*(char *)(param_1 + iVar4) == cVar1) &&
         (iVar2 = strncmp((char *)(param_1 + iVar4),param_2,(ulong)param_3), iVar2 == 0)) {
        return 1;
      }
      iVar4 = iVar4 + 1;
    } while (iVar4 <= (int)(0x10 - param_3));
  }
  uVar3 = _printk(&DAT_00172854,"syna_tcm_testing_0001_check_device_id",param_1,param_2);
  return uVar3;
}



/* 001594d4 tp_module_info_read */

void tp_module_info_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  uint uVar3;
  int iVar4;
  undefined8 uVar5;
  code *pcVar6;
  ulong uVar7;
  char local_120 [200];
  long local_58;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_58 = *(long *)(lVar1 + 0x710);
  if (*param_4 != 0) {
    uVar5 = 0;
LAB_00159738:
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == local_58) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  local_120[0xb8] = '\0';
  local_120[0xb9] = '\0';
  local_120[0xba] = '\0';
  local_120[0xbb] = '\0';
  local_120[0xbc] = '\0';
  local_120[0xbd] = '\0';
  local_120[0xbe] = '\0';
  local_120[0xbf] = '\0';
  local_120[0xc0] = '\0';
  local_120[0xc1] = '\0';
  local_120[0xc2] = '\0';
  local_120[0xc3] = '\0';
  local_120[0xc4] = '\0';
  local_120[0xc5] = '\0';
  local_120[0xc6] = '\0';
  local_120[199] = '\0';
  local_120[0xa8] = '\0';
  local_120[0xa9] = '\0';
  local_120[0xaa] = '\0';
  local_120[0xab] = '\0';
  local_120[0xac] = '\0';
  local_120[0xad] = '\0';
  local_120[0xae] = '\0';
  local_120[0xaf] = '\0';
  local_120[0xb0] = '\0';
  local_120[0xb1] = '\0';
  local_120[0xb2] = '\0';
  local_120[0xb3] = '\0';
  local_120[0xb4] = '\0';
  local_120[0xb5] = '\0';
  local_120[0xb6] = '\0';
  local_120[0xb7] = '\0';
  pcVar6 = *(code **)(tpd_cdev + 0xe20);
  local_120[0x98] = '\0';
  local_120[0x99] = '\0';
  local_120[0x9a] = '\0';
  local_120[0x9b] = '\0';
  local_120[0x9c] = '\0';
  local_120[0x9d] = '\0';
  local_120[0x9e] = '\0';
  local_120[0x9f] = '\0';
  local_120[0xa0] = '\0';
  local_120[0xa1] = '\0';
  local_120[0xa2] = '\0';
  local_120[0xa3] = '\0';
  local_120[0xa4] = '\0';
  local_120[0xa5] = '\0';
  local_120[0xa6] = '\0';
  local_120[0xa7] = '\0';
  local_120[0x88] = '\0';
  local_120[0x89] = '\0';
  local_120[0x8a] = '\0';
  local_120[0x8b] = '\0';
  local_120[0x8c] = '\0';
  local_120[0x8d] = '\0';
  local_120[0x8e] = '\0';
  local_120[0x8f] = '\0';
  local_120[0x90] = '\0';
  local_120[0x91] = '\0';
  local_120[0x92] = '\0';
  local_120[0x93] = '\0';
  local_120[0x94] = '\0';
  local_120[0x95] = '\0';
  local_120[0x96] = '\0';
  local_120[0x97] = '\0';
  local_120[0x78] = '\0';
  local_120[0x79] = '\0';
  local_120[0x7a] = '\0';
  local_120[0x7b] = '\0';
  local_120[0x7c] = '\0';
  local_120[0x7d] = '\0';
  local_120[0x7e] = '\0';
  local_120[0x7f] = '\0';
  local_120[0x80] = '\0';
  local_120[0x81] = '\0';
  local_120[0x82] = '\0';
  local_120[0x83] = '\0';
  local_120[0x84] = '\0';
  local_120[0x85] = '\0';
  local_120[0x86] = '\0';
  local_120[0x87] = '\0';
  local_120[0x68] = '\0';
  local_120[0x69] = '\0';
  local_120[0x6a] = '\0';
  local_120[0x6b] = '\0';
  local_120[0x6c] = '\0';
  local_120[0x6d] = '\0';
  local_120[0x6e] = '\0';
  local_120[0x6f] = '\0';
  local_120[0x70] = '\0';
  local_120[0x71] = '\0';
  local_120[0x72] = '\0';
  local_120[0x73] = '\0';
  local_120[0x74] = '\0';
  local_120[0x75] = '\0';
  local_120[0x76] = '\0';
  local_120[0x77] = '\0';
  local_120[0x58] = '\0';
  local_120[0x59] = '\0';
  local_120[0x5a] = '\0';
  local_120[0x5b] = '\0';
  local_120[0x5c] = '\0';
  local_120[0x5d] = '\0';
  local_120[0x5e] = '\0';
  local_120[0x5f] = '\0';
  local_120[0x60] = '\0';
  local_120[0x61] = '\0';
  local_120[0x62] = '\0';
  local_120[99] = '\0';
  local_120[100] = '\0';
  local_120[0x65] = '\0';
  local_120[0x66] = '\0';
  local_120[0x67] = '\0';
  local_120[0x48] = '\0';
  local_120[0x49] = '\0';
  local_120[0x4a] = '\0';
  local_120[0x4b] = '\0';
  local_120[0x4c] = '\0';
  local_120[0x4d] = '\0';
  local_120[0x4e] = '\0';
  local_120[0x4f] = '\0';
  local_120[0x50] = '\0';
  local_120[0x51] = '\0';
  local_120[0x52] = '\0';
  local_120[0x53] = '\0';
  local_120[0x54] = '\0';
  local_120[0x55] = '\0';
  local_120[0x56] = '\0';
  local_120[0x57] = '\0';
  local_120[0x38] = '\0';
  local_120[0x39] = '\0';
  local_120[0x3a] = '\0';
  local_120[0x3b] = '\0';
  local_120[0x3c] = '\0';
  local_120[0x3d] = '\0';
  local_120[0x3e] = '\0';
  local_120[0x3f] = '\0';
  local_120[0x40] = '\0';
  local_120[0x41] = '\0';
  local_120[0x42] = '\0';
  local_120[0x43] = '\0';
  local_120[0x44] = '\0';
  local_120[0x45] = '\0';
  local_120[0x46] = '\0';
  local_120[0x47] = '\0';
  local_120[0x28] = '\0';
  local_120[0x29] = '\0';
  local_120[0x2a] = '\0';
  local_120[0x2b] = '\0';
  local_120[0x2c] = '\0';
  local_120[0x2d] = '\0';
  local_120[0x2e] = '\0';
  local_120[0x2f] = '\0';
  local_120[0x30] = '\0';
  local_120[0x31] = '\0';
  local_120[0x32] = '\0';
  local_120[0x33] = '\0';
  local_120[0x34] = '\0';
  local_120[0x35] = '\0';
  local_120[0x36] = '\0';
  local_120[0x37] = '\0';
  local_120[0x18] = '\0';
  local_120[0x19] = '\0';
  local_120[0x1a] = '\0';
  local_120[0x1b] = '\0';
  local_120[0x1c] = '\0';
  local_120[0x1d] = '\0';
  local_120[0x1e] = '\0';
  local_120[0x1f] = '\0';
  local_120[0x20] = '\0';
  local_120[0x21] = '\0';
  local_120[0x22] = '\0';
  local_120[0x23] = '\0';
  local_120[0x24] = '\0';
  local_120[0x25] = '\0';
  local_120[0x26] = '\0';
  local_120[0x27] = '\0';
  local_120[8] = '\0';
  local_120[9] = '\0';
  local_120[10] = '\0';
  local_120[0xb] = '\0';
  local_120[0xc] = '\0';
  local_120[0xd] = '\0';
  local_120[0xe] = '\0';
  local_120[0xf] = '\0';
  local_120[0x10] = '\0';
  local_120[0x11] = '\0';
  local_120[0x12] = '\0';
  local_120[0x13] = '\0';
  local_120[0x14] = '\0';
  local_120[0x15] = '\0';
  local_120[0x16] = '\0';
  local_120[0x17] = '\0';
  local_120[0] = '\0';
  local_120[1] = '\0';
  local_120[2] = '\0';
  local_120[3] = '\0';
  local_120[4] = '\0';
  local_120[5] = '\0';
  local_120[6] = '\0';
  local_120[7] = '\0';
  if (pcVar6 != (code *)0x0) {
    if (*(int *)(pcVar6 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x15957c);
      (*pcVar6)();
    }
    (*pcVar6)(tpd_cdev);
  }
  uVar3 = snprintf(local_120,200,"TP module: %s(0x%x)\n",lVar2 + 0xd40,
                   (ulong)*(uint *)(lVar2 + 0xcfc));
  if (uVar3 < 0xc9) {
    uVar7 = (ulong)uVar3;
    iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"IC type : %s\n",lVar2 + 0xd18);
    uVar7 = uVar7 + (long)iVar4;
    if (*(int *)(lVar2 + 0xd0c) != 0) {
      if (200 < uVar7) goto LAB_0015976c;
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"I2C address: 0x%x\n");
      uVar7 = uVar7 + (long)iVar4;
    }
    if (*(int *)(lVar2 + 0xd14) != 0) {
      if (200 < uVar7) goto LAB_0015976c;
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Spi num: %d\n");
      uVar7 = uVar7 + (long)iVar4;
    }
    if (uVar7 < 0xc9) {
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Firmware version : %d\n",
                       (ulong)*(uint *)(lVar2 + 0xd00));
      uVar7 = uVar7 + (long)iVar4;
      if (*(int *)(lVar2 + 0xd04) != 0) {
        if (200 < uVar7) goto LAB_0015976c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Config version:0x%x\n");
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(int *)(lVar2 + 0xd08) != 0) {
        if (200 < uVar7) goto LAB_0015976c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Display version:0x%x\n");
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(char *)(lVar2 + 0xd68) != '\0') {
        if (200 < uVar7) goto LAB_0015976c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Chip hard version:%s\n",lVar2 + 0xd68);
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(char *)(lVar2 + 0xd90) != '\0') {
        if (200 < uVar7) goto LAB_0015976c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"fw update status:%s\n",lVar2 + 0xd90);
        uVar7 = uVar7 + (long)iVar4;
      }
      uVar5 = simple_read_from_buffer(param_2,param_3,param_4,local_120,uVar7);
      goto LAB_00159738;
    }
  }
LAB_0015976c:
                    /* WARNING: Does not return */
  pcVar6 = (code *)SoftwareBreakpoint(0x5512,0x159770);
  (*pcVar6)();
}



/* 00159670 FUN_00159670 */

void FUN_00159670(long param_1)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long in_x9;
  long unaff_x22;
  long unaff_x23;
  ulong uVar4;
  long unaff_x29;
  
  iVar3 = snprintf((char *)(in_x9 + unaff_x23),param_1 - unaff_x23,"Config version:0x%x\n");
  uVar4 = unaff_x23 + iVar3;
  if (*(int *)(unaff_x22 + 0xd08) != 0) {
    if (200 < uVar4) goto LAB_0015976c;
    iVar3 = snprintf(&stack0x00000000 + uVar4,200 - uVar4,"Display version:0x%x\n");
    uVar4 = uVar4 + (long)iVar3;
  }
  if (*(char *)(unaff_x22 + 0xd68) != '\0') {
    if (200 < uVar4) goto LAB_0015976c;
    iVar3 = snprintf(&stack0x00000000 + uVar4,200 - uVar4,"Chip hard version:%s\n",unaff_x22 + 0xd68
                    );
    uVar4 = uVar4 + (long)iVar3;
  }
  if (*(char *)(unaff_x22 + 0xd90) != '\0') {
    if (200 < uVar4) {
LAB_0015976c:
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x159770);
      (*pcVar2)();
    }
    snprintf(&stack0x00000000 + uVar4,200 - uVar4,"fw update status:%s\n",unaff_x22 + 0xd90);
  }
  simple_read_from_buffer();
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == *(long *)(unaff_x29 + -8)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00159778 tp_wake_gesture_read */

void tp_wake_gesture_read(void)

{
  long lVar1;
  long lVar2;
  undefined4 *puVar3;
  long *in_x3;
  code *pcVar4;
  
  puVar3 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar4 = *(code **)(tpd_cdev + 0x38a);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x159814);
        (*pcVar4)();
      }
      (*pcVar4)(tpd_cdev);
    }
    _printk(&DAT_00181cf8,"tp_wake_gesture_read",*puVar3);
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015986c tp_smart_cover_read */

void tp_smart_cover_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xe38);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x159908);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_00181cf8,"tp_smart_cover_read",*(undefined4 *)(lVar2 + 4));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00159960 tp_smart_cover_write */

undefined8 tp_smart_cover_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_0017e501,"tp_smart_cover_write");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00159a34 tp_glove_read */

void tp_glove_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xe48);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x159ad0);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_00181cf8,"tp_glove_read",*(undefined4 *)(lVar2 + 8));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00159b28 tp_glove_write */

undefined8 tp_glove_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
    uVar3 = _printk(&DAT_0017e501,"tp_glove_write");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00159b80 FUN_00159b80 */

void FUN_00159b80(long param_1)

{
  long in_x9;
  
  if (param_1 == in_x9) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00159bfc tpfwupgrade_store */

undefined8 tpfwupgrade_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_3c);
  if (iVar2 == 0) {
    uVar3 = _printk(&DAT_0017e501,"tpfwupgrade_store",local_3c);
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00159e30 headset_state_show */

void headset_state_show(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xe78);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x159ed0);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_0016fb00,"headset_state_show",*(undefined1 *)(lVar2 + 0x17));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00159f28 headset_state_store */

undefined8 headset_state_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar2 = FUN_0013db48(&local_48,param_2,param_3);
  if ((iVar2 == 0) && (iVar2 = kstrtouint(&local_48,0,&local_4c), iVar2 == 0)) {
    local_4c = (uint)(local_4c != 0);
    uVar3 = _printk(&DAT_0016701a,"headset_state_store");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a038 get_rotation_limit_level */

void get_rotation_limit_level(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xe88);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15a0d4);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_0016fb00,"get_rotation_limit_level",*(undefined4 *)(lVar2 + 0xc));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a12c set_rotation_limit_level */

undefined8 set_rotation_limit_level(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    uVar3 = _printk(&DAT_0016cc56,"set_rotation_limit_level",local_2c);
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a1f4 display_rotation_show */

void display_rotation_show(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    _printk(&DAT_0016fb00,"display_rotation_show",*(undefined4 *)(tpd_cdev + 0x10));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a2cc set_display_rotation */

undefined8 set_display_rotation(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  undefined4 local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = FUN_0015a320(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    *(undefined4 *)(lVar2 + 0x10) = local_4c;
    uVar4 = _printk(&DAT_00167038,"set_display_rotation");
    return uVar4;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a320 FUN_0015a320 */

undefined8 FUN_0015a320(void)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  long unaff_x20;
  long unaff_x29;
  undefined8 in_stack_00000000;
  
  __check_object_size();
  iVar2 = FUN_0015a320(&stack0x00000008);
  if ((iVar2 == 0) &&
     (iVar2 = kstrtouint(&stack0x00000008,0,(long)&stack0x00000000 + 4), iVar2 == 0)) {
    *(undefined4 *)(unaff_x20 + 0x10) = in_stack_00000000._4_4_;
    uVar3 = _printk(&DAT_00167038,"set_display_rotation");
    return uVar3;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == *(long *)(unaff_x29 + -8)) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a3d4 tp_single_tap_read */

void tp_single_tap_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xeb8);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15a470);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_001694f2,"tp_single_tap_read",*(undefined4 *)(lVar2 + 0x44c));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a4c8 tp_single_tap_write */

undefined8 tp_single_tap_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  bool bVar2;
  int iVar3;
  undefined8 uVar4;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    bVar2 = local_2c != 0;
    local_2c = 0;
    if (bVar2) {
      local_2c = 5;
    }
    uVar4 = _printk(&DAT_0016cc56,"tp_single_tap_write");
    return uVar4;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a5a0 tp_single_aod_read */

void tp_single_aod_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xec8);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15a63c);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_001694f2,"tp_single_aod_read",*(undefined4 *)(lVar2 + 0x450));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a694 tp_single_aod_write */

undefined8 tp_single_aod_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  bool bVar2;
  int iVar3;
  undefined8 uVar4;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    bVar2 = local_2c != 0;
    local_2c = 0;
    if (bVar2) {
      local_2c = 5;
    }
    uVar4 = _printk(&DAT_0016cc56,"tp_single_aod_write");
    return uVar4;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a76c tp_single_game_read */

void tp_single_game_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    pcVar3 = *(code **)(tpd_cdev + 0xed8);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15a808);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
    _printk(&DAT_001694f2,"tp_single_game_read",*(undefined4 *)(lVar2 + 0x454));
    return;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a860 tp_single_game_write */

undefined8 tp_single_game_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  bool bVar2;
  int iVar3;
  undefined8 uVar4;
  int local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    bVar2 = local_2c != 0;
    local_2c = 0;
    if (bVar2) {
      local_2c = 5;
    }
    uVar4 = _printk(&DAT_0016cc56,"tp_single_game_write");
    return uVar4;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a938 get_tp_noise_show */

void get_tp_noise_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  undefined8 uVar3;
  code *pcVar4;
  char local_68 [32];
  long local_48;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar3 = 0;
  local_48 = *(long *)(lVar1 + 0x710);
  local_68[0x18] = '\0';
  local_68[0x19] = '\0';
  local_68[0x1a] = '\0';
  local_68[0x1b] = '\0';
  local_68[0x1c] = '\0';
  local_68[0x1d] = '\0';
  local_68[8] = '\0';
  local_68[9] = '\0';
  local_68[10] = '\0';
  local_68[0xb] = '\0';
  local_68[0xc] = '\0';
  local_68[0xd] = '\0';
  local_68[0xe] = '\0';
  local_68[0xf] = '\0';
  local_68[0x10] = '\0';
  local_68[0x11] = '\0';
  local_68[0x12] = '\0';
  local_68[0x13] = '\0';
  local_68[0x14] = '\0';
  local_68[0x15] = '\0';
  local_68[0x16] = '\0';
  local_68[0x17] = '\0';
  local_68[0] = '\0';
  local_68[1] = '\0';
  local_68[2] = '\0';
  local_68[3] = '\0';
  local_68[4] = '\0';
  local_68[5] = '\0';
  local_68[6] = '\0';
  local_68[7] = '\0';
  if (*param_4 == 0) {
    mutex_lock(tpd_cdev + 0xc60);
    pcVar4 = *(code **)(lVar2 + 0xee8);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x15a9b8);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2);
    }
    if (*(undefined8 **)(lVar2 + 0xc58) != (undefined8 *)0x0) {
      snprintf(local_68,0x1e,"%zu\n",**(undefined8 **)(lVar2 + 0xc58));
      _printk(&DAT_0016a232,**(undefined8 **)(lVar2 + 0xc58));
      return;
    }
    mutex_unlock(lVar2 + 0xc60);
    uVar3 = simple_read_from_buffer(param_2,param_3,param_4,local_68,0);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 0015aa54 get_tp_noise_store */

undefined8 get_tp_noise_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xc60);
  lVar2 = *(long *)(lVar1 + 0xc58);
  if (lVar2 != 0) {
    if (*(long *)(lVar2 + 8) != 0) {
      vfree(*(long *)(lVar2 + 8));
      *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
      lVar2 = *(long *)(lVar1 + 0xc58);
    }
    kfree(lVar2);
    *(undefined8 *)(lVar1 + 0xc58) = 0;
  }
  *(undefined4 *)(lVar1 + 0x448) = 0;
  mutex_unlock(lVar1 + 0xc60);
  return param_3;
}



/* 0015aac8 tpd_get_wakegesture */

undefined8 tpd_get_wakegesture(undefined4 *param_1)

{
  *param_1 = *(undefined4 *)(*(long *)(param_1 + 0x36e) + 0x5c4);
  return 0;
}



/* 0015aae4 tpd_get_one_key */

undefined8 tpd_get_one_key(long param_1)

{
  *(undefined4 *)(param_1 + 0x458) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5d4);
  return 0;
}



/* 0015ab00 tpd_get_tp_report_rate */

undefined8 tpd_get_tp_report_rate(long param_1)

{
  *(undefined4 *)(param_1 + 0x464) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5f8);
  return 0;
}



/* 0015ab1c tpd_get_play_game */

undefined8 tpd_get_play_game(long param_1)

{
  *(undefined4 *)(param_1 + 0x45c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5dc);
  return 0;
}



/* 0015ab38 tpd_get_frame_data */

undefined8 tpd_get_frame_data(long param_1)

{
  *(undefined4 *)(param_1 + 0x460) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e0);
  return 0;
}



/* 0015ab54 tpd_get_palm_mode */

undefined8 tpd_get_palm_mode(long param_1)

{
  *(undefined4 *)(param_1 + 0x478) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e4);
  return 0;
}



/* 0015ab70 tpd_get_fake_sleep */

undefined8 tpd_get_fake_sleep(long param_1)

{
  *(undefined4 *)(param_1 + 0x480) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e8);
  return 0;
}



/* 0015ab8c tpd_get_screen_off_awake */

undefined8 tpd_get_screen_off_awake(long param_1)

{
  *(undefined4 *)(param_1 + 0x484) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5f0);
  return 0;
}



/* 0015aba8 syna_request_managed_device */

undefined8 syna_request_managed_device(void)

{
  if (p_device != 0) {
    return *(undefined8 *)(p_device + 0x70);
  }
  return 0;
}



/* 0015abc8 syna_testing_remove_dir */

void syna_testing_remove_dir(long param_1)

{
  if (*(long *)(param_1 + 0x3a8) != 0) {
    sysfs_remove_group(*(long *)(param_1 + 0x3a8),attr_testing_group);
    kobject_put(*(undefined8 *)(param_1 + 0x3a8));
  }
  return;
}



/* 0015ac0c syna_dev_module_exit */

void syna_dev_module_exit(void)

{
  platform_driver_unregister(syna_dev_driver);
  syna_hw_interface_exit();
  return;
}



/* 0015ac38 syna_hw_interface_exit */

void syna_hw_interface_exit(void)

{
  driver_unregister(0x12f820);
  platform_device_unregister(syna_spi_device);
  return;
}



/* 0015ac6c syna_spi_release */

void syna_spi_release(void)

{
  _printk(&DAT_001696a6,"syna_spi_release");
  return;
}



/* 0015ac9c syna_dev_module_init */

void syna_dev_module_init(void)

{
  int iVar1;
  
  iVar1 = syna_hw_interface_init();
  if (-1 < iVar1) {
    msleep(200);
    __platform_driver_register(syna_dev_driver,&__this_module);
  }
  return;
}



/* 0015acdc syna_open */

void syna_open(undefined8 param_1,long param_2)

{
  *(long *)(param_2 + 0x20) = *(long *)(param_2 + 0x20) + -0x4a0;
  _printk(&DAT_00171abe,"syna_open");
  return;
}



/* 0015ad1c tpd_set_game_partition */

void tpd_set_game_partition(void)

{
  _printk(&DAT_00170282,"tpd_set_game_partition","tpd_set_game_partition");
  return;
}



/* 0015ad54 tpd_set_palm_mode */

void tpd_set_palm_mode(long param_1,undefined4 param_2)

{
  *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e4) = param_2;
  _printk(&DAT_0016d2d2,"tpd_set_palm_mode",param_2);
  return;
}



/* 0015ad94 tpd_set_fake_sleep */

undefined8 tpd_set_fake_sleep(long param_1,undefined4 param_2)

{
  undefined8 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xdb8);
  *(undefined4 *)(lVar2 + 0x5ec) = param_2;
  if (*(int *)(lVar2 + 0x57c) == 1) {
    *(undefined4 *)(lVar2 + 0x5e8) = param_2;
    is_fake_sleep_mode = param_2;
    return 0;
  }
  uVar1 = _printk(&DAT_0017105e,"tpd_set_fake_sleep");
  return uVar1;
}



/* 0015adf0 tpd_set_screen_off_awake */

undefined8 tpd_set_screen_off_awake(long param_1,undefined4 param_2)

{
  undefined8 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xdb8);
  *(undefined4 *)(lVar2 + 0x5f4) = param_2;
  if (*(int *)(lVar2 + 0x57c) == 1) {
    *(undefined4 *)(lVar2 + 0x5f0) = param_2;
    is_screen_off_awake_mode = param_2;
    return 0;
  }
  uVar1 = _printk(&DAT_0017105e,"tpd_set_screen_off_awake");
  return uVar1;
}



/* 0015ae30 FUN_0015ae30 */

void FUN_0015ae30(undefined8 param_1,long param_2)

{
  _printk(param_1,param_2 + 0xa3a);
  return;
}



/* 0015ae4c syna_tcm_clear_command_processing */

void syna_tcm_clear_command_processing(long param_1)

{
  code *pcVar1;
  
  if ((param_1 != 0) && (pcVar1 = *(code **)(param_1 + 0x3a0), pcVar1 != (code *)0x0)) {
    if (*(int *)(pcVar1 + -4) != -0x6481d8a0) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x15ae7c);
      (*pcVar1)();
    }
    (*pcVar1)();
  }
  return;
}



/* 0015ae90 syna_tcm_set_post_reset_callback */

undefined8 syna_tcm_set_post_reset_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uVar1;
  
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x23e0) = param_2;
    *(undefined8 *)(param_1 + 0x23d8) = param_3;
    return 0;
  }
  uVar1 = _printk(&DAT_00168a84,"syna_tcm_set_post_reset_callback");
  return uVar1;
}



/* 0015aedc syna_cdev_llseek */

undefined8 syna_cdev_llseek(void)

{
  return 0xffffffffffffffea;
}



/* 0015aee8 tpd_reset_fw_data_pos_and_size */

void tpd_reset_fw_data_pos_and_size(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  **(ulong **)(tpd_cdev + 0xc58) = (ulong)*(uint *)(tpd_cdev + 0x448);
  *(undefined4 *)(lVar1 + 0x448) = 0;
  return;
}



/* 0015af08 ufp_report_lcd_state_work */

void ufp_report_lcd_state_work(void)

{
  ufp_report_lcd_state();
  return;
}



/* 0015af28 syna_dev_shutdown */

void syna_dev_shutdown(void)

{
  FUN_0015ae30();
  return;
}



/* 0015af48 tpd_goodix_ts_resume */

void tpd_goodix_ts_resume(long param_1)

{
  FUN_00159670(*(long *)(param_1 + 8) + 0x10);
  return;
}



/* 0015af70 tpd_goodix_ts_suspend */

void tpd_goodix_ts_suspend(long param_1)

{
  FUN_00159b80(*(long *)(param_1 + 8) + 0x10);
  return;
}



/* 0015af98 cancel_report_lcd_state_delayed_work */

void cancel_report_lcd_state_delayed_work(void)

{
  cancel_delayed_work_sync(tpd_cdev + 0x9e0);
  return;
}



/* 0015afc4 ufp_notifier_cb */

undefined8 ufp_notifier_cb(int param_1)

{
  change_tp_state(param_1 != 0);
  return 0;
}



/* 0015aff0 zlog_register_work */

void zlog_register_work(void)

{
  if ((*(byte *)(tpd_cdev + 0xbf0) & 1) == 0) {
    tpd_zlog_register();
  }
  return;
}



/* 0015b020 syna_release */

void syna_release(void)

{
  _printk(&DAT_0016fd6a,"syna_release");
  return;
}



/* 0015b054 get_lcd_panel_name */

char * get_lcd_panel_name(void)

{
  return "Unknown_lcd";
}



/* 0015b064 syna_tcm_get_testing_0100 */

undefined1 * syna_tcm_get_testing_0100(void)

{
  return test_0100;
}



/* 0015b074 ufp_single_tap_work */

void ufp_single_tap_work(void)

{
  DAT_0015faa0 = 0;
  return;
}



/* 0015b084 ufp_get_lcdstate */

undefined4 ufp_get_lcdstate(void)

{
  return current_lcd_state;
}



/* 0015b094 ztp_probe_work */

void ztp_probe_work(void)

{
  _printk(&DAT_00168eb0);
  return;
}



/* 0015b0c0 zte_touch_remove */

void zte_touch_remove(void)

{
  _printk(&DAT_0016df22,"zte_touch_remove",0xb57);
  return;
}



/* 0015b0f8 tpd_probe_work_deinit */

void tpd_probe_work_deinit(void)

{
  _printk(&DAT_00167518,"tpd_probe_work_deinit");
  return;
}



/* 0015b140 ufp_report_lcd_state_delayed_work */

void ufp_report_lcd_state_delayed_work(void)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  
  lVar1 = tpd_cdev;
  uVar3 = *(undefined8 *)(tpd_cdev + 0x4b0);
  uVar2 = __msecs_to_jiffies();
  mod_delayed_work_on(0x20,uVar3,lVar1 + 0x9e0,uVar2);
  return;
}



/* 0015b188 syna_cdev_devnode */

undefined8 syna_cdev_devnode(long *param_1,undefined2 *param_2)

{
  undefined8 uVar1;
  long lVar2;
  
  if (param_2 != (undefined2 *)0x0) {
    *param_2 = 0x600;
    lVar2 = param_1[0xe];
    if (lVar2 == 0) {
      lVar2 = *param_1;
    }
    uVar1 = kasprintf(0xcc0,&DAT_0016bb2c,lVar2);
    return uVar1;
  }
  return 0;
}



/* 0015b1d4 syna_pm_suspend */

void syna_pm_suspend(void)

{
  _printk(&DAT_001683e6,"syna_pm_suspend");
  return;
}



/* 0015b220 syna_pm_resume */

void syna_pm_resume(void)

{
  _printk(&DAT_0016c18c,"syna_pm_resume");
  return;
}



/* 0015b26c zlog_register_work_deinit */

void zlog_register_work_deinit(void)

{
  _printk(&DAT_00167518,"zlog_register_work_deinit");
  return;
}



/* 0015b2c0 tp_free_tp_firmware_data */

void tp_free_tp_firmware_data(void)

{
  long lVar1;
  long lVar2;
  
  lVar1 = tpd_cdev;
  lVar2 = *(long *)(tpd_cdev + 0xc58);
  if (lVar2 != 0) {
    if (*(long *)(lVar2 + 8) != 0) {
      vfree(*(long *)(lVar2 + 8));
      *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
      **(undefined8 **)(lVar1 + 0xc58) = 0;
      lVar2 = *(long *)(lVar1 + 0xc58);
    }
    kfree(lVar2);
    *(undefined8 *)(lVar1 + 0xc58) = 0;
  }
  *(undefined4 *)(lVar1 + 0x448) = 0;
  return;
}



/* 0015b324 zte_touch_pdev_unregister */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_touch_pdev_unregister(void)

{
  long lVar1;
  code *pcVar2;
  
  lVar1 = tpd_cdev;
  if (*(long *)(tpd_cdev + 0xdd0) == 0) {
    if (*(int *)(_DAT_00000338 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x15b368);
      (*pcVar2)();
    }
    (*_DAT_00000338)(0x10);
    platform_device_unregister(*(undefined8 *)(lVar1 + 0xdd0));
  }
  return;
}



/* 0015b388 tp_esd_check */

uint tp_esd_check(void)

{
  uint uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(tpd_cdev + 0xe98);
  if (pcVar2 == (code *)0x0) {
    return 0;
  }
  if (*(int *)(pcVar2 + -4) != -0x7f7ec5d7) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x15b3bc);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1 & 1;
}



/* 0015b3dc set_gpio_mode */

undefined8 set_gpio_mode(undefined4 param_1)

{
  undefined8 uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(tpd_cdev + 0xf58);
  if (pcVar2 == (code *)0x0) {
    return 0xfffffffb;
  }
  if (*(int *)(pcVar2 + -4) != -0x1e29c23f) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8229,0x15b418);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)(tpd_cdev,param_1);
  return uVar1;
}



/* 0015b434 tpd_reset_gpio_output */

void tpd_reset_gpio_output(uint param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(tpd_cdev + 0xeb0);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x5d031687) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x15b46c);
      (*pcVar1)();
    }
    (*pcVar1)(param_1 & 1);
  }
  return;
}



/* 0015b480 tpd_resume_work */

void tpd_resume_work(void)

{
  long lVar1;
  code *pcVar2;
  
  lVar1 = tpd_cdev;
  pcVar2 = *(code **)(tpd_cdev + 0xe08);
  if (pcVar2 != (code *)0x0) {
    if (*(int *)(pcVar2 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x15b4bc);
      (*pcVar2)();
    }
    (*pcVar2)(*(undefined8 *)(tpd_cdev + 0xdd8));
    *(undefined4 *)(lVar1 + 0x4a8) = 0;
  }
  return;
}



/* 0015b4d8 tpd_suspend_work */

void tpd_suspend_work(void)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(tpd_cdev + 0xe10);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x15b510);
      (*pcVar1)();
    }
    (*pcVar1)(*(undefined8 *)(tpd_cdev + 0xdd8));
  }
  return;
}



/* 0015b524 tpd_resume_work_deinit */

void tpd_resume_work_deinit(void)

{
  _printk(&DAT_00167518,"tpd_resume_work_deinit");
  return;
}



/* 0015b57c ufp_mac_exit */

void ufp_mac_exit(void)

{
  cancel_delayed_work_sync(&DAT_0015faa8);
  __flush_workqueue(DAT_0015fb10);
  destroy_workqueue(DAT_0015fb10);
  wakeup_source_remove(tp_wakeup);
  ufp_tp_ops = 0;
  return;
}



/* 0015b5cc syna_pal_mem_cpy_0 */

void syna_pal_mem_cpy_0(undefined8 *param_1,uint param_2,undefined8 *param_3)

{
  undefined8 uVar1;
  
  if ((param_1 != (undefined8 *)0x0) && (param_3 != (undefined8 *)0x0)) {
    if (param_2 < 0x10) {
      _printk(&DAT_0016edc2,"syna_pal_mem_cpy",0x10,param_2,0x10);
      return;
    }
    uVar1 = param_3[1];
    *param_1 = *param_3;
    param_1[1] = uVar1;
  }
  return;
}



/* 0015b620 syna_tcm_buf_lock */

void syna_tcm_buf_lock(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\0') {
    mutex_lock(param_1 + 0x10);
    *(char *)(param_1 + 0x40) = *(char *)(param_1 + 0x40) + '\x01';
    return;
  }
  _printk(&DAT_0016da50,"syna_tcm_buf_lock");
  return;
}



/* 0015b67c syna_tcm_set_data_duplicator */

undefined8
syna_tcm_set_data_duplicator(long param_1,byte param_2,undefined8 param_3,undefined8 param_4)

{
  undefined8 uVar1;
  
  if (param_1 != 0) {
    param_1 = param_1 + (ulong)param_2 * 0x10;
    *(undefined8 *)(param_1 + 0x13e0) = param_3;
    *(undefined8 *)(param_1 + 0x13d8) = param_4;
    return 0;
  }
  uVar1 = _printk(&DAT_00168a84,"syna_tcm_set_data_duplicator");
  return uVar1;
}



/* 0015b6cc syna_tcm_clear_data_duplicator */

undefined8 syna_tcm_clear_data_duplicator(long param_1)

{
  undefined8 uVar1;
  
  if (param_1 != 0) {
    memset((void *)(param_1 + 0x13d8),0,0x1000);
    return 0;
  }
  uVar1 = _printk(&DAT_00168a84,"syna_tcm_clear_data_duplicator");
  return uVar1;
}



/* 0015b71c syna_pal_mem_free_0 */

void syna_pal_mem_free_0(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 != 0) {
    devm_kfree(lVar1,param_1);
    return;
  }
  _printk(&DAT_00171996,"syna_pal_mem_free");
  return;
}



/* 0015b76c tpd_enable_wakegesture */

undefined8 tpd_enable_wakegesture(long param_1,undefined4 param_2)

{
  undefined8 uVar1;
  
  if (*(int *)(*(long *)(param_1 + 0xdb8) + 0x57c) == 1) {
    *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5c4) = param_2;
    return 0;
  }
  uVar1 = _printk(&DAT_0017105e,"tpd_enable_wakegesture");
  return uVar1;
}



/* 0015b7bc tpd_get_singleaodgesture */

void tpd_get_singleaodgesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x450) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b4);
  _printk(&DAT_00167b06,"tpd_get_singleaodgesture");
  return;
}



/* 0015b820 tpd_get_singlefpgesture */

void tpd_get_singlefpgesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x44c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b8);
  _printk(&DAT_00170086,"tpd_get_singlefpgesture");
  return;
}



/* 0015b884 tpd_set_one_key */

void tpd_set_one_key(void)

{
  _printk(&DAT_00169dbe,"tpd_set_one_key");
  return;
}



/* 0015b8e8 syna_ts_panel_notifier_callback */

void syna_ts_panel_notifier_callback(undefined8 param_1,int *param_2)

{
  int iVar1;
  undefined *puVar2;
  
  if (param_2 == (int *)0x0) {
    puVar2 = &DAT_001671a4;
LAB_0015b9c4:
    _printk(puVar2);
    return;
  }
  iVar1 = *param_2;
  if (iVar1 < 3) {
    if (iVar1 == 1) {
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = 0;
        ufp_notifier_cb(0);
        _printk(&DAT_0016b074);
        return;
      }
      if ((char)param_2[3] != '\x01') {
        puVar2 = &DAT_00168390;
        goto LAB_0015b9c4;
      }
      change_tp_state(3);
    }
    else {
      if (iVar1 != 2) {
LAB_0015b964:
        _printk(&DAT_00172036,iVar1);
        return;
      }
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = '\0';
        ufp_notifier_cb(0);
      }
      if ((char)param_2[3] == '\x01') {
        puVar2 = &DAT_00169d26;
        goto LAB_0015b9c4;
      }
      change_tp_state(2);
    }
  }
  else if (iVar1 == 3) {
    panel_enter_low_power = '\x01';
    ufp_notifier_cb(1);
    ufp_report_lcd_state();
  }
  else if (iVar1 != 4) goto LAB_0015b964;
  return;
}



/* 0015ba18 syna_tcm_remove_device */

void syna_tcm_remove_device(undefined8 *param_1)

{
  long lVar1;
  undefined1 *puVar2;
  long lVar3;
  
  if (param_1 == (undefined8 *)0x0) {
    puVar2 = &DAT_00168a84;
  }
  else {
    if (*(char *)(param_1 + 0x62) != '\0') {
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      return;
    }
    lVar3 = param_1[0x5a];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x5b] = 0;
    *(undefined1 *)(param_1 + 0x62) = 0;
    if (*(char *)(param_1 + 0x59) != '\0') {
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      return;
    }
    lVar3 = param_1[0x51];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x52] = 0;
    *(undefined1 *)(param_1 + 0x59) = 0;
    if (*(char *)(param_1 + 0x50) != '\0') {
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      return;
    }
    lVar3 = param_1[0x48];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x49] = 0;
    *(undefined1 *)(param_1 + 0x50) = 0;
    if (*(char *)(param_1 + 0x3a) != '\0') {
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      return;
    }
    lVar3 = param_1[0x32];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x33] = 0;
    *(undefined1 *)(param_1 + 0x3a) = 0;
    if (*(char *)(param_1 + 0x28) != '\0') {
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      return;
    }
    lVar3 = param_1[0x20];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x21] = 0;
    *(undefined1 *)(param_1 + 0x28) = 0;
    if (*(char *)(param_1 + 0x31) != '\0') {
      _printk(&DAT_00169d8a,"syna_tcm_buf_release");
      return;
    }
    lVar3 = param_1[0x29];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x2a] = 0;
    *(undefined1 *)(param_1 + 0x31) = 0;
    *param_1 = 0;
    param_1[9] = 0;
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_00171996,"syna_pal_mem_free");
      return;
    }
    devm_kfree(lVar1,param_1);
    puVar2 = &DAT_001706c2;
  }
  _printk(puVar2,"syna_tcm_remove_device");
  return;
}



/* 0015bc8c syna_testing_pt05_show */

void syna_testing_pt05_show(long param_1,undefined8 param_2,long param_3)

{
  undefined *puVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined4 *puVar5;
  ulong uVar6;
  long lVar7;
  long *plVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 uStack_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_b8 = 0;
  local_c8 = 0;
  plVar8 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  local_a0 = 0;
  if ((*(byte *)((long)plVar8 + 0x582) & 1) == 0) {
    iVar4 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0500();
    if (puVar5 != (undefined4 *)0x0) {
      puVar5[9] = *(undefined4 *)(*plVar8 + 0x20);
      local_b0 = 0;
      uStack_a8 = 0;
      puVar5[8] = *(undefined4 *)(*plVar8 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_00164d7a);
      local_c0 = pt05_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt05_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar5 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar5 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar5 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15bd90);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar5 + 6))(*plVar8,puVar5,0);
      if (iVar4 < 0) {
        _printk(&DAT_00172f30,"syna_testing_pt05_show",*(undefined8 *)(puVar5 + 2));
        return;
      }
      puVar1 = &DAT_0016f3e4;
      if (*(char *)(puVar5 + 4) == '\0') {
        puVar1 = &DAT_0016e2b4;
      }
      uVar6 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),
                        *puVar5,puVar1);
      lVar2 = local_b0;
      uVar6 = uVar6 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar5[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar5[9] != 0) {
            uVar10 = 0;
            do {
              iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_00170d2c,
                                *(undefined2 *)
                                 (lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*plVar8 + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
            } while (uVar10 < (uint)puVar5[9]);
          }
          iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_0016e5bc);
          uVar9 = uVar9 + 1;
          uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
        } while (uVar9 < (uint)puVar5[8]);
      }
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
        _printk(&DAT_00169d8a,"syna_tcm_buf_release");
        return;
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
        _printk(&DAT_00171996,"syna_pal_mem_free");
        return;
      }
      if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_0015bed0;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0x500);
  }
  uVar6 = (ulong)iVar4;
LAB_0015bed0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar6);
  }
  return;
}



/* 0015bf64 syna_testing_pt05_zte */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt05_zte(long *param_1)

{
  undefined *puVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  long lVar5;
  undefined4 *puVar6;
  ulong uVar7;
  long lVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar5 = sp_el0;
  local_68 = *(long *)(lVar5 + 0x710);
  local_b8 = 0;
  local_c8 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar5 = __kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
  if (lVar5 == 0) {
    uVar7 = _printk(&DAT_00171b9e,"syna_testing_pt05_zte");
    return uVar7;
  }
  if ((*(byte *)((long)param_1 + 0x582) & 1) == 0) {
    uVar7 = scnprintf(lVar5,0x1000,"Device is NOT connected\n");
    uVar7 = uVar7 & 0xffffffff;
  }
  else {
    puVar6 = (undefined4 *)syna_tcm_get_testing_0500();
    if (puVar6 == (undefined4 *)0x0) {
      uVar7 = scnprintf(lVar5,0x1000,"Invalid testing item id:%d\n",0x500);
      uVar7 = uVar7 & 0xffffffff;
    }
    else {
      local_b0 = 0;
      local_a8 = 0;
      puVar6[9] = *(undefined4 *)(*param_1 + 0x20);
      puVar6[8] = *(undefined4 *)(*param_1 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_001656d8);
      local_c0 = pt05_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt05_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar6 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar6 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar6 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15c07c);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*param_1,puVar6,0);
      if (iVar4 < 0) {
        uVar7 = _printk(&DAT_00172f30,"syna_testing_pt05_zte",*(undefined8 *)(puVar6 + 2));
        return uVar7;
      }
      puVar1 = &DAT_0016f3e4;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar1 = &DAT_0016e2b4;
      }
      uVar7 = scnprintf(lVar5,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar6 + 2),*puVar6
                        ,puVar1);
      lVar2 = local_b0;
      uVar7 = uVar7 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar6[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar6[9] != 0) {
            uVar10 = 0;
            do {
              iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_00170d2c,
                                *(undefined2 *)
                                 (lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*param_1 + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
            } while (uVar10 < (uint)puVar6[9]);
          }
          iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_0016e5bc);
          uVar9 = uVar9 + 1;
          uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
        } while (uVar9 < (uint)puVar6[8]);
      }
      tpd_copy_to_tp_firmware_data(lVar5);
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
        uVar7 = _printk(&DAT_00169d8a,"syna_tcm_buf_release");
        return uVar7;
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        uVar7 = _printk(&DAT_00171996,"syna_pal_mem_free");
        return uVar7;
      }
      if (lVar2 != 0) {
        devm_kfree(lVar8,lVar2);
      }
      local_a8 = 0;
      local_70 = local_70 & 0xffffffffffffff00;
      kfree(lVar5);
    }
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar7;
}



/* 0015c2bc syna_testing_pt0a_show */

void syna_testing_pt0a_show(long param_1,undefined8 param_2,long param_3)

{
  undefined *puVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined4 *puVar5;
  ulong uVar6;
  long lVar7;
  long *plVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 uStack_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_b8 = 0;
  local_c8 = 0;
  plVar8 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  local_a0 = 0;
  if ((*(byte *)((long)plVar8 + 0x582) & 1) == 0) {
    iVar4 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0A00();
    if (puVar5 != (undefined4 *)0x0) {
      puVar5[9] = *(undefined4 *)(*plVar8 + 0x20);
      local_b0 = 0;
      uStack_a8 = 0;
      puVar5[8] = *(undefined4 *)(*plVar8 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_00166036);
      local_c0 = pt0a_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt0a_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar5 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar5 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar5 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15c3c0);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar5 + 6))(*plVar8,puVar5,0);
      if (iVar4 < 0) {
        _printk(&DAT_00172f30,"syna_testing_pt0a_show",*(undefined8 *)(puVar5 + 2));
        return;
      }
      puVar1 = &DAT_0016f3e4;
      if (*(char *)(puVar5 + 4) == '\0') {
        puVar1 = &DAT_0016e2b4;
      }
      uVar6 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),
                        *puVar5,puVar1);
      lVar2 = local_b0;
      uVar6 = uVar6 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar5[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar5[9] != 0) {
            uVar10 = 0;
            do {
              iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_00170d2c,
                                (long)*(short *)(lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*plVar8 +
                                                                                          0x20)) * 2
                                                ));
              uVar10 = uVar10 + 1;
              uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
            } while (uVar10 < (uint)puVar5[9]);
          }
          iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_0016e5bc);
          uVar9 = uVar9 + 1;
          uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
        } while (uVar9 < (uint)puVar5[8]);
      }
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
        _printk(&DAT_00169d8a,"syna_tcm_buf_release");
        return;
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
        _printk(&DAT_00171996,"syna_pal_mem_free");
        return;
      }
      if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_0015c500;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0xa00);
  }
  uVar6 = (ulong)iVar4;
LAB_0015c500:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar6);
  }
  return;
}



/* 0015c594 syna_testing_pt0a_zte */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt0a_zte(long *param_1)

{
  undefined *puVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  long lVar5;
  undefined4 *puVar6;
  ulong uVar7;
  long lVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar5 = sp_el0;
  local_68 = *(long *)(lVar5 + 0x710);
  local_b8 = 0;
  local_c8 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar5 = __kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
  if (lVar5 == 0) {
    uVar7 = _printk(&DAT_00171b9e,"syna_testing_pt0a_zte");
    return uVar7;
  }
  if ((*(byte *)((long)param_1 + 0x582) & 1) == 0) {
    uVar7 = scnprintf(lVar5,0x1000,"Device is NOT connected\n");
    uVar7 = uVar7 & 0xffffffff;
  }
  else {
    puVar6 = (undefined4 *)syna_tcm_get_testing_0A00();
    if (puVar6 == (undefined4 *)0x0) {
      uVar7 = scnprintf(lVar5,0x1000,"Invalid testing item id:%d\n",0xa00);
      uVar7 = uVar7 & 0xffffffff;
    }
    else {
      local_b0 = 0;
      local_a8 = 0;
      puVar6[9] = *(undefined4 *)(*param_1 + 0x20);
      puVar6[8] = *(undefined4 *)(*param_1 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_00166994);
      local_c0 = pt0a_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt0a_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar6 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar6 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar6 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15c6ac);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*param_1,puVar6,0);
      if (iVar4 < 0) {
        uVar7 = _printk(&DAT_00172f30,"syna_testing_pt0a_zte",*(undefined8 *)(puVar6 + 2));
        return uVar7;
      }
      puVar1 = &DAT_0016f3e4;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar1 = &DAT_0016e2b4;
      }
      uVar7 = scnprintf(lVar5,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar6 + 2),*puVar6
                        ,puVar1);
      lVar2 = local_b0;
      uVar7 = uVar7 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar6[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar6[9] != 0) {
            uVar10 = 0;
            do {
              iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_00170d2c,
                                (long)*(short *)(lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*param_1 
                                                  + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
            } while (uVar10 < (uint)puVar6[9]);
          }
          iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_0016e5bc);
          uVar9 = uVar9 + 1;
          uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
        } while (uVar9 < (uint)puVar6[8]);
      }
      tpd_copy_to_tp_firmware_data(lVar5);
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
        uVar7 = _printk(&DAT_00169d8a,"syna_tcm_buf_release");
        return uVar7;
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        uVar7 = _printk(&DAT_00171996,"syna_pal_mem_free");
        return uVar7;
      }
      if (lVar2 != 0) {
        devm_kfree(lVar8,lVar2);
      }
      local_a8 = 0;
      local_70 = local_70 & 0xffffffffffffff00;
      kfree(lVar5);
    }
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar7;
}



/* 0015c8ec zte_touch_probe */

void zte_touch_probe(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  _printk(&DAT_001675a0,"zte_touch_probe",0xb2a);
  return;
}



/* 001a718c init_module */

void init_module(void)

{
  _printk(&DAT_00183135,"zte_touch_init");
  return;
}



/* 001a71dc cleanup_module */

void cleanup_module(void)

{
  syna_dev_module_exit();
  zte_touch_deinit();
  platform_driver_unregister(zte_touch_device_driver);
  return;
}



