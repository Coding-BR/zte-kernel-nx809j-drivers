/* 00134ad4 syna_tcm_read_flash_address */

int syna_tcm_read_flash_address
              (long param_1,undefined4 param_2,uint param_3,long *param_4,int param_5)

{
  char cVar1;
  int iVar2;
  void *__s;
  long lVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  undefined4 uVar7;
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
  uStack_d0 = 0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f0 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00168ac4;
  }
  else {
    if (param_4 != (long *)0x0) {
      if (param_5 == 0) {
        uVar7 = 0;
      }
      else {
        uVar7 = *(undefined4 *)(param_1 + 0x1e8);
      }
      cVar1 = *(char *)(param_1 + 9);
      if (cVar1 == '\v') {
        iVar2 = 0;
      }
      else {
        iVar2 = syna_tcm_set_up_flash_access(param_1,&local_f0,param_5,uVar7);
        if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00167f4e,"syna_tcm_read_flash_address");
        }
      }
      local_70 = local_70 & 0xffffffffffffff00;
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e114);
      if (param_3 != 0) {
        __n = (size_t)*(uint *)(param_4 + 1);
        __s = (void *)*param_4;
        if (*(uint *)(param_4 + 1) < param_3) {
          if (__s != (void *)0x0) {
            lVar3 = syna_request_managed_device();
            if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
              _printk(&DAT_001719d6,"syna_pal_mem_free");
            }
            devm_kfree(lVar3,__s);
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
            puVar6 = &DAT_001719d6;
LAB_00134d64:
                    /* WARNING: Subroutine does not return */
            _printk(puVar6,"syna_pal_mem_alloc");
          }
          if ((int)param_3 < 1) {
            puVar6 = &DAT_0016dad2;
            goto LAB_00134d64;
          }
          __n = (size_t)param_3;
          __s = (void *)devm_kmalloc(lVar3,__n,0xdc0);
          *param_4 = (long)__s;
          if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016c770,"syna_tcm_buf_alloc",param_3);
          }
          *(uint *)(param_4 + 1) = param_3;
        }
        memset(__s,0,__n);
        *(undefined4 *)((long)param_4 + 0xc) = 0;
        iVar2 = syna_tcm_read_flash(param_1,param_2,*param_4,param_3,param_5);
        if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016f4f2,"syna_tcm_read_flash_address",param_3,param_2);
        }
        iVar2 = 0;
        *(uint *)((long)param_4 + 0xc) = param_3;
      }
      if (cVar1 == '\x01') {
        syna_tcm_switch_fw_mode(param_1,1,param_5);
      }
      lVar3 = local_b0;
      if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00169dca,"syna_tcm_buf_release");
      }
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001719d6,"syna_pal_mem_free");
      }
      if (lVar3 != 0) {
        devm_kfree(lVar4,lVar3);
      }
      lVar3 = sp_el0;
      if (*(long *)(lVar3 + 0x710) == local_58) {
        return iVar2;
      }
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    puVar5 = &DAT_0017081e;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_read_flash_address");
}



/* 00134db0 syna_tcm_set_up_flash_access */

void syna_tcm_set_up_flash_access(undefined8 param_1,long param_2)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  if (param_2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001693aa,"syna_tcm_set_up_flash_access");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016e3bc,"syna_tcm_set_up_flash_access");
}



/* 00134e40 FUN_00134e40 */

void FUN_00134e40(undefined8 param_1)

{
                    /* WARNING: Subroutine does not return */
  _printk(param_1,"syna_tcm_set_up_flash_access");
}



/* 00134eb4 FUN_00134eb4 */

void FUN_00134eb4(ulong param_1)

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
          FUN_00134e40(&UNK_0016ba52);
          return;
        }
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016ad64,"syna_tcm_set_up_flash_access",**(undefined1 **)(unaff_x19 + 0x20));
      }
    } while (*(char *)(unaff_x20 + param_1 + 0x82) != ':');
    if (0xc < param_1) break;
    if ((*(byte *)(unaff_x20 + param_1 + 0x85) >> 5 & 1) != 0) {
      *(undefined1 *)(unaff_x19 + 0x88) = in_w9;
      FUN_00134eb4();
      return;
    }
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x135090);
  (*pcVar1)();
}



/* 00134eb8 FUN_00134eb8 */

void FUN_00134eb8(ulong param_1)

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
        FUN_00134e40(&UNK_0016ba52);
        return;
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016ad64,"syna_tcm_set_up_flash_access",**(undefined1 **)(unaff_x19 + 0x20));
    }
    if (*(char *)(unaff_x20 + param_1 + 0x82) == ':') {
      if (0xc < param_1) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x5512,0x135090);
        (*pcVar1)();
      }
      if ((*(byte *)(unaff_x20 + param_1 + 0x85) >> 5 & 1) != 0) {
        *(undefined1 *)(unaff_x19 + 0x88) = in_w9;
        FUN_00134eb4();
        return;
      }
    }
    param_1 = param_1 + 1;
  } while( true );
}



/* 00135094 syna_tcm_read_flash */

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
    puVar5 = &DAT_0016d1de;
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
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016d204,"syna_tcm_reflash_send_command");
          }
          if ((int)uVar9 == 0) {
            if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
              _printk(&DAT_0016bee2,"syna_tcm_reflash_send_command",*(undefined4 *)(param_1 + 0x20c)
                     );
            }
            uVar9 = 0;
          }
          if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1351d8);
            (*pcVar3)();
          }
          iVar4 = (**(code **)(param_1 + 0x398))(param_1,0x13,&local_70,6,0,uVar9);
          if (iVar4 < 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016f482,"syna_tcm_reflash_send_command",0x13);
          }
          if (*(uint *)(param_1 + 0x154) != uVar1) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00166de4,"syna_tcm_read_flash",uVar1);
          }
          if (((void *)(param_3 + (ulong)uVar8) == (void *)0x0) ||
             (*(void **)(param_1 + 0x148) == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016a6b4,"syna_tcm_read_flash",uVar1);
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016ee02,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),param_4 & 0xffffffff,
                uVar1);
      }
    }
    puVar5 = &DAT_0016ffa6;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_read_flash");
}



/* 00135380 syna_tcm_read_flash_area */

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
    puVar4 = &DAT_00168ac4;
LAB_001353f4:
                    /* WARNING: Subroutine does not return */
    _printk(puVar4,"syna_tcm_read_flash_area");
  }
  if (param_3 == (long *)0x0) {
    puVar4 = &DAT_0017081e;
    goto LAB_001353f4;
  }
  if (param_4 == 0) {
    uVar10 = 0;
  }
  else {
    uVar10 = *(undefined4 *)(param_1 + 0x1e8);
  }
  if ((*(char *)(param_1 + 9) != '\v') &&
     (iVar2 = syna_tcm_set_up_flash_access(param_1,&local_148,param_4,uVar10), iVar2 < 0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00167f4e,"syna_tcm_read_flash_area");
  }
  local_c8 = local_c8 & 0xffffffffffffff00;
  local_108 = 0;
  local_100 = 0;
  __mutex_init(&uStack_f8,"(struct mutex *)ptr",&DAT_0015e114);
  if (param_2 < 0x15) {
    if (param_2 == 3) {
      if (*(char *)(param_1 + 9) == '\x01') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016b388,"syna_tcm_read_flash_app_config",1);
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
                    /* WARNING: Subroutine does not return */
                _printk(&DAT_001719d6,"syna_pal_mem_free");
              }
              devm_kfree(lVar6,pvVar5);
            }
            lVar6 = syna_request_managed_device();
            if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
              _printk(&DAT_001719d6,"syna_pal_mem_alloc");
            }
            pvVar5 = (void *)devm_kmalloc(lVar6,uVar12,0xdc0);
            *param_3 = (long)pvVar5;
            if (pvVar5 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
              _printk(&DAT_0016c770,"syna_tcm_buf_alloc",(uint)uVar1);
            }
            *(uint *)(param_3 + 1) = (uint)uVar1;
            __n = uVar12;
          }
          memset(pvVar5,0,__n);
          *(undefined4 *)((long)param_3 + 0xc) = 0;
          iVar3 = syna_tcm_read_flash(param_1,iVar2,*param_3,uVar12,param_4);
          if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016ffd6,"syna_tcm_read_flash_app_config",iVar2,(uint)uVar1);
          }
          *(uint *)((long)param_3 + 0xc) = (uint)uVar1;
          goto LAB_00135afc;
        }
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00170f90,"syna_tcm_read_flash_app_config");
    }
    if (param_2 != 6) {
LAB_001355d4:
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016933a,"syna_tcm_read_flash_area");
    }
    iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_148,param_3,param_4);
    if (-1 < iVar2) goto LAB_00135afc;
    puVar8 = &DAT_00166db8;
    goto LAB_00135ab0;
  }
  if (param_2 == 0x15) {
    iVar2 = syna_tcm_read_flash_boot_cs_config(param_1,&local_148,param_3,0,0,param_4);
joined_r0x0013555c:
    if (-1 < iVar2) {
LAB_00135afc:
      uVar9 = syna_tcm_get_partition_id_string(param_2);
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016dd98,"syna_tcm_read_flash_area",uVar9);
    }
  }
  else {
    if (param_2 != 0x16) {
      if (param_2 != 0x17) goto LAB_001355d4;
      iVar2 = syna_tcm_read_flash_mtp_config(param_1,&local_148,param_3,0,0,param_4);
      goto joined_r0x0013555c;
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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016e99c,"syna_tcm_read_flash_boot_lockdown_config",1);
    }
    local_b0 = 0;
    local_a8 = 0;
    __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e114);
    iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_148,&local_b0,param_4);
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c9ca,"syna_tcm_read_flash_boot_lockdown_config");
    }
    uVar11 = *(uint *)(param_3 + 1);
    pvVar5 = (void *)*param_3;
    if (uVar11 < 8) {
      if (pvVar5 != (void *)0x0) {
        lVar6 = syna_request_managed_device();
        if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_001719d6,"syna_pal_mem_free");
        }
        devm_kfree(lVar6,pvVar5);
      }
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001719d6,"syna_pal_mem_alloc");
      }
      uVar11 = 8;
      pvVar5 = (void *)devm_kmalloc(lVar6,8,0xdc0);
      *param_3 = (long)pvVar5;
      if (pvVar5 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016c770,"syna_tcm_buf_alloc",8);
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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016ddb0,"syna_tcm_read_flash_boot_lockdown_config");
    }
    if (*(uint *)(param_3 + 1) < 8) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016ee02,"syna_pal_mem_cpy",8,*(uint *)(param_3 + 1),8);
    }
    *(undefined8 *)*param_3 = *(undefined8 *)(local_b0 + iVar2);
    *(undefined4 *)((long)param_3 + 0xc) = 8;
    *(uint *)(param_1 + 0x34) = (uint)(*(byte *)(local_b0 + (local_a8._4_4_ + -7)) >> 7);
    if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169dca,"syna_tcm_buf_release");
    }
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
    }
    if (lVar6 != 0) {
      devm_kfree(lVar7,lVar6);
    }
    if (true) goto LAB_00135afc;
  }
  puVar8 = &DAT_0016b344;
LAB_00135ab0:
                    /* WARNING: Subroutine does not return */
  _printk(puVar8,"syna_tcm_read_flash_area");
}



/* 00135b5c syna_tcm_read_flash_boot_config */

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
    puVar4 = &DAT_001693aa;
  }
  else if (param_3 == 0) {
    puVar4 = &DAT_0016a6e4;
  }
  else {
    if (*(char *)(param_1 + 9) == '\x01') {
      puVar4 = &DAT_00167a00;
      cVar5 = '\x01';
LAB_00135d18:
                    /* WARNING: Subroutine does not return */
      _printk(puVar4,"syna_tcm_read_flash_boot_config",cVar5);
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
        puVar4 = &DAT_00171d74;
        goto LAB_00135d18;
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001693d4,"syna_tcm_read_flash_boot_config",iVar1,iVar1,uVar3,iVar2);
      }
    }
    puVar4 = &DAT_00168660;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_tcm_read_flash_boot_config");
}



/* 00135d88 syna_tcm_read_flash_boot_cs_config */

undefined8
syna_tcm_read_flash_boot_cs_config
          (long param_1,long param_2,long *param_3,uint param_4,int param_5,undefined4 param_6)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  byte bVar7;
  long lVar8;
  long lVar9;
  ulong uVar10;
  ulong uVar11;
  byte *pbVar12;
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
  
  lVar8 = sp_el0;
  local_58 = *(long *)(lVar8 + 0x710);
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
    puVar5 = &DAT_001693aa;
LAB_001360c0:
                    /* WARNING: Subroutine does not return */
    _printk(puVar5,"syna_tcm_read_flash_boot_cs_config");
  }
  if (param_3 == (long *)0x0) {
    puVar5 = &DAT_0016a6e4;
    goto LAB_001360c0;
  }
  if (*(char *)(param_1 + 9) == '\x01') {
    puVar6 = &DAT_0016e962;
    bVar7 = 1;
LAB_00136160:
                    /* WARNING: Subroutine does not return */
    _printk(puVar6,"syna_tcm_read_flash_boot_cs_config",bVar7);
  }
  pbVar12 = *(byte **)(param_2 + 0x20);
  bVar7 = *pbVar12;
  if ((bVar7 | 2) != 3) {
    puVar6 = &DAT_00171d74;
    goto LAB_00136160;
  }
  uVar10 = (ulong)param_4;
  local_a0 = (void *)0x0;
  local_98 = 0;
  __mutex_init(&uStack_90,"(struct mutex *)ptr",&DAT_0015e114);
  pvVar4 = local_a0;
  if (param_4 == 0) {
    iVar2 = syna_tcm_read_flash_boot_config(param_1,param_2,&local_a0,param_6);
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c9ca,"syna_tcm_read_flash_boot_cs_config");
    }
    uVar1 = local_98._4_4_;
    uVar11 = (ulong)local_98._4_4_;
    uVar10 = (ulong)*(uint *)(param_3 + 1);
    pvVar4 = (void *)*param_3;
    if (*(uint *)(param_3 + 1) < local_98._4_4_) {
      if (pvVar4 != (void *)0x0) {
        lVar8 = syna_request_managed_device();
        if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_001719d6,"syna_pal_mem_free");
        }
        devm_kfree(lVar8,pvVar4);
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        puVar6 = &DAT_001719d6;
LAB_00136298:
                    /* WARNING: Subroutine does not return */
        _printk(puVar6,"syna_pal_mem_alloc");
      }
      if ((int)uVar1 < 1) {
        puVar6 = &DAT_0016dad2;
        goto LAB_00136298;
      }
      pvVar4 = (void *)devm_kmalloc(lVar8,uVar11,0xdc0);
      *param_3 = (long)pvVar4;
      if (pvVar4 == (void *)0x0) {
        uVar10 = (ulong)uVar1;
        goto LAB_001362bc;
      }
      *(uint *)(param_3 + 1) = uVar1;
      uVar10 = uVar11;
    }
    memset(pvVar4,0,uVar10);
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
    goto LAB_00135fc8;
  }
  if (*pbVar12 == 1) {
    lVar8 = 0xd;
    lVar9 = 0xc;
LAB_00135ec4:
    iVar2 = (uint)CONCAT11(pbVar12[lVar8],pbVar12[lVar9]) * *(int *)(param_2 + 0x2c);
  }
  else {
    if (*pbVar12 == 3) {
      lVar8 = 0x11;
      lVar9 = 0x10;
      goto LAB_00135ec4;
    }
    iVar2 = 0;
  }
  uVar11 = local_98 & 0xffffffff;
  if ((uint)local_98 < param_4) {
    if (local_a0 != (void *)0x0) {
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001719d6,"syna_pal_mem_free");
      }
      devm_kfree(lVar8,pvVar4);
    }
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
      puVar6 = &DAT_001719d6;
LAB_001361e4:
                    /* WARNING: Subroutine does not return */
      _printk(puVar6,"syna_pal_mem_alloc");
    }
    if ((int)param_4 < 1) {
      puVar6 = &DAT_0016dad2;
      goto LAB_001361e4;
    }
    local_a0 = (void *)devm_kmalloc(lVar8,uVar10,0xdc0);
    if (local_a0 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c770,"syna_tcm_buf_alloc",uVar10);
    }
    local_98 = CONCAT44(local_98._4_4_,param_4);
    uVar11 = uVar10;
  }
  memset(local_a0,0,uVar11);
  pvVar4 = (void *)*param_3;
  local_98 = local_98 & 0xffffffff;
  uVar11 = (ulong)*(uint *)(param_3 + 1);
  if (*(uint *)(param_3 + 1) < param_4) {
    if (pvVar4 != (void *)0x0) {
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001719d6,"syna_pal_mem_free");
      }
      devm_kfree(lVar8,pvVar4);
    }
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
      puVar6 = &DAT_001719d6;
LAB_00136240:
                    /* WARNING: Subroutine does not return */
      _printk(puVar6,"syna_pal_mem_alloc");
    }
    if ((int)param_4 < 1) {
      puVar6 = &DAT_0016dad2;
      goto LAB_00136240;
    }
    pvVar4 = (void *)devm_kmalloc(lVar8,uVar10,0xdc0);
    *param_3 = (long)pvVar4;
    if (pvVar4 == (void *)0x0) {
LAB_001362bc:
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c770,"syna_tcm_buf_alloc",uVar10);
    }
    *(uint *)(param_3 + 1) = param_4;
    uVar11 = uVar10;
  }
  memset(pvVar4,0,uVar11);
  *(undefined4 *)((long)param_3 + 0xc) = 0;
  iVar3 = syna_tcm_read_flash(param_1,iVar2 + param_5,local_a0,param_4,param_6);
  if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016ad8a,"syna_tcm_read_flash_boot_cs_config",iVar2 + param_5);
  }
LAB_00135fc8:
  if (((void *)*param_3 == (void *)0x0) || (local_a0 == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016ddb0,"syna_tcm_read_flash_boot_cs_config");
  }
  if ((param_4 <= *(uint *)(param_3 + 1)) && (param_4 <= (uint)local_98)) {
    memcpy((void *)*param_3,local_a0,(ulong)param_4);
    pvVar4 = local_a0;
    *(uint *)((long)param_3 + 0xc) = param_4;
    if ((char)local_60 != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169dca,"syna_tcm_buf_release");
    }
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
    }
    if (pvVar4 != (void *)0x0) {
      devm_kfree(lVar8,pvVar4);
    }
    lVar8 = sp_el0;
    if (*(long *)(lVar8 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016ee02,"syna_pal_mem_cpy",local_98 & 0xffffffff,*(uint *)(param_3 + 1),param_4);
}



/* 001362e4 syna_tcm_read_flash_mtp_config */

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
    puVar4 = &DAT_001693aa;
  }
  else {
    if (param_3 != (long *)0x0) {
      if (*(char *)(param_1 + 9) == '\x01') {
        puVar5 = &DAT_0016e962;
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
LAB_00136398:
            memset(__s,0,__n);
            *(undefined4 *)((long)param_3 + 0xc) = 0;
            iVar2 = syna_tcm_read_flash(param_1,iVar1 + param_5,*param_3,param_4,param_6);
            if (-1 < iVar2) {
              *(uint *)((long)param_3 + 0xc) = param_4;
              return;
            }
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016ad8a,"syna_tcm_read_flash_mtp_config",iVar1 + param_5);
          }
          if (__s != (void *)0x0) {
            lVar3 = syna_request_managed_device();
            if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
              _printk(&DAT_001719d6,"syna_pal_mem_free");
            }
            devm_kfree(lVar3,__s);
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
            puVar5 = &DAT_001719d6;
          }
          else {
            if (0 < (int)param_4) {
              __n = (size_t)param_4;
              __s = (void *)devm_kmalloc(lVar3,__n,0xdc0);
              *param_3 = (long)__s;
              if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
                _printk(&DAT_0016c770,"syna_tcm_buf_alloc",param_4);
              }
              *(uint *)(param_3 + 1) = param_4;
              goto LAB_00136398;
            }
            puVar5 = &DAT_0016dad2;
          }
                    /* WARNING: Subroutine does not return */
          _printk(puVar5,"syna_pal_mem_alloc");
        }
        puVar5 = &DAT_00171d74;
      }
                    /* WARNING: Subroutine does not return */
      _printk(puVar5,"syna_tcm_read_flash_mtp_config",cVar6);
    }
    puVar4 = &DAT_0016a6e4;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_tcm_read_flash_mtp_config");
}



/* 001364e4 syna_tcm_do_fw_update_ex */

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
    puVar2 = &DAT_00168ac4;
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
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e114);
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016935c,"syna_tcm_do_fw_update_ex");
    }
    puVar2 = &DAT_0016d79a;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_tcm_do_fw_update_ex");
}



/* 00136804 syna_tcm_update_flash_block */

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
    puVar3 = &DAT_001693aa;
  }
  else {
    if (param_3 != 0) {
      iVar2 = syna_tcm_check_flash_block(param_1,param_2,param_3);
      if (iVar2 < 0) {
        uVar4 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00170842,"syna_tcm_update_flash_block",uVar4);
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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00166e4c,"syna_tcm_update_flash_block",uVar4);
    }
    puVar3 = &DAT_00166e2a;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_tcm_update_flash_block");
}



/* 0013707c syna_tcm_do_fw_update */

void syna_tcm_do_fw_update(long param_1,long param_2,int param_3)

{
  long lVar1;
  undefined1 *puVar2;
  undefined1 auStack_378 [784];
  undefined8 local_68;
  
  lVar1 = sp_el0;
  local_68 = *(undefined8 *)(lVar1 + 0x710);
  if (param_1 == 0) {
    puVar2 = &DAT_00168ac4;
  }
  else {
    if ((param_2 != 0) && (param_3 != 0)) {
      memset(auStack_378,0,0x310);
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016992c,"syna_tcm_do_fw_update");
    }
    puVar2 = &DAT_0016d79a;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_tcm_do_fw_update");
}



/* 001373b8 syna_tcm_update_lockdown_config */

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
    puVar4 = &DAT_00168ac4;
  }
  else {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      if (((char)param_2[0x9c] != '\x01') || (*(long *)(param_2 + 0x9e) == 0)) {
        uVar6 = syna_tcm_get_partition_id_string((char)param_2[0xa2]);
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00172370,"syna_tcm_update_lockdown_config",uVar6);
      }
      if ((uint)param_2[0xa0] < 8) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00168d8c,"syna_tcm_update_lockdown_config",param_2[0xa0],8);
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
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e114);
      local_f8 = local_f8 & 0xffffffffffffff00;
      local_138 = 0;
      local_130 = 0;
      __mutex_init(&local_128,"(struct mutex *)ptr",&DAT_0015e114);
      *(undefined4 *)(param_1 + 0x388) = 1;
      iVar2 = syna_tcm_set_up_flash_access(param_1,&local_f0,uVar8,uVar7);
      if (iVar2 < 0) {
        puVar5 = &DAT_00167f4e;
      }
      else {
        iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_f0,&local_138,uVar8);
        if (-1 < iVar2) {
          if (*(char *)(local_138 + (ulong)(iStack_12c - 7)) < '\0') {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016acf8,"syna_tcm_update_lockdown_config");
          }
          iVar2 = syna_tcm_check_flash_block(param_1,&local_f0,param_2 + 0x9c);
          if (iVar2 < 1) {
            uVar6 = syna_tcm_get_partition_id_string((char)param_2[0xa2]);
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00170842,"syna_tcm_update_lockdown_config",uVar6);
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
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00169dca,"syna_tcm_buf_release");
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_001719d6,"syna_pal_mem_free");
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
                    /* WARNING: Subroutine does not return */
              _printk(&DAT_001719d6,"syna_pal_mem_free");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00169dca,"syna_tcm_buf_release");
        }
        puVar5 = &DAT_0016c9ca;
      }
                    /* WARNING: Subroutine does not return */
      _printk(puVar5,"syna_tcm_update_lockdown_config");
    }
    puVar4 = &DAT_0016d79a;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_tcm_update_lockdown_config");
}



/* 0013773c syna_tcm_check_flash_block */

uint syna_tcm_check_flash_block(long param_1,long param_2,long param_3)

{
  int iVar1;
  byte bVar2;
  int iVar3;
  undefined *puVar4;
  char *pcVar5;
  uint uVar6;
  uint uVar7;
  long lVar8;
  byte *pbVar9;
  long lVar10;
  
  if (param_2 == 0) {
    puVar4 = &DAT_001693aa;
LAB_0013785c:
                    /* WARNING: Subroutine does not return */
    _printk(puVar4,"syna_tcm_check_flash_block");
  }
  if (param_3 == 0) {
    puVar4 = &DAT_00166e2a;
    goto LAB_0013785c;
  }
  uVar6 = *(byte *)(param_3 + 0x18) - 1;
  uVar6 = uVar6 >> 1 | uVar6 * -0x80000000;
  if ((int)uVar6 < 3) {
    if (uVar6 == 0) {
      if (*(uint *)(param_3 + 0x10) == 0) {
        return 0xffffff0f;
      }
      return *(uint *)(param_3 + 0x10);
    }
    if (uVar6 != 1) {
      return 0;
    }
    uVar6 = *(uint *)(param_3 + 0x10);
    if (uVar6 == 0) {
      return 0;
    }
    iVar3 = (uint)*(ushort *)(param_1 + 0xb8) * *(int *)(param_2 + 0x2c);
    if (iVar3 == 0 && *(ushort *)(param_1 + 0xba) == 0) {
      return uVar6;
    }
    iVar1 = *(int *)(param_3 + 0x14);
    if (iVar1 == iVar3) {
      if (uVar6 == *(ushort *)(param_1 + 0xba)) {
        return uVar6;
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00166eda,"syna_tcm_check_flash_app_config",uVar6);
    }
    puVar4 = &DAT_0016bf7a;
    pcVar5 = "syna_tcm_check_flash_app_config";
    goto LAB_0013790c;
  }
  if (uVar6 == 3) {
    return *(uint *)(param_3 + 0x10);
  }
  if (uVar6 != 9) {
    return 0;
  }
  uVar6 = *(uint *)(param_3 + 0x10);
  if (uVar6 < 8) {
    puVar4 = &DAT_0016f578;
LAB_001378ec:
                    /* WARNING: Subroutine does not return */
    _printk(puVar4,"syna_tcm_check_flash_tool_boot_config",uVar6);
  }
  pbVar9 = *(byte **)(param_2 + 0x20);
  bVar2 = *pbVar9;
  if ((bVar2 | 2) != 3) {
    puVar4 = &DAT_00171d74;
    uVar6 = (uint)bVar2;
    goto LAB_001378ec;
  }
  iVar3 = *(int *)(param_3 + 0x14);
  if (bVar2 == 1) {
    lVar8 = 0xd;
    lVar10 = 0xc;
LAB_00137878:
    uVar7 = (uint)CONCAT11(pbVar9[lVar8],pbVar9[lVar10]);
  }
  else {
    if (bVar2 == 3) {
      lVar8 = 0x11;
      lVar10 = 0x10;
      goto LAB_00137878;
    }
    uVar7 = 0;
  }
  iVar1 = uVar7 * *(int *)(param_2 + 0x2c);
  if (iVar3 == iVar1) {
    return uVar6;
  }
  puVar4 = &DAT_00167aac;
  pcVar5 = "syna_tcm_check_flash_tool_boot_config";
LAB_0013790c:
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,pcVar5,iVar1,iVar3);
}



/* 00137918 syna_tcm_write_flash */

void syna_tcm_write_flash(undefined8 param_1,long param_2)

{
  if (*(char *)(param_2 + 0x80) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_2 + 0x50);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}



/* 00137a40 FUN_00137a40 */

undefined8 FUN_00137a40(void)

{
  void *__dest;
  uint uVar1;
  undefined2 uVar2;
  code *pcVar3;
  int iVar4;
  void *pvVar5;
  long lVar6;
  undefined *puVar7;
  ulong __n;
  uint uVar8;
  uint in_w8;
  uint in_w9;
  long unaff_x19;
  uint unaff_w20;
  uint unaff_w21;
  uint unaff_w23;
  long unaff_x24;
  uint uVar9;
  ulong unaff_x27;
  ulong uVar10;
  long unaff_x29;
  undefined8 in_stack_00000008;
  int in_stack_00000010;
  
  do {
    uVar10 = (ulong)in_w8 * (ulong)in_w9 >> 0x26;
    do {
      pvVar5 = (void *)(*(long *)(unaff_x29 + -8) + (ulong)unaff_w23);
      uVar9 = (uint)unaff_x27;
      if ((pvVar5 == (void *)0x0) ||
         (__dest = (void *)(*(long *)(unaff_x19 + 0x40) + 2), __dest == (void *)0x0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d7bc,"syna_tcm_write_flash",unaff_x27 & 0xffffffff);
      }
      uVar1 = *(int *)(unaff_x19 + 0x48) - 2;
      if ((in_stack_00000010 - unaff_w23 < uVar9) || (uVar1 < uVar9)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016ee02,"syna_pal_mem_cpy",in_stack_00000010 - unaff_w23,uVar1,
                unaff_x27 & 0xffffffff);
      }
      memcpy(__dest,pvVar5,unaff_x27);
      if (*(char *)(unaff_x24 + 9) != '\v') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d204,"syna_tcm_reflash_send_command");
      }
      if (((int)uVar10 == 0) && ((*(byte *)(*(long *)(unaff_x24 + 0x48) + 0x14) & 1) == 0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016bee2,"syna_tcm_reflash_send_command",*(undefined4 *)(unaff_x24 + 0x20c));
      }
      if (*(int *)(*(code **)(unaff_x24 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x137ae0);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(unaff_x24 + 0x398))();
      if (iVar4 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016f482,"syna_tcm_reflash_send_command",0x12);
      }
      uVar10 = (ulong)in_stack_00000008._4_4_;
      unaff_w20 = unaff_w20 - uVar9;
      unaff_w23 = unaff_w23 + uVar9;
      *(uint *)(unaff_x19 + 0x90) = *(int *)(unaff_x19 + 0x90) + uVar9;
      if (unaff_w20 == 0) {
        if (*(char *)(unaff_x19 + 0x80) != '\x01') {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016da90,"syna_tcm_buf_unlock",*(char *)(unaff_x19 + 0x80));
        }
        *(undefined1 *)(unaff_x19 + 0x80) = 0;
        mutex_unlock(unaff_x19 + 0x50);
        return 0;
      }
      pvVar5 = *(void **)(unaff_x19 + 0x40);
      uVar9 = unaff_w20;
      if (unaff_w21 <= unaff_w20) {
        uVar9 = unaff_w21;
      }
      unaff_x27 = (ulong)uVar9;
      uVar1 = uVar9 + 2;
      __n = (ulong)*(uint *)(unaff_x19 + 0x48);
      if (*(uint *)(unaff_x19 + 0x48) < uVar1) {
        if (pvVar5 != (void *)0x0) {
          lVar6 = syna_request_managed_device();
          if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_001719d6,"syna_pal_mem_free");
          }
          devm_kfree(lVar6,pvVar5);
        }
        lVar6 = syna_request_managed_device();
        if (lVar6 == 0) {
          puVar7 = &DAT_001719d6;
LAB_00137c68:
                    /* WARNING: Subroutine does not return */
          _printk(puVar7,"syna_pal_mem_alloc");
        }
        if ((int)uVar1 < 1) {
          puVar7 = &DAT_0016dad2;
          goto LAB_00137c68;
        }
        pvVar5 = (void *)devm_kmalloc(lVar6,(ulong)uVar1,0xdc0);
        *(void **)(unaff_x19 + 0x40) = pvVar5;
        if (pvVar5 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016c770,"syna_tcm_buf_alloc",uVar1);
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
      uVar8 = 0;
      if (uVar1 != 0) {
        uVar8 = 0;
        if (uVar1 != 0) {
          uVar8 = ((uVar9 + uVar1) - 1) / uVar1;
        }
      }
    } while (in_stack_00000008._4_4_ == 0);
    in_w8 = uVar8 * in_stack_00000008._4_4_;
    in_w9 = 0x10624dd3;
  } while( true );
}



/* 00137ce0 syna_tcm_update_cs_config */

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
    puVar4 = &DAT_00168ac4;
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
        __mutex_init(&uStack_b0,"(struct mutex *)ptr",&DAT_0015e114);
        local_108 = local_108 & 0xffffffffffffff00;
        local_148 = 0;
        local_140 = 0;
        __mutex_init(&local_138,"(struct mutex *)ptr",&DAT_0015e114);
        *(undefined4 *)(param_1 + 0x388) = 1;
        iVar3 = syna_tcm_set_up_flash_access(param_1,&local_100,uVar13,uVar11);
        if (iVar3 < 0) {
          puVar5 = &DAT_00167f4e;
        }
        else {
          iVar3 = syna_tcm_read_flash_boot_config(param_1,&local_100,&local_148,uVar13);
          if (iVar3 < 0) {
            puVar5 = &DAT_0016c9ca;
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
              puVar5 = &DAT_001715e6;
            }
            else if (local_d8._4_4_ == 0) {
              puVar5 = &DAT_0016a040;
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
                    if (uVar10 == 0) goto LAB_00137ecc;
                  }
                  if (local_d8._4_4_ <= uVar9) break;
                }
                uVar8 = uVar8 + local_d8._4_4_;
              } while (uVar8 < uVar7);
LAB_00137ecc:
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
                    /* WARNING: Subroutine does not return */
                  _printk(&DAT_00169dca,"syna_tcm_buf_release");
                }
                lVar6 = syna_request_managed_device();
                if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
                  _printk(&DAT_001719d6,"syna_pal_mem_free");
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
                    /* WARNING: Subroutine does not return */
                    _printk(&DAT_001719d6,"syna_pal_mem_free");
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
                    /* WARNING: Subroutine does not return */
                _printk(&DAT_00169dca,"syna_tcm_buf_release");
              }
              puVar5 = &DAT_0016c40a;
            }
          }
        }
                    /* WARNING: Subroutine does not return */
        _printk(puVar5,"syna_tcm_update_cs_config");
      }
    }
    puVar4 = &DAT_0016a020;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_tcm_update_cs_config");
}



/* 001380c8 syna_tcm_update_mtp_data */

uint syna_tcm_update_mtp_data(long param_1,void *param_2,uint param_3,int param_4,int param_5)

{
  int iVar1;
  uint uVar2;
  long lVar3;
  void *__dest;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  undefined4 uVar7;
  ulong __n;
  undefined4 uVar8;
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
    puVar5 = &DAT_00168ac4;
  }
  else {
    if (param_2 != (void *)0x0) {
      __n = (ulong)param_3;
      if (param_3 != 0) {
        if (param_5 == 0) {
          uVar7 = 0;
          uVar8 = 0;
        }
        else {
          uVar8 = *(undefined4 *)(param_1 + 0x20c);
          uVar7 = *(undefined4 *)(param_1 + 0x1e8);
        }
        local_b0 = 0;
        local_a8 = 0;
        __mutex_init(&uStack_a0,"(struct mutex *)ptr",&DAT_0015e114);
        *(undefined4 *)(param_1 + 0x388) = 1;
        iVar1 = FUN_00134eb8(param_1,&local_f0,uVar8,uVar7);
        if (iVar1 < 0) {
          puVar6 = &DAT_00167f4e;
        }
        else {
          if (*local_d0 < 3) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00169952,"syna_tcm_update_mtp_data");
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
              puVar6 = &DAT_001719d6;
            }
            else {
              if (0 < (int)uVar2) {
                __dest = (void *)devm_kmalloc(lVar3,uVar2,0xdc0);
                if (__dest == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
                  _printk(&DAT_00167f4e,"syna_tcm_update_mtp_data");
                }
                if (local_68._4_4_ < param_3) {
                    /* WARNING: Subroutine does not return */
                  _printk(&DAT_0016ee02,"syna_pal_mem_cpy",__n,local_68._4_4_,__n);
                }
                if (uVar2 < param_3) {
                    /* WARNING: Subroutine does not return */
                  __fortify_panic(0x11,uVar2);
                }
                memcpy(__dest,param_2,__n);
                uVar2 = FUN_00137a40(param_1,&local_f0,local_b8._4_4_ + iVar1,__dest,local_68._4_4_,
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
                    /* WARNING: Subroutine does not return */
                    _printk(&DAT_001719d6,"syna_pal_mem_free");
                  }
                  if (lVar3 != 0) {
                    devm_kfree(lVar4,lVar3);
                  }
                  lVar3 = sp_el0;
                  if (*(long *)(lVar3 + 0x710) == local_58) {
                    return uVar2;
                  }
                    /* WARNING: Subroutine does not return */
                  __stack_chk_fail();
                }
                    /* WARNING: Subroutine does not return */
                _printk(&DAT_00169dca,"syna_tcm_buf_release");
              }
              puVar6 = &DAT_0016dad2;
            }
                    /* WARNING: Subroutine does not return */
            _printk(puVar6,"syna_pal_mem_alloc");
          }
          puVar6 = &DAT_0016a040;
        }
                    /* WARNING: Subroutine does not return */
        _printk(puVar6,"syna_tcm_update_mtp_data");
      }
    }
    puVar5 = &DAT_0016c9f2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_update_mtp_data");
}



/* 001383d0 syna_tcm_read_cs_data */

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
    puVar5 = &DAT_00168ac4;
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
      __mutex_init(&uStack_b0,"(struct mutex *)ptr",&DAT_0015e114);
      local_108 = local_108 & 0xffffffffffffff00;
      local_148 = (void *)0x0;
      local_140 = 0;
      __mutex_init(&local_138,"(struct mutex *)ptr",&DAT_0015e114);
      iVar2 = syna_tcm_set_up_flash_access(param_1,&local_100,uVar9,uVar8);
      if (iVar2 < 0) {
        puVar6 = &DAT_00167f4e;
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
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00173094,"syna_tcm_read_cs_data");
          }
          if ((uint)local_140 < param_3) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016ee02,"syna_pal_mem_cpy",local_140 & 0xffffffff,__n,__n);
          }
          memcpy(param_2,local_148,__n);
          if (*(char *)(param_1 + 9) == '\v') {
            syna_tcm_switch_fw_mode(param_1,1,uVar8);
          }
          pvVar1 = local_148;
          if ((char)local_108 != '\0') {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00169dca,"syna_tcm_buf_release");
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_001719d6,"syna_pal_mem_free");
          }
          if (pvVar1 != (void *)0x0) {
            devm_kfree(lVar3,pvVar1);
          }
          lVar3 = local_c0;
          local_140 = 0;
          local_108 = local_108 & 0xffffffffffffff00;
          if ((char)local_80 != '\0') {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00169dca,"syna_tcm_buf_release");
          }
          lVar4 = syna_request_managed_device();
          if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_001719d6,"syna_pal_mem_free");
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
        puVar6 = &DAT_00168dc8;
      }
                    /* WARNING: Subroutine does not return */
      _printk(puVar6,"syna_tcm_read_cs_data");
    }
    puVar5 = &DAT_0016a020;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_read_cs_data");
}



/* 00138fb8 FUN_00138fb8 */

void FUN_00138fb8(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x138fb8);
  (*pcVar1)();
}



/* 001391f0 FUN_001391f0 */

void FUN_001391f0(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x1391f0);
  (*pcVar1)();
}



/* 0013a4ec FUN_0013a4ec */

void FUN_0013a4ec(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x13a4ec);
  (*pcVar1)();
}



/* 0013a8e8 syna_pal_mem_alloc_kcfi_guard */

void syna_pal_mem_alloc_kcfi_guard(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x13a8e8);
  (*pcVar1)();
}



/* 0013a8ec syna_pal_mem_alloc */

void syna_pal_mem_alloc(int param_1)

{
  long lVar1;
  undefined *puVar2;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 == 0) {
    puVar2 = &DAT_001719d6;
  }
  else {
    if (0 < param_1) {
      devm_kmalloc(lVar1,param_1,0xdc0);
      return;
    }
    puVar2 = &DAT_0016dad2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_pal_mem_alloc");
}



/* 0013a958 syna_tcm_read_mtp_data */

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
    puVar5 = &DAT_00168ac4;
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
      __mutex_init(&uStack_b0,"(struct mutex *)ptr",&DAT_0015e114);
      local_108 = local_108 & 0xffffffffffffff00;
      local_148 = (void *)0x0;
      local_140 = 0;
      __mutex_init(&local_138,"(struct mutex *)ptr",&DAT_0015e114);
      iVar2 = FUN_001391f0(param_1,&local_100,uVar9,uVar8);
      if (iVar2 < 0) {
        puVar6 = &DAT_00167f4e;
      }
      else {
        if (*local_e0 < 3) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00169952,"syna_tcm_read_mtp_data");
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
        iVar2 = FUN_0013a4ec(param_1,&local_100,&local_148,uVar7 * local_d8._4_4_,param_4,param_5);
        if (-1 < iVar2) {
          if (local_148 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00173094,"syna_tcm_read_mtp_data");
          }
          if ((uint)local_140 < param_3) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016ee02,"syna_pal_mem_cpy",local_140 & 0xffffffff,__n,__n);
          }
          memcpy(param_2,local_148,__n);
          if (*(char *)(param_1 + 9) == '\v') {
            syna_tcm_switch_fw_mode(param_1,1,uVar8);
          }
          pvVar1 = local_148;
          if ((char)local_108 != '\0') {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00169dca,"syna_tcm_buf_release");
          }
          lVar3 = syna_request_managed_device();
          if (lVar3 == 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_001719d6,"syna_pal_mem_free");
          }
          if (pvVar1 != (void *)0x0) {
            devm_kfree(lVar3,pvVar1);
          }
          lVar3 = local_c0;
          local_140 = 0;
          local_108 = local_108 & 0xffffffffffffff00;
          if ((char)local_80 != '\0') {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00169dca,"syna_tcm_buf_release");
          }
          lVar4 = syna_request_managed_device();
          if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_001719d6,"syna_pal_mem_free");
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
        puVar6 = &DAT_0016e910;
      }
                    /* WARNING: Subroutine does not return */
      _printk(puVar6,"syna_tcm_read_mtp_data");
    }
    puVar5 = &DAT_0016c9f2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_read_mtp_data");
}



/* 0013ac9c syna_tcm_erase_mtp_data */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_erase_mtp_data");
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
  __mutex_init(&local_90,"(struct mutex *)ptr",&DAT_0015e114);
  iVar6 = FUN_00138fb8(param_1,&local_e0,iVar7,uVar10);
  if (iVar6 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00167f4e,"syna_tcm_erase_mtp_data");
  }
  if (*local_c0 < 3) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00169952,"syna_tcm_erase_mtp_data");
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016d204,"syna_tcm_reflash_send_command",*(char *)(param_1 + 9),uVar9);
  }
  if (iVar7 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016bee2,"syna_tcm_reflash_send_command",*(undefined4 *)(param_1 + 0x20c),uVar9);
    }
    iVar7 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x13adf4);
    (*pcVar5)();
  }
  iVar7 = (**(code **)(param_1 + 0x398))(param_1,0x11,&local_e4,uVar9,0,iVar7);
  if (iVar7 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f482,"syna_tcm_reflash_send_command",0x11);
  }
  if (*(char *)(param_1 + 9) == '\v') {
    syna_tcm_switch_fw_mode(param_1,1,uVar10);
  }
  lVar4 = local_a0;
  if ((char)local_60 == '\0') {
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
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
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dca,"syna_tcm_buf_release");
}



/* 0013b5d4 syna_pal_mem_free_kcfi_guard */

void syna_pal_mem_free_kcfi_guard(void)

{
  code *pcVar1;
  
                    /* WARNING: Does not return */
  pcVar1 = (code *)UndefinedInstructionException(0,0x13b5d4);
  (*pcVar1)();
}



/* 0013b5d8 syna_pal_mem_free */

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
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001719d6,"syna_pal_mem_free");
}



/* 0013b62c syna_tcm_get_touch_data */

undefined8 syna_tcm_get_touch_data(long param_1,int param_2,uint param_3,uint param_4,uint *param_5)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  if (param_4 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168e14,"syna_tcm_get_touch_data",param_4);
  }
  if (param_1 != 0) {
    if ((uint)(param_2 * 8) < param_4 + param_3) {
      *param_5 = 0;
    }
    else {
      uVar4 = param_3 >> 3;
      uVar3 = 8 - (param_3 & 7);
      if (param_4 <= uVar3) {
        uVar3 = param_4;
      }
      uVar1 = (uint)(*(byte *)(param_1 + (ulong)uVar4) >> (ulong)(param_3 & 7)) &
              0xffU >> (ulong)(8 - uVar3 & 0x1f);
      for (uVar3 = param_4 - uVar3; uVar3 != 0; uVar3 = uVar3 - uVar2) {
        uVar4 = uVar4 + 1;
        uVar2 = uVar3;
        if (7 < uVar3) {
          uVar2 = 8;
        }
        uVar1 = (0xffU >> (ulong)(8 - uVar2 & 0x1f) & (uint)*(byte *)(param_1 + (ulong)uVar4)) <<
                (ulong)(param_4 - uVar3 & 0x1f) | uVar1;
      }
      *param_5 = uVar1;
    }
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016caa2,"syna_tcm_get_touch_data");
}



/* 0013b724 syna_tcm_parse_touch_report */

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
    puVar15 = &DAT_00168ac4;
  }
  else if (param_2 == 0) {
    puVar15 = &DAT_0016caa2;
  }
  else if (param_4 == (uint *)0x0) {
    puVar15 = &DAT_0016ea1a;
  }
  else {
    if (*(int *)(param_1 + 0x18) != 0) {
      if (*(int *)(param_1 + 0x38c) == 1) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016cac6,"syna_tcm_parse_touch_report");
      }
      lVar29 = *(long *)(param_1 + 400);
      __s = param_4 + 2;
      if ((lVar29 == 0) || (uVar2 = *(uint *)(param_1 + 0x19c), uVar2 == 0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d26a,"syna_tcm_parse_touch_report");
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
LAB_0013b810:
      bVar10 = bVar13;
      uVar32 = uVar25;
      uVar19 = uVar12;
      uVar11 = local_98;
      uVar31 = uVar19 & 0xffffffff;
LAB_0013b81c:
      uVar24 = uStack_6c;
      if (uVar2 <= uStack_6c) {
switchD_0013b8d4_caseD_0:
        uStack_6c = uVar24;
LAB_0013cfcc:
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
        goto switchD_0013b8d4_caseD_0;
      case '\x01':
        bVar13 = true;
        goto joined_r0x0013bb04;
      case '\x02':
        bVar13 = false;
joined_r0x0013bb04:
        uVar12 = uVar20;
        uVar25 = 0;
        uStack_6c = uVar24;
        if ((uint)(iVar5 + iVar4) < uVar8) goto LAB_0013b810;
        goto LAB_0013b804;
      case '\x03':
        uVar28 = local_70 + iVar4;
        uStack_6c = uVar24;
        if (uVar8 <= uVar28 && uVar28 != uVar8) goto LAB_0013cfcc;
        if (uVar28 == uVar8) goto LAB_0013b804;
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
            goto LAB_0013b810;
          }
          bVar13 = true;
          local_98 = local_98 & 0xffffffff;
          if (uVar8 <= local_70) goto LAB_0013b810;
          local_98 = uVar11 & 0xffffffff;
        }
        else {
          uVar25 = uVar32 + 1;
          bVar13 = false;
          if (*(uint *)(param_1 + 0x18) <= uVar32 + 1) goto LAB_0013b810;
          bVar13 = false;
        }
        uVar25 = uVar32 + 1;
        uStack_6c = (uint)uVar19;
        goto LAB_0013b810;
      case '\x04':
        uVar18 = local_70 + 7 & 0xfffffff8;
        uVar22 = uVar24;
        goto LAB_0013b804;
      case '\x05':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        goto LAB_0013b804;
      case '\b':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        goto LAB_0013b804;
      case '\t':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        goto LAB_0013b804;
      case '\n':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        goto LAB_0013b804;
      case '\v':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        goto LAB_0013b804;
      case '\f':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        goto LAB_0013b804;
      case '\r':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        goto LAB_0013b804;
      case '\x0e':
        uVar22 = uStack_6c + 2;
        _local_70 = CONCAT44(uVar22,local_70);
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        goto LAB_0013b804;
      case '\x0f':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00168e14,"syna_tcm_get_touch_data",(uint)bVar7);
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
            pcVar23 = (code *)SoftwareBreakpoint(0x822a,0x13b990);
            uStack_6c = uVar24;
            (*pcVar23)();
          }
          uStack_6c = uVar24;
          iVar14 = (*pcVar23)(0x10,lVar29,&uStack_6c,param_2,&local_70,param_3,
                              *(undefined8 *)(param_1 + 0x3c8));
        }
        if (iVar14 < 0) {
          puVar21 = &DAT_001708ca;
LAB_0013d358:
                    /* WARNING: Subroutine does not return */
          _printk(puVar21,"syna_tcm_parse_touch_report");
        }
        goto LAB_0013b810;
      case '\x11':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
        }
        uVar18 = local_70 + bVar7;
        if (uVar8 < uVar18) {
          param_4[1] = 0;
          goto LAB_0013c25c;
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
LAB_0013c25c:
          local_98 = 0x100000000;
LAB_0013b804:
          uStack_6c = uVar22;
          local_70 = uVar18;
          uVar12 = uVar31;
          uVar25 = uVar32;
          bVar13 = bVar10;
        }
        goto LAB_0013b810;
      case '\x19':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        goto switchD_0013b8d4_caseD_1b;
      case '\x1c':
        bVar7 = *(byte *)(lVar29 + uVar20);
        if (bVar7 - 0x21 < 0xffffffe0) {
          uStack_6c = uStack_6c + 2;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00168e14,"syna_tcm_get_touch_data");
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
        if (pcVar23 != (code *)0x0) goto code_r0x0013b848;
        goto LAB_0013b88c;
      }
      uStack_6c = uStack_6c + 2;
      uVar25 = uVar32;
      local_70 = uVar24;
      goto LAB_0013b810;
    }
    puVar15 = &DAT_00169996;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar15,"syna_tcm_parse_touch_report");
code_r0x0013b848:
  if (*(int *)(pcVar23 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
    pcVar23 = (code *)SoftwareBreakpoint(0x8229,0x13b87c);
    (*pcVar23)();
  }
  iVar14 = (*pcVar23)(cVar6,lVar29,&uStack_6c,param_2,&local_70,param_3,
                      *(undefined8 *)(param_1 + 0x3b8));
  if (iVar14 < 0) goto code_r0x0013b888;
  goto LAB_0013b81c;
code_r0x0013b888:
  uVar20 = (ulong)uStack_6c;
LAB_0013b88c:
  if (cVar6 != -0x36) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016a78a,"syna_tcm_parse_touch_report",cVar6,
            *(undefined1 *)(lVar29 + (uVar20 & 0xffffffff)));
  }
  local_70 = local_70 + *(byte *)(lVar29 + (uVar20 & 0xffffffff));
  uStack_6c = (int)uVar20 + 1;
  goto LAB_0013b810;
switchD_0013b8d4_caseD_1b:
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016f5b4,"syna_tcm_get_gesture_data");
      }
    }
    goto LAB_0013b804;
  }
  if (*(int *)(pcVar23 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
    pcVar23 = (code *)SoftwareBreakpoint(0x822a,0x13b934);
    uStack_6c = uVar24;
    (*pcVar23)();
  }
  uStack_6c = uVar24;
  iVar14 = (*pcVar23)(0x1b,lVar29,&uStack_6c,param_2,&local_70,param_3,
                      *(undefined8 *)(param_1 + 0x3c8));
  if (-1 < iVar14) goto LAB_0013b810;
  puVar21 = &DAT_0016adbe;
  goto LAB_0013d358;
}



/* 0013d37c syna_tcm_set_touch_report_config */

void syna_tcm_set_touch_report_config(long param_1,long param_2,ulong param_3,int param_4)

{
  ushort uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *puVar4;
  long lVar5;
  undefined *puVar6;
  
  if (param_1 == 0) {
    puVar4 = &DAT_00168ac4;
  }
  else if ((param_2 == 0) || ((uint)param_3 == 0)) {
    puVar4 = &DAT_0016a0ba;
  }
  else {
    if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c4ce,"syna_tcm_set_touch_report_config",*(char *)(param_1 + 9));
    }
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171564,"syna_tcm_set_touch_report_config");
      }
      param_4 = 0;
    }
    if (*(short *)(param_1 + 0xb0) != 0) {
      uVar1 = *(ushort *)(param_1 + 0xbc);
      if ((uint)uVar1 < (uint)param_3) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00168742,"syna_tcm_set_touch_report_config",param_3,uVar1);
      }
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) {
        lVar5 = devm_kmalloc(lVar5,uVar1,0xdc0);
        if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016a7c8,"syna_tcm_set_touch_report_config");
        }
        iVar3 = FUN_001594d0(lVar5,(uint)uVar1,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff);
        if (iVar3 < 0) {
          puVar6 = &DAT_0016d814;
        }
        else {
          if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
            pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13d554);
            (*pcVar2)();
          }
          iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x26,lVar5,uVar1,0,param_4);
          puVar6 = &DAT_0016cafc;
          if (-1 < iVar3) {
            puVar6 = &DAT_0017006a;
          }
        }
                    /* WARNING: Subroutine does not return */
        _printk(puVar6,"syna_tcm_set_touch_report_config");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_alloc");
    }
    puVar4 = &DAT_00171e1e;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_tcm_set_touch_report_config");
}



/* 0013d594 syna_dev_set_sensibility_level */

void syna_dev_set_sensibility_level(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017c7bd,"syna_dev_set_sensibility_level","syna_dev_set_sensibility_level");
}



/* 0013d734 syna_tcm_testing_full_raw */

undefined8 syna_tcm_testing_full_raw(long param_1,long param_2,ulong param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  long lVar3;
  byte bVar4;
  byte bVar5;
  int iVar6;
  undefined *puVar7;
  undefined8 *puVar8;
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
    __mutex_init(&uStack_80,"(struct mutex *)ptr",&DAT_0015e111);
    uVar1 = *(undefined4 *)(param_1 + 0x1c);
    uVar2 = *(undefined4 *)(param_1 + 0x20);
    iVar6 = syna_tcm_run_production_test(param_1,5,&local_90,0);
    if (iVar6 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00170d70,"syna_tcm_testing_full_raw",5);
    }
    if (*(long *)(param_2 + 0xd8) != 0) {
      FUN_00158e34(*(long *)(param_2 + 0xd8),&local_90);
    }
    if ((param_3 & 1) == 0) {
      puVar8 = *(undefined8 **)(param_2 + 0x38);
      if (puVar8 == (undefined8 *)0x0) {
        bVar4 = 0;
      }
      else {
        bVar4 = FUN_00158ff4(local_90,local_88._4_4_,uVar1,uVar2,
                             syna_tcm_testing_0500_check_upper_bound,*puVar8,
                             *(undefined4 *)(puVar8 + 1));
      }
      puVar8 = *(undefined8 **)(param_2 + 0x40);
      if (puVar8 == (undefined8 *)0x0) {
        bVar5 = 0;
      }
      else {
        bVar5 = FUN_001590c0(local_90,local_88._4_4_,uVar1,uVar2,
                             syna_tcm_testing_0500_check_lower_bound,*puVar8,
                             *(undefined4 *)(puVar8 + 1));
      }
      bVar4 = bVar4 & bVar5 & 1;
      *(byte *)(param_2 + 0x10) = bVar4;
      puVar7 = &DAT_0016e33a;
      if (bVar4 == 0) {
        puVar7 = &DAT_00168c74;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar7 = &DAT_0016e33a;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168566,"syna_tcm_testing_full_raw",puVar7);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013d978 syna_tcm_testing_trx_trx_short */

undefined8 syna_tcm_testing_trx_trx_short(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined *puVar4;
  undefined8 *puVar5;
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
    __mutex_init(&uStack_70,"(struct mutex *)ptr",&DAT_0015ea71);
    iVar3 = syna_tcm_run_production_test(param_1,1,&local_80,0);
    if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00170d70,"syna_tcm_testing_trx_trx_short",1);
    }
    if (*(long *)(param_2 + 0xd8) != 0) {
      FUN_00158d60(*(long *)(param_2 + 0xd8),&local_80);
    }
    if ((param_3 & 1) == 0) {
      puVar5 = *(undefined8 **)(param_2 + 0x38);
      if (puVar5 == (undefined8 *)0x0) {
        *(undefined1 *)(param_2 + 0x10) = 0;
        puVar4 = &DAT_00168c74;
      }
      else {
        bVar2 = FUN_001442a0(local_80,local_78._4_4_,*puVar5,*(undefined4 *)(puVar5 + 1));
        *(byte *)(param_2 + 0x10) = bVar2 & 1;
        puVar4 = &DAT_0016e33a;
        if ((bVar2 & 1) == 0) {
          puVar4 = &DAT_00168c74;
        }
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar4 = &DAT_0016e33a;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168566,"syna_tcm_testing_trx_trx_short",puVar4);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013db60 _inline_copy_from_user */

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



/* 0013dbe0 FUN_0013dbe0 */

size_t FUN_0013dbe0(void)

{
  undefined8 uVar1;
  ulong uVar2;
  size_t __n;
  undefined8 in_x9;
  long unaff_x19;
  long unaff_x20;
  
  InstructionSynchronizationBarrier();
  daif = in_x9;
  __n = __arch_copy_from_user();
  uVar1 = daif;
  uVar2 = daif;
  daif = uVar2 | 0xc0;
  uVar2 = ttbr1_el1;
  ttbr0_el1 = (uVar2 & 0xffffffffffff) - 0x1000;
  ttbr1_el1 = uVar2 & 0xffffffffffff;
  InstructionSynchronizationBarrier();
  daif = uVar1;
  if (__n != 0) {
    memset((void *)(unaff_x20 + (unaff_x19 - __n)),0,__n);
  }
  return __n;
}



/* 0013dc60 get_finger_lock_flag */

void get_finger_lock_flag(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d38,"get_finger_lock_flag",*(undefined4 *)(tpd_cdev + 0x474));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0013dd34 get_tp_algo_item_id */

undefined8 get_tp_algo_item_id(char *param_1)

{
  undefined *puVar1;
  size_t sVar2;
  long lVar3;
  undefined1 *puVar4;
  
  puVar1 = PTR_s_algo_open_0012fc48;
  puVar4 = &ztp_algo_info_l;
  sVar2 = strlen(param_1);
  lVar3 = strnstr(param_1,puVar1,sVar2);
  puVar1 = PTR_s_jitter_pixel_0012fc58;
  if (lVar3 == 0) {
    puVar4 = &DAT_0012fc50;
    sVar2 = strlen(param_1);
    lVar3 = strnstr(param_1,puVar1,sVar2);
    puVar1 = PTR_s_jitter_timer_0012fc68;
    if (lVar3 == 0) {
      puVar4 = &DAT_0012fc60;
      sVar2 = strlen(param_1);
      lVar3 = strnstr(param_1,puVar1,sVar2);
      puVar1 = PTR_s_click_pixel_0012fc78;
      if (lVar3 == 0) {
        puVar4 = &DAT_0012fc70;
        sVar2 = strlen(param_1);
        lVar3 = strnstr(param_1,puVar1,sVar2);
        puVar1 = PTR_s_long_press_open_0012fc88;
        if (lVar3 == 0) {
          puVar4 = &DAT_0012fc80;
          sVar2 = strlen(param_1);
          lVar3 = strnstr(param_1,puVar1,sVar2);
          puVar1 = PTR_s_long_press_timer_0012fc98;
          if (lVar3 == 0) {
            puVar4 = &DAT_0012fc90;
            sVar2 = strlen(param_1);
            lVar3 = strnstr(param_1,puVar1,sVar2);
            puVar1 = PTR_s_long_press_pixel_0012fca8;
            if (lVar3 == 0) {
              puVar4 = &DAT_0012fca0;
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
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00181b65,"get_tp_algo_item_id",*puVar4);
}



/* 0013de9c get_tp_chip_id */

void get_tp_chip_id(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180d7e,"get_tp_chip_id");
}



/* 0013e090 set_finger_lock_flag */

undefined8 set_finger_lock_flag(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180784,"set_finger_lock_flag");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013e178 suspend_store */

undefined8 suspend_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e541,"suspend_store");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013e290 suspend_tp_need_awake */

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
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13e2c4);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1 & 1;
}



/* 0013e2e4 syna_cdev_create */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 syna_cdev_create(long param_1,undefined8 param_2)

{
  int iVar1;
  ulong uVar2;
  ulong uVar3;
  undefined *puVar4;
  
  DAT_0015eba8 = 0;
  DAT_0015ebb0 = 0;
  DAT_0015eb98 = 0;
  DAT_0015eba0 = 0;
  DAT_0015eb88 = 0;
  DAT_0015eb90 = 0;
  DAT_0015eb78 = 0;
  DAT_0015eb80 = 0;
  DAT_0015eb60 = 0;
  DAT_0015eb68 = 0;
  DAT_0015eb50 = 0;
  DAT_0015eb58 = 0;
  DAT_0015eb48 = 0;
  DAT_0015eb30 = 0;
  _DAT_0015eb38 = 0;
  DAT_0015eb20 = 0;
  DAT_0015eb28 = 0;
  DAT_0015eb10 = 0;
  DAT_0015eb18 = 0;
  DAT_0015eaf8 = 0;
  DAT_0015eb00 = 0;
  DAT_0015eb08 = 0;
  DAT_0015eb70 = 0;
  DAT_0015eb40 = 0;
  g_cdev_data = param_2;
  *(undefined8 *)(param_1 + 0x388) = 0;
  *(undefined8 *)(param_1 + 0x390) = 0;
  __mutex_init(&DAT_0015eb40,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  __mutex_init(&DAT_0015eb70,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  _DAT_0015eb38 = _DAT_0015eb38 & 0xffffffffffffff00;
  DAT_0015eaf8 = 0;
  DAT_0015eb00 = 0;
  __mutex_init(&DAT_0015eb08,"(struct mutex *)ptr",&syna_cdev_create_mutex_key);
  if (syna_cdev_create_cdev_major_num == 0) {
    iVar1 = alloc_chrdev_region((uint *)(param_1 + 0x380),0,1,"synaptics_tcm");
    if (-1 < iVar1) {
      syna_cdev_create_cdev_major_num = *(uint *)(param_1 + 0x380) >> 0x14;
      goto LAB_0013e400;
    }
    puVar4 = &DAT_0017ead1;
  }
  else {
    iVar1 = syna_cdev_create_cdev_major_num << 0x14;
    *(int *)(param_1 + 0x380) = iVar1;
    iVar1 = register_chrdev_region(iVar1,1,"synaptics_tcm");
    if (-1 < iVar1) {
LAB_0013e400:
      cdev_init(param_1 + 0x2f8,&device_fops);
      *(undefined1 **)(param_1 + 0x358) = &__this_module;
      iVar1 = cdev_add(param_1 + 0x2f8,*(undefined4 *)(param_1 + 0x380),1);
      if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00181f93,"syna_cdev_create");
      }
      uVar2 = class_create("synaptics_tcm");
      if (uVar2 < 0xfffffffffffff001) {
        *(code **)(uVar2 + 0x20) = syna_cdev_devnode;
        uVar3 = device_create(uVar2,0,*(uint *)(param_1 + 0x380),0,"tcm%d",
                              *(uint *)(param_1 + 0x380) & 0xfffff);
        if (uVar3 < 0xfffffffffffff001) {
          *(ulong *)(param_1 + 0x390) = uVar3;
          DAT_0015eba0 = DAT_0015eba0 & 0xffffffff;
          *(ulong *)(param_1 + 0x388) = uVar2;
          *(undefined4 *)(param_1 + 900) = 0;
          *(long *)(param_1 + 0x4f8) = param_1 + 0x4f8;
          *(long *)(param_1 + 0x500) = param_1 + 0x4f8;
          __init_waitqueue_head(param_1 + 0x508,"&tcm->wait_frame",&syna_cdev_create___key);
          return 0;
        }
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001825c2,"syna_cdev_create");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017fb25,"syna_cdev_create");
    }
    puVar4 = &DAT_00181d4b;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_cdev_create");
}



/* 0013e560 device_llseek */

void device_llseek(void)

{
  syna_cdev_llseek();
  return;
}



/* 0013e580 device_read */

void device_read(void)

{
  syna_cdev_read();
  return;
}



/* 0013e5a0 device_write */

void device_write(void)

{
  syna_cdev_write();
  return;
}



/* 0013e5c0 device_ioctl */

void device_ioctl(void)

{
  syna_cdev_ioctls();
  return;
}



/* 0013e5e0 device_mmap */

void device_mmap(void)

{
  syna_mmap();
  return;
}



/* 0013e600 syna_cdev_read */

undefined8 syna_cdev_read(undefined8 param_1,undefined8 param_2,long param_3)

{
  if (param_3 != 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(&DAT_0015eb40);
  }
  return 0;
}



/* 0013e6a4 syna_cdev_remove */

void syna_cdev_remove(long param_1)

{
  if (param_1 != 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(&DAT_0015eb70);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017dfa9,"syna_cdev_remove");
}



/* 0013e838 syna_cdev_write */

undefined8 syna_cdev_write(undefined8 param_1,undefined8 param_2,long param_3)

{
  if (param_3 != 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(&DAT_0015eb40);
  }
  return 0;
}



/* 0013e8dc syna_charger_notify_call */

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



/* 0013e964 syna_dev_do_reflash */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180798,"syna_dev_do_reflash","syna_firmware.img");
  }
  iVar2 = syna_tcm_do_fw_update(lVar1,*(undefined8 *)(local_30 + 2),*local_30,0,param_2 & 1);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e1ca,"syna_dev_do_reflash");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f2f4,"syna_dev_do_reflash",*(undefined1 *)(lVar1 + 9));
}



/* 0013ea6c syna_dev_free_input_events */

void syna_dev_free_input_events(long param_1)

{
  if (*(long *)(param_1 + 0x3b0) != 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x278);
  }
  return;
}



/* 0013eb88 syna_dev_get_frame_data */

void syna_dev_get_frame_data(undefined8 param_1,undefined4 param_2)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017fe27,"syna_dev_get_frame_data",param_2);
}



/* 0013ec04 syna_dev_helper_work */

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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017fb50,"syna_dev_helper_work",*(undefined1 *)(*plVar4 + 0xe1),
                *(undefined1 *)(*plVar4 + 0xe9));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017f324,"syna_dev_helper_work");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e750,"syna_dev_helper_work");
    }
  }
  *(undefined4 *)(param_1 + -8) = 0;
  return;
}



/* 0013ed3c syna_dev_process_unexpected_reset */

undefined8 syna_dev_process_unexpected_reset(void)

{
  long in_x3;
  
  if (in_x3 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&unk_38D56,"syna_dev_process_unexpected_reset");
  }
  if (*(int *)(in_x3 + 0x57c) != 1) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_32499,"syna_dev_process_unexpected_reset");
}



/* 0013ede0 syna_dev_remove */

void syna_dev_remove(long param_1)

{
  if (*(long *)(param_1 + 0xa8) == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181365,"syna_dev_remove");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f358,"syna_dev_remove");
}



/* 0013ef18 syna_dev_set_charger_mode */

void syna_dev_set_charger_mode(undefined8 param_1,undefined4 param_2)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017fe27,"syna_dev_set_charger_mode",param_2);
}



/* 0013ef8c syna_dev_set_play_game */

void syna_dev_set_play_game(undefined8 param_1,undefined4 param_2)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017fe27,"syna_dev_set_play_game",param_2);
}



/* 0013f000 syna_dev_set_screen_on_fp_mode */

void syna_dev_set_screen_on_fp_mode(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180302,"syna_dev_set_screen_on_fp_mode");
}



/* 0013f088 syna_dev_set_up_input_device */

undefined8 syna_dev_set_up_input_device(long *param_1)

{
  long lVar1;
  
  if (*(char *)(*param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e78e,"syna_dev_set_up_input_device");
  }
  syna_dev_free_input_events();
  lVar1 = *param_1;
  if ((*(int *)(lVar1 + 0x10) == 0) && (*(int *)(lVar1 + 0x14) == 0)) {
    return 0;
  }
  if (((int)param_1[0x77] == *(int *)(lVar1 + 0x10)) &&
     (*(int *)((long)param_1 + 0x3bc) == *(int *)(lVar1 + 0x14))) {
    if (*(uint *)(param_1 + 0x78) == *(uint *)(lVar1 + 0x18)) {
      if (10 < *(uint *)(param_1 + 0x78)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0018293b,"syna_dev_check_input_params");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00182de9,"syna_dev_check_input_params");
    }
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(param_1 + 0x4f);
}



/* 0013f460 syna_ghost_check_reset */

void syna_ghost_check_reset(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  syna_dev_free_input_events(lVar1);
  syna_spi_hw_reset(*(undefined8 *)(lVar1 + 0x270));
  syna_recovery_game_mode_after_reset(lVar1);
  syna_dev_set_screen_on_fp_mode(lVar1,0);
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00181fcb,"syna_ghost_check_reset");
}



/* 0013f4c4 syna_hw_interface_init */

void syna_hw_interface_init(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f36d,"syna_hw_interface_init");
}



/* 0013f58c syna_ioctl */

void syna_ioctl(long param_1,int param_2)

{
  long lVar1;
  undefined8 uVar2;
  long lVar3;
  undefined8 local_58;
  undefined8 local_50;
  undefined8 uStack_48;
  undefined8 local_40;
  undefined8 uStack_38;
  undefined4 local_2c;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = *(long *)(param_1 + 0x20);
  local_2c = 0;
  if (param_2 == -0x3ffb8ffd) {
    local_2c = *(undefined4 *)(lVar3 + 0x438);
                    /* WARNING: Subroutine does not return */
    mutex_lock(lVar3 + 0x470);
  }
  if (param_2 == -0x3ffb8ffe) {
    local_2c = *(undefined4 *)(lVar3 + 0x5e0);
                    /* WARNING: Subroutine does not return */
    mutex_lock(lVar3 + 0x470);
  }
  if (param_2 == -0x3ffb8fff) {
    if (*(int *)(lVar3 + 0x5e0) == 0) {
      uVar2 = 0xfffffffffffffff5;
    }
    else {
      if (*(int *)(lVar3 + 0x468) == 0) {
        local_40 = 0;
        uStack_38 = 0;
        local_50 = 0;
        uStack_48 = 0;
        local_58 = 0;
        init_wait_entry(&local_58,0);
        while( true ) {
          lVar1 = prepare_to_wait_event(lVar3 + 0x448,&local_58,1);
          if (*(int *)(lVar3 + 0x468) != 0) break;
          if (lVar1 != 0) goto LAB_0013f7c0;
          schedule();
        }
        finish_wait(lVar3 + 0x448,&local_58);
      }
LAB_0013f7c0:
      uVar2 = 0;
      *(undefined4 *)(lVar3 + 0x468) = 0;
    }
  }
  else {
    uVar2 = 0xffffffffffffffe7;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 0013f804 syna_pal_mem_cpy_1 */

undefined8 syna_pal_mem_cpy_1(void *param_1,uint param_2,void *param_3,uint param_4,uint param_5)

{
  if (param_1 == (void *)0x0) {
    return 0xffffffea;
  }
  if ((param_5 <= param_2) && (param_5 <= param_4)) {
    memcpy(param_1,param_3,(ulong)param_5);
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00181648,"syna_pal_mem_cpy",param_4,param_2);
}



/* 0013f87c syna_poll */

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
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13f8c0);
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



/* 0013f8ec syna_spi_enable_irq */

undefined8 syna_spi_enable_irq(long *param_1)

{
  long lVar1;
  
  lVar1 = *param_1;
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181dbe,"syna_spi_enable_irq");
  }
  if (*(int *)(lVar1 + 0xb8) == 0) {
    return 0xfffffffa;
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(lVar1 + 0xc0);
}



/* 0013f9c8 syna_spi_get_gpio */

undefined8 syna_spi_get_gpio(undefined4 param_1,int param_2,undefined4 param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  undefined *puVar3;
  
  iVar1 = scnprintf(param_4,0x10,"tcm_gpio_%d\n",param_1);
  if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00182359,"syna_spi_get_gpio");
  }
  iVar1 = gpio_request(param_1,param_4);
  if (iVar1 < 0) {
    puVar3 = &DAT_00182c16;
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
    puVar3 = &DAT_00180d8a;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_spi_get_gpio",param_1);
}



/* 0013faac syna_spi_hw_reset */

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
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0018138d,"syna_spi_hw_reset");
}



/* 0013fb40 syna_sysfs_create_dir */

undefined8 syna_sysfs_create_dir(long param_1,long param_2)

{
  int iVar1;
  long lVar2;
  
  lVar2 = kobject_create_and_add("sysfs",param_2 + 0x10);
  *(long *)(param_1 + 0x398) = lVar2;
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00182e2d,"syna_sysfs_create_dir");
  }
  iVar1 = sysfs_create_group(lVar2,attr_group);
  if (-1 < iVar1) {
    iVar1 = syna_testing_create_dir(param_1);
    if (-1 < iVar1) {
      return 0;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0018237f,"syna_sysfs_create_dir");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f3b5,"syna_sysfs_create_dir");
}



/* 0013fc18 syna_sysfs_debug_store */

undefined8
syna_sysfs_debug_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  int local_2c;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  local_2c = 0;
  lVar3 = *(long *)(*(long *)(param_1 + 0x18) + 0x98);
  iVar1 = kstrtouint(param_3,10,&local_2c);
  if (iVar1 == 0) {
    if (local_2c == 0) {
      if (*(long *)(lVar3 + 0x3a0) != 0) {
        sysfs_remove_group(*(long *)(lVar3 + 0x3a0),attr_debug_group);
        kobject_put(*(undefined8 *)(lVar3 + 0x3a0));
        *(undefined8 *)(lVar3 + 0x3a0) = 0;
      }
    }
    else {
      if ((local_2c != 1) || (*(long *)(lVar3 + 0x3a0) != 0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e1ec,"syna_sysfs_debug_store");
      }
      lVar2 = kobject_create_and_add("utility",*(undefined8 *)(lVar3 + 0x398));
      *(long *)(lVar3 + 0x3a0) = lVar2;
      if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e7f5,"syna_sysfs_debug_store");
      }
      iVar1 = sysfs_create_group(lVar2,attr_debug_group);
      if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017eb3d,"syna_sysfs_debug_store");
      }
    }
  }
  else {
    param_4 = 0xffffffffffffffea;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0013fd54 syna_sysfs_pwr_store */

long syna_sysfs_pwr_store(long param_1,undefined8 param_2,char *param_3,int param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(*(long *)(param_1 + 0x18) + 0x18);
  lVar4 = *(long *)(lVar3 + 0x98);
  if ((*(byte *)(lVar4 + 0x582) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017fb8c,"syna_sysfs_pwr_store");
  }
  iVar1 = strncmp(param_3,"resume",6);
  if (iVar1 == 0) {
    pcVar2 = *(code **)(lVar4 + 0x6c0);
  }
  else {
    iVar1 = strncmp(param_3,"suspend",7);
    if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&UNK_0017e591,"syna_sysfs_pwr_store",param_3);
    }
    pcVar2 = *(code **)(lVar4 + 0x6c8);
  }
  if (pcVar2 != (code *)0x0) {
    if (*(int *)(pcVar2 + -4) != 0x2a703c0b) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x13fdd8);
      (*pcVar2)();
    }
    (*pcVar2)(lVar3);
  }
  return (long)param_4;
}



/* 0013fe28 FUN_0013fe28 */

void FUN_0013fe28(undefined8 param_1,long param_2)

{
                    /* WARNING: Subroutine does not return */
  _printk(param_1,param_2 + 0x686);
}



/* 0013fe40 syna_sysfs_remove_dir */

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
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017eb6d,"syna_sysfs_remove_dir");
}



/* 0013fec4 syna_tcm_buf_unlock_0 */

void syna_tcm_buf_unlock_0(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\x01') {
    *(undefined1 *)(param_1 + 0x40) = 0;
    mutex_unlock(param_1 + 0x10);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180db7,"syna_tcm_buf_unlock");
}



/* 0013ff30 syna_tcm_detect_device */

undefined8 syna_tcm_detect_device(long param_1,uint param_2,uint param_3)

{
  int iVar1;
  undefined8 uVar2;
  undefined1 *puVar3;
  
  if (param_1 == 0) {
    puVar3 = &DAT_0017eb6d;
  }
  else {
    *(undefined2 *)(param_1 + 8) = 0;
    if ((param_2 & 0xf) == 1) {
      iVar1 = syna_tcm_v1_detect(param_1,param_2 >> 7 & 1,param_3 & 1);
      if (iVar1 < 0) {
        if (*(int *)(param_1 + 0x248) != 0) {
          puVar3 = *(undefined1 **)(param_1 + 0x240);
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0017e835,"syna_tcm_detect_device",*puVar3,puVar3[1],puVar3[2],puVar3[3]);
        }
        uVar2 = 0xffffff0b;
      }
      else {
        if ((*(long *)(param_1 + 0x398) == 0) || (*(long *)(param_1 + 0x390) == 0)) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00182639,"syna_tcm_detect_device");
        }
        if ((param_2 >> 7 & 1) == 0) {
          if (*(char *)(param_1 + 9) == '\v') {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_00182c53,"syna_tcm_detect_device");
          }
          if (*(char *)(param_1 + 9) == '\x01') {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0017dfd9,"syna_tcm_detect_device",*(undefined4 *)(param_1 + 0xc),
                    param_1 + 0x82);
          }
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0018169b,"syna_tcm_detect_device");
        }
        uVar2 = 1;
      }
      return uVar2;
    }
    if ((param_2 & 0xf) == 2) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e5b2,"syna_tcm_detect_device",2);
    }
    puVar3 = &DAT_0017f3df;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_tcm_detect_device");
}



/* 001400c0 syna_tcm_enable_predict_reading */

void syna_tcm_enable_predict_reading(long param_1,byte param_2)

{
  char *pcVar1;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017eb6d,"syna_tcm_enable_predict_reading");
  }
  *(byte *)(param_1 + 0x37a) = param_2 & 1;
  *(undefined4 *)(param_1 + 0x37c) = 0;
  pcVar1 = "enabled";
  if ((param_2 & 1) == 0) {
    pcVar1 = "disabled";
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f932,"syna_tcm_enable_predict_reading",pcVar1);
}



/* 00140134 syna_tcm_enable_report */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017eb6d,"syna_tcm_enable_report");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017ee3b,"syna_tcm_enable_report");
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00182668,"syna_tcm_enable_report");
    }
    param_4 = 0;
  }
  uVar5 = 5;
  if ((param_3 & 1) == 0) {
    uVar5 = 6;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x1401c4);
    (*pcVar3)();
  }
  iVar4 = (**(code **)(param_1 + 0x398))(param_1,uVar5,local_3c,1,0,param_4);
  if (iVar4 < 0) {
    pcVar1 = "enable";
    if ((param_3 & 1) == 0) {
      pcVar1 = "disable";
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181b86,"syna_tcm_enable_report",uVar5,pcVar1,local_3c[0]);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001402a4 syna_tcm_get_event_data */

undefined8 syna_tcm_get_event_data(long param_1,byte *param_2,long param_3)

{
  byte bVar1;
  code *pcVar2;
  int iVar3;
  undefined8 uVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  
  if (param_1 == 0) {
    puVar5 = &DAT_0017eb6d;
LAB_00140368:
                    /* WARNING: Subroutine does not return */
    _printk(puVar5,"syna_tcm_get_event_data");
  }
  if (param_2 == (byte *)0x0) {
    puVar5 = &DAT_00180de7;
    goto LAB_00140368;
  }
  if (*(int *)(*(code **)(param_1 + 0x390) + -4) != -0x1ef225df) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1402ec);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x390))(param_1,param_2);
  if ((int)uVar4 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00182013,"syna_tcm_get_event_data");
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
        puVar6 = &DAT_001826ab;
        goto LAB_001403b4;
      }
      uVar4 = 0;
    }
    if ((bVar1 - 1 < 0xf) && (*(int *)(param_1 + 0x154) != 0)) {
      iVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
      if (iVar3 < 0) {
        bVar1 = *param_2;
        puVar6 = &DAT_00182ead;
LAB_001403b4:
                    /* WARNING: Subroutine does not return */
        _printk(puVar6,"syna_tcm_get_event_data",bVar1);
      }
      uVar4 = 0;
    }
  }
  return uVar4;
}



/* 001403e4 syna_tcm_set_custom_gesture_callback */

undefined8 syna_tcm_set_custom_gesture_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x3d0) = param_2;
    *(undefined8 *)(param_1 + 0x3c8) = param_3;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017eb6d,"syna_tcm_set_custom_gesture_callback");
}



/* 00140430 syna_tcm_set_custom_touch_entity_callback */

undefined8
syna_tcm_set_custom_touch_entity_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x3c0) = param_2;
    *(undefined8 *)(param_1 + 0x3b8) = param_3;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017eb6d,"syna_tcm_set_custom_touch_entity_callback");
}



/* 0014047c syna_tcm_set_report_dispatcher */

void syna_tcm_set_report_dispatcher(long param_1,byte param_2,undefined8 param_3,undefined8 param_4)

{
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017eb6d,"syna_tcm_set_report_dispatcher");
  }
  if (param_2 < 0x10) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00182c77,"syna_tcm_set_report_dispatcher",param_2);
  }
  param_1 = param_1 + (ulong)param_2 * 0x10;
  *(undefined8 *)(param_1 + 0x3e0) = param_3;
  *(undefined8 *)(param_1 + 0x3d8) = param_4;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017eb96,"syna_tcm_set_report_dispatcher",param_2);
}



/* 0014053c syna_tcm_testing_0500_check_lower_bound */

bool syna_tcm_testing_0500_check_lower_bound
               (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  ushort uVar2;
  
  uVar1 = *param_1;
  uVar2 = *param_2;
  if (uVar2 <= uVar1) {
    return uVar2 <= uVar1;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_34372,"syna_tcm_testing_0500_check_lower_bound",param_4,param_3,uVar1,uVar2);
}



/* 001405a4 syna_tcm_testing_0500_check_upper_bound */

bool syna_tcm_testing_0500_check_upper_bound
               (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  ushort uVar2;
  
  uVar1 = *param_1;
  uVar2 = *param_2;
  if (uVar1 <= uVar2) {
    return uVar1 <= uVar2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3C643,"syna_tcm_testing_0500_check_upper_bound",param_4,param_3,uVar1,uVar2);
}



/* 0014060c syna_tcm_testing_0A00_check_lower_bound */

bool syna_tcm_testing_0A00_check_lower_bound
               (short *param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  
  sVar1 = *param_1;
  sVar2 = *param_2;
  if (sVar2 <= sVar1) {
    return (int)sVar2 <= (int)sVar1;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_34372,"syna_tcm_testing_0A00_check_lower_bound",param_4,param_3,(int)sVar1,(int)sVar2
         );
}



/* 00140674 syna_tcm_testing_0A00_check_upper_bound */

bool syna_tcm_testing_0A00_check_upper_bound
               (short *param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  
  sVar1 = *param_1;
  sVar2 = *param_2;
  if (sVar1 <= sVar2) {
    return (int)sVar1 <= (int)sVar2;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3C643,"syna_tcm_testing_0A00_check_upper_bound",param_4,param_3,(int)sVar1,(int)sVar2
         );
}



/* 001406dc syna_tcm_v1_check_max_rw_size */

undefined8 syna_tcm_v1_check_max_rw_size(long param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ushort uVar4;
  undefined1 *puVar5;
  
  if (param_1 == 0) {
    puVar5 = &DAT_0017eb6d;
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
    puVar5 = &DAT_00180540;
  }
  else {
    puVar5 = &DAT_001803bc;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_v1_check_max_rw_size");
}



/* 00140784 syna_tcm_v1_terminate */

void syna_tcm_v1_terminate(long param_1)

{
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&unk_3365A,"syna_tcm_v1_terminate");
  }
  if (*(int *)(param_1 + 0x1f8) != 1) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3B33C,"syna_tcm_v1_terminate",*(undefined1 *)(param_1 + 0x1fc));
}



/* 00140810 syna_testing_create_dir */

undefined8 syna_testing_create_dir(long param_1)

{
  int iVar1;
  long lVar2;
  
  lVar2 = kobject_create_and_add("testing",*(undefined8 *)(param_1 + 0x398));
  *(long *)(param_1 + 0x3a8) = lVar2;
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001810c6,"syna_testing_create_dir");
  }
  iVar1 = sysfs_create_group(lVar2,attr_testing_group);
  if (-1 < iVar1) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f3b5,"syna_testing_create_dir");
}



/* 001408ac syna_testing_pt01_zte */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00182982,"syna_testing_pt01_zte");
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
      pcVar4 = (code *)SoftwareBreakpoint(0x8229,0x140984);
      (*pcVar4)();
    }
    iVar5 = (**(code **)(puVar7 + 6))(*param_1,puVar7,0);
    if (iVar5 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00183119,"syna_testing_pt01_zte",*(undefined8 *)(puVar7 + 2));
    }
    puVar2 = &DAT_00181962;
    if (*(char *)(puVar7 + 4) == '\0') {
      puVar2 = &DAT_001810f6;
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
      iVar5 = scnprintf(lVar6 + uVar8,0x1000 - uVar8,&DAT_001813a7);
      uVar8 = (ulong)(iVar5 + uVar1);
    }
    tpd_copy_to_tp_firmware_data(lVar6);
    lVar3 = local_90;
    if ((char)local_50 != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017f2c1,"syna_tcm_buf_release");
    }
    lVar9 = syna_request_managed_device();
    if (lVar9 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828fa,"syna_pal_mem_free");
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



/* 00140b60 syna_ts_register_for_panel_events */

void syna_ts_register_for_panel_events(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = panel_event_notifier_register(1,0,active_panel,syna_ts_panel_notifier_callback,param_1);
  if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181e05,"syna_ts_register_for_panel_events");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0018205d,"syna_ts_register_for_panel_events",active_panel);
}



/* 00140bec tp_alloc_tp_firmware_data */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0018270f);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017e24e);
}



/* 00140d50 tp_ghost_check_work */

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
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00182735);
}



/* 00140e04 tp_palm_mode_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x140ea0);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f08e,"tp_palm_mode_read",*(undefined4 *)(lVar2 + 0x478));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00140ef8 tp_palm_mode_write */

undefined8 tp_palm_mode_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180784,"tp_palm_mode_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00140fcc tp_pen_only_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x141068);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017fbdb,"tp_pen_only_read",*(undefined1 *)(lVar2 + 0x441));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 001410c0 tp_pen_only_write */

undefined8 tp_pen_only_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0018313d,"tp_pen_only_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001411d4 tp_self_test_read */

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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017ebd0);
    }
    if (*param_4 == 0) {
      pcVar4 = *(code **)(lVar5 + 0xf98);
      if (pcVar4 == (code *)0x0) {
        lVar5 = 0;
      }
      else {
        if (*(int *)(pcVar4 + -4) != 0x64f25fb2) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x14127c);
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



/* 0014133c tp_self_test_write */

undefined8 tp_self_test_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  code *pcVar3;
  
  lVar1 = tpd_cdev;
  iVar2 = tp_alloc_tp_firmware_data(0x100000);
  if (iVar2 != 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f959);
  }
  pcVar3 = *(code **)(lVar1 + 4000);
  if (pcVar3 != (code *)0x0) {
    if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14138c);
      (*pcVar3)();
    }
    (*pcVar3)(lVar1);
  }
  lVar1 = tpd_cdev;
  **(ulong **)(tpd_cdev + 0xc58) = (ulong)*(uint *)(tpd_cdev + 0x448);
  *(undefined4 *)(lVar1 + 0x448) = 0;
  return param_3;
}



/* 001413d4 tp_wake_gesture_write */

undefined8 tp_wake_gesture_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e541,"tp_wake_gesture_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001414a8 tpd_copy_to_tp_firmware_data */

int tpd_copy_to_tp_firmware_data(char *param_1)

{
  uint uVar1;
  long lVar2;
  size_t sVar3;
  ulong *puVar4;
  int iVar5;
  ulong uVar6;
  
  lVar2 = tpd_cdev;
  puVar4 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar4 != (ulong *)0x0) && (puVar4[1] != 0)) {
    uVar6 = *puVar4;
    if (uVar6 != 0) {
      uVar1 = *(uint *)(tpd_cdev + 0x448);
      if (uVar1 < uVar6) {
        sVar3 = strlen(param_1);
        iVar5 = (int)uVar6 - uVar1;
        if (uVar1 + (int)sVar3 <= uVar6) {
          iVar5 = (int)sVar3;
        }
        memcpy((void *)(*(long *)(*(long *)(lVar2 + 0xc58) + 8) + (ulong)*(uint *)(lVar2 + 0x448)),
               param_1,(long)iVar5);
        *(int *)(lVar2 + 0x448) = *(int *)(lVar2 + 0x448) + iVar5;
      }
      else {
        iVar5 = 0;
      }
      return iVar5;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181bc5);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001829a6);
}



/* 00141574 tpd_get_singlegamegesture */

void tpd_get_singlegamegesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x454) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b8);
                    /* WARNING: Subroutine does not return */
  _printk(&unk_32D26,"tpd_get_singlegamegesture",*(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5bc)
         );
}



/* 001415dc tpd_init_tpinfo */

void tpd_init_tpinfo(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017f358,"tpd_init_tpinfo");
}



/* 00141660 tpd_probe_work_init */

void tpd_probe_work_init(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017e271,"tpd_probe_work_init");
}



/* 001416dc tpd_proc_deinit */

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
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3CE70,"tpd_proc_deinit");
}



/* 00141900 tpd_set_screen_off_awake */

undefined8 tpd_set_screen_off_awake(long param_1,undefined4 param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  *(undefined4 *)(lVar1 + 0x5f4) = param_2;
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(undefined4 *)(lVar1 + 0x5f0) = param_2;
    is_screen_off_awake_mode = param_2;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3B5E0,"tpd_set_screen_off_awake");
}



/* 0014195c tpd_set_singleaodgesture */

void tpd_set_singleaodgesture(long param_1,int param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(uint *)(lVar1 + 0x5b4) = (uint)(0 < param_2);
    *(uint *)(lVar1 + 0x5b0) =
         *(uint *)(lVar1 + 0x5b8) | *(uint *)(lVar1 + 0x5bc) | (uint)(0 < param_2);
                    /* WARNING: Subroutine does not return */
    _printk(&unk_3526D,"tpd_set_singleaodgesture");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3B5E0,"tpd_set_singleaodgesture");
}



/* 00141a10 tpd_set_singlefpgesture */

void tpd_set_singlefpgesture(long param_1,int param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(uint *)(lVar1 + 0x5b8) = (uint)(0 < param_2);
    *(uint *)(lVar1 + 0x5b0) =
         *(uint *)(lVar1 + 0x5b4) | *(uint *)(lVar1 + 0x5bc) | (uint)(0 < param_2);
                    /* WARNING: Subroutine does not return */
    _printk(&unk_3526D,"tpd_set_singlefpgesture");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3B5E0,"tpd_set_singlefpgesture");
}



/* 00141ac4 tpd_set_singlegamegesture */

void tpd_set_singlegamegesture(long param_1,int param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(uint *)(lVar1 + 0x5bc) = (uint)(0 < param_2);
    *(uint *)(lVar1 + 0x5b0) =
         *(uint *)(lVar1 + 0x5b4) | *(uint *)(lVar1 + 0x5b8) | (uint)(0 < param_2);
                    /* WARNING: Subroutine does not return */
    _printk(&unk_3526D,"tpd_set_singlegamegesture");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&unk_3B5E0,"tpd_set_singlegamegesture");
}



/* 00141b8c tpd_test_cmd_show */

void tpd_test_cmd_show(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&unk_34878,"tpd_test_cmd_show");
}



/* 00141be8 tpd_touch_report */

void tpd_touch_report(void)

{
                    /* WARNING: Subroutine does not return */
  mutex_lock(tpd_cdev + 0xc90);
}



/* 00141ce8 tpd_workqueue_deinit */

void tpd_workqueue_deinit(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&unk_322AA,"tpd_workqueue_deinit");
}



/* 00141d88 tpd_workqueue_init */

void tpd_workqueue_init(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180192);
}



/* 00141f10 tpd_zlog_check */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 tpd_zlog_check(uint param_1)

{
  long lVar1;
  long lVar2;
  code *pcVar3;
  undefined4 uVar4;
  ulong uVar5;
  ulong uVar6;
  
  if (0x12 < param_1) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x141fbc);
    (*pcVar3)();
  }
  uVar6 = (ulong)param_1;
  lVar1 = tpd_cdev + 0xab8;
  if (*(long *)(lVar1 + (ulong)param_1 * 8) != 0) {
    lVar2 = tpd_cdev + 0xb50;
    uVar5 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar6 * 8));
    if (((uint)(uVar5 >> 5) & 0x7ffffff) < 0x753) {
      uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar6 * 8));
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e053,uVar4,uVar6);
    }
  }
  *(long *)(lVar1 + uVar6 * 8) = *(long *)(lVar1 + uVar6 * 8) + 1;
  return 0;
}



/* 00141fc0 tpd_zlog_init */

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



/* 0014207c tpd_zlog_record_notify */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e2a6);
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,1);
      }
      lVar7 = *(long *)(lVar2 + 0xac0) + 1;
    }
    *(long *)(lVar2 + 0xac0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb58) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001829c5,*(undefined8 *)(lVar1 + 0xac0),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,2);
      }
      lVar7 = *(long *)(lVar2 + 0xac8) + 1;
    }
    *(long *)(lVar2 + 0xac8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb60) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00182761,*(undefined8 *)(lVar1 + 0xac8),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,3);
      }
      lVar7 = *(long *)(lVar2 + 0xad0) + 1;
    }
    *(long *)(lVar2 + 0xad0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb68) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e8fe,*(undefined8 *)(lVar1 + 0xad0),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,4);
      }
      lVar7 = *(long *)(lVar2 + 0xad8) + 1;
    }
    *(long *)(lVar2 + 0xad8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb70) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017f48b,*(undefined8 *)(lVar1 + 0xad8),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,5);
      }
      lVar7 = *(long *)(lVar2 + 0xae0) + 1;
    }
    *(long *)(lVar2 + 0xae0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb78) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0018278e,*(undefined8 *)(lVar1 + 0xae0),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,6);
      }
      lVar7 = *(long *)(lVar2 + 0xae8) + 1;
    }
    *(long *)(lVar2 + 0xae8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb80) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e610,*(undefined8 *)(lVar1 + 0xae8),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,7);
      }
      lVar7 = *(long *)(lVar2 + 0xaf0) + 1;
    }
    *(long *)(lVar2 + 0xaf0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb88) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00182f52,*(undefined8 *)(lVar1 + 0xaf0),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,8);
      }
      lVar7 = *(long *)(lVar2 + 0xaf8) + 1;
    }
    *(long *)(lVar2 + 0xaf8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb90) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00180e6e,*(undefined8 *)(lVar1 + 0xaf8),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,9);
      }
      lVar7 = *(long *)(lVar2 + 0xb00) + 1;
    }
    *(long *)(lVar2 + 0xb00) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb98) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e952,*(undefined8 *)(lVar1 + 0xb00),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,10);
      }
      lVar7 = *(long *)(lVar2 + 0xb08) + 1;
    }
    *(long *)(lVar2 + 0xb08) = lVar7;
    *(long *)(lVar1 + 0xba0) = _jiffies;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001813e1,*(undefined8 *)(lVar1 + 0xb08),*(undefined8 *)(lVar1 + 0xbe8));
  case 0xb:
    if (*(long *)(tpd_cdev + 0xb10) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xba8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xba8));
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,0xb);
      }
      lVar7 = *(long *)(lVar2 + 0xb10) + 1;
    }
    *(long *)(lVar2 + 0xb10) = lVar7;
    *(long *)(lVar1 + 0xba8) = _jiffies;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017fead,*(undefined8 *)(lVar1 + 0xb10),*(undefined8 *)(lVar1 + 0xbe8));
  case 0xc:
    if (*(long *)(tpd_cdev + 0xb18) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbb0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbb0));
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,0xc);
      }
      lVar7 = *(long *)(lVar2 + 0xb18) + 1;
    }
    *(long *)(lVar2 + 0xb18) = lVar7;
    *(long *)(lVar1 + 0xbb0) = _jiffies;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001820a9,*(undefined8 *)(lVar1 + 0xb18),*(undefined8 *)(lVar1 + 0xbe8));
  case 0xd:
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0018173b,*(undefined8 *)(lVar1 + 0xbe8));
  case 0xe:
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0018082e,*(undefined8 *)(lVar1 + 0xbe8));
  case 0xf:
    if (*(long *)(tpd_cdev + 0xb30) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbc8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbc8));
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,0xf);
      }
      lVar7 = *(long *)(lVar2 + 0xb30) + 1;
    }
    *(long *)(lVar2 + 0xb30) = lVar7;
    *(long *)(lVar1 + 0xbc8) = _jiffies;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e97f,*(undefined8 *)(lVar1 + 0xb30),*(undefined8 *)(lVar1 + 0xbe8));
  case 0x10:
    if (*(long *)(tpd_cdev + 0xb38) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbd0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbd0));
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,0x10);
      }
      lVar7 = *(long *)(lVar2 + 0xb38) + 1;
    }
    *(long *)(lVar2 + 0xb38) = lVar7;
    *(long *)(lVar1 + 0xbd0) = _jiffies;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e2c6,*(undefined8 *)(lVar1 + 0xb38),*(undefined8 *)(lVar1 + 0xbe8));
  case 0x11:
    if (*(long *)(tpd_cdev + 0xb40) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbd8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbd8));
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,0x11);
      }
      lVar7 = *(long *)(lVar2 + 0xb40) + 1;
    }
    *(long *)(lVar2 + 0xb40) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xbd8) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0018113d,*(undefined8 *)(lVar1 + 0xb40),*(undefined8 *)(lVar1 + 0xbe8));
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e053,uVar4,0x12);
      }
      lVar7 = *(long *)(lVar2 + 0xb48) + 1;
    }
    *(long *)(lVar2 + 0xb48) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xbe0) = _jiffies;
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00181171,*(undefined8 *)(lVar1 + 0xb48),*(undefined8 *)(lVar1 + 0xbe8));
    }
  }
  memset(*(void **)(lVar1 + 0xbe8),0,0x800);
  return;
}



/* 00142dfc tpd_zlog_register */

void tpd_zlog_register(long param_1)

{
  long lVar1;
  
  if (*(long *)(param_1 + 0xa48) != 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001811a7);
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f506);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001801b5,"tpd_zlog_register");
}



/* 00142f08 ufp_mac_init */

undefined8 ufp_mac_init(void)

{
  DAT_0015fb50 = alloc_workqueue(&DAT_0018019f,0x6000a,1,"single_tap_cancel");
  DAT_0015fae8 = 0xfffffffe00000;
  DAT_0015faf0 = &DAT_0015faf0;
  DAT_0015faf8 = &DAT_0015faf0;
  DAT_0015fb00 = ufp_single_tap_work;
  init_timer_key(&DAT_0015fb08,&delayed_work_timer_fn,0x200000,0,0);
  DAT_0015fae0 = 0;
  wakeup_source_add(tp_wakeup);
  DAT_0015fb58 = 0;
  __init_swait_queue_head(&DAT_0015fb60,"&x->wait",&init_completion___key);
  DAT_0015fb78 = 0;
  DAT_0015fb7a = 0;
  if (*(long *)(tpd_cdev + 0xdd0) != 0) {
    ufp_tp_ops = *(long *)(tpd_cdev + 0xdd0);
  }
  return 0;
}



/* 00142fe4 zlog_register_work_init */

void zlog_register_work_init(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017e271,"zlog_register_work_init");
}



/* 00143060 zte_reset_frame_list */

void zte_reset_frame_list(long param_1)

{
                    /* WARNING: Subroutine does not return */
  mutex_lock(param_1 + 0x470);
}



/* 001430c8 zte_touch_pdev_register */

void zte_touch_pdev_register(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180b93,"zte_touch_pdev_register");
}



/* 001431ac zte_touch_shutdown */

void zte_touch_shutdown(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001811e8,"zte_touch_shutdown",0xb60);
}



/* 00143290 syna_dev_set_up_app_fw */

undefined8 syna_dev_set_up_app_fw(long *param_1)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  long lVar4;
  undefined4 uVar5;
  
  if (param_1 == (long *)0x0) {
    return 0xffffffea;
  }
  lVar2 = param_1[0x4e];
  lVar4 = *param_1;
  if (((lVar2 == -0xa8) || (*(int *)(lVar2 + 0xb8) == 0)) || ((*(byte *)(lVar2 + 0xbc) & 1) == 0)) {
    uVar5 = *(undefined4 *)(lVar4 + 0x20c);
  }
  else {
    uVar5 = 0;
  }
  if (*(char *)(lVar4 + 9) == '\x01') {
    iVar1 = syna_tcm_get_app_info(lVar4,lVar4 + 0xb0,uVar5);
    if (iVar1 < 0) {
      puVar3 = &DAT_00167d0c;
    }
    else {
      iVar1 = syna_tcm_preserve_touch_report_config(lVar4,uVar5);
      if (-1 < iVar1) {
        return 0;
      }
      puVar3 = &DAT_0016b716;
    }
                    /* WARNING: Subroutine does not return */
    _printk(puVar3,"syna_dev_set_up_app_fw");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016832c,"syna_dev_set_up_app_fw");
}



/* 00143294 FUN_00143294 */

undefined8 FUN_00143294(long *param_1)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  long lVar4;
  undefined4 uVar5;
  
  lVar2 = param_1[0x4e];
  lVar4 = *param_1;
  if (((lVar2 == -0xa8) || (*(int *)(lVar2 + 0xb8) == 0)) || ((*(byte *)(lVar2 + 0xbc) & 1) == 0)) {
    uVar5 = *(undefined4 *)(lVar4 + 0x20c);
  }
  else {
    uVar5 = 0;
  }
  if (*(char *)(lVar4 + 9) == '\x01') {
    iVar1 = syna_tcm_get_app_info(lVar4,lVar4 + 0xb0,uVar5);
    if (iVar1 < 0) {
      puVar3 = &DAT_00167d0c;
    }
    else {
      iVar1 = syna_tcm_preserve_touch_report_config(lVar4,uVar5);
      if (-1 < iVar1) {
        return 0;
      }
      puVar3 = &DAT_0016b716;
    }
                    /* WARNING: Subroutine does not return */
    _printk(puVar3,"syna_dev_set_up_app_fw");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016832c,"syna_dev_set_up_app_fw");
}



/* 0014336c syna_dev_suspend */

undefined8 syna_dev_suspend(long param_1)

{
  if (*(int *)(*(long *)(param_1 + 0x98) + 0x57c) != 1) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171ad4,"syna_dev_suspend");
}



/* 001434f8 syna_dev_resume */

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
      if ((char)DAT_0015fb78 != '\x01') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00166bb4,"syna_dev_resume");
      }
      if (*(int *)(lVar3 + 0x5d4) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016cdf8,"syna_dev_resume");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001683a2,"syna_dev_resume");
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



/* 00143b08 syna_tcm_get_testing_0A00 */

undefined1 * syna_tcm_get_testing_0A00(void)

{
  return test_0A00;
}



/* 00143b18 syna_tcm_get_testing_0001 */

undefined1 * syna_tcm_get_testing_0001(void)

{
  return test_0001;
}



/* 00143b28 syna_tcm_get_testing_0002 */

undefined1 * syna_tcm_get_testing_0002(void)

{
  return test_0002;
}



/* 00143b38 syna_tcm_testing_config_id */

undefined8 syna_tcm_testing_config_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined *puVar4;
  undefined8 *puVar5;
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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e667,"syna_tcm_testing_config_id");
    }
    if ((*(long *)(param_2 + 0xd8) != 0) &&
       (iVar3 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xd8)), -1 < iVar3)) {
      syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xd8),
                       *(undefined4 *)(*(undefined8 **)(param_2 + 0xd8) + 1),&local_58);
      *(undefined4 *)(*(long *)(param_2 + 0xd8) + 0xc) = 0x10;
    }
    if ((param_3 & 1) == 0) {
      puVar5 = *(undefined8 **)(param_2 + 0x38);
      if ((puVar5 != (undefined8 *)0x0) && (*(int *)(puVar5 + 1) != 0)) {
        bVar2 = syna_tcm_testing_0002_check_config_id(&local_58,*puVar5);
        *(byte *)(param_2 + 0x10) = bVar2 & 1;
      }
      puVar4 = &DAT_001811fb;
      if (*(char *)(param_2 + 0x10) == '\0') {
        puVar4 = &DAT_0017ec1a;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar4 = &DAT_001811fb;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e9bb,"syna_tcm_testing_config_id",puVar4);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00143ccc syna_tcm_buf_alloc_0 */

undefined8 syna_tcm_buf_alloc_0(long *param_1)

{
  void *__s;
  long lVar1;
  uint uVar2;
  
  uVar2 = *(uint *)(param_1 + 1);
  __s = (void *)*param_1;
  if (uVar2 < 0x10) {
    if (__s != (void *)0x0) {
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      devm_kfree(lVar1,__s);
    }
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828fa,"syna_pal_mem_alloc");
    }
    uVar2 = 0x10;
    __s = (void *)devm_kmalloc(lVar1,0x10,0xdc0);
    *param_1 = (long)__s;
    if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001805b6,"syna_tcm_buf_alloc",0x10);
    }
    *(undefined4 *)(param_1 + 1) = 0x10;
  }
  memset(__s,0,(ulong)uVar2);
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return 0;
}



/* 00143da8 syna_tcm_testing_0002_check_config_id */

undefined8 syna_tcm_testing_0002_check_config_id(long param_1,long param_2,int param_3)

{
  int iVar1;
  
  if ((param_1 != 0) && (param_2 != 0)) {
    if (-1 < param_3) {
      iVar1 = 0;
      do {
        if (*(char *)(param_1 + iVar1) != *(char *)(param_2 + iVar1)) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_001819cb,"syna_tcm_testing_0002_check_config_id",param_1);
        }
        iVar1 = iVar1 + 1;
      } while (iVar1 <= param_3);
    }
    return 1;
  }
  return 0;
}



/* 00143e20 syna_tcm_buf_copy_0 */

void syna_tcm_buf_copy_0(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x10);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}



/* 001440a0 syna_tcm_testing_check_array_data */

uint syna_tcm_testing_check_array_data(long param_1,ulong param_2,long param_3,ulong param_4)

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
    return uVar4;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00168c7a,"syna_tcm_testing_check_array_data");
}



/* 00144158 syna_tcm_testing_0100_check_data */

bool syna_tcm_testing_0100_check_data(byte *param_1,byte *param_2,int param_3)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  bool bVar4;
  
  bVar1 = *param_1;
  bVar2 = *param_2;
  uVar3 = param_3 << 3;
  bVar4 = (bVar1 & 1) == (bVar2 & 1);
  if (!bVar4) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",uVar3);
  }
  if ((bVar1 >> 1 & 1) != (bVar2 >> 1 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",uVar3 | 1);
  }
  if ((bVar1 >> 2 & 1) != (bVar2 >> 2 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",uVar3 | 2);
  }
  if ((bVar1 >> 3 & 1) != (bVar2 >> 3 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",uVar3 | 3);
  }
  if ((bVar1 >> 4 & 1) != (bVar2 >> 4 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",uVar3 | 4);
  }
  if ((bVar1 >> 5 & 1) != (bVar2 >> 5 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",uVar3 | 5);
  }
  if ((bVar1 >> 6 & 1) != (bVar2 >> 6 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",uVar3 | 6);
  }
  if (bVar1 >> 7 == bVar2 >> 7) {
    return bVar4;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",uVar3 | 7);
}



/* 001442a0 FUN_001442a0 */

undefined8 FUN_001442a0(void)

{
  byte bVar1;
  uint unaff_w19;
  byte *unaff_x20;
  uint unaff_w21;
  
  bVar1 = *unaff_x20;
  if ((unaff_w21 >> 4 & 1) != (bVar1 >> 4 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",unaff_w19 | 4);
  }
  if ((unaff_w21 >> 5 & 1) != (bVar1 >> 5 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",unaff_w19 | 5);
  }
  if ((unaff_w21 >> 6 & 1) != (bVar1 >> 6 & 1)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",unaff_w19 | 6);
  }
  if (unaff_w21 >> 7 == (uint)(bVar1 >> 7)) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00170d96,"syna_tcm_testing_0100_check_data",unaff_w19 | 7);
}



/* 00144340 syna_tcm_get_testing_0500 */

undefined1 * syna_tcm_get_testing_0500(void)

{
  return test_0500;
}



/* 0014434c syna_tcm_buf_copy_1 */

void syna_tcm_buf_copy_1(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x10);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}



/* 001445cc syna_tcm_testing_check_frame_data_0 */

uint syna_tcm_testing_check_frame_data_0
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001833e0,"syna_tcm_testing_check_frame_data");
  }
  if (param_2 < param_3 * param_4 * 2) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00183438,"syna_tcm_testing_check_frame_data",param_2 & 0xffffffff);
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
            pcVar3 = (code *)SoftwareBreakpoint(0x8236,0x1446b4);
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
  return uVar8;
}



/* 0014473c syna_tcm_v1_detect */

void syna_tcm_v1_detect(long param_1,ulong param_2)

{
  long lVar1;
  long lVar2;
  
  lVar2 = sp_el0;
  lVar2 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_v1_detect");
  }
  if ((param_2 & 1) != 0) {
    *(code **)(param_1 + 0x390) = syna_tcm_v1_read_message;
    *(code **)(param_1 + 0x398) = syna_tcm_v1_write_message;
    *(code **)(param_1 + 0x3a8) = syna_tcm_v1_set_up_max_rw_size;
    *(code **)(param_1 + 0x3b0) = syna_tcm_v1_check_max_rw_size;
    *(code **)(param_1 + 0x3a0) = syna_tcm_v1_terminate;
    *(undefined4 *)(param_1 + 0x37c) = 0;
    *(undefined1 *)(param_1 + 8) = 1;
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == lVar2) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0);
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(param_1 + 0x348);
}



/* 00144c14 syna_tcm_v1_write_message */

void syna_tcm_v1_write_message(long param_1)

{
  undefined1 *puVar1;
  undefined1 *in_x4;
  
  if (param_1 == 0) {
    puVar1 = &DAT_00168ac4;
  }
  else {
    if (*(long *)(param_1 + 0x48) != 0) {
      if (in_x4 != (undefined1 *)0x0) {
        *in_x4 = 0xff;
      }
                    /* WARNING: Subroutine does not return */
      mutex_lock(param_1 + 0x318);
    }
    puVar1 = &DAT_00172270;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar1,"syna_tcm_v1_write_message");
}



/* 00145438 syna_tcm_v1_parse_idinfo */

undefined8 syna_tcm_v1_parse_idinfo(long param_1,void *param_2,undefined8 param_3,uint param_4)

{
  if ((param_2 == (void *)0x0) || (param_4 == 0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170dca,"syna_tcm_v1_parse_idinfo");
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
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016ee02,"syna_pal_mem_cpy",param_3,0x30);
}



/* 001454f8 syna_tcm_v1_read_message */

void syna_tcm_v1_read_message(long param_1,undefined1 *param_2)

{
  undefined1 *puVar1;
  uint uVar2;
  
  if (param_1 == 0) {
    puVar1 = &DAT_00168ac4;
  }
  else {
    if (*(long *)(param_1 + 0x48) != 0) {
      uVar2 = (uint)*(byte *)(param_1 + 0x37a);
      if (*(byte *)(param_1 + 0x37a) == 1) {
        uVar2 = *(uint *)(param_1 + 0x1f8);
      }
      if (param_2 != (undefined1 *)0x0) {
        uVar2 = 0xff;
        *param_2 = 0xff;
      }
      *(undefined1 *)(param_1 + 0x1fd) = 0;
                    /* WARNING: Subroutine does not return */
      mutex_lock(uVar2,param_1 + 0x348);
    }
    puVar1 = &DAT_00172270;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar1,"syna_tcm_v1_read_message");
}



/* 00146a68 syna_tcm_v1_set_up_max_rw_size */

undefined8 syna_tcm_v1_set_up_max_rw_size(long param_1,uint param_2,uint param_3)

{
  uint uVar1;
  ushort uVar2;
  undefined1 *puVar3;
  uint uVar4;
  
  if (param_1 == 0) {
    puVar3 = &DAT_00168ac4;
  }
  else {
    if (*(char *)(param_1 + 0x80) == '\x01') {
      uVar2 = *(ushort *)(param_1 + 0x96);
      uVar1 = *(uint *)(param_1 + 0x40);
      if (param_2 <= uVar2) {
        uVar4 = (uint)uVar2;
        if (uVar1 <= uVar2) {
          uVar4 = uVar1;
        }
        if (param_2 <= uVar4) {
          uVar4 = param_2;
        }
        if (uVar1 != 0) {
          param_2 = uVar4;
        }
        if (*(uint *)(param_1 + 0x38) != param_2) {
          *(uint *)(param_1 + 0x38) = param_2;
        }
      }
      uVar4 = param_3;
      if ((uVar1 != 0) && (uVar4 = *(uint *)(param_1 + 0x44), param_3 <= *(uint *)(param_1 + 0x44)))
      {
        uVar4 = param_3;
      }
      if (*(uint *)(param_1 + 0x3c) != uVar4) {
        *(uint *)(param_1 + 0x3c) = uVar4;
      }
      return 0;
    }
    puVar3 = &DAT_0016c2f0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_tcm_v1_set_up_max_rw_size");
}



/* 00146b20 syna_tcm_v1_read */

undefined8 syna_tcm_v1_read(long param_1,uint param_2,char *param_3,uint param_4)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  code *pcVar4;
  
  if (param_3 == (char *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016928c,"syna_tcm_v1_read");
  }
  if (param_2 == 0) {
    return 0;
  }
  if (param_4 < param_2) {
    puVar3 = &DAT_0017143e;
  }
  else {
    if ((*(uint *)(param_1 + 0x3c) == 0) || (param_2 <= *(uint *)(param_1 + 0x3c))) {
      lVar2 = *(long *)(param_1 + 0x48);
      if (lVar2 == 0) {
        puVar3 = &DAT_0016d602;
      }
      else {
        pcVar4 = *(code **)(lVar2 + 0x20);
        if (pcVar4 != (code *)0x0) {
          if (*(int *)(pcVar4 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x146b88);
            (*pcVar4)();
          }
          iVar1 = (*pcVar4)(lVar2,param_3,param_2);
          if (-1 < iVar1) {
            if (*param_3 == -0x5b) {
              return 0;
            }
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_0016dcf4,"syna_tcm_v1_read");
          }
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00166cb2,"syna_tcm_v1_read",param_2);
        }
        puVar3 = &DAT_0016b7fc;
      }
                    /* WARNING: Subroutine does not return */
      _printk(puVar3,"syna_tcm_read");
    }
    puVar3 = &DAT_00168cd6;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_tcm_v1_read",param_2);
}



/* 00146c68 syna_tcm_config_timings */

undefined8 syna_tcm_config_timings(long param_1,int *param_2,int param_3,uint param_4)

{
  if ((param_2 == (int *)0x0) && (param_4 == 0xffff)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00171c52,"syna_tcm_config_timings");
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



/* 00146d58 syna_tcm_allocate_device */

void syna_tcm_allocate_device(undefined8 param_1,long param_2)

{
  undefined *puVar1;
  
  if (param_2 == 0) {
    puVar1 = &DAT_001706d8;
  }
  else if (*(long *)(param_2 + 0x20) == 0) {
    puVar1 = &DAT_0016dd24;
  }
  else {
    if (*(long *)(param_2 + 0x28) != 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016be88,"syna_tcm_allocate_device");
    }
    puVar1 = &DAT_001698c6;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar1,"syna_tcm_allocate_device");
}



/* 00147300 syna_tcm_buf_copy_2 */

void syna_tcm_buf_copy_2(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x10);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}



/* 00147644 syna_tcm_identify */

void syna_tcm_identify(long param_1,undefined8 param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_identify");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_identify");
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1476e8);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,2,0,0,0,param_3);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f482,"syna_tcm_identify",2);
  }
  *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171c84,"syna_tcm_identify",*(undefined1 *)(param_1 + 0x81),
          *(undefined1 *)(param_1 + 0x80));
}



/* 00147830 syna_tcm_buf_unlock */

void syna_tcm_buf_unlock(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\x01') {
    *(undefined1 *)(param_1 + 0x40) = 0;
    mutex_unlock(param_1 + 0x10);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180db7,"syna_tcm_buf_unlock");
}



/* 0014789c syna_tcm_wait_for_report */

void syna_tcm_wait_for_report(long param_1,char param_2,long param_3,uint param_4,uint param_5)

{
  uint uVar1;
  undefined1 *puVar2;
  undefined8 uVar3;
  long lVar4;
  char local_5c [4];
  long local_58;
  
  lVar4 = sp_el0;
  local_58 = *(long *)(lVar4 + 0x710);
  local_5c[0] = '\0';
  if (param_1 == 0) {
    puVar2 = &DAT_00168ac4;
  }
  else {
    if (param_3 != 0) {
      if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001692c2,"syna_tcm_wait_for_report");
      }
      lVar4 = *(long *)(param_1 + 0x48);
      uVar1 = param_4;
      if (*(char *)(lVar4 + 0x14) == '\x01') {
        if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016d602,"syna_tcm_enable_irq");
        }
        if (*(long *)(lVar4 + 0x38) != 0) {
                    /* WARNING: Subroutine does not return */
          mutex_lock(param_1 + 0x50);
        }
      }
      while( true ) {
        if (0 < (int)param_4) {
          msleep(param_4);
        }
        uVar3 = syna_tcm_get_event_data(param_1,local_5c,param_3);
        if ((((-1 < (int)uVar3) && (local_5c[0] == param_2)) && (*(int *)(param_3 + 0xc) != 0)) ||
           (param_5 <= uVar1)) break;
        uVar1 = uVar1 + param_4;
      }
      if (false) {
        if (*(long *)(param_1 + 0x48) == 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0016d602,"syna_tcm_enable_irq");
        }
        if (*(long *)(*(long *)(param_1 + 0x48) + 0x38) != 0) {
                    /* WARNING: Subroutine does not return */
          mutex_lock(param_1 + 0x50);
        }
      }
      if ((param_5 <= uVar1) && ((local_5c[0] != param_2 || (*(int *)(param_3 + 0xc) == 0)))) {
        uVar3 = 0xffffff0c;
      }
      lVar4 = sp_el0;
      if (*(long *)(lVar4 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail(uVar3);
      }
      return;
    }
    puVar2 = &DAT_0016feea;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_tcm_wait_for_report");
}



/* 00147afc syna_tcm_switch_fw_mode */

undefined8 syna_tcm_switch_fw_mode(long param_1,char param_2,uint param_3)

{
  code *pcVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined *puVar4;
  char *pcVar5;
  uint uVar6;
  
  if (param_1 == 0) {
    puVar3 = &DAT_00168ac4;
LAB_00147bcc:
                    /* WARNING: Subroutine does not return */
    _printk(puVar3,"syna_tcm_switch_fw_mode");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017078a,"syna_tcm_switch_fw_mode");
    }
    uVar6 = 0;
  }
  else {
    uVar6 = *(uint *)(param_1 + 0x1e8);
    if (*(uint *)(param_1 + 0x1e8) <= param_3) {
      uVar6 = param_3;
    }
  }
  if (param_2 == '\v') {
    if (*(char *)(param_1 + 9) == '\v') {
LAB_00147b7c:
      pcVar1 = *(code **)(param_1 + 0x3b0);
      if (pcVar1 != (code *)0x0) {
        if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147b9c);
          (*pcVar1)();
        }
        (*pcVar1)();
      }
      return 0;
    }
    if (uVar6 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171564,"syna_tcm_run_bootloader_fw");
      }
      uVar6 = 0;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147d48);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x1f,0,0,0,uVar6);
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016f482,"syna_tcm_run_bootloader_fw",0x1f);
    }
    if (*(char *)(param_1 + 9) != '\v') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016dd66,"syna_tcm_run_bootloader_fw");
    }
    puVar4 = &DAT_00172336;
    pcVar5 = "syna_tcm_run_bootloader_fw";
  }
  else {
    if (param_2 != '\x01') {
      puVar3 = &DAT_0016c396;
      goto LAB_00147bcc;
    }
    if (*(char *)(param_1 + 9) == '\x01') goto LAB_00147b7c;
    if (uVar6 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171564,"syna_tcm_run_application_fw");
      }
      uVar6 = 0;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147c84);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x14,0,0,0,uVar6);
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016f482,"syna_tcm_run_application_fw",0x14);
    }
    if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016a64c,"syna_tcm_run_application_fw");
    }
    puVar4 = &DAT_001707e4;
    pcVar5 = "syna_tcm_run_application_fw";
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,pcVar5);
}



/* 00147dd8 syna_tcm_get_boot_info */

void syna_tcm_get_boot_info(long param_1,undefined8 param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_get_boot_info");
  }
  if (*(char *)(param_1 + 9) != '\v') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00170e94,"syna_tcm_get_boot_info");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_get_boot_info");
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x147e50);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x10,0,0,0,param_3);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f482,"syna_tcm_get_boot_info",0x10);
  }
  if (*(char *)(param_1 + 0x188) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x158);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}



/* 00148018 syna_tcm_get_app_info */

void syna_tcm_get_app_info(long param_1,undefined8 param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_get_app_info");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_get_app_info");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_get_app_info");
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148090);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x20,0,0,0,param_3);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f482,"syna_tcm_get_app_info",0x20);
  }
  if (*(char *)(param_1 + 0x188) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x158);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}



/* 001482bc syna_tcm_get_dynamic_config */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_get_dynamic_config");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_get_dynamic_config");
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_get_dynamic_config");
    }
    param_4 = 0;
  }
  local_3c[0] = param_2;
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x14834c);
    (*pcVar2)();
  }
  iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x23,local_3c,1,0,param_4);
  if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00166d56,"syna_tcm_get_dynamic_config",0x23,param_2);
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
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016c976,"syna_tcm_get_dynamic_config");
}



/* 00148448 syna_tcm_set_dynamic_config */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_set_dynamic_config");
  }
  local_3a = (undefined1)(param_3 >> 8);
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_set_dynamic_config");
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_set_dynamic_config");
    }
    param_4 = 0;
  }
  local_3b = (undefined1)param_3;
  local_3c = param_2;
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8229,0x1484dc);
    (*pcVar2)();
  }
  iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x24,&local_3c,3,0,param_4);
  if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00172998,"syna_tcm_set_dynamic_config",0x24,param_3 & 0xffff,param_2);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 001485ac syna_tcm_sleep */

undefined8 syna_tcm_sleep(long param_1,ulong param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  undefined4 uVar3;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_sleep");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_sleep");
    }
    param_3 = 0;
  }
  uVar3 = 0x2c;
  if ((param_2 & 1) == 0) {
    uVar3 = 0x2d;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x148618);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,uVar3,0,0,0,param_3);
  if (-1 < iVar2) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171d0c,"syna_tcm_sleep",uVar3);
}



/* 001486b8 syna_tcm_get_features */

void syna_tcm_get_features(long param_1,long param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_get_features");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_get_features");
  }
  if (param_3 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_get_features");
    }
    param_3 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148730);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x32,0,0,0,param_3);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f482,"syna_tcm_get_features",0x32);
  }
  if (param_2 != 0) {
    if (*(char *)(param_1 + 0x188) == '\0') {
                    /* WARNING: Subroutine does not return */
      mutex_lock(param_1 + 0x158);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016da90,"syna_tcm_buf_lock");
  }
  return;
}



/* 001488e4 syna_tcm_rezero */

undefined8 syna_tcm_rezero(long param_1,int param_2)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_rezero");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_rezero");
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_rezero");
    }
    param_2 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x14894c);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x27,0,0,0,param_2);
  if (-1 < iVar2) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f482,"syna_tcm_rezero",0x27);
}



/* 001489f4 syna_tcm_reset */

undefined8 syna_tcm_reset(long param_1,uint param_2)

{
  code *pcVar1;
  int iVar2;
  uint uVar3;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_reset");
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_reset");
    }
    uVar3 = 0;
  }
  else {
    uVar3 = *(uint *)(param_1 + 0x1ec);
    if (*(uint *)(param_1 + 0x1ec) <= param_2) {
      uVar3 = param_2;
    }
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148a60);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,4,0,0,0,uVar3);
  if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f482,"syna_tcm_reset",4);
  }
  pcVar1 = *(code **)(param_1 + 0x3b0);
  *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148a94);
      (*pcVar1)();
    }
    (*pcVar1)(param_1);
  }
  pcVar1 = *(code **)(param_1 + 0x23e0);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148abc);
      (*pcVar1)();
    }
    iVar2 = (*pcVar1)(*(undefined8 *)(param_1 + 0x23d8));
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00167ee4,"syna_tcm_reset");
    }
  }
  return 0;
}



/* 00148b64 syna_tcm_run_production_test */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_run_production_test");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_run_production_test");
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_run_production_test");
    }
    param_4 = 0;
  }
  local_3c[0] = param_2;
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x148bf0);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x398))(param_1,0x2a,local_3c,1,0,param_4);
  if ((int)uVar4 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f95c,"syna_tcm_run_production_test",local_3c[0],0x2a);
  }
  if (param_3 != 0) {
    iVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
    if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016c9a0,"syna_tcm_run_production_test");
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



/* 00148cf0 syna_tcm_set_game_partition_config */

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
  ulong uVar6;
  long lVar7;
  ulong uVar8;
  
  uVar8 = (ulong)(param_3 + 1);
  puVar5 = (undefined1 *)__kmalloc_noprof(uVar8,0xcc0);
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_set_game_partition_config");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00171cce,"syna_tcm_set_game_partition_config");
  }
  if (param_5 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016f4ae,"syna_tcm_set_game_partition_config");
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
  if (uVar8 == 0) {
LAB_00148fbc:
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x148fc0);
    (*pcVar1)();
  }
  uVar6 = (ulong)(param_3 + 1U);
  *puVar5 = param_2;
  if (1 < (int)(param_3 + 1U)) {
    lVar7 = 0;
    do {
      if (uVar8 <= lVar7 + 1U) goto LAB_00148fbc;
      puVar5[lVar7 + 1] = *(undefined1 *)(param_4 + lVar7);
      if ((__s != (char *)0x0) && (iVar2 < param_3 * 6 + 0x18)) {
        iVar3 = snprintf(__s + iVar2,(long)(iVar4 - iVar2),"%02x ");
        iVar2 = iVar3 + iVar2;
      }
      lVar7 = lVar7 + 1;
    } while (uVar6 - 1 != lVar7);
  }
  if (__s != (char *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001729dc,"syna_tcm_set_game_partition_config",__s);
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x148f34);
    (*pcVar1)();
  }
  iVar4 = (**(code **)(param_1 + 0x398))(param_1,199,puVar5,uVar6,0,param_5);
  if (-1 < iVar4) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00172998,"syna_tcm_set_game_partition_config",199,uVar6,param_2);
}



/* 00148fc4 syna_tcm_set_static_config */

undefined8 syna_tcm_set_static_config(long param_1,undefined8 param_2,uint param_3,int param_4)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_set_static_config");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_set_static_config");
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_set_static_config");
    }
    param_4 = 0;
  }
  if (*(ushort *)(param_1 + 0xb4) == param_3) {
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x149044);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x22,param_2,param_3,0,param_4);
    if (-1 < iVar2) {
      return 0;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f482,"syna_tcm_set_static_config",0x22);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016a60a,"syna_tcm_set_static_config",param_3);
}



/* 00149110 syna_tcm_get_static_config */

void syna_tcm_get_static_config(long param_1,long param_2,uint param_3,int param_4)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_get_static_config");
  }
  if (*(char *)(param_1 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001692c2,"syna_tcm_get_static_config");
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_get_static_config");
    }
    param_4 = 0;
  }
  if (*(ushort *)(param_1 + 0xb4) <= param_3) {
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x149198);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x21,0,0,0,param_4);
    if (-1 < iVar2) {
      if ((param_2 != 0) && (*(uint *)(param_1 + 0x154) <= param_3)) {
        if (*(char *)(param_1 + 0x188) == '\0') {
                    /* WARNING: Subroutine does not return */
          mutex_lock(param_1 + 0x158);
        }
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016da90,"syna_tcm_buf_lock");
      }
      return;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f482,"syna_tcm_get_static_config",0x21);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00166d14,"syna_tcm_get_static_config",param_3);
}



/* 00149340 tp_edge_report_limit_write */

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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017eea6);
    }
  }
  iVar3 = get_tp_algo_item_id(local_b0);
  if (-1 < iVar3) {
    local_b8 = strchr(local_b0,0x3a);
    local_b8 = local_b8 + 1;
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017dedb,local_b8);
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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e693,local_c0 & 0xffffffff,uVar5 & 0xffff,0);
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0xffffffffffffffea);
}



/* 001496fc tp_edge_report_limit_read */

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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017ebd0);
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



/* 00149bc8 FUN_00149bc8 */

void FUN_00149bc8(void)

{
  kfree();
  return;
}



/* 00149c3c get_one_key */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x149cd8);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d38,"get_one_key",*(undefined4 *)(lVar2 + 0x458));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00149f0c syna_tcm_send_command */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_send_command");
  }
  if (param_7 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171564,"syna_tcm_send_command");
    }
    param_7 = 0;
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x149f90);
    (*pcVar2)();
  }
  uVar4 = (**(code **)(param_1 + 0x398))(param_1,param_2,param_3,param_4,local_5c,param_7);
  if ((int)uVar4 < 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016c3c6,"syna_tcm_send_command",param_2 & 0xff);
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
          puVar5 = &DAT_00171532;
LAB_0014a028:
                    /* WARNING: Subroutine does not return */
          _printk(puVar5,"syna_tcm_send_command",local_5c[0]);
        }
      }
    }
    else if ((local_5c[0] - 1 < 0xf) && (*(int *)(param_1 + 0x154) != 0)) {
      uVar4 = uVar4 & 0xffffffff;
      iVar3 = syna_tcm_buf_copy(param_6,param_1 + 0x148);
      if (iVar3 < 0) {
        puVar5 = &DAT_001722c0;
        goto LAB_0014a028;
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



/* 0014a0ec syna_cdev_open */

void syna_cdev_open(void)

{
                    /* WARNING: Subroutine does not return */
  mutex_lock(&DAT_0015eb40);
}



/* 0014a254 set_lcd_reset_processing */

void set_lcd_reset_processing(byte param_1)

{
  *(byte *)(tpd_cdev + 0x18) = param_1;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00181442,param_1 & 1);
}



/* 0014a290 set_one_key */

undefined8 set_one_key(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180784,"set_one_key");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014a364 get_play_game */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14a400);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d38,"get_play_game",*(undefined4 *)(lVar2 + 0x45c));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014a458 set_play_game */

undefined8 set_play_game(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180784,"set_play_game",local_2c);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014a520 get_tp_report_rate */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14a5bc);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d38,"get_tp_report_rate",*(undefined4 *)(lVar2 + 0x464));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014a614 set_tp_report_rate */

undefined8 set_tp_report_rate(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180784,"set_tp_report_rate",local_2c);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014a6dc get_follow_hand_level */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14a778);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d38,"get_follow_hand_level",*(undefined4 *)(lVar2 + 0x468));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014a7d0 set_follow_hand_level */

undefined8 set_follow_hand_level(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180784,"set_follow_hand_level",local_2c);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014a898 get_stability_level */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14a934);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d38,"get_stability_level",*(undefined4 *)(lVar2 + 0x46c));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014a98c set_stability_level */

undefined8 set_stability_level(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180784,"set_stability_level",local_2c);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014aa54 tp_sensibility_level_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14aaf0);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00183218,"tp_sensibility_level_read",*(undefined1 *)(lVar2 + 0x40));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014ab48 tp_sensibility_level_write */

undefined8 tp_sensibility_level_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017ec3c,"tp_sensibility_level_write",local_4c & 0xff);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014ac54 syna_dev_set_follow_hand_level */

void syna_dev_set_follow_hand_level(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001702c2,"syna_dev_set_follow_hand_level","syna_dev_set_follow_hand_level");
}



/* 0014ade0 syna_dev_set_stability_level */

void syna_dev_set_stability_level(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001702c2,"syna_dev_set_stability_level","syna_dev_set_stability_level");
}



/* 0014af6c syna_dev_set_display_rotation */

void syna_dev_set_display_rotation(undefined8 param_1,undefined4 param_2)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016d9d0,"syna_dev_set_display_rotation",param_2);
}



/* 0014b074 syna_recovery_game_mode_after_reset */

undefined8 syna_recovery_game_mode_after_reset(long *param_1)

{
  int iVar1;
  long lVar2;
  undefined4 uVar3;
  
  if (param_1 == (long *)0x0) {
    return 0xffffffea;
  }
  lVar2 = param_1[0x4e];
  if (((lVar2 == -0xa8) || (*(int *)(lVar2 + 0xb8) == 0)) || ((*(byte *)(lVar2 + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*param_1 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  if (*(int *)((long)param_1 + 0x5dc) == 0) {
    iVar1 = syna_dev_set_tp_report_rate(param_1,(int)param_1[0xbf],uVar3);
    if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016d548,"syna_recovery_game_mode_after_reset");
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fc76,"syna_recovery_game_mode_after_reset");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016b59c,"syna_dev_set_play_game",1);
}



/* 0014b210 tp_game_partition_read */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001711b2,"tp_game_partition_read",tpd_cdev + 0x41);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014b2ec tp_game_partition_write */

void tp_game_partition_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016ebe0,"tp_game_partition_write",0x400,param_3);
}



/* 0014b430 tp_fold_state_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14b4cc);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00169532,"tp_fold_state_read",*(undefined4 *)(lVar2 + 0x47c));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014b524 tp_fold_state_write */

undefined8 tp_fold_state_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016cc96,"tp_fold_state_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014b5f8 get_fake_sleep */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14b694);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb40,"get_fake_sleep",*(undefined4 *)(lVar2 + 0x480));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014b6ec set_fake_sleep */

undefined8 set_fake_sleep(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016cc96,"set_fake_sleep");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014b7c0 get_screen_off_awake */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14b85c);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb40,"get_screen_off_awake",*(undefined4 *)(lVar2 + 0x484));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014b8b4 set_screen_off_awake */

undefined8 set_screen_off_awake(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016cc96,"set_screen_off_awake");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014b988 tp_zlog_debug_read */

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



/* 0014ba28 tp_zlog_debug_write */

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



/* 0014bafc ghost_debug_read */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 ghost_debug_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = tpd_cdev;
  if (*in_x3 != 0) {
    return 0;
  }
  lVar2 = __kmalloc_cache_noprof(_jiffies_to_msecs,0xdc0,0x1000);
  if (lVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168866);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016881a,*(undefined1 *)(lVar1 + 0x491));
}



/* 0014be50 ghost_debug_write */

ulong ghost_debug_write(undefined8 param_1,long param_2,ulong param_3)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  char *pcVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  undefined1 uVar10;
  undefined1 uVar11;
  undefined1 uVar12;
  undefined1 uVar13;
  undefined1 uVar14;
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
    lVar4 = FUN_00149bc8(local_b0,param_2,param_3);
    if (lVar4 != 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001670ac);
    }
  }
  local_e0 = local_b0;
  pcVar5 = strsep(&local_e0,",");
  if (pcVar5 == (char *)0x0) {
    uVar6 = 0;
    uVar7 = 0;
    uVar8 = 0;
    uVar9 = 0;
    uVar10 = 0;
    uVar11 = 0;
    uVar12 = 0;
    uVar13 = 0;
    uVar14 = 0;
  }
  else {
    uVar6 = 0;
    do {
      iVar3 = kstrtouint(pcVar5,10,&local_e4);
      if (iVar3 == 0) {
        if (0x13 < uVar6) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(1,0x14c008);
          (*pcVar2)();
        }
        *(short *)((long)&local_d8 + (ulong)uVar6 * 2) = (short)local_e4;
        uVar6 = uVar6 + 1;
      }
      pcVar5 = strsep(&local_e0,",");
    } while ((pcVar5 != (char *)0x0) && (uVar6 < 10));
    uVar9 = (uint)local_d0._2_2_;
    uVar8 = (uint)local_d0._4_2_;
    uVar7 = (uint)local_d0._6_2_;
    uVar6 = (uint)(ushort)local_c8;
    uVar10 = (undefined1)local_d0;
    uVar11 = local_d8._6_1_;
    uVar12 = local_d8._4_1_;
    uVar13 = local_d8._2_1_;
    uVar14 = (undefined1)local_d8;
  }
  *(undefined1 *)(lVar1 + 0x491) = uVar14;
  *(undefined1 *)(lVar1 + 0x492) = uVar13;
  *(undefined1 *)(lVar1 + 0x493) = uVar12;
  *(undefined1 *)(lVar1 + 0x494) = uVar11;
  *(undefined1 *)(lVar1 + 0x495) = uVar10;
  *(uint *)(lVar1 + 0x498) = uVar9;
  *(uint *)(lVar1 + 0x49c) = uVar8;
  *(uint *)(lVar1 + 0x4a0) = uVar7;
  *(uint *)(lVar1 + 0x4a4) = uVar6;
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014c010 tp_BBAT_test_read */

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
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x14c07c);
        (*pcVar4)();
      }
      iVar1 = (*pcVar4)();
      if (iVar1 != 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001726c4);
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



/* 0014c118 tp_BBAT_test_write */

void tp_BBAT_test_write(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f718);
}



/* 0014c150 tp_test_read */

void tp_test_read(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
    if (*(char *)(tpd_cdev + 0xc00) == -1) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001726e0,*(undefined1 *)(tpd_cdev + 0x446));
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016955e);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014c25c tp_test_write */

void tp_test_write(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f718);
}



/* 0014c294 tp_frame_data_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x14c330);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb40,"tp_frame_data_read",*(undefined4 *)(lVar2 + 0x460));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0014c388 tp_frame_data_write */

undefined8 tp_frame_data_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016cc96,"tp_frame_data_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014c45c tpd_sysfs_fwimage_show */

void tpd_sysfs_fwimage_show(void)

{
  long *plVar1;
  
  plVar1 = *(long **)(tpd_cdev + 0xc58);
  if ((plVar1 != (long *)0x0) && (plVar1[1] != 0)) {
    if (*plVar1 != 0) {
                    /* WARNING: Subroutine does not return */
      mutex_lock(tpd_cdev + 0xc60);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f6c4);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171826);
}



/* 0014c570 tpd_sysfs_fwimage_store */

undefined8 tpd_sysfs_fwimage_store(void)

{
  long lVar1;
  ulong uVar2;
  long in_x5;
  ulong *puVar3;
  ulong uVar4;
  
  puVar3 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar3 == (ulong *)0x0) || (puVar3[1] == 0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00171826);
  }
  uVar4 = *puVar3;
  if (uVar4 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f6c4);
  }
  uVar2 = (ulong)*(uint *)(tpd_cdev + 0x448);
  if (uVar4 < uVar2 || uVar4 - uVar2 == 0) {
    *(undefined4 *)(tpd_cdev + 0x448) = 0;
    return 0xffffffffffffffea;
  }
  lVar1 = uVar4 - uVar2;
  if (uVar2 + in_x5 <= uVar4) {
    lVar1 = in_x5;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016a9da,uVar2,lVar1);
}



/* 0014c650 zte_touch_deinit */

void zte_touch_deinit(void)

{
  if ((tpd_cdev != 0) && (zte_touch_deinit_ztp_release != '\x01')) {
    ufp_mac_exit();
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00167558,"zlog_register_work_deinit");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001676b2);
}



/* 0014c7cc tpd_touch_press */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb7c,"tpd_touch_press");
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
LAB_0014cf2c:
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
                 ((param_3 & 0xffff) <= (uint)*(ushort *)(lVar13 + 0x2e))) goto LAB_0014cf2c;
              uVar8 = (uint)*(ushort *)(lVar13 + 0x2c);
              if ((uint)*(ushort *)(lVar13 + 0x2c) <= (param_2 & 0xffff)) goto LAB_0014cf20;
            }
          }
          else if ((uint)*(byte *)(lVar13 + 0x34) <= (param_2 & 0xffff)) {
            uVar8 = (uint)*(byte *)(lVar13 + 0x35);
LAB_0014cf20:
            if ((int)uVar12 <= (int)(uVar11 - uVar8)) goto LAB_0014cf2c;
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
    uVar9 = FUN_0014e8f0(param_2,param_3);
    if ((uVar9 & 1) != 0) goto LAB_0014c95c;
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
LAB_0014c95c:
          uVar9 = FUN_0014e8e0(param_2,param_3);
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
                               (uint)*(ushort *)(tpd_cdev + 0x2c)))))))) goto LAB_0014cbac;
            }
            else if (((uint)*(byte *)(tpd_cdev + 0x34) <= (param_2 & 0xffff)) &&
                    ((int)(param_2 & 0xffff) <=
                     (int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35))))
            goto LAB_0014cbac;
            if ((point_report_info[uVar16 + 0x55] & 1) == 0) {
              point_report_info[uVar16 + 0x55] = 1;
              *(long *)(point_report_info + uVar16 + 0x70) = _jiffies;
                    /* WARNING: Subroutine does not return */
              _printk(&DAT_0017026c,uVar7,param_2 & 0xffff,param_3 & 0xffff);
            }
            if ((((((point_report_info[0x53] & 1) == 0) && ((point_report_info[0xdb] & 1) == 0)) &&
                 (((point_report_info[0x163] & 1) == 0 &&
                  (((((point_report_info[0x1eb] & 1) == 0 && ((point_report_info[0x273] & 1) == 0))
                    && ((point_report_info[0x2fb] & 1) == 0)) &&
                   (((point_report_info[899] & 1) == 0 && ((point_report_info[0x40b] & 1) == 0))))))
                 )) && ((point_report_info[0x493] & 1) == 0)) &&
               (point_report_info[0x51b] != '\x01')) goto LAB_0014cbb4;
            point_report_info[uVar16 + 0x56] = 1;
            bVar3 = point_report_info[uVar16 + 0x51];
          }
          else {
LAB_0014cbac:
            if ((point_report_info[uVar16 + 0x55] & 1) == 0) {
              point_report_info[uVar16 + 0x55] = 1;
                    /* WARNING: Subroutine does not return */
              _printk(&DAT_0016bc36,uVar7,param_2 & 0xffff,param_3 & 0xffff);
            }
LAB_0014cbb4:
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
            goto LAB_0014cdf0;
          }
          iVar5 = *puVar1 - (param_2 & 0xffff);
          iVar2 = -iVar5;
          if (-1 < iVar5) {
            iVar2 = iVar5;
          }
          if (iVar2 < 0x65) {
            if (0x550 < (uVar16 | 4)) goto LAB_0014cdf0;
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
               (int)(param_2 & 0xffff))) goto LAB_0014c95c;
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d44c,uVar7,*puVar1,*(undefined4 *)(point_report_info + uVar16 + 4));
      }
LAB_0014cdf0:
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(1,0x14cdf4);
      (*pcVar6)();
    }
    if (0x550 < (uVar16 | 4)) goto LAB_0014cdf0;
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
      FUN_0014fe14(uVar7);
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016d44c,uVar7,*(undefined4 *)(point_report_info + uVar16 + 0xc),
              *(undefined4 *)(point_report_info + uVar16 + 0x10));
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
        FUN_0014fed4(uVar7);
        puVar10 = &DAT_001701f0;
        lVar13 = _jiffies;
        goto LAB_0014cf04;
      }
    }
    else {
      if ((point_report_info[uVar16 + 0x53] & 1) == 0) {
        point_report_info[uVar16 + 0x53] = 1;
        *(int *)(lVar13 + 0x48c) = *(int *)(lVar13 + 0x48c) + 1;
        FUN_0014fe38(uVar7);
        *(uint *)(point_report_info + uVar16 + 0x18) = param_2 & 0xffff;
        *(uint *)(point_report_info + uVar16 + 0x1c) = param_3 & 0xffff;
        lVar13 = _jiffies;
        puVar10 = &DAT_00171fd2;
        point_report_info[uVar16 + 0x57] = 1;
LAB_0014cf04:
        *(long *)(point_report_info + uVar16 + 0x60) = lVar13;
                    /* WARNING: Subroutine does not return */
        _printk(puVar10,uVar7,param_2 & 0xffff,param_3 & 0xffff);
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
          if (iVar2 <= (int)uVar12) goto LAB_0014cd58;
        }
        tpd_workqueue_deinit(param_1,param_2,param_3,uVar15,param_5,param_6);
        point_report_info[uVar16 + 0x57] = 0;
        goto LAB_0014cd58;
      }
    }
  }
  tpd_workqueue_deinit(param_1,uVar12,uVar8,uVar15,param_5,param_6);
LAB_0014cd58:
  point_report_info[uVar16 + 0x52] = 0;
  *(uint *)(point_report_info + uVar16 + 0x24) = param_2 & 0xffff;
  *(uint *)(point_report_info + uVar16 + 0x28) = param_3 & 0xffff;
  return;
}



/* 0014d014 tpd_touch_release */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_touch_release(long param_1,ushort param_2)

{
  long lVar1;
  int iVar2;
  int iVar3;
  code *pcVar4;
  uint uVar5;
  long lVar6;
  
  lVar1 = tpd_cdev;
  if (10 < param_2) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x14d5a0);
    (*pcVar4)();
  }
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb7c,"tpd_touch_release",param_2);
  }
  if (param_2 == 10) {
                    /* WARNING: Does not return */
    pcVar4 = (code *)SoftwareBreakpoint(1,0x14d5a4);
    (*pcVar4)();
  }
  lVar6 = ((ulong)param_2 + (ulong)param_2 * 0x10) * 8;
  if (point_report_info[lVar6 + 0x53] != '\x01') {
    if (((*(char *)(tpd_cdev + 0x25) == '\x01') && ((point_report_info[lVar6 + 0x56] & 1) == 0)) &&
       (*(long *)(point_report_info + lVar6 + 0x70) != 0)) {
      uVar5 = jiffies_to_msecs(_jiffies - *(long *)(point_report_info + lVar6 + 0x70));
      if (uVar5 < *(ushort *)(lVar1 + 0x3c)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d960,"edge_point_report",param_2);
      }
    }
    iVar3 = is_screen_off_awake_mode;
    iVar2 = is_fake_sleep_mode;
    *(undefined8 *)(point_report_info + lVar6 + 0x70) = 0;
    point_report_info[lVar6 + 0x53] = 0;
    *(undefined2 *)(point_report_info + lVar6 + 0x50) = 0;
    *(undefined4 *)(point_report_info + lVar6 + 0x55) = 0;
    *(undefined2 *)(point_report_info + lVar6 + 0x59) = 0;
    if (iVar2 != 0 || iVar3 != 0) {
      *(undefined4 *)(point_report_info + lVar6 + 0x3c) =
           *(undefined4 *)(point_report_info + lVar6 + 0x18);
      *(undefined4 *)(point_report_info + lVar6 + 0x40) =
           *(undefined4 *)(point_report_info + lVar6 + 0x1c);
      *(undefined8 *)(point_report_info + lVar6 + 0x48) =
           *(undefined8 *)(point_report_info + lVar6 + 0x60);
    }
    return;
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(tpd_cdev + 0xc90);
}



/* 0014d650 ghost_check_area */

undefined8 ghost_check_area(long param_1)

{
  uint uVar1;
  int iVar2;
  ushort uVar3;
  ushort uVar4;
  undefined8 uVar5;
  undefined *puVar6;
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
LAB_0014d6c8:
      uVar5 = 1;
      if ((int)uVar1 < 2) {
        if (uVar1 != 0) {
          if (uVar1 != 1) {
            return uVar5;
          }
          goto LAB_0014d6f4;
        }
        if ((int)(uint)uVar3 <=
            (int)((uint)*(ushort *)(tpd_cdev + 0x444) - *(int *)(tpd_cdev + 0x4a4))) {
          return uVar5;
        }
LAB_0014d75c:
        if ((*(int *)(tpd_cdev + 0x4a0) <= (int)uVar7) &&
           ((int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x4a0)))) {
          return uVar5;
        }
      }
      else {
        if (uVar1 == 2) {
          if (*(int *)(tpd_cdev + 0x4a4) <= (int)(uint)uVar3) {
            return uVar5;
          }
          goto LAB_0014d75c;
        }
        if (uVar1 != 3) {
          return uVar5;
        }
LAB_0014d6f4:
        if ((*(int *)(tpd_cdev + 0x4a4) <= (int)uVar7) &&
           ((int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x4a4)))) {
          return uVar5;
        }
        if ((*(int *)(tpd_cdev + 0x4a0) <= (int)(uint)uVar3) &&
           ((int)(uint)uVar3 <=
            (int)((uint)*(ushort *)(tpd_cdev + 0x444) - *(int *)(tpd_cdev + 0x4a0)))) {
          return uVar5;
        }
      }
      puVar6 = &DAT_001718f2;
      goto code_r0x0014d784;
    }
  }
  else if ((*(int *)(tpd_cdev + 0x49c) <= (int)uVar7) &&
          (uVar4 = *(ushort *)(tpd_cdev + 0x442),
          (int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x49c)))) {
    uVar3 = *(ushort *)(param_1 + 0x1c);
    goto LAB_0014d6c8;
  }
  puVar6 = &DAT_001676ee;
code_r0x0014d784:
                    /* WARNING: Subroutine does not return */
  _printk(puVar6);
}



/* 0014d7a4 tp_ghost_check */

undefined8 tp_ghost_check(void)

{
  long lVar1;
  uint uVar2;
  byte bVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  char *__s;
  uint uVar7;
  ulong uVar8;
  undefined8 uVar9;
  ushort uVar10;
  uint uVar12;
  long lVar13;
  ushort uVar11;
  
  lVar13 = tpd_cdev;
  __s = (char *)vmalloc_noprof(0x800);
  if (__s == (char *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016e0a2);
  }
  uVar8 = (ulong)(ushort)point_report_info._94_2_;
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
    uVar8 = 0;
LAB_0014d8c4:
    if ((ushort)point_report_info._228_2_ < uVar10) {
      if (point_report_info._230_2_ != 0) {
        uVar7 = (uint)(ushort)point_report_info._230_2_ + (int)uVar8;
        uVar8 = (ulong)uVar7;
        if ((5 < bVar4) && (uVar7 = uVar7 & 0xffff, uVar12 < uVar7)) {
          uVar8 = (ulong)uVar7;
          goto LAB_0014db64;
        }
      }
      uVar7 = (uint)uVar8;
      if (iVar5 == 2) {
LAB_0014d934:
        if ((ushort)point_report_info._500_2_ < uVar10) {
          if (((point_report_info._502_2_ != 0) &&
              (uVar7 = (ushort)point_report_info._502_2_ + uVar7, 5 < bVar4)) &&
             (uVar12 < (uVar7 & 0xffff))) {
            uVar8 = (ulong)(uVar7 & 0xffff);
            goto LAB_0014db64;
          }
          if (iVar5 != 4) goto LAB_0014d96c;
LAB_0014d9a4:
          if ((ushort)point_report_info._772_2_ < uVar11) {
            if (((point_report_info._774_2_ == 0) ||
                (uVar7 = (ushort)point_report_info._774_2_ + uVar7, bVar4 < 6)) ||
               ((uVar7 & 0xffff) <= uVar12)) {
              if (iVar5 != 6) goto LAB_0014d9dc;
LAB_0014da14:
              if (uVar11 <= (ushort)point_report_info._1044_2_) {
                uVar9 = 7;
                goto LAB_0014db18;
              }
              if (((point_report_info._1046_2_ == 0) ||
                  (uVar7 = (ushort)point_report_info._1046_2_ + uVar7, bVar4 < 6)) ||
                 ((uVar7 & 0xffff) <= uVar12)) {
                if (iVar5 != 8) goto LAB_0014da4c;
LAB_0014da84:
                if (uVar10 <= (ushort)point_report_info._1316_2_) {
                  uVar9 = 9;
                  goto LAB_0014db18;
                }
                if (((point_report_info._1318_2_ == 0) || (bVar4 < 6)) ||
                   (uVar7 = (ushort)point_report_info._1318_2_ + uVar7 & 0xffff,
                   uVar8 = (ulong)uVar7, uVar7 <= uVar12)) {
LAB_0014dab4:
                  vfree(__s);
                  return 0;
                }
              }
              else {
                uVar8 = (ulong)(uVar7 & 0xffff);
              }
            }
            else {
              uVar8 = (ulong)(uVar7 & 0xffff);
            }
LAB_0014db64:
            iVar5 = snprintf(__s,0x800,"multi ghost detect,ghost_count:%d. ",uVar8);
            goto LAB_0014db78;
          }
          uVar9 = 5;
        }
        else {
          uVar9 = 3;
        }
      }
      else {
LAB_0014d8fc:
        uVar7 = (uint)uVar8;
        if ((ushort)point_report_info._364_2_ < uVar10) {
          if (((point_report_info._366_2_ != 0) &&
              (uVar7 = (ushort)point_report_info._366_2_ + uVar7, 5 < bVar4)) &&
             (uVar12 < (uVar7 & 0xffff))) {
            uVar8 = (ulong)(uVar7 & 0xffff);
            goto LAB_0014db64;
          }
          if (iVar5 != 3) goto LAB_0014d934;
LAB_0014d96c:
          if ((ushort)point_report_info._636_2_ < uVar10) {
            if (((point_report_info._638_2_ != 0) &&
                (uVar7 = (ushort)point_report_info._638_2_ + uVar7, 5 < bVar4)) &&
               (uVar12 < (uVar7 & 0xffff))) {
              uVar8 = (ulong)(uVar7 & 0xffff);
              goto LAB_0014db64;
            }
            if (iVar5 != 5) goto LAB_0014d9a4;
LAB_0014d9dc:
            if ((ushort)point_report_info._908_2_ < uVar11) {
              if (((point_report_info._910_2_ == 0) ||
                  (uVar7 = (ushort)point_report_info._910_2_ + uVar7, bVar4 < 6)) ||
                 ((uVar7 & 0xffff) <= uVar12)) {
                if (iVar5 != 7) goto LAB_0014da14;
LAB_0014da4c:
                if (uVar11 <= (ushort)point_report_info._1180_2_) {
                  uVar9 = 8;
                  goto LAB_0014db18;
                }
                if (((point_report_info._1182_2_ == 0) ||
                    (uVar7 = (ushort)point_report_info._1182_2_ + uVar7, bVar4 < 6)) ||
                   ((uVar7 & 0xffff) <= uVar12)) {
                  if (iVar5 == 9) goto LAB_0014dab4;
                  goto LAB_0014da84;
                }
                uVar8 = (ulong)(uVar7 & 0xffff);
              }
              else {
                uVar8 = (ulong)(uVar7 & 0xffff);
              }
              goto LAB_0014db64;
            }
            uVar9 = 6;
          }
          else {
            uVar9 = 4;
          }
        }
        else {
          uVar9 = 2;
        }
      }
    }
    else {
      uVar9 = 1;
    }
  }
  else {
    if ((uint)(ushort)point_report_info._92_2_ < (uint)bVar3) {
      if (((point_report_info._94_2_ == 0) || (bVar4 < 6)) ||
         ((ushort)point_report_info._94_2_ <= uVar12)) {
        if (iVar5 != 1) goto LAB_0014d8c4;
        goto LAB_0014d8fc;
      }
      goto LAB_0014db64;
    }
    uVar9 = 0;
  }
LAB_0014db18:
  iVar5 = snprintf(__s,0x800,"single ghost detect,touch id:%d, count:%d ",uVar9);
LAB_0014db78:
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
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016c662,"tp_ghost_check",__s);
}



/* 0014dcc8 ghost_check_reset */

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



/* 0014dd00 tpd_clean_all_event */

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



/* 0014dda8 tpd_report_work_init */

void tpd_report_work_init(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00167558,"tpd_report_work_init");
}



/* 0014e04c tpd_resume_work_init */

void tpd_resume_work_init(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017e271,"tpd_resume_work_init");
}



/* 0014e100 tpd_id0_report_work */

void tpd_id0_report_work(void)

{
  FUN_0014e904(point_report_info._128_8_,0);
  return;
}



/* 0014e12c tpd_id1_report_work */

void tpd_id1_report_work(void)

{
  FUN_0014e920(point_report_info._264_8_,1);
  return;
}



/* 0014e158 tpd_id2_report_work */

void tpd_id2_report_work(void)

{
  FUN_0014e924(point_report_info._400_8_,2);
  return;
}



/* 0014e184 tpd_id3_report_work */

void tpd_id3_report_work(void)

{
  FUN_0014e908(point_report_info._536_8_,3);
  return;
}



/* 0014e1b0 tpd_id4_report_work */

void tpd_id4_report_work(void)

{
  FUN_0014e9c4(point_report_info._672_8_,4);
  return;
}



/* 0014e1dc tpd_id5_report_work */

void tpd_id5_report_work(void)

{
  FUN_0014e9b0(point_report_info._808_8_,5);
  return;
}



/* 0014e208 tpd_id6_report_work */

void tpd_id6_report_work(void)

{
  FUN_0014e904(point_report_info._944_8_,6);
  return;
}



/* 0014e234 tpd_id7_report_work */

void tpd_id7_report_work(void)

{
  FUN_0014e948(point_report_info._1080_8_,7);
  return;
}



/* 0014e260 tpd_id8_report_work */

void tpd_id8_report_work(void)

{
  FUN_0014e924(point_report_info._1216_8_,8);
  return;
}



/* 0014e28c tpd_id9_report_work */

void tpd_id9_report_work(void)

{
  FUN_0014eaa0(point_report_info._1352_8_,9);
  return;
}



/* 0014e2b8 tpd_report_work_deinit */

void tpd_report_work_deinit(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00167558,"tpd_report_work_deinit");
}



/* 0014e348 one_key_report */

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
LAB_0014e480:
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x14e484);
      (*pcVar3)();
    }
    if ((&one_key_report_one_key_finger)[param_4] != '\0') {
      (&one_key_report_one_key_finger)[param_4] = 0;
      pcVar4 = "fp_gesture_up=true";
      one_key_report_one_key_down = 0;
LAB_0014e43c:
      puStack_38 = (&one_key_finger_id)[param_4];
      local_30 = 0;
      local_40 = pcVar4;
      kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
                    /* WARNING: Subroutine does not return */
      _printk(&one_key_report_log_fmt,pcVar4);
    }
  }
  else {
    uVar1 = *(ushort *)(tpd_cdev + 0x22);
    if ((int)((uint)*(ushort *)(tpd_cdev + 0x1e) - (uint)uVar1) < param_2 &&
        param_2 < (int)((uint)uVar1 + (uint)*(ushort *)(tpd_cdev + 0x1e))) {
      if (((int)((uint)*(ushort *)(tpd_cdev + 0x20) - (uint)uVar1) < param_3) &&
         (param_3 < (int)((uint)*(ushort *)(tpd_cdev + 0x20) + (uint)uVar1))) {
        if (9 < param_4) goto LAB_0014e480;
        if (((&one_key_report_one_key_finger)[param_4] == '\0') &&
           ((one_key_report_one_key_down & 1) == 0)) {
          (&one_key_report_one_key_finger)[param_4] = 1;
          pcVar4 = "fp_gesture_down=true";
          one_key_report_one_key_down = 1;
          goto LAB_0014e43c;
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



/* 0014e488 uf_touch_report */

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
      if (*(int *)(&uf_touch_report_fp_finger + (ulong)param_4 * 4) == 0) goto LAB_0014e590;
      *(undefined4 *)(&uf_touch_report_fp_finger + (ulong)param_4 * 4) = 0;
      uf_touch_report_area_meet_down = 0;
      if (ufp_tp_ops == 0) {
LAB_0014e5cc:
                    /* WARNING: Subroutine does not return */
        _printk(&uf_touch_report_missing_pdev_str);
      }
      local_30 = "areameet_up=true";
      if (current_lcd_state < 3) {
        local_28 = (&uf_touch_report_tppower_to_str)[current_lcd_state];
        uStack_20 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_30);
        pcVar4 = "areameet_up=true";
LAB_0014e62c:
                    /* WARNING: Subroutine does not return */
        _printk(&uf_touch_report_log_fmt,pcVar4,local_28);
      }
    }
    goto LAB_0014e638;
  }
  uVar1 = *(ushort *)(tpd_cdev + 0x22);
  if ((int)((uint)*(ushort *)(tpd_cdev + 0x1e) - (uint)uVar1) < param_2 &&
      param_2 < (int)((uint)uVar1 + (uint)*(ushort *)(tpd_cdev + 0x1e))) {
    if (((int)((uint)*(ushort *)(tpd_cdev + 0x20) - (uint)uVar1) < param_3) &&
       (param_3 < (int)((uint)*(ushort *)(tpd_cdev + 0x20) + (uint)uVar1))) {
      if (param_4 < 10) {
        if ((*(int *)(&uf_touch_report_fp_finger + (ulong)param_4 * 4) != 0) ||
           ((uf_touch_report_area_meet_down & 1) != 0)) goto LAB_0014e590;
        *(undefined4 *)(&uf_touch_report_fp_finger + (ulong)param_4 * 4) = 1;
        uf_touch_report_area_meet_down = 1;
        if (ufp_tp_ops == 0) goto LAB_0014e5cc;
        local_30 = "areameet_down=true";
        if (current_lcd_state < 3) {
          local_28 = (&uf_touch_report_tppower_to_str)[current_lcd_state];
          uStack_20 = 0;
          kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_30);
          pcVar4 = "areameet_down=true";
          goto LAB_0014e62c;
        }
      }
LAB_0014e638:
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x14e63c);
      (*pcVar3)();
    }
  }
LAB_0014e590:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0014e640 ufp_report_lcd_state */

void ufp_report_lcd_state(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  if (ufp_tp_ops == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&uf_touch_report_missing_pdev_str);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&ufp_report_lcd_state_event_fmt);
}



/* 0014e6e0 point_is_in_limit_area */

undefined8 point_is_in_limit_area(uint param_1,ushort param_2)

{
  uint uVar1;
  ushort uVar2;
  
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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016aa04,uVar1,param_2);
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



/* 0014e8a0 edge_long_press_up */

void edge_long_press_up(undefined8 param_1,ushort param_2)

{
  code *pcVar1;
  
  if (9 < param_2) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14eb10);
    (*pcVar1)();
  }
  if (point_report_info[((ulong)param_2 + (ulong)param_2 * 0x10) * 8 + 0x54] == '\0') {
    return;
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(tpd_cdev + 0xc90);
}



/* 0014e8e0 FUN_0014e8e0 */

void FUN_0014e8e0(long param_1)

{
  long unaff_x24;
  
  if (*(char *)(param_1 + unaff_x24 + 0x54) == '\0') {
    return;
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(tpd_cdev + 0xc90);
}



/* 0014e8f0 FUN_0014e8f0 */

void FUN_0014e8f0(void)

{
  return;
}



/* 0014e904 FUN_0014e904 */

void FUN_0014e904(void)

{
  return;
}



/* 0014e908 FUN_0014e908 */

void FUN_0014e908(void)

{
                    /* WARNING: Subroutine does not return */
  mutex_lock(tpd_cdev + 0xc90);
}



/* 0014e920 FUN_0014e920 */

void FUN_0014e920(void)

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
LAB_0014e94c:
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 2) goto LAB_0014e9bc;
LAB_0014e970:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 4) goto LAB_0014e9e0;
LAB_0014ea04:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 6) goto LAB_0014ea28;
LAB_0014ea4c:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 8) goto LAB_0014ea70;
LAB_0014ea94:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014eac0;
  }
  else {
    if (((point_report_info[0x53] & 1) != 0) || ((point_report_info[0x54] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 1) goto LAB_0014e94c;
LAB_0014e9bc:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 3) goto LAB_0014e970;
LAB_0014e9e0:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 5) goto LAB_0014ea04;
LAB_0014ea28:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 7) goto LAB_0014ea4c;
LAB_0014ea70:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 9) goto LAB_0014ea94;
  }
  input_event();
LAB_0014eac0:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14eb10);
    (*pcVar1)();
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f192,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
}



/* 0014e924 FUN_0014e924 */

void FUN_0014e924(undefined8 param_1)

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
LAB_0014e94c:
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 2) goto LAB_0014e9bc;
LAB_0014e970:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 4) goto LAB_0014e9e0;
LAB_0014ea04:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 6) goto LAB_0014ea28;
LAB_0014ea4c:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 8) goto LAB_0014ea70;
LAB_0014ea94:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014eac0;
  }
  else {
    if (((point_report_info[0x53] & 1) != 0) || ((point_report_info[0x54] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 1) goto LAB_0014e94c;
LAB_0014e9bc:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 3) goto LAB_0014e970;
LAB_0014e9e0:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 5) goto LAB_0014ea04;
LAB_0014ea28:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 7) goto LAB_0014ea4c;
LAB_0014ea70:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 9) goto LAB_0014ea94;
  }
  input_event();
LAB_0014eac0:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14eb10);
    (*pcVar1)();
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f192,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
}



/* 0014e948 FUN_0014e948 */

void FUN_0014e948(void)

{
  code *pcVar1;
  int unaff_w19;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  if (unaff_w19 == 0) {
LAB_0014e94c:
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 2) goto LAB_0014e9bc;
LAB_0014e970:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 4) goto LAB_0014e9e0;
LAB_0014ea04:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 6) goto LAB_0014ea28;
LAB_0014ea4c:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 8) goto LAB_0014ea70;
LAB_0014ea94:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014eac0;
  }
  else {
    if (((point_report_info[0x53] & 1) != 0) || ((point_report_info[0x54] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 1) goto LAB_0014e94c;
LAB_0014e9bc:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 3) goto LAB_0014e970;
LAB_0014e9e0:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 5) goto LAB_0014ea04;
LAB_0014ea28:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 7) goto LAB_0014ea4c;
LAB_0014ea70:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 9) goto LAB_0014ea94;
  }
  input_event();
LAB_0014eac0:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14eb10);
    (*pcVar1)();
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f192,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
}



/* 0014e9b0 FUN_0014e9b0 */

void FUN_0014e9b0(void)

{
  code *pcVar1;
  undefined4 unaff_w19;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  if (unaff_w20 == 1) {
LAB_0014e9bc:
    if (((point_report_info[0x163] & 1) != 0) || ((point_report_info[0x164] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 3) goto LAB_0014e970;
LAB_0014e9e0:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 5) goto LAB_0014ea04;
LAB_0014ea28:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 7) goto LAB_0014ea4c;
LAB_0014ea70:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 9) goto LAB_0014ea94;
  }
  else {
    if (((point_report_info[0xdb] & 1) != 0) || ((point_report_info[0xdc] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 2) goto LAB_0014e9bc;
LAB_0014e970:
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 4) goto LAB_0014e9e0;
LAB_0014ea04:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 6) goto LAB_0014ea28;
LAB_0014ea4c:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 8) goto LAB_0014ea70;
LAB_0014ea94:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014eac0;
  }
  input_event();
LAB_0014eac0:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14eb10);
    (*pcVar1)();
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f192,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
}



/* 0014e9c4 FUN_0014e9c4 */

void FUN_0014e9c4(ulong param_1)

{
  code *pcVar1;
  undefined4 unaff_w19;
  short unaff_w20;
  undefined4 *unaff_x23;
  ulong unaff_x24;
  long unaff_x25;
  
  if (((param_1 & 1) != 0) || ((point_report_info[0x164] & 1) != 0)) goto LAB_0014eac0;
  if (unaff_w20 == 3) {
LAB_0014e9e0:
    if (((point_report_info[0x273] & 1) != 0) || ((point_report_info[0x274] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 5) goto LAB_0014ea04;
LAB_0014ea28:
    if (((point_report_info[899] & 1) != 0) || ((point_report_info[900] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 7) goto LAB_0014ea4c;
LAB_0014ea70:
    if (((point_report_info[0x493] & 1) != 0) || ((point_report_info[0x494] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 9) goto LAB_0014ea94;
  }
  else {
    if (((point_report_info[0x1eb] & 1) != 0) || ((point_report_info[0x1ec] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 4) goto LAB_0014e9e0;
LAB_0014ea04:
    if (((point_report_info[0x2fb] & 1) != 0) || ((point_report_info[0x2fc] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 6) goto LAB_0014ea28;
LAB_0014ea4c:
    if (((point_report_info[0x40b] & 1) != 0) || ((point_report_info[0x40c] & 1) != 0))
    goto LAB_0014eac0;
    if (unaff_w20 != 8) goto LAB_0014ea70;
LAB_0014ea94:
    if (((point_report_info[0x51b] & 1) != 0) || ((point_report_info[0x51c] & 1) != 0))
    goto LAB_0014eac0;
  }
  input_event();
LAB_0014eac0:
  input_event();
  mutex_unlock(unaff_x25 + 0xc90);
  *(undefined1 *)(unaff_x23 + 0x15) = 0;
  if (0x550 < (unaff_x24 | 4)) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14eb10);
    (*pcVar1)();
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f192,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
}



/* 0014eaa0 FUN_0014eaa0 */

void FUN_0014eaa0(void)

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f192,"edge_long_press_up",unaff_w19,*unaff_x23,unaff_x23[1]);
  }
                    /* WARNING: Does not return */
  pcVar1 = (code *)SoftwareBreakpoint(1,0x14eb10);
  (*pcVar1)();
}



/* 0014eb14 change_tp_state */

void change_tp_state(void)

{
                    /* WARNING: Subroutine does not return */
  mutex_lock(tpd_cdev + 0xcc0);
}



/* 0014ec90 syna_ts_check_dt */

undefined4 syna_ts_check_dt(long param_1)

{
  undefined8 *puVar1;
  long lVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  ulong uVar6;
  undefined4 uVar7;
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
    puVar5 = &DAT_00168984;
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00167114,"syna_ts_check_dt","syna_ts_check_dt",*puVar1);
      }
      uVar6 = of_drm_find_panel(0);
      if (uVar6 < 0xfffffffffffff001) {
        strncpy(DEVICE_NODE_NAME,pcRam0000000000000000,100);
        uVar7 = 0;
        active_panel = uVar6;
        break;
      }
      if (uVar6 == 0xffffffffffffffed) {
        puVar5 = &DAT_00169088;
LAB_0014ed20:
                    /* WARNING: Subroutine does not return */
        _printk(puVar5,"syna_ts_check_dt","syna_ts_check_dt");
      }
      if (uVar6 == 0xfffffffffffffdfb) goto LAB_0014ed20;
      iVar8 = iVar8 + 1;
    } while (iVar3 != iVar8);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar7;
}



/* 0014ee30 syna_tcm_preserve_touch_report_config */

void syna_tcm_preserve_touch_report_config(long param_1,int param_2)

{
  code *pcVar1;
  int iVar2;
  undefined *puVar3;
  uint uVar4;
  
  if (param_1 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00168ac4,"syna_tcm_preserve_touch_report_config");
  }
  uVar4 = (uint)*(byte *)(param_1 + 9);
  if (*(byte *)(param_1 + 9) == 1) {
    if (param_2 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00171564,"syna_tcm_preserve_touch_report_config");
      }
      param_2 = 0;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x14eea4);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x25,0,0,0,param_2);
    if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00168e70,"syna_tcm_preserve_touch_report_config");
    }
    if (*(long *)(param_1 + 0x148) == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00171750,"syna_tcm_preserve_touch_report_config",*(int *)(param_1 + 0x150),
              *(undefined4 *)(param_1 + 0x154));
    }
    if (*(int *)(param_1 + 0x150) != 0) {
      if (*(char *)(param_1 + 0x188) == '\0') {
                    /* WARNING: Subroutine does not return */
        mutex_lock(param_1 + 0x158);
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016da90,"syna_tcm_buf_lock");
    }
    uVar4 = *(uint *)(param_1 + 0x154);
    puVar3 = &DAT_0016a10a;
  }
  else {
    puVar3 = &DAT_0016c4ce;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_tcm_preserve_touch_report_config",uVar4);
}



/* 0014f39c syna_tcm_get_partition_id_string */

undefined * syna_tcm_get_partition_id_string(int param_1)

{
  if (param_1 - 1U < 0x17) {
    return (&PTR_s_APP_CODE_00197390)[param_1 - 1U];
  }
  return &DAT_00167b28;
}



/* 0014f3c8 syna_tcm_parse_fw_image */

undefined8 syna_tcm_parse_fw_image(int *param_1,int param_2,int *param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  size_t __n;
  undefined *puVar5;
  char *pcVar6;
  long lVar7;
  long lVar8;
  uint uVar9;
  int iVar10;
  uint uVar11;
  ulong __maxlen;
  char *__string;
  
  if (param_1 == (int *)0x0) {
    puVar5 = &DAT_0016f5f4;
  }
  else if (param_3 == (int *)0x0) {
    puVar5 = &DAT_0016f9f2;
  }
  else if (param_2 == 0) {
    puVar5 = &DAT_0016d79a;
  }
  else {
    memset(param_3 + 1,0,0x30c);
    *(int **)(param_3 + 2) = param_1;
    *param_3 = param_2;
    if (*param_1 == 0x4818472b) {
      iVar2 = param_1[1];
      if (iVar2 != 0) {
        iVar10 = 0;
        pcVar6 = " ";
        uVar11 = 8;
        do {
          piVar1 = (int *)((long)param_1 + (ulong)*(uint *)((long)param_1 + (ulong)uVar11));
          if (*piVar1 == 0x7c05e516) {
            uVar9 = 0x16;
            while( true ) {
              if (uVar9 < 0x17) {
                __maxlen = *(ulong *)(&UNK_0019bca0 + (ulong)uVar9 * 8);
                __string = (&PTR_s_APP_CODE_0019bd58)[uVar9];
              }
              else {
                __maxlen = 2;
                __string = pcVar6;
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
              uVar9 = uVar9 - 1;
              if (uVar9 == 0xfffffffe) {
                    /* WARNING: Subroutine does not return */
                _printk(&DAT_0016d844,"syna_tcm_get_partition_id",piVar1 + 1);
              }
            }
            if (uVar9 < 0x17) {
              uVar9 = uVar9 + 1;
              lVar8 = 0x1c;
              lVar7 = 0x24;
LAB_0014f540:
              param_3 = param_3 + (ulong)uVar9 * 8 + 4;
              if (param_3 == (int *)0x0) {
                puVar5 = &DAT_00168774;
              }
              else {
                if (piVar1 != (int *)0x0) {
                  iVar2 = *(int *)((long)piVar1 + lVar8);
                  lVar7 = (long)piVar1 + lVar7;
                  if (uVar9 == 0x14) {
                    *(long *)(param_3 + 2) = lVar7;
                    *(undefined1 *)(param_3 + 6) = 0x14;
                    param_3[4] = iVar2;
                    param_3[5] = 0;
                    *(undefined1 *)param_3 = 1;
                    /* WARNING: Subroutine does not return */
                    _printk(&DAT_0016fa2e,"syna_tcm_save_flash_partition_data",iVar2);
                  }
                  uVar11 = piVar1[8];
                  uVar4 = crc32_le(0xffffffff,lVar7,iVar2);
                  if (uVar11 == ~uVar4) {
                    iVar10 = piVar1[6];
                    *(char *)(param_3 + 6) = (char)uVar9;
                    iVar10 = iVar10 << 1;
                    *(long *)(param_3 + 2) = lVar7;
                    param_3[7] = uVar11;
                    *(undefined1 *)param_3 = 1;
                    param_3[4] = iVar2;
                    param_3[5] = iVar10;
                    if (uVar9 - 1 < 0x17) {
                      pcVar6 = (&PTR_s_APP_CODE_0019be10)[uVar9 - 1];
                    }
                    /* WARNING: Subroutine does not return */
                    _printk(&DAT_0016944c,"syna_tcm_save_flash_partition_data",pcVar6,iVar10,iVar10,
                            iVar2);
                  }
                  if (uVar9 - 1 < 0x17) {
                    pcVar6 = (&PTR_s_APP_CODE_0019be10)[uVar9 - 1];
                  }
                    /* WARNING: Subroutine does not return */
                  _printk(&DAT_00171e96,"syna_tcm_save_flash_partition_data",pcVar6,uVar11);
                }
                puVar5 = &DAT_001730ec;
              }
                    /* WARNING: Subroutine does not return */
              _printk(puVar5,"syna_tcm_save_flash_partition_data");
            }
          }
          else if (*piVar1 == -0x3e04be28) {
            uVar9 = 0x14;
            lVar8 = 4;
            lVar7 = 8;
            goto LAB_0014f540;
          }
          iVar10 = iVar10 + 1;
          uVar11 = uVar11 + 4;
        } while (iVar10 != iVar2);
      }
      return 0;
    }
    puVar5 = &DAT_00168082;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_parse_fw_image");
}



/* 0014f728 string_change */

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
LAB_0014f7f4:
          local_78 = pcVar10;
          if ((*__s == '\0') || (pcVar9 = strsep(&local_70,","), pcVar9 == (char *)0x0))
          goto joined_r0x0014f8e4;
          bVar4 = false;
          uVar18 = 0;
          iVar17 = 0;
          bVar1 = true;
          do {
            pcVar10 = (char *)trim();
            if (*pcVar10 != '\0') {
              uVar6 = simple_strtoul(pcVar10,0,0x10);
              if ((iVar17 < 0) || (uVar16 = (ulong)iVar17, uVar2 <= uVar16)) goto LAB_0014fc50;
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
          if (__s != (char *)0x0) goto LAB_0014f7f4;
          local_78 = pcVar10;
          pcVar10 = pcVar9 + 1;
joined_r0x0014f8e4:
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
LAB_0014fc50:
                    /* WARNING: Does not return */
                  pcVar5 = (code *)SoftwareBreakpoint(1,0x14fc54);
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
                  if ((iVar17 < 0) || (uVar16 = (ulong)iVar17, uVar2 <= uVar16)) goto LAB_0014fc50;
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
                    /* WARNING: Subroutine does not return */
                      _printk(&DAT_00169482,"change_coordinate",*(undefined4 *)(param_1 + 0x608));
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
        goto LAB_0014fcf8;
      }
      kfree();
    }
  }
  *param_3 = 0;
LAB_0014fcf8:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return puVar8;
}



/* 0014fd38 trim */

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



/* 0014fdb4 point_report_reset */

void point_report_reset(uint param_1)

{
  code *pcVar1;
  
  if (9 < param_1) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(1,0x14fe8c);
    (*pcVar1)();
  }
  if (point_report_info[(ulong)param_1 * 0x88 + 0x54] != '\x01') {
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016c154,"point_report_reset",param_1);
}



/* 0014fe14 FUN_0014fe14 */

void FUN_0014fe14(undefined8 param_1,undefined8 param_2)

{
  undefined4 unaff_w19;
  
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016c154,param_2,unaff_w19);
}



/* 0014fe38 FUN_0014fe38 */

void FUN_0014fe38(undefined8 param_1)

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



/* 0014fe8c syna_dev_enter_normal_sensing */

undefined8 syna_dev_enter_normal_sensing(long *param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined4 uVar3;
  
  if ((*(int *)(param_1[0x4e] + 0xb8) == 0) || ((*(byte *)(param_1[0x4e] + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*param_1 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  iVar1 = syna_tcm_sleep(*param_1,0,uVar3);
  if (-1 < iVar1) {
    if (*(char *)((long)param_1 + 0x581) == '\x01') {
      iVar1 = syna_dev_enable_lowpwr_gesture(param_1,0,uVar3);
      if (iVar1 < 0) {
        puVar2 = &DAT_0016ce18;
        goto LAB_0014ff24;
      }
      msleep(100);
    }
    return 0;
  }
  puVar2 = &DAT_0016d5b2;
LAB_0014ff24:
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_dev_enter_normal_sensing");
}



/* 0014fed4 FUN_0014fed4 */

undefined8 FUN_0014fed4(void)

{
  int iVar1;
  long unaff_x19;
  
  if (*(char *)(unaff_x19 + 0x581) == '\x01') {
    iVar1 = syna_dev_enable_lowpwr_gesture();
    if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016ce18,"syna_dev_enter_normal_sensing");
    }
    msleep(100);
  }
  return 0;
}



/* 0014ff44 syna_sysfs_fw_update_store */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016b23c,"syna_sysfs_fw_update_store");
  }
  iVar3 = kstrtouint(param_3,10,&local_2c);
  if (iVar3 == 0) {
    iVar3 = syna_dev_do_reflash(plVar5,1);
    if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00167722,"syna_sysfs_fw_update_store");
    }
    if (*(char *)(*plVar5 + 9) == '\x01') {
      if (*(int *)((code *)plVar5[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x14ffe0);
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



/* 00150054 suspend_show */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1500f4);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb40,"suspend_show",*(undefined1 *)(lVar2 + 0x15));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015014c tpd_report_uevent */

void tpd_report_uevent(char param_1)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
  if (param_1 == '\x02') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016d8ee,"tpd_report_uevent");
  }
  if (param_1 != '\x01') {
    if (param_1 == '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016eace,"tpd_report_uevent");
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016f090,"tpd_report_uevent",param_1);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016e552,"tpd_report_uevent");
}



/* 00150254 syna_tpd_register_fw_class */

void syna_tpd_register_fw_class(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016ea5e,"syna_tpd_register_fw_class");
}



/* 001505c8 syna_work_charger_detect_work */

void syna_work_charger_detect_work(long param_1)

{
  long lVar1;
  long lVar2;
  
  lVar1 = sp_el0;
  if (param_1 != 0x620) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016a808,"syna_work_charger_detect_work");
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != *(long *)(lVar1 + 0x710)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 001507a4 syna_dev_set_tp_report_rate */

void syna_dev_set_tp_report_rate(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001702c2,"syna_dev_set_tp_report_rate","syna_dev_set_tp_report_rate");
}



/* 00150908 ufp_report_gesture_uevent */

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
    DAT_0015fae0 = 1;
  }
  else {
    iVar2 = strcmp(param_1,"double_tap=true");
    if (iVar2 != 0) goto LAB_001509b0;
    uVar3 = 0;
  }
  mod_delayed_work_on(0x20,DAT_0015fb50,&DAT_0015fae8,uVar3);
LAB_001509b0:
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171250,param_1);
}



/* 001509f0 report_ufp_uevent */

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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016d482);
    }
    local_40 = "areameet_up=true";
    if (current_lcd_state < 3) {
      local_38 = (&report_ufp_uevent_tppower_to_str)[current_lcd_state];
      uStack_30 = 0;
      kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016d4ba,"areameet_up=true",local_38);
    }
  }
  else {
    report_ufp_uevent_area_meet_down = 1;
    if (current_lcd_state == 0) {
      if (ufp_tp_ops == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d482);
      }
      local_40 = "areameet_down=true";
      if (true) {
        local_38 = "TP_POWER_STATUS=2";
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d4ba,"areameet_down=true",local_38);
      }
    }
    else {
      if (ufp_tp_ops == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d482);
      }
      ufp_report_gesture_uevent("single_tap=true");
      local_40 = "aod_areameet_down=true";
      if (current_lcd_state < 3) {
        local_38 = (&report_ufp_uevent_tppower_to_str)[current_lcd_state];
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016d4ba,"aod_areameet_down=true",local_38);
      }
    }
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x150c74);
  (*pcVar3)();
}



/* 00150c78 tpd_test_cmd_store */

void tpd_test_cmd_store(long param_1)

{
  if (*(int *)(*(long *)(param_1 + 0xdb8) + 0x57c) == 1) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00169dfe,"tpd_test_cmd_store");
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017109e,"tpd_test_cmd_store");
}



/* 00150d4c tpd_set_tp_report_rate */

void tpd_set_tp_report_rate(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dfe,"tpd_set_tp_report_rate");
}



/* 00150e0c tpd_get_sensibility_level */

undefined8 tpd_get_sensibility_level(long param_1)

{
  *(char *)(param_1 + 0x40) = (char)*(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5fc);
  return 0;
}



/* 00150e28 tpd_set_sensibility_level */

void tpd_set_sensibility_level(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dfe,"tpd_set_sensibility_level");
}



/* 00150eec tpd_get_follow_hand_level */

undefined8 tpd_get_follow_hand_level(long param_1)

{
  *(undefined4 *)(param_1 + 0x468) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x600);
  return 0;
}



/* 00150f08 tpd_set_follow_hand_level */

void tpd_set_follow_hand_level(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dfe,"tpd_set_follow_hand_level");
}



/* 00150fc8 tpd_get_stability_level */

undefined8 tpd_get_stability_level(long param_1)

{
  *(undefined4 *)(param_1 + 0x46c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x604);
  return 0;
}



/* 00150fe4 tpd_set_stability_level */

void tpd_set_stability_level(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dfe,"tpd_set_stability_level");
}



/* 001510a4 tpd_get_rotation_limit_level */

undefined8 tpd_get_rotation_limit_level(long param_1)

{
  *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x60c);
  return 0;
}



/* 001510c0 tpd_set_rotation_limit_level */

void tpd_set_rotation_limit_level(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dfe,"tpd_set_rotation_limit_level");
}



/* 0015118c tpd_set_display_rotation */

void tpd_set_display_rotation(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dfe,"tpd_set_display_rotation");
}



/* 0015134c tpd_set_play_game */

void tpd_set_play_game(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dfe,"tpd_set_play_game");
}



/* 00151428 tpd_set_frame_data */

void tpd_set_frame_data(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dfe,"tpd_set_frame_data");
}



/* 001514f4 syna_dev_disconnect */

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
    puVar3 = &DAT_00169d1c;
  }
  else {
    lVar6 = *(long *)(param_1 + 0x270);
    if (*(int *)(param_1 + 0x57c) == 3) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016f286,"syna_dev_disconnect");
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
        puVar2 = &DAT_001719d6;
LAB_001515f0:
                    /* WARNING: Subroutine does not return */
        _printk(puVar2,"syna_dev_release_irq");
      }
      iVar4 = *(int *)(lVar7 + 0xb8);
      if (0 < iVar4) {
        pcVar5 = *(code **)(lVar7 + 0x40);
        if (pcVar5 != (code *)0x0) {
          if (*(int *)(pcVar5 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x1515cc);
            (*pcVar5)();
          }
          (*pcVar5)(lVar7 + 8,0);
          iVar4 = *(int *)(lVar7 + 0xb8);
        }
        devm_free_irq(lVar1,iVar4,param_1);
        puVar2 = &DAT_0016b6ec;
        *(undefined4 *)(lVar7 + 0xb8) = 0;
        *(undefined1 *)(lVar7 + 0xbc) = 0;
        goto LAB_001515f0;
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
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x15163c);
        (*pcVar5)();
      }
      (*pcVar5)(lVar6,0);
    }
    puVar3 = &DAT_0016b6c6;
    *(undefined4 *)(param_1 + 0x57c) = 0;
    *(undefined1 *)(param_1 + 0x582) = 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_dev_disconnect","synaptics_tcm");
}



/* 00151680 syna_mmap */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 syna_mmap(long param_1,long *param_2)

{
  int iVar1;
  ulong uVar2;
  undefined4 uVar3;
  
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
    return uVar3;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016f2ce,"syna_mmap",uVar2 & 0xffffffff,0x32000);
}



/* 00151734 syna_dev_isr */

undefined8 syna_dev_isr(undefined8 param_1,undefined8 *param_2)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined1 local_2c [4];
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = param_2[0x4e];
  local_2c[0] = 0;
  if (((*(int *)((long)param_2 + 0x57c) != 1) && (*(char *)(param_2 + 0xaf) == '\x01')) &&
     (iVar1 = wait_for_completion_timeout(param_2 + 0xab,0xaf), iVar1 == 0)) {
    puVar2 = &DAT_001689da;
LAB_00151800:
                    /* WARNING: Subroutine does not return */
    _printk(puVar2,"syna_dev_isr");
  }
  gpio_to_desc(*(undefined4 *)(lVar3 + 0xa8));
  iVar1 = gpiod_get_raw_value();
  if (iVar1 == *(int *)(lVar3 + 0xac)) {
    lVar3 = sp_el0;
    *(undefined4 *)(param_2 + 0x5e) = *(undefined4 *)(lVar3 + 0x708);
    iVar1 = syna_tcm_get_event_data(*param_2,local_2c,param_2 + 0x55);
    if (iVar1 < 0) {
      puVar2 = &DAT_0016b04e;
      goto LAB_00151800;
    }
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00151818 syna_dev_probe */

void syna_dev_probe(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016bca0,"syna_dev_probe");
}



/* 001518c4 FUN_001518c4 */

void FUN_001518c4(void)

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



/* 00151b04 FUN_00151b04 */

void FUN_00151b04(undefined8 param_1)

{
                    /* WARNING: Subroutine does not return */
  _printk(param_1,"syna_dev_probe");
}



/* 00151d9c syna_dev_process_touch_report */

void syna_dev_process_touch_report(char param_1,void *param_2,ulong param_3,undefined8 *param_4)

{
  long lVar1;
  int iVar2;
  uint uVar3;
  long lVar4;
  
  lVar4 = sp_el0;
  lVar4 = *(long *)(lVar4 + 0x710);
  if (param_4 == (undefined8 *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f0d8,"syna_dev_process_touch_report");
  }
  if (param_1 == '\x11') {
    if ((*(int *)((long)param_4 + 900) < 1) || (*(char *)((long)param_4 + 0x584) == '\x01')) {
      if (*(int *)(param_4 + 0xbc) != 0) {
        uVar3 = (uint)param_3;
        param_3 = param_3 & 0xffffffff;
        if (0x31fff < uVar3) {
          uVar3 = 0x32000;
        }
        memcpy((void *)param_4[0x8c],param_2,(ulong)uVar3);
        *(uint *)(param_4 + 0x87) = uVar3;
        *(undefined4 *)(param_4 + 0x8d) = 1;
        __wake_up(param_4 + 0x89,1,1,0);
      }
      iVar2 = syna_tcm_parse_touch_report(*param_4,param_2,param_3,param_4 + 2);
      if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00182107,"syna_dev_process_touch_report");
      }
      if (param_4[0x76] != 0) {
                    /* WARNING: Subroutine does not return */
        mutex_lock(param_4 + 0x4f);
      }
    }
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == lVar4) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(0);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180207,"syna_dev_process_touch_report",param_1);
}



/* 001522d8 syna_dev_enable_lowpwr_gesture */

undefined8 syna_dev_enable_lowpwr_gesture(undefined8 *param_1,ulong param_2,undefined4 param_3)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  undefined *puVar4;
  
  if (*(char *)((long)param_1 + 0x581) != '\x01') {
    return 0;
  }
  if ((param_2 & 1) == 0) {
    if (*(byte *)((long)param_1 + 0x2f4) == 0) {
      uVar3 = 0;
      goto LAB_0015237c;
    }
    uVar3 = 0;
    puVar4 = &UNK_0017fcad;
  }
  else {
    uVar3 = 1;
    if ((*(byte *)((long)param_1 + 0x2f4) & 1) != 0) {
LAB_0015237c:
      iVar2 = syna_tcm_set_dynamic_config(*param_1,9,uVar3,param_3);
      if (iVar2 < 0) {
        pcVar1 = "enable";
        if ((param_2 & 1) == 0) {
          pcVar1 = "disable";
        }
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017ec8b,"syna_dev_enable_lowpwr_gesture",pcVar1);
      }
      iVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xfe,
                         *(uint *)((long)param_1 + 0x5c4) | *(int *)(param_1 + 0xb6) << 0xd,param_3)
      ;
      if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00182325,"syna_dev_enable_lowpwr_gesture");
      }
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e6e7,"syna_dev_enable_lowpwr_gesture",*(undefined4 *)(param_1 + 0xb6),
              *(undefined4 *)((long)param_1 + 0x5c4));
    }
    puVar4 = &DAT_0018045e;
    uVar3 = 1;
  }
  irq_set_irq_wake(*(undefined4 *)(param_1[0x4e] + 0xb8),uVar3);
                    /* WARNING: Subroutine does not return */
  _printk(puVar4,"syna_dev_enable_lowpwr_gesture");
}



/* 001524a0 syna_cdev_release */

void syna_cdev_release(void)

{
  if (*(int *)(*(long *)(g_cdev_data + 0xa8) + 900) < 1) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f718,"syna_cdev_release");
  }
                    /* WARNING: Subroutine does not return */
  mutex_lock(&DAT_0015eb40);
}



/* 00152618 syna_cdev_ioctl_raw_read */

void syna_cdev_ioctl_raw_read(long *param_1,undefined8 param_2,uint param_3,uint param_4)

{
  if (param_3 < param_4) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0018126a,"syna_cdev_ioctl_raw_read",param_3,param_4);
  }
  if (param_4 != 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(*param_1 + 0x348);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00182131,"syna_cdev_ioctl_raw_read");
}



/* 00152998 syna_cdev_ioctl_raw_write */

void syna_cdev_ioctl_raw_write(long *param_1,undefined8 param_2,uint param_3,uint param_4)

{
  if (param_3 < param_4) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001812a9,"syna_cdev_ioctl_raw_write",param_3,param_4);
  }
  if (param_4 != 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(*param_1 + 0x348);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00182fda,"syna_cdev_ioctl_raw_write");
}



/* 00152d50 syna_cdev_process_reports */

void syna_cdev_process_reports(undefined1 param_1,void *param_2,uint param_3,long *param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  undefined2 uVar5;
  code *pcVar6;
  long lVar7;
  undefined1 *puVar8;
  undefined *puVar9;
  long lVar10;
  ulong uVar11;
  uint uVar12;
  undefined1 *local_70;
  
  if (param_4 == (long *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181496,"syna_cdev_process_reports");
  }
  if (param_2 == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017fcd4,"syna_cdev_update_fifo");
  }
  lVar10 = *param_4;
  uVar1 = param_3 + 3;
  uVar3 = DAT_0015eba0._4_4_ & ((int)DAT_0015eba0._4_4_ >> 0x1f ^ 0xffffffffU);
  uVar2 = uVar3 + uVar1;
  uVar11 = (ulong)uVar2;
  lVar7 = syna_request_managed_device();
  if (lVar7 == 0) {
    puVar9 = &DAT_001828fa;
LAB_00153104:
                    /* WARNING: Subroutine does not return */
    _printk(puVar9,"syna_pal_mem_alloc");
  }
  if ((int)uVar2 < 1) {
    puVar9 = &DAT_00180de7;
    goto LAB_00153104;
  }
  puVar8 = (undefined1 *)devm_kmalloc(lVar7,uVar11,0xdc0);
  uVar12 = DAT_0015eba0._4_4_;
  if (puVar8 == (undefined1 *)0x0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017f9f3,"syna_cdev_update_fifo",uVar2,param_3);
  }
  if ((int)DAT_0015eba0._4_4_ < 1) {
    uVar12 = 0;
    local_70 = (undefined1 *)0x0;
  }
  else {
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828fa,"syna_pal_mem_alloc");
    }
    local_70 = (undefined1 *)devm_kmalloc(lVar7,uVar12,0xdc0);
    if (local_70 == (undefined1 *)0x0) {
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      devm_kfree(lVar7,puVar8);
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00182ffe,"syna_cdev_update_fifo",DAT_0015eba0._4_4_);
    }
  }
  *puVar8 = param_1;
  if ((uVar2 != 1) && (puVar8[1] = (char)param_3, uVar2 != 2)) {
    puVar8[2] = (char)(param_3 >> 8);
    if (param_3 != 0) {
      if (puVar8 + 3 == (undefined1 *)0x0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017eef9,"syna_cdev_update_fifo",param_3);
      }
      if (uVar3 + param_3 < param_3) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00181648,"syna_pal_mem_cpy",param_3,uVar3 + param_3,param_3);
      }
      if (uVar11 - 3 < (ulong)param_3) goto LAB_001532b8;
      memcpy(puVar8 + 3,param_2,(ulong)param_3);
    }
    if ((int)DAT_0015eba0._4_4_ < 2) {
LAB_00152ef8:
                    /* WARNING: Subroutine does not return */
      mutex_lock(&DAT_0015eb70);
    }
    if (uVar12 != 0) {
      uVar5 = *(undefined2 *)(lVar10 + 0x382);
      *local_70 = (char)uVar5;
      if (uVar12 != 1) {
        local_70[1] = (char)((ushort)uVar5 >> 8);
        if ((DAT_0015eba0._4_4_ + 0xfffe & 0xffff) != 0) {
          if (uVar12 == 2) goto LAB_001532b4;
          local_70[2] = *(undefined1 *)(lVar10 + 0x385);
        }
        if ((puVar8 + (int)uVar1 == (undefined1 *)0x0) || (local_70 == (undefined1 *)0x0)) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0018092b,"syna_cdev_update_fifo");
        }
        if (uVar3 < DAT_0015eba0._4_4_) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00181648,"syna_pal_mem_cpy",DAT_0015eba0._4_4_,uVar3,DAT_0015eba0._4_4_);
        }
        uVar4 = 0;
        if (uVar1 <= uVar2) {
          uVar4 = uVar11 - (long)(int)uVar1;
        }
        if (uVar4 < DAT_0015eba0._4_4_) {
LAB_001532b8:
                    /* WARNING: Subroutine does not return */
          __fortify_panic(0x11);
        }
        memcpy(puVar8 + (int)uVar1,local_70,(ulong)DAT_0015eba0._4_4_);
        goto LAB_00152ef8;
      }
    }
  }
LAB_001532b4:
                    /* WARNING: Does not return */
  pcVar6 = (code *)SoftwareBreakpoint(1,0x1532b8);
  (*pcVar6)();
}



/* 001533a4 syna_dev_reflash_startup_work */

void syna_dev_reflash_startup_work(long param_1)

{
  int iVar1;
  
  wait_for_completion_timeout(param_1 + 0x1c0,0xfa);
  if ((*(byte *)(param_1 + 0x1bb) & 1) == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180255,"syna_dev_reflash_startup_work");
  }
  pm_stay_awake(*(long *)(param_1 + -0x3c0) + 0x10);
  iVar1 = syna_dev_do_reflash(param_1 + -0x3c8,0);
  if (iVar1 < 0) {
    pm_relax(*(long *)(param_1 + -0x3c0) + 0x10);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(param_1 + -0x3c8);
}



/* 001534d8 syna_sysfs_reset_store */

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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017fb8c,"syna_sysfs_reset_store");
    }
    if (*(int *)((long)plVar4 + 0x57c) == 3 || local_3c == 2) {
      pcVar3 = *(code **)(plVar4[0x4e] + 0x188);
      if (pcVar3 == (code *)0x0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00181e87,"syna_sysfs_reset_store");
      }
      if (*(int *)(pcVar3 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x153578);
        (*pcVar3)();
      }
      (*pcVar3)();
      if ((*(byte *)(lVar5 + 0xbc) & 1) == 0) {
        syna_tcm_get_event_data(*plVar4,local_40,0);
      }
    }
    else {
      if (local_3c != 1) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017eccf,"syna_sysfs_reset_store");
      }
      iVar2 = syna_tcm_reset(*plVar4,*(undefined4 *)(*plVar4 + 0x20c));
      if (iVar2 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00181a41,"syna_sysfs_reset_store");
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



/* 0015365c syna_spi_remove */

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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828fa,"syna_pal_mem_free");
    }
    devm_kfree();
    rx_buf = 0;
  }
  if (tx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828fa,"syna_pal_mem_free");
    }
    devm_kfree();
    tx_buf = 0;
  }
  if (xfer != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828fa,"syna_pal_mem_free");
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



/* 001537ec syna_sysfs_irq_en_store */

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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017fb8c,"syna_sysfs_irq_en_store");
      }
      if (*(int *)(lVar5 + 0x57c) == 3) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00180ef1,"syna_sysfs_irq_en_store");
      }
      if (local_3c == 1) {
        if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1538d4);
          (*pcVar4)();
        }
        iVar2 = (*pcVar4)(lVar1,1);
        if (iVar2 < 0) {
          puVar3 = &DAT_0017ef4c;
          goto LAB_0015396c;
        }
      }
      else {
        if (local_3c != 0) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_0017e1ec,"syna_sysfs_irq_en_store");
        }
        if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x153898);
          (*pcVar4)();
        }
        iVar2 = (*pcVar4)(lVar1,0);
        if (iVar2 < 0) {
          puVar3 = &DAT_0017ea3d;
LAB_0015396c:
                    /* WARNING: Subroutine does not return */
          _printk(puVar3,"syna_sysfs_irq_en_store");
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



/* 00153984 syna_testing_check_dev_id_show */

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
      __mutex_init(&local_d8,"(struct mutex *)ptr",&DAT_00162904);
      *(undefined4 ***)(puVar5 + 0x36) = &local_e8;
      local_60 = local_60 & 0xffffffffffffff00;
      local_a0 = 0;
      local_98 = 0;
      __mutex_init(&uStack_90,"(struct mutex *)ptr",&DAT_00162904);
      *(long **)(puVar5 + 0x38) = &local_a0;
      local_f8 = &DAT_00182ac9;
      local_f0 = CONCAT44(local_f0._4_4_,4);
      *(undefined8 *)(puVar5 + 0xe) = 0;
      *(undefined ***)(puVar5 + 0x10) = &local_f8;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x153a8c);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(puVar5 + 6))(*puVar9,puVar5,0);
      if (iVar3 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00183119,"syna_testing_check_dev_id_show",*(undefined8 *)(puVar5 + 2));
      }
      puVar1 = &DAT_00181962;
      if (*(char *)(puVar5 + 4) == '\0') {
        puVar1 = &DAT_001810f6;
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017f2c1,"syna_tcm_buf_release");
      }
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      if (puVar5 != (undefined4 *)0x0) {
        devm_kfree(lVar6,puVar5);
      }
      lVar6 = local_a0;
      local_e0 = 0;
      local_a8 = local_a8 & 0xffffffffffffff00;
      if ((char)local_60 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017f2c1,"syna_tcm_buf_release");
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      if (lVar6 != 0) {
        devm_kfree(lVar7,lVar6);
      }
      goto LAB_00153bb0;
    }
    iVar3 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",1);
  }
  uVar8 = (ulong)iVar3;
LAB_00153bb0:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}



/* 00153c70 syna_dev_connect */

undefined8 syna_dev_connect(long *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined *puVar3;
  code *pcVar4;
  long lVar5;
  long lVar6;
  
  lVar5 = *param_1;
  if (lVar5 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e381,"syna_dev_connect");
  }
  if (*(char *)((long)param_1 + 0x582) == '\x01') {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181eb0,"syna_dev_connect","synaptics_tcm");
  }
  lVar6 = param_1[0x4e];
  pcVar4 = *(code **)(lVar6 + 0x180);
  if (pcVar4 != (code *)0x0) {
    if (*(int *)(pcVar4 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x153cc8);
      (*pcVar4)();
    }
    iVar1 = (*pcVar4)(lVar6,1);
    if (iVar1 < 0) {
      return 0xffffffed;
    }
    if (0 < *(int *)(lVar6 + 0x154)) {
      msleep();
    }
  }
  pcVar4 = *(code **)(lVar6 + 0x188);
  if (pcVar4 != (code *)0x0) {
    if (*(int *)(pcVar4 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x153d5c);
      (*pcVar4)();
    }
    (*pcVar4)(lVar6);
  }
  iVar1 = syna_tcm_detect_device(*param_1,1,0);
  if (iVar1 < 0) {
    puVar3 = &DAT_0017f167;
  }
  else {
    if (*(char *)(lVar5 + 9) != '\x01') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017e78e,"syna_dev_connect");
    }
    iVar1 = FUN_00143294(param_1);
    if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00181793,"syna_dev_connect");
    }
    iVar1 = FUN_0013fe28(param_1);
    if (-1 < iVar1) {
      iVar1 = syna_tcm_set_report_dispatcher(lVar5,0x10,syna_dev_process_unexpected_reset,param_1);
      if (iVar1 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017e3a0,"syna_dev_connect");
      }
      lVar6 = param_1[0x4e];
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) {
        puVar3 = &DAT_001828fa;
      }
      else if (*(int *)(lVar6 + 0xa8) < 0) {
        puVar3 = &DAT_00181a88;
      }
      else {
        gpio_to_desc(*(int *)(lVar6 + 0xa8));
        uVar2 = gpiod_to_irq();
        *(undefined4 *)(lVar6 + 0xb8) = uVar2;
        iVar1 = devm_request_threaded_irq
                          (lVar5,uVar2,0,syna_dev_isr,*(undefined8 *)(lVar6 + 0xb0),"synaptics_tcm",
                           param_1);
        if (-1 < iVar1) {
          *(undefined1 *)(lVar6 + 0xbc) = 1;
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00180001,"syna_dev_request_irq");
        }
        puVar3 = &DAT_00182825;
      }
                    /* WARNING: Subroutine does not return */
      _printk(puVar3,"syna_dev_request_irq");
    }
    puVar3 = &DAT_00181edb;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_dev_connect");
}



/* 00154060 syna_cdev_ioctls */

void syna_cdev_ioctls(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  mutex_lock(&DAT_0015eb40);
}



/* 001561ec syna_spi_probe */

void syna_spi_probe(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00182afb,"syna_spi_probe");
}



/* 00157318 syna_spi_read */

void syna_spi_read(undefined8 *param_1)

{
  undefined8 uVar1;
  undefined *puVar2;
  long *plVar3;
  
  uVar1 = sp_el0;
  plVar3 = (long *)*param_1;
  if (plVar3 == (long *)0x0) {
    puVar2 = &DAT_00181dbe;
  }
  else {
    if (*plVar3 != 0) {
                    /* WARNING: Subroutine does not return */
      mutex_lock(plVar3 + 0xe);
    }
    puVar2 = &DAT_00181cbf;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_spi_read");
}



/* 001575fc syna_spi_write */

void syna_spi_write(undefined8 *param_1)

{
  undefined8 uVar1;
  undefined *puVar2;
  long *plVar3;
  
  uVar1 = sp_el0;
  plVar3 = (long *)*param_1;
  if (plVar3 == (long *)0x0) {
    puVar2 = &DAT_00181dbe;
  }
  else {
    if (*plVar3 != 0) {
                    /* WARNING: Subroutine does not return */
      mutex_lock(plVar3 + 0xe);
    }
    puVar2 = &DAT_00181cbf;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_spi_write");
}



/* 001578b8 syna_spi_power_on */

void syna_spi_power_on(undefined8 param_1,ulong param_2)

{
  char *pcVar1;
  
  pcVar1 = "enable";
  if ((param_2 & 1) == 0) {
    pcVar1 = "disable";
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017efeb,"syna_spi_power_on",pcVar1);
}



/* 00157b20 syna_spi_alloc_mem */

undefined8 syna_spi_alloc_mem(uint param_1,uint param_2)

{
  uint uVar1;
  undefined *puVar2;
  undefined1 *puVar3;
  
  if (param_1 <= syna_spi_alloc_mem_xfer_count) {
    memset(xfer,0,(ulong)(param_1 * 0x88));
    uVar1 = syna_spi_alloc_mem_xfer_count;
LAB_00157bcc:
    syna_spi_alloc_mem_xfer_count = uVar1;
    if (param_2 <= buf_size) {
      return 0;
    }
    if (rx_buf != 0) {
      if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      devm_kfree();
      rx_buf = 0;
    }
    if (tx_buf != 0) {
      if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      devm_kfree();
      tx_buf = 0;
    }
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      puVar2 = &DAT_001828fa;
    }
    else {
      if (0 < (int)param_2) {
        rx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
        if (rx_buf == 0) {
          puVar3 = &DAT_00181d06;
        }
        else {
          if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
                    /* WARNING: Subroutine does not return */
            _printk(&DAT_001828fa,"syna_pal_mem_alloc");
          }
          tx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
          if (tx_buf != 0) {
            buf_size = param_2;
            return 0;
          }
          puVar3 = &DAT_0017edbf;
          tx_buf = 0;
        }
                    /* WARNING: Subroutine does not return */
        _printk(puVar3,"syna_spi_alloc_mem");
      }
      puVar2 = &DAT_00180de7;
    }
                    /* WARNING: Subroutine does not return */
    _printk(puVar2,"syna_pal_mem_alloc");
  }
  if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001828fa,"syna_pal_mem_free");
  }
  if (xfer != (void *)0x0) {
    devm_kfree(*(long *)(p_device + 0x70),xfer);
  }
  if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
    puVar2 = &DAT_001828fa;
  }
  else {
    if (0 < (int)(param_1 * 0x88)) {
      xfer = (void *)devm_kmalloc(*(long *)(p_device + 0x70),(ulong)param_1 * 0x88,0xdc0);
      uVar1 = param_1;
      if (xfer == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017f604,"syna_spi_alloc_mem");
      }
      goto LAB_00157bcc;
    }
    puVar2 = &DAT_00180de7;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_pal_mem_alloc");
}



/* 00157d9c syna_sysfs_info_show */

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
  uVar4 = scnprintf(param_3,0x1000,"Driver version:     %d.%s\n",1,&DAT_0018190a);
  uVar5 = uVar4;
  if ((int)uVar4 < 0) goto LAB_00158140;
  param_3 = param_3 + (ulong)uVar4;
  uVar5 = scnprintf(param_3,0x1000 - (ulong)uVar4,"Core lib version:   %d.%02d\n\n",2,0xc);
  if ((int)uVar5 < 0) goto LAB_00158140;
  param_3 = param_3 + (ulong)uVar5;
  uVar4 = uVar5 + uVar4;
  bVar3 = *(int *)((long)plVar12 + 0x57c) != 3;
  if ((*(byte *)((long)plVar12 + 0x582) & 1) == 0) {
    if (!bVar3) goto LAB_00157ec8;
    pcVar9 = "Device is NOT connected\n";
  }
  else {
    if (bVar3) {
      uVar6 = scnprintf(param_3,0x1000 - (ulong)uVar4,
                        "Character Dev. Node: /dev/%s* (ref. count:%d)\n\n",&DAT_00181314,
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
                    /* WARNING: Subroutine does not return */
                _printk(&DAT_00182554,"syna_sysfs_info_show");
              }
              iVar7 = uVar6 + uVar4 + uVar5;
              uVar4 = 0x1000 - iVar7;
              if (uVar4 < 0x10) {
                    /* WARNING: Subroutine does not return */
                _printk(&DAT_00181648,"syna_pal_mem_cpy",0x10,uVar4,0x10);
              }
              uVar2 = *(undefined8 *)(lVar11 + 0x8a);
              uVar4 = iVar7 + 0x10;
              *puVar1 = *(undefined8 *)(lVar11 + 0x82);
              puVar1[1] = uVar2;
              uVar5 = scnprintf(puVar1 + 2,0x1000 - (ulong)uVar4,&DAT_001813a7);
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
                        if ((int)uVar5 < 0) goto LAB_00158140;
                        lVar8 = lVar8 + 1;
                        lVar10 = lVar10 + (ulong)uVar5;
                        uVar4 = uVar5 + uVar4;
                      } while (lVar8 != 0x10);
                      uVar6 = scnprintf(lVar10,0x1000 - (ulong)uVar4,&DAT_001813a7);
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
      goto LAB_00158140;
    }
LAB_00157ec8:
    pcVar9 = "Device in BARE connection\n";
  }
  iVar7 = scnprintf(param_3,0x1000 - (ulong)uVar4,pcVar9);
  uVar5 = iVar7 + uVar4;
LAB_00158140:
  return (long)(int)uVar5;
}



/* 0015819c syna_sysfs_get_delta_show */

long syna_sysfs_get_delta_show(long param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined1 *puVar3;
  long lVar4;
  long *plVar5;
  uint uVar6;
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
  plVar5 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar4 = *plVar5;
  iVar2 = syna_tcm_enable_report(lVar4,0x12,1,10);
  if (iVar2 < 0) {
    iVar2 = scnprintf(param_3,0x1000,"Fail to enable report %x\n",0x12);
LAB_00158558:
    lVar4 = sp_el0;
    if (*(long *)(lVar4 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
      __stack_chk_fail();
    }
    return (long)iVar2;
  }
  if (lVar4 == 0) {
    puVar3 = &DAT_0017eb6d;
  }
  else {
    if (*(long *)(lVar4 + 0x48) != 0) {
      if (*(long *)(*(long *)(lVar4 + 0x48) + 0x38) != 0) {
                    /* WARNING: Subroutine does not return */
        mutex_lock(lVar4 + 0x50);
      }
      local_70 = local_70 & 0xffffffffffffff00;
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      uVar6 = 0;
      do {
        iVar2 = syna_tcm_wait_for_report(lVar4,0x12,&local_b0,100,1000);
        if ((-1 < iVar2) && (iStack_a4 != 0)) {
                    /* WARNING: Subroutine does not return */
          _printk(&DAT_00183399,"syna_sysfs_get_delta_show",1);
        }
        uVar6 = uVar6 + 1;
      } while ((true) && (uVar6 < 5));
      syna_tcm_enable_report(*plVar5,0x12,0,10);
      lVar1 = local_b0;
      if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017eb6d,"syna_tcm_enable_irq");
      }
      if (*(long *)(lVar4 + 0x48) == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00180c2b,"syna_tcm_enable_irq");
      }
      if (*(long *)(*(long *)(lVar4 + 0x48) + 0x38) != 0) {
                    /* WARNING: Subroutine does not return */
        mutex_lock(lVar4 + 0x50);
      }
      if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017f2c1,"syna_tcm_buf_release");
      }
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      if (lVar1 != 0) {
        devm_kfree(lVar4,lVar1);
      }
      local_a8 = 0;
      local_70 = local_70 & 0xffffffffffffff00;
      iVar2 = scnprintf(param_3,0x1000,"Done\n");
      goto LAB_00158558;
    }
    puVar3 = &DAT_00180c2b;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar3,"syna_tcm_enable_irq");
}



/* 00158668 syna_testing_check_config_id_show */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x158730);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*puVar9,puVar6,0);
      if (iVar4 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00183119,"syna_testing_check_config_id_show",*(undefined8 *)(puVar6 + 2));
      }
      puVar1 = &DAT_00181962;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar1 = &DAT_001810f6;
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
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017f2c1,"syna_tcm_buf_release");
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_001587fc;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",2);
  }
  uVar8 = (ulong)iVar4;
LAB_001587fc:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}



/* 00158884 syna_testing_pt01_show */

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
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x158950);
        (*pcVar4)();
      }
      iVar5 = (**(code **)(puVar6 + 6))(*puVar9,puVar6,0);
      if (iVar5 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00183119,"syna_testing_pt01_show",*(undefined8 *)(puVar6 + 2));
      }
      puVar2 = &DAT_00181962;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar2 = &DAT_001810f6;
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
        iVar5 = scnprintf(param_3 + uVar7,0x1000 - uVar7,&DAT_001813a7);
        uVar7 = (ulong)(iVar5 + uVar1);
      }
      lVar3 = local_90;
      if ((char)local_50 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0017f2c1,"syna_tcm_buf_release");
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      if (lVar3 != 0) {
        devm_kfree(lVar8,lVar3);
      }
      goto LAB_00158a54;
    }
    iVar5 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0x100);
  }
  uVar7 = (ulong)iVar5;
LAB_00158a54:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar7);
  }
  return;
}



/* 00158ae0 syna_tcm_testing_noise */

undefined8 syna_tcm_testing_noise(long param_1,long param_2,ulong param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  long lVar3;
  byte bVar4;
  byte bVar5;
  int iVar6;
  undefined *puVar7;
  undefined8 *puVar8;
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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0018259c,"syna_tcm_testing_noise",10);
    }
    if (*(long *)(param_2 + 0xd8) != 0) {
      syna_tcm_buf_copy(*(long *)(param_2 + 0xd8),&local_90);
    }
    if ((param_3 & 1) == 0) {
      puVar8 = *(undefined8 **)(param_2 + 0x38);
      if (puVar8 == (undefined8 *)0x0) {
        bVar4 = 0;
      }
      else {
        bVar4 = syna_tcm_testing_check_frame_data
                          (local_90,local_88._4_4_,uVar1,uVar2,
                           syna_tcm_testing_0A00_check_upper_bound,*puVar8,
                           *(undefined4 *)(puVar8 + 1));
      }
      puVar8 = *(undefined8 **)(param_2 + 0x40);
      if (puVar8 == (undefined8 *)0x0) {
        bVar5 = 0;
      }
      else {
        bVar5 = syna_tcm_testing_check_frame_data
                          (local_90,local_88._4_4_,uVar1,uVar2,
                           syna_tcm_testing_0A00_check_lower_bound,*puVar8,
                           *(undefined4 *)(puVar8 + 1));
      }
      bVar4 = bVar4 & bVar5 & 1;
      *(byte *)(param_2 + 0x10) = bVar4;
      puVar7 = &DAT_001811fb;
      if (bVar4 == 0) {
        puVar7 = &DAT_0017ec1a;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar7 = &DAT_001811fb;
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e9bb,"syna_tcm_testing_noise",puVar7);
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return 0xffffff5f;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00158d20 syna_tcm_buf_copy */

void syna_tcm_buf_copy(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x10);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180db7,"syna_tcm_buf_lock");
}



/* 00158d60 FUN_00158d60 */

void FUN_00158d60(undefined8 param_1,undefined8 param_2,int param_3)

{
  long unaff_x20;
  
  if (param_3 == 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(unaff_x20 + 0x10);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180db7,"syna_tcm_buf_lock");
}



/* 00158e34 FUN_00158e34 */

void FUN_00158e34(undefined8 param_1,undefined8 param_2,int param_3)

{
  long unaff_x19;
  long unaff_x20;
  
  if (param_3 != 1) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00180db7,"syna_tcm_buf_unlock");
  }
  *(undefined1 *)(unaff_x20 + 0x40) = 0;
  mutex_unlock(unaff_x20 + 0x10);
  if (*(char *)(unaff_x19 + 0x40) == '\x01') {
    *(undefined1 *)(unaff_x19 + 0x40) = 0;
    mutex_unlock(unaff_x19 + 0x10);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00180db7,"syna_tcm_buf_unlock");
}



/* 00158fa0 syna_tcm_testing_check_frame_data */

uint syna_tcm_testing_check_frame_data
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00183474,"syna_tcm_testing_check_frame_data");
  }
  if (param_2 < param_3 * param_4 * 2) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_001834cc,"syna_tcm_testing_check_frame_data",param_2 & 0xffffffff);
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
            pcVar3 = (code *)SoftwareBreakpoint(0x8236,0x159088);
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
  return uVar8;
}



/* 00158ff4 FUN_00158ff4 */

uint FUN_00158ff4(undefined8 param_1,undefined8 param_2,int param_3,undefined8 param_4,code *param_5
                 ,undefined8 param_6,ulong param_7,undefined8 param_8,undefined8 param_9,
                 uint param_10)

{
  long lVar1;
  code *pcVar2;
  uint uVar3;
  int iVar4;
  ulong unaff_x19;
  long unaff_x21;
  long unaff_x25;
  int iVar5;
  ulong uVar6;
  uint uVar7;
  long unaff_x29;
  
  if (param_3 < 1) {
    uVar7 = 1;
  }
  else {
    iVar4 = 0;
    iVar5 = 0;
    uVar7 = 1;
    param_9._0_4_ = param_10 << 1;
    param_9._4_4_ = param_3;
    do {
      *(int *)(unaff_x29 + -4) = iVar4;
      if (0 < (int)param_10) {
        uVar6 = 0;
        do {
          lVar1 = 0;
          if (unaff_x19 <= param_7) {
            lVar1 = (long)iVar4;
          }
          if (*(int *)(param_5 + -4) != -0x5ccd7a0e) {
                    /* WARNING: Does not return */
            pcVar2 = (code *)SoftwareBreakpoint(0x8236,0x159088);
            (*pcVar2)();
          }
          uVar3 = (*param_5)(unaff_x25 + iVar4,unaff_x21 + lVar1,uVar6 & 0xffffffff,iVar5);
          uVar6 = uVar6 + 1;
          uVar7 = uVar3 & uVar7;
          iVar4 = iVar4 + 2;
        } while (param_10 != uVar6);
      }
      iVar5 = iVar5 + 1;
      iVar4 = *(int *)(unaff_x29 + -4) + (int)param_9;
    } while (iVar5 != param_9._4_4_);
  }
  return uVar7;
}



/* 001590c0 FUN_001590c0 */

void FUN_001590c0(void)

{
  return;
}



/* 00159110 syna_tcm_testing_build_id */

undefined8 syna_tcm_testing_build_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  undefined *puVar4;
  undefined8 *puVar5;
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e50b,"syna_tcm_testing_build_id");
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
    puVar5 = *(undefined8 **)(param_2 + 0x38);
    if (((puVar5 != (undefined8 *)0x0) && (3 < *(uint *)(puVar5 + 1))) &&
       (*(int *)*puVar5 != local_7c)) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0017f634,"syna_tcm_testing_0001_check_build_id");
    }
    puVar5 = *(undefined8 **)(param_2 + 0x40);
    if ((puVar5 == (undefined8 *)0x0) || (*(int *)(puVar5 + 1) == 0)) {
      bVar2 = 1;
    }
    else {
      bVar2 = syna_tcm_testing_0001_check_device_id((ulong)&local_78 | 2,*puVar5);
    }
    *(byte *)(param_2 + 0x10) = bVar2 & 1;
    puVar4 = &DAT_001811fb;
    if ((bVar2 & 1) == 0) {
      puVar4 = &DAT_0017ec1a;
    }
  }
  else {
    *(undefined1 *)(param_2 + 0x10) = 1;
    puVar4 = &DAT_001811fb;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017e9bb,"syna_tcm_testing_build_id",puVar4);
}



/* 00159368 syna_tcm_buf_alloc */

undefined8 syna_tcm_buf_alloc(long *param_1,uint param_2)

{
  void *__s;
  long lVar1;
  ulong __n;
  
  __n = (ulong)*(uint *)(param_1 + 1);
  __s = (void *)*param_1;
  if (*(uint *)(param_1 + 1) < param_2) {
    __n = (ulong)param_2;
    if (__s != (void *)0x0) {
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001828fa,"syna_pal_mem_free");
      }
      devm_kfree(lVar1,__s);
    }
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001828fa,"syna_pal_mem_alloc");
    }
    __s = (void *)devm_kmalloc(lVar1,__n,0xdc0);
    *param_1 = (long)__s;
    if (__s == (void *)0x0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001805b6,"syna_tcm_buf_alloc",__n);
    }
    *(uint *)(param_1 + 1) = param_2;
  }
  memset(__s,0,__n);
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return 0;
}



/* 00159450 syna_pal_mem_cpy */

void syna_pal_mem_cpy(void *param_1,uint param_2,void *param_3,uint param_4,uint param_5)

{
  if ((param_1 != (void *)0x0) && (param_3 != (void *)0x0)) {
    if ((param_2 < param_5) || (param_4 < param_5)) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00181648,"syna_pal_mem_cpy",param_4,param_2);
    }
    memcpy(param_1,param_3,(ulong)param_5);
  }
  return;
}



/* 001594b8 syna_tcm_testing_0001_check_device_id */

undefined8 syna_tcm_testing_0001_check_device_id(long param_1,char *param_2,uint param_3)

{
  char cVar1;
  int iVar2;
  int iVar3;
  
  if ((param_1 == 0) || (param_2 == (char *)0x0)) {
    return 0;
  }
  if (-1 < (int)(0x10 - param_3)) {
    cVar1 = *param_2;
    iVar3 = 0;
    do {
      if ((*(char *)(param_1 + iVar3) == cVar1) &&
         (iVar2 = strncmp((char *)(param_1 + iVar3),param_2,(ulong)param_3), iVar2 == 0)) {
        return 1;
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 <= (int)(0x10 - param_3));
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00172894,"syna_tcm_testing_0001_check_device_id",param_1,param_2);
}



/* 001594d0 FUN_001594d0 */

undefined8 FUN_001594d0(long param_1,char *param_2,uint param_3)

{
  char cVar1;
  int iVar2;
  int iVar3;
  
  if ((param_1 == 0) || (param_2 == (char *)0x0)) {
    return 0;
  }
  if (-1 < (int)(0x10 - param_3)) {
    cVar1 = *param_2;
    iVar3 = 0;
    do {
      if ((*(char *)(param_1 + iVar3) == cVar1) &&
         (iVar2 = strncmp((char *)(param_1 + iVar3),param_2,(ulong)param_3), iVar2 == 0)) {
        return 1;
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 <= (int)(0x10 - param_3));
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00172894,"syna_tcm_testing_0001_check_device_id",param_1,param_2);
}



/* 00159570 tp_module_info_read */

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
LAB_001597d4:
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
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x159618);
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
      if (200 < uVar7) goto LAB_00159808;
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"I2C address: 0x%x\n");
      uVar7 = uVar7 + (long)iVar4;
    }
    if (*(int *)(lVar2 + 0xd14) != 0) {
      if (200 < uVar7) goto LAB_00159808;
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Spi num: %d\n");
      uVar7 = uVar7 + (long)iVar4;
    }
    if (uVar7 < 0xc9) {
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Firmware version : %d\n",
                       (ulong)*(uint *)(lVar2 + 0xd00));
      uVar7 = uVar7 + (long)iVar4;
      if (*(int *)(lVar2 + 0xd04) != 0) {
        if (200 < uVar7) goto LAB_00159808;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Config version:0x%x\n");
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(int *)(lVar2 + 0xd08) != 0) {
        if (200 < uVar7) goto LAB_00159808;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Display version:0x%x\n");
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(char *)(lVar2 + 0xd68) != '\0') {
        if (200 < uVar7) goto LAB_00159808;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Chip hard version:%s\n",lVar2 + 0xd68);
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(char *)(lVar2 + 0xd90) != '\0') {
        if (200 < uVar7) goto LAB_00159808;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"fw update status:%s\n",lVar2 + 0xd90);
        uVar7 = uVar7 + (long)iVar4;
      }
      uVar5 = simple_read_from_buffer(param_2,param_3,param_4,local_120,uVar7);
      goto LAB_001597d4;
    }
  }
LAB_00159808:
                    /* WARNING: Does not return */
  pcVar6 = (code *)SoftwareBreakpoint(0x5512,0x15980c);
  (*pcVar6)();
}



/* 001596f8 FUN_001596f8 */

void FUN_001596f8(void)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  int in_w3;
  long unaff_x22;
  ulong unaff_x23;
  long unaff_x29;
  
  if (in_w3 != 0) {
    if (200 < unaff_x23) goto LAB_00159808;
    iVar3 = snprintf(&stack0x00000000 + unaff_x23,200 - unaff_x23,"Config version:0x%x\n");
    unaff_x23 = unaff_x23 + (long)iVar3;
  }
  if (*(int *)(unaff_x22 + 0xd08) != 0) {
    if (200 < unaff_x23) goto LAB_00159808;
    iVar3 = snprintf(&stack0x00000000 + unaff_x23,200 - unaff_x23,"Display version:0x%x\n");
    unaff_x23 = unaff_x23 + (long)iVar3;
  }
  if (*(char *)(unaff_x22 + 0xd68) != '\0') {
    if (200 < unaff_x23) goto LAB_00159808;
    iVar3 = snprintf(&stack0x00000000 + unaff_x23,200 - unaff_x23,"Chip hard version:%s\n",
                     unaff_x22 + 0xd68);
    unaff_x23 = unaff_x23 + (long)iVar3;
  }
  if (*(char *)(unaff_x22 + 0xd90) != '\0') {
    if (200 < unaff_x23) {
LAB_00159808:
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x15980c);
      (*pcVar2)();
    }
    snprintf(&stack0x00000000 + unaff_x23,200 - unaff_x23,"fw update status:%s\n",unaff_x22 + 0xd90)
    ;
  }
  simple_read_from_buffer();
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == *(long *)(unaff_x29 + -8)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00159814 tp_wake_gesture_read */

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
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1598b0);
        (*pcVar4)();
      }
      (*pcVar4)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d38,"tp_wake_gesture_read",*puVar3);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00159908 tp_smart_cover_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1599a4);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d38,"tp_smart_cover_read",*(undefined4 *)(lVar2 + 4));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 001599fc tp_smart_cover_write */

undefined8 tp_smart_cover_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e541,"tp_smart_cover_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00159ad0 tp_glove_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x159b6c);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00181d38,"tp_glove_read",*(undefined4 *)(lVar2 + 8));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00159bc0 FUN_00159bc0 */

/* WARNING: Control flow encountered bad instruction data */

void FUN_00159bc0(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* 00159bc4 tp_glove_write */

undefined8 tp_glove_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  uint local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
    local_2c = (uint)(local_2c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e541,"tp_glove_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00159c98 tpfwupgrade_store */

undefined8 tpfwupgrade_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 local_3c;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_3c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_3c);
  if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0017e541,"tpfwupgrade_store",local_3c);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00159ecc headset_state_show */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x159f6c);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb40,"headset_state_show",*(undefined1 *)(lVar2 + 0x17));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 00159fc4 headset_state_store */

undefined8 headset_state_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  int iVar2;
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
  iVar2 = FUN_0013dbe0(&local_48,param_2,param_3);
  if ((iVar2 == 0) && (iVar2 = kstrtouint(&local_48,0,&local_4c), iVar2 == 0)) {
    local_4c = (uint)(local_4c != 0);
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016705a,"headset_state_store");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a0d4 get_rotation_limit_level */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15a170);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb40,"get_rotation_limit_level",*(undefined4 *)(lVar2 + 0xc));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a1c8 set_rotation_limit_level */

undefined8 set_rotation_limit_level(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar2 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016cc96,"set_rotation_limit_level",local_2c);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a290 display_rotation_show */

void display_rotation_show(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016fb40,"display_rotation_show",*(undefined4 *)(tpd_cdev + 0x10));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a368 set_display_rotation */

void set_display_rotation(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  undefined8 local_48;
  undefined2 local_40;
  undefined8 local_38;
  
  lVar1 = sp_el0;
  local_38 = *(undefined8 *)(lVar1 + 0x710);
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(&local_48,param_2,param_3);
}



/* 0015a470 tp_single_tap_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15a50c);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00169532,"tp_single_tap_read",*(undefined4 *)(lVar2 + 0x44c));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a564 tp_single_tap_write */

undefined8 tp_single_tap_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  bool bVar2;
  int iVar3;
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016cc96,"tp_single_tap_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a63c tp_single_aod_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15a6d8);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00169532,"tp_single_aod_read",*(undefined4 *)(lVar2 + 0x450));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a730 tp_single_aod_write */

undefined8 tp_single_aod_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  bool bVar2;
  int iVar3;
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016cc96,"tp_single_aod_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a808 tp_single_game_read */

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
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15a8a4);
        (*pcVar3)();
      }
      (*pcVar3)(tpd_cdev);
    }
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00169532,"tp_single_game_read",*(undefined4 *)(lVar2 + 0x454));
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015a8fc tp_single_game_write */

undefined8 tp_single_game_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  bool bVar2;
  int iVar3;
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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_0016cc96,"tp_single_game_write");
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return 0xffffffffffffffea;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0015a9d4 get_tp_noise_show */

void get_tp_noise_show(void)

{
  long lVar1;
  long lVar2;
  long *in_x3;
  
  lVar1 = sp_el0;
  if (*in_x3 == 0) {
                    /* WARNING: Subroutine does not return */
    mutex_lock(tpd_cdev + 0xc60);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == *(long *)(lVar1 + 0x710)) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(0);
}



/* 0015aaf0 get_tp_noise_store */

void get_tp_noise_store(void)

{
                    /* WARNING: Subroutine does not return */
  mutex_lock(tpd_cdev + 0xc60);
}



/* 0015ab64 tpd_get_wakegesture */

undefined8 tpd_get_wakegesture(undefined4 *param_1)

{
  *param_1 = *(undefined4 *)(*(long *)(param_1 + 0x36e) + 0x5c4);
  return 0;
}



/* 0015ab80 tpd_get_one_key */

undefined8 tpd_get_one_key(long param_1)

{
  *(undefined4 *)(param_1 + 0x458) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5d4);
  return 0;
}



/* 0015ab9c tpd_get_tp_report_rate */

undefined8 tpd_get_tp_report_rate(long param_1)

{
  *(undefined4 *)(param_1 + 0x464) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5f8);
  return 0;
}



/* 0015abb8 tpd_get_play_game */

undefined8 tpd_get_play_game(long param_1)

{
  *(undefined4 *)(param_1 + 0x45c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5dc);
  return 0;
}



/* 0015abd4 tpd_get_frame_data */

undefined8 tpd_get_frame_data(long param_1)

{
  *(undefined4 *)(param_1 + 0x460) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e0);
  return 0;
}



/* 0015abf0 tpd_get_palm_mode */

undefined8 tpd_get_palm_mode(long param_1)

{
  *(undefined4 *)(param_1 + 0x478) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e4);
  return 0;
}



/* 0015ac0c tpd_get_fake_sleep */

undefined8 tpd_get_fake_sleep(long param_1)

{
  *(undefined4 *)(param_1 + 0x480) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e8);
  return 0;
}



/* 0015ac28 tpd_get_screen_off_awake */

undefined8 tpd_get_screen_off_awake(long param_1)

{
  *(undefined4 *)(param_1 + 0x484) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5f0);
  return 0;
}



/* 0015ac44 syna_request_managed_device */

undefined8 syna_request_managed_device(void)

{
  if (p_device != 0) {
    return *(undefined8 *)(p_device + 0x70);
  }
  return 0;
}



/* 0015ac64 syna_testing_remove_dir */

void syna_testing_remove_dir(long param_1)

{
  if (*(long *)(param_1 + 0x3a8) != 0) {
    sysfs_remove_group(*(long *)(param_1 + 0x3a8),attr_testing_group);
    kobject_put(*(undefined8 *)(param_1 + 0x3a8));
  }
  return;
}



/* 0015aca8 syna_dev_module_exit */

void syna_dev_module_exit(void)

{
  platform_driver_unregister(syna_dev_driver);
  syna_hw_interface_exit();
  return;
}



/* 0015acd4 syna_hw_interface_exit */

void syna_hw_interface_exit(void)

{
  driver_unregister(0x12f820);
  platform_device_unregister(syna_spi_device);
  return;
}



/* 0015ad08 syna_spi_release */

void syna_spi_release(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001696e6,"syna_spi_release");
}



/* 0015ad38 syna_dev_module_init */

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



/* 0015ad78 syna_open */

void syna_open(undefined8 param_1,long param_2)

{
  *(long *)(param_2 + 0x20) = *(long *)(param_2 + 0x20) + -0x4a0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00171afe,"syna_open");
}



/* 0015adb8 tpd_set_game_partition */

void tpd_set_game_partition(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001702c2,"tpd_set_game_partition","tpd_set_game_partition");
}



/* 0015adf0 tpd_set_palm_mode */

void tpd_set_palm_mode(long param_1,undefined4 param_2)

{
  *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e4) = param_2;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016d312,"tpd_set_palm_mode",param_2);
}



/* 0015ae30 tpd_set_fake_sleep */

undefined8 tpd_set_fake_sleep(long param_1,undefined4 param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  *(undefined4 *)(lVar1 + 0x5ec) = param_2;
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(undefined4 *)(lVar1 + 0x5e8) = param_2;
    is_fake_sleep_mode = param_2;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017109e,"tpd_set_fake_sleep");
}



/* 0015ae70 FUN_0015ae70 */

void FUN_0015ae70(undefined8 param_1,long param_2)

{
                    /* WARNING: Subroutine does not return */
  _printk(param_1,param_2 + 0xab6);
}



/* 0015ae8c syna_tcm_clear_command_processing */

void syna_tcm_clear_command_processing(long param_1)

{
  code *pcVar1;
  
  if ((param_1 != 0) && (pcVar1 = *(code **)(param_1 + 0x3a0), pcVar1 != (code *)0x0)) {
    if (*(int *)(pcVar1 + -4) != -0x6481d8a0) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x15aebc);
      (*pcVar1)();
    }
    (*pcVar1)();
  }
  return;
}



/* 0015aed0 syna_tcm_set_post_reset_callback */

undefined8 syna_tcm_set_post_reset_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x23e0) = param_2;
    *(undefined8 *)(param_1 + 0x23d8) = param_3;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00168ac4,"syna_tcm_set_post_reset_callback");
}



/* 0015af1c syna_cdev_llseek */

undefined8 syna_cdev_llseek(void)

{
  return 0xffffffffffffffea;
}



/* 0015af28 tpd_reset_fw_data_pos_and_size */

void tpd_reset_fw_data_pos_and_size(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  **(ulong **)(tpd_cdev + 0xc58) = (ulong)*(uint *)(tpd_cdev + 0x448);
  *(undefined4 *)(lVar1 + 0x448) = 0;
  return;
}



/* 0015af48 ufp_report_lcd_state_work */

void ufp_report_lcd_state_work(void)

{
  ufp_report_lcd_state();
  return;
}



/* 0015af68 syna_dev_shutdown */

void syna_dev_shutdown(void)

{
  FUN_0015ae70();
  return;
}



/* 0015af88 tpd_goodix_ts_resume */

void tpd_goodix_ts_resume(long param_1)

{
  FUN_001596f8(*(long *)(param_1 + 8) + 0x10);
  return;
}



/* 0015afb0 tpd_goodix_ts_suspend */

void tpd_goodix_ts_suspend(long param_1)

{
  FUN_00159bc0(*(long *)(param_1 + 8) + 0x10);
  return;
}



/* 0015afd8 cancel_report_lcd_state_delayed_work */

void cancel_report_lcd_state_delayed_work(void)

{
  cancel_delayed_work_sync(tpd_cdev + 0x9e0);
  return;
}



/* 0015b004 ufp_notifier_cb */

undefined8 ufp_notifier_cb(int param_1)

{
  change_tp_state(param_1 != 0);
  return 0;
}



/* 0015b030 zlog_register_work */

void zlog_register_work(void)

{
  if ((*(byte *)(tpd_cdev + 0xbf0) & 1) == 0) {
    tpd_zlog_register();
  }
  return;
}



/* 0015b060 syna_release */

void syna_release(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016fdaa,"syna_release");
}



/* 0015b094 get_lcd_panel_name */

char * get_lcd_panel_name(void)

{
  return "Unknown_lcd";
}



/* 0015b0a4 syna_tcm_get_testing_0100 */

undefined1 * syna_tcm_get_testing_0100(void)

{
  return test_0100;
}



/* 0015b0b4 ufp_single_tap_work */

void ufp_single_tap_work(void)

{
  DAT_0015fae0 = 0;
  return;
}



/* 0015b0c4 ufp_get_lcdstate */

undefined4 ufp_get_lcdstate(void)

{
  return current_lcd_state;
}



/* 0015b0d4 ztp_probe_work */

void ztp_probe_work(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00168ef0);
}



/* 0015b100 zte_touch_remove */

void zte_touch_remove(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016df62,"zte_touch_remove",0xb57);
}



/* 0015b138 tpd_probe_work_deinit */

void tpd_probe_work_deinit(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00167558,"tpd_probe_work_deinit");
}



/* 0015b180 ufp_report_lcd_state_delayed_work */

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



/* 0015b1c8 syna_cdev_devnode */

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
    uVar1 = kasprintf(0xcc0,&DAT_0016bb6c,lVar2);
    return uVar1;
  }
  return 0;
}



/* 0015b214 syna_pm_suspend */

void syna_pm_suspend(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00168426,"syna_pm_suspend");
}



/* 0015b260 syna_pm_resume */

void syna_pm_resume(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016c1cc,"syna_pm_resume");
}



/* 0015b2ac zlog_register_work_deinit */

void zlog_register_work_deinit(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00167558,"zlog_register_work_deinit");
}



/* 0015b300 tp_free_tp_firmware_data */

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



/* 0015b364 zte_touch_pdev_unregister */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_touch_pdev_unregister(void)

{
  long lVar1;
  code *pcVar2;
  
  lVar1 = tpd_cdev;
  if (*(long *)(tpd_cdev + 0xdd0) == 0) {
    if (*(int *)(_DAT_00000338 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x15b3a8);
      (*pcVar2)();
    }
    (*_DAT_00000338)(0x10);
    platform_device_unregister(*(undefined8 *)(lVar1 + 0xdd0));
  }
  return;
}



/* 0015b3c8 tp_esd_check */

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
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x15b3fc);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1 & 1;
}



/* 0015b41c set_gpio_mode */

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
    pcVar2 = (code *)SoftwareBreakpoint(0x8229,0x15b458);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)(tpd_cdev,param_1);
  return uVar1;
}



/* 0015b474 tpd_reset_gpio_output */

void tpd_reset_gpio_output(uint param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(tpd_cdev + 0xeb0);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x5d031687) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x15b4ac);
      (*pcVar1)();
    }
    (*pcVar1)(param_1 & 1);
  }
  return;
}



/* 0015b4c0 tpd_resume_work */

void tpd_resume_work(void)

{
  long lVar1;
  code *pcVar2;
  
  lVar1 = tpd_cdev;
  pcVar2 = *(code **)(tpd_cdev + 0xe08);
  if (pcVar2 != (code *)0x0) {
    if (*(int *)(pcVar2 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x15b4fc);
      (*pcVar2)();
    }
    (*pcVar2)(*(undefined8 *)(tpd_cdev + 0xdd8));
    *(undefined4 *)(lVar1 + 0x4a8) = 0;
  }
  return;
}



/* 0015b518 tpd_suspend_work */

void tpd_suspend_work(void)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(tpd_cdev + 0xe10);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x15b550);
      (*pcVar1)();
    }
    (*pcVar1)(*(undefined8 *)(tpd_cdev + 0xdd8));
  }
  return;
}



/* 0015b564 tpd_resume_work_deinit */

void tpd_resume_work_deinit(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00167558,"tpd_resume_work_deinit");
}



/* 0015b5bc ufp_mac_exit */

void ufp_mac_exit(void)

{
  cancel_delayed_work_sync(&DAT_0015fae8);
  __flush_workqueue(DAT_0015fb50);
  destroy_workqueue(DAT_0015fb50);
  wakeup_source_remove(tp_wakeup);
  ufp_tp_ops = 0;
  return;
}



/* 0015b60c syna_pal_mem_cpy_0 */

void syna_pal_mem_cpy_0(undefined8 *param_1,uint param_2,undefined8 *param_3)

{
  undefined8 uVar1;
  
  if ((param_1 != (undefined8 *)0x0) && (param_3 != (undefined8 *)0x0)) {
    if (param_2 < 0x10) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_0016ee02,"syna_pal_mem_cpy",0x10,param_2,0x10);
    }
    uVar1 = param_3[1];
    *param_1 = *param_3;
    param_1[1] = uVar1;
  }
  return;
}



/* 0015b660 syna_tcm_buf_lock */

void syna_tcm_buf_lock(long param_1)

{
  if (*(char *)(param_1 + 0x40) == '\0') {
                    /* WARNING: Subroutine does not return */
    mutex_lock(param_1 + 0x10);
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0016da90,"syna_tcm_buf_lock");
}



/* 0015b6bc syna_tcm_set_data_duplicator */

undefined8
syna_tcm_set_data_duplicator(long param_1,byte param_2,undefined8 param_3,undefined8 param_4)

{
  if (param_1 != 0) {
    param_1 = param_1 + (ulong)param_2 * 0x10;
    *(undefined8 *)(param_1 + 0x13e0) = param_3;
    *(undefined8 *)(param_1 + 0x13d8) = param_4;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00168ac4,"syna_tcm_set_data_duplicator");
}



/* 0015b70c syna_tcm_clear_data_duplicator */

undefined8 syna_tcm_clear_data_duplicator(long param_1)

{
  if (param_1 != 0) {
    memset((void *)(param_1 + 0x13d8),0,0x1000);
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00168ac4,"syna_tcm_clear_data_duplicator");
}



/* 0015b75c syna_pal_mem_free_0 */

void syna_pal_mem_free_0(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 != 0) {
    devm_kfree(lVar1,param_1);
    return;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001719d6,"syna_pal_mem_free");
}



/* 0015b7ac tpd_enable_wakegesture */

undefined8 tpd_enable_wakegesture(long param_1,undefined4 param_2)

{
  if (*(int *)(*(long *)(param_1 + 0xdb8) + 0x57c) == 1) {
    *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5c4) = param_2;
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0017109e,"tpd_enable_wakegesture");
}



/* 0015b7fc tpd_get_singleaodgesture */

void tpd_get_singleaodgesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x450) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b4);
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00167b46,"tpd_get_singleaodgesture");
}



/* 0015b860 tpd_get_singlefpgesture */

void tpd_get_singlefpgesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x44c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b8);
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001700c6,"tpd_get_singlefpgesture");
}



/* 0015b8c4 tpd_set_one_key */

void tpd_set_one_key(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_00169dfe,"tpd_set_one_key");
}



/* 0015b928 syna_ts_panel_notifier_callback */

void syna_ts_panel_notifier_callback(undefined8 param_1,int *param_2)

{
  int iVar1;
  undefined *puVar2;
  
  if (param_2 == (int *)0x0) {
    puVar2 = &DAT_001671e4;
LAB_0015ba04:
                    /* WARNING: Subroutine does not return */
    _printk(puVar2);
  }
  iVar1 = *param_2;
  if (iVar1 < 3) {
    if (iVar1 == 1) {
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = 0;
        ufp_notifier_cb(0);
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_0016b0b4);
      }
      if ((char)param_2[3] != '\x01') {
        puVar2 = &DAT_001683d0;
        goto LAB_0015ba04;
      }
      change_tp_state(3);
    }
    else {
      if (iVar1 != 2) {
LAB_0015b9a4:
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00172076,iVar1);
      }
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = '\0';
        ufp_notifier_cb(0);
      }
      if ((char)param_2[3] == '\x01') {
        puVar2 = &DAT_00169d66;
        goto LAB_0015ba04;
      }
      change_tp_state(2);
    }
  }
  else if (iVar1 == 3) {
    panel_enter_low_power = '\x01';
    ufp_notifier_cb(1);
    ufp_report_lcd_state();
  }
  else if (iVar1 != 4) goto LAB_0015b9a4;
  return;
}



/* 0015ba58 syna_tcm_remove_device */

void syna_tcm_remove_device(undefined8 *param_1)

{
  long lVar1;
  undefined1 *puVar2;
  long lVar3;
  
  if (param_1 == (undefined8 *)0x0) {
    puVar2 = &DAT_00168ac4;
  }
  else {
    if (*(char *)(param_1 + 0x62) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169dca,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x5a];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x5b] = 0;
    *(undefined1 *)(param_1 + 0x62) = 0;
    if (*(char *)(param_1 + 0x59) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169dca,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x51];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x52] = 0;
    *(undefined1 *)(param_1 + 0x59) = 0;
    if (*(char *)(param_1 + 0x50) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169dca,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x48];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x49] = 0;
    *(undefined1 *)(param_1 + 0x50) = 0;
    if (*(char *)(param_1 + 0x3a) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169dca,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x32];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x33] = 0;
    *(undefined1 *)(param_1 + 0x3a) = 0;
    if (*(char *)(param_1 + 0x28) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169dca,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x20];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
    }
    if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x21] = 0;
    *(undefined1 *)(param_1 + 0x28) = 0;
    if (*(char *)(param_1 + 0x31) != '\0') {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_00169dca,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x29];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
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
                    /* WARNING: Subroutine does not return */
      _printk(&DAT_001719d6,"syna_pal_mem_free");
    }
    devm_kfree(lVar1,param_1);
    puVar2 = &DAT_00170702;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar2,"syna_tcm_remove_device");
}



/* 0015bccc syna_testing_pt05_show */

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
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_00164dba);
      local_c0 = pt05_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt05_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar5 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar5 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar5 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15bdd0);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar5 + 6))(*plVar8,puVar5,0);
      if (iVar4 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00172f70,"syna_testing_pt05_show",*(undefined8 *)(puVar5 + 2));
      }
      puVar1 = &DAT_0016f424;
      if (*(char *)(puVar5 + 4) == '\0') {
        puVar1 = &DAT_0016e2f4;
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
              iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_00170d6c,
                                *(undefined2 *)
                                 (lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*plVar8 + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
            } while (uVar10 < (uint)puVar5[9]);
          }
          iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_0016e5fc);
          uVar9 = uVar9 + 1;
          uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
        } while (uVar9 < (uint)puVar5[8]);
      }
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00169dca,"syna_tcm_buf_release");
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001719d6,"syna_pal_mem_free");
      }
      if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_0015bf10;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0x500);
  }
  uVar6 = (ulong)iVar4;
LAB_0015bf10:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar6);
  }
  return;
}



/* 0015bfa4 syna_testing_pt05_zte */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00171bde,"syna_testing_pt05_zte");
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
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_00165718);
      local_c0 = pt05_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt05_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar6 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar6 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar6 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15c0bc);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*param_1,puVar6,0);
      if (iVar4 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00172f70,"syna_testing_pt05_zte",*(undefined8 *)(puVar6 + 2));
      }
      puVar1 = &DAT_0016f424;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar1 = &DAT_0016e2f4;
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
              iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_00170d6c,
                                *(undefined2 *)
                                 (lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*param_1 + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
            } while (uVar10 < (uint)puVar6[9]);
          }
          iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_0016e5fc);
          uVar9 = uVar9 + 1;
          uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
        } while (uVar9 < (uint)puVar6[8]);
      }
      tpd_copy_to_tp_firmware_data(lVar5);
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00169dca,"syna_tcm_buf_release");
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001719d6,"syna_pal_mem_free");
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



/* 0015c2fc syna_testing_pt0a_show */

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
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_00166076);
      local_c0 = pt0a_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt0a_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar5 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar5 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar5 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15c400);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar5 + 6))(*plVar8,puVar5,0);
      if (iVar4 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00172f70,"syna_testing_pt0a_show",*(undefined8 *)(puVar5 + 2));
      }
      puVar1 = &DAT_0016f424;
      if (*(char *)(puVar5 + 4) == '\0') {
        puVar1 = &DAT_0016e2f4;
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
              iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_00170d6c,
                                (long)*(short *)(lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*plVar8 +
                                                                                          0x20)) * 2
                                                ));
              uVar10 = uVar10 + 1;
              uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
            } while (uVar10 < (uint)puVar5[9]);
          }
          iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_0016e5fc);
          uVar9 = uVar9 + 1;
          uVar6 = (ulong)(uint)(iVar4 + (int)uVar6);
        } while (uVar9 < (uint)puVar5[8]);
      }
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00169dca,"syna_tcm_buf_release");
      }
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001719d6,"syna_pal_mem_free");
      }
      if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_0015c540;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0xa00);
  }
  uVar6 = (ulong)iVar4;
LAB_0015c540:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar6);
  }
  return;
}



/* 0015c5d4 syna_testing_pt0a_zte */

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
                    /* WARNING: Subroutine does not return */
    _printk(&DAT_00171bde,"syna_testing_pt0a_zte");
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
      __mutex_init(&local_a0,"(struct mutex *)ptr",&DAT_001669d4);
      local_c0 = pt0a_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt0a_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar6 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar6 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar6 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x15c6ec);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*param_1,puVar6,0);
      if (iVar4 < 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00172f70,"syna_testing_pt0a_zte",*(undefined8 *)(puVar6 + 2));
      }
      puVar1 = &DAT_0016f424;
      if (*(char *)(puVar6 + 4) == '\0') {
        puVar1 = &DAT_0016e2f4;
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
              iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_00170d6c,
                                (long)*(short *)(lVar2 + (ulong)(uVar10 + uVar9 * *(int *)(*param_1 
                                                  + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
            } while (uVar10 < (uint)puVar6[9]);
          }
          iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_0016e5fc);
          uVar9 = uVar9 + 1;
          uVar7 = (ulong)(uint)(iVar4 + (int)uVar7);
        } while (uVar9 < (uint)puVar6[8]);
      }
      tpd_copy_to_tp_firmware_data(lVar5);
      lVar2 = local_b0;
      if ((char)local_70 != '\0') {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_00169dca,"syna_tcm_buf_release");
      }
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
                    /* WARNING: Subroutine does not return */
        _printk(&DAT_001719d6,"syna_pal_mem_free");
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



/* 0015c92c zte_touch_probe */

void zte_touch_probe(void)

{
  undefined8 uVar1;
  
  uVar1 = sp_el0;
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_001675e0,"zte_touch_probe",0xb2a);
}



/* 001a71ec init_module */

void init_module(void)

{
                    /* WARNING: Subroutine does not return */
  _printk(&DAT_0018318e,"zte_touch_init");
}



/* 001a723c cleanup_module */

void cleanup_module(void)

{
  syna_dev_module_exit();
  zte_touch_deinit();
  platform_driver_unregister(zte_touch_device_driver);
  return;
}



