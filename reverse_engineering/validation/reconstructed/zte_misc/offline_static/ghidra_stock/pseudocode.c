/* 00100a54 get_sysnumber_byname */

undefined4 get_sysnumber_byname(char *param_1)

{
  int iVar1;
  long lVar2;
  
  lVar2 = 0;
  while ((*(char **)((long)&DAT_00101ec0 + lVar2) == (char *)0x0 ||
         (iVar1 = strcmp(*(char **)((long)&DAT_00101ec0 + lVar2),param_1), iVar1 != 0))) {
    lVar2 = lVar2 + 0x10;
    if (lVar2 == 0x100) {
      return 0;
    }
  }
  return *(undefined4 *)((long)&zte_gpios + lVar2);
}



/* 00100ac4 zte_poweroff_charging_status */

uint zte_poweroff_charging_status(void)

{
  _printk(&DAT_0010273b,zte_poweroff_charging,zte_poweroff_charging_param);
  return zte_poweroff_charging | zte_poweroff_charging_param;
}



/* 00100b10 zte_misc_register_callback */

undefined8 zte_misc_register_callback(undefined8 *param_1,long param_2)

{
  int iVar1;
  size_t __n;
  size_t sVar2;
  size_t sVar3;
  undefined8 uVar4;
  ulong uVar5;
  char *__s;
  char *__s1;
  long *plVar6;
  
  if (param_1 == (undefined8 *)0x0) {
    return 0xffffffea;
  }
  __s = (char *)*param_1;
  if (__s != (char *)0x0) {
    __n = strlen(__s);
    uVar5 = 0;
    plVar6 = &DAT_00100088;
    do {
      __s1 = (char *)plVar6[-2];
      iVar1 = strncmp(__s1,__s,__n);
      if (iVar1 == 0) {
        sVar2 = strlen(__s1);
        sVar3 = strlen(__s);
        if (sVar2 == sVar3) {
          _printk(&DAT_001028dd,"zte_misc_register_callback",uVar5 & 0xffffffff,__s1);
          if ((((*plVar6 == 0) && (plVar6[-1] == 0)) && (plVar6[1] == 0)) && (plVar6[2] == 0)) {
            *plVar6 = param_1[2];
            plVar6[-1] = param_1[1];
            plVar6[1] = param_1[3];
            if (param_2 == 0) {
              param_2 = param_1[4];
            }
            uVar4 = 0;
            plVar6[2] = param_2;
          }
          else {
            _printk(&DAT_00102767,"zte_misc_register_callback",uVar5 & 0xffffffff,plVar6[-2]);
            uVar4 = 0xfffffff2;
          }
          if (0x23 < (uint)uVar5) {
            return 0xffffffea;
          }
          return uVar4;
        }
      }
      uVar5 = uVar5 + 1;
      plVar6 = plVar6 + 5;
    } while (uVar5 != 0x24);
  }
  return 0xffffffea;
}



/* 00100c5c zte_misc_get_node_val */

void zte_misc_get_node_val(char *param_1)

{
  int iVar1;
  undefined4 uVar2;
  size_t __n;
  size_t sVar3;
  size_t sVar4;
  undefined *puVar5;
  code *pcVar6;
  char *__s1;
  long lVar7;
  undefined4 local_8c;
  char local_88 [64];
  long local_48;
  
  lVar7 = sp_el0;
  local_48 = *(long *)(lVar7 + 0x710);
  local_8c = 0;
  if ((param_1 != (char *)0x0) && (*param_1 != '\0')) {
    local_88[0x30] = '\0';
    local_88[0x31] = '\0';
    local_88[0x32] = '\0';
    local_88[0x33] = '\0';
    local_88[0x34] = '\0';
    local_88[0x35] = '\0';
    local_88[0x36] = '\0';
    local_88[0x37] = '\0';
    local_88[0x38] = '\0';
    local_88[0x39] = '\0';
    local_88[0x3a] = '\0';
    local_88[0x3b] = '\0';
    local_88[0x3c] = '\0';
    local_88[0x3d] = '\0';
    local_88[0x3e] = '\0';
    local_88[0x3f] = '\0';
    local_88[0x20] = '\0';
    local_88[0x21] = '\0';
    local_88[0x22] = '\0';
    local_88[0x23] = '\0';
    local_88[0x24] = '\0';
    local_88[0x25] = '\0';
    local_88[0x26] = '\0';
    local_88[0x27] = '\0';
    local_88[0x28] = '\0';
    local_88[0x29] = '\0';
    local_88[0x2a] = '\0';
    local_88[0x2b] = '\0';
    local_88[0x2c] = '\0';
    local_88[0x2d] = '\0';
    local_88[0x2e] = '\0';
    local_88[0x2f] = '\0';
    local_88[0x10] = '\0';
    local_88[0x11] = '\0';
    local_88[0x12] = '\0';
    local_88[0x13] = '\0';
    local_88[0x14] = '\0';
    local_88[0x15] = '\0';
    local_88[0x16] = '\0';
    local_88[0x17] = '\0';
    local_88[0x18] = '\0';
    local_88[0x19] = '\0';
    local_88[0x1a] = '\0';
    local_88[0x1b] = '\0';
    local_88[0x1c] = '\0';
    local_88[0x1d] = '\0';
    local_88[0x1e] = '\0';
    local_88[0x1f] = '\0';
    local_88[0] = '\0';
    local_88[1] = '\0';
    local_88[2] = '\0';
    local_88[3] = '\0';
    local_88[4] = '\0';
    local_88[5] = '\0';
    local_88[6] = '\0';
    local_88[7] = '\0';
    local_88[8] = '\0';
    local_88[9] = '\0';
    local_88[10] = '\0';
    local_88[0xb] = '\0';
    local_88[0xc] = '\0';
    local_88[0xd] = '\0';
    local_88[0xe] = '\0';
    local_88[0xf] = '\0';
    __n = strlen(param_1);
    lVar7 = 0;
    do {
      __s1 = *(char **)((long)&node_ops_list + lVar7);
      iVar1 = strncmp(__s1,param_1,__n);
      if (iVar1 == 0) {
        sVar3 = strlen(__s1);
        sVar4 = strlen(param_1);
        if ((sVar3 == sVar4) &&
           (pcVar6 = *(code **)((long)&DAT_00100088 + lVar7), pcVar6 != (code *)0x0)) {
          if (*(int *)(pcVar6 + -4) != 0x2990b6e9) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x100d30);
            (*pcVar6)();
          }
          iVar1 = (*pcVar6)(local_88,*(undefined8 *)((long)&DAT_00100098 + lVar7));
          if (iVar1 < 0) goto LAB_00100d68;
          iVar1 = sscanf(local_88,"%d",&local_8c);
          uVar2 = local_8c;
          if (iVar1 == 1) goto LAB_00100d6c;
          puVar5 = &DAT_0010295f;
          goto LAB_00100d64;
        }
      }
      lVar7 = lVar7 + 0x28;
    } while (lVar7 != 0x5a0);
    puVar5 = &DAT_001027c7;
LAB_00100d64:
    _printk(puVar5);
  }
LAB_00100d68:
  uVar2 = 0xffffffea;
LAB_00100d6c:
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}



/* 00100db0 battery_module_pack_vendor_get */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void battery_module_pack_vendor_get(char *param_1)

{
  int iVar1;
  long lVar2;
  uint uVar3;
  int local_3c;
  undefined8 local_38;
  undefined2 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_3c = 0;
  local_30 = 0;
  local_38 = 0;
  iVar1 = kstrtoint(&local_38,10,&local_3c);
  if (iVar1 == 0) {
    _printk(&DAT_0010294b,local_3c);
    local_3c = local_3c / 1000;
    if (local_3c <= (_DAT_00100074 * 0x6d) / 100) {
      iVar1 = (resistance_kohm * 0x5b) / 100;
      if (iVar1 <= local_3c) {
        if ((local_3c < (resistance_kohm * 0x6d) / 100) && (iVar1 < local_3c)) {
          lVar2 = 0;
LAB_00100eec:
          uVar3 = (&battery_vendor_id)[lVar2];
        }
        else {
          if ((local_3c < (DAT_00100058 * 0x6d) / 100) && ((DAT_00100058 * 0x5b) / 100 < local_3c))
          {
            lVar2 = 1;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_0010005c * 0x6d) / 100) && ((DAT_0010005c * 0x5b) / 100 < local_3c))
          {
            lVar2 = 2;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_00100060 * 0x6d) / 100) && ((DAT_00100060 * 0x5b) / 100 < local_3c))
          {
            lVar2 = 3;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_00100064 * 0x6d) / 100) && ((DAT_00100064 * 0x5b) / 100 < local_3c))
          {
            lVar2 = 4;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_00100068 * 0x6d) / 100) && ((DAT_00100068 * 0x5b) / 100 < local_3c))
          {
            lVar2 = 5;
            goto LAB_00100eec;
          }
          if ((local_3c < (DAT_0010006c * 0x6d) / 100) && ((DAT_0010006c * 0x5b) / 100 < local_3c))
          {
            lVar2 = 6;
            goto LAB_00100eec;
          }
          if (local_3c < (DAT_00100070 * 0x6d) / 100) {
            if ((DAT_00100070 * 0x5b) / 100 < local_3c) {
              lVar2 = 7;
              goto LAB_00100eec;
            }
          }
          uVar3 = 0;
        }
        _printk(&DAT_0010278e,local_3c,uVar3);
        iVar1 = snprintf(param_1,0x1000,"%2d",(ulong)uVar3);
        goto LAB_00100df8;
      }
    }
    _printk(&DAT_0010286f);
  }
  iVar1 = -1;
LAB_00100df8:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar1);
}



/* 0010118c zte_misc_get_design_capacity */

void zte_misc_get_design_capacity(char *param_1)

{
  int iVar1;
  long lVar2;
  uint uVar3;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  local_30 = 0;
  lVar2 = power_supply_get_by_name("battery");
  if (lVar2 == 0) {
    _printk(&DAT_00102604);
    uVar3 = 0;
  }
  else {
    iVar1 = power_supply_get_property(lVar2,0x16,&local_30);
    if (iVar1 != 0) {
      _printk(&DAT_001026dc,iVar1);
    }
    power_supply_put(lVar2);
    uVar3 = (uint)local_30 / 1000;
    if ((int)(uint)local_30 < 1000000) {
      uVar3 = (uint)local_30;
    }
  }
  _printk(&DAT_00102627,uVar3);
  iVar1 = snprintf(param_1,0x1000,"%d",(ulong)uVar3);
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar1);
  }
  return;
}



/* 00101280 zte_misc_common_callback_set */

int zte_misc_common_callback_set(undefined8 param_1,undefined8 *param_2)

{
  int iVar1;
  int iVar2;
  size_t __n;
  size_t sVar3;
  code *pcVar4;
  char *__s1;
  long lVar5;
  char local_88 [64];
  long local_48;
  
  lVar5 = sp_el0;
  local_48 = *(long *)(lVar5 + 0x710);
  local_88[0x30] = '\0';
  local_88[0x31] = '\0';
  local_88[0x32] = '\0';
  local_88[0x33] = '\0';
  local_88[0x34] = '\0';
  local_88[0x35] = '\0';
  local_88[0x36] = '\0';
  local_88[0x37] = '\0';
  local_88[0x38] = '\0';
  local_88[0x39] = '\0';
  local_88[0x3a] = '\0';
  local_88[0x3b] = '\0';
  local_88[0x3c] = '\0';
  local_88[0x3d] = '\0';
  local_88[0x3e] = '\0';
  local_88[0x3f] = '\0';
  local_88[0x20] = '\0';
  local_88[0x21] = '\0';
  local_88[0x22] = '\0';
  local_88[0x23] = '\0';
  local_88[0x24] = '\0';
  local_88[0x25] = '\0';
  local_88[0x26] = '\0';
  local_88[0x27] = '\0';
  local_88[0x28] = '\0';
  local_88[0x29] = '\0';
  local_88[0x2a] = '\0';
  local_88[0x2b] = '\0';
  local_88[0x2c] = '\0';
  local_88[0x2d] = '\0';
  local_88[0x2e] = '\0';
  local_88[0x2f] = '\0';
  local_88[0x10] = '\0';
  local_88[0x11] = '\0';
  local_88[0x12] = '\0';
  local_88[0x13] = '\0';
  local_88[0x14] = '\0';
  local_88[0x15] = '\0';
  local_88[0x16] = '\0';
  local_88[0x17] = '\0';
  local_88[0x18] = '\0';
  local_88[0x19] = '\0';
  local_88[0x1a] = '\0';
  local_88[0x1b] = '\0';
  local_88[0x1c] = '\0';
  local_88[0x1d] = '\0';
  local_88[0x1e] = '\0';
  local_88[0x1f] = '\0';
  local_88[0] = '\0';
  local_88[1] = '\0';
  local_88[2] = '\0';
  local_88[3] = '\0';
  local_88[4] = '\0';
  local_88[5] = '\0';
  local_88[6] = '\0';
  local_88[7] = '\0';
  local_88[8] = '\0';
  local_88[9] = '\0';
  local_88[10] = '\0';
  local_88[0xb] = '\0';
  local_88[0xc] = '\0';
  local_88[0xd] = '\0';
  local_88[0xe] = '\0';
  local_88[0xf] = '\0';
  iVar1 = sscanf((char *)*param_2,"%s",local_88);
  if (iVar1 == 1) {
    lVar5 = 0;
    iVar1 = 0;
    do {
      __s1 = *(char **)((long)&node_ops_list + lVar5);
      __n = strnlen(local_88,0x40);
      if (0x40 < __n) {
LAB_001013f8:
        __fortify_panic(2,0x40,__n + 1);
        goto LAB_00101404;
      }
      if (__n == 0x40) {
LAB_001013dc:
        __n = 0x41;
        __fortify_panic(4,0x40,0x41);
        goto LAB_001013f8;
      }
      iVar2 = strncmp(__s1,local_88,__n);
      if (iVar2 == 0) {
        sVar3 = strlen(__s1);
        __n = strnlen(local_88,0x40);
        if (0x40 < __n) goto LAB_001013f8;
        if (__n == 0x40) goto LAB_001013dc;
        if ((sVar3 == __n) &&
           (pcVar4 = *(code **)((long)&DAT_00100080 + lVar5), pcVar4 != (code *)0x0)) {
          if (*(int *)(pcVar4 + -4) != 0x4cf999cb) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x101388);
            (*pcVar4)();
          }
          iVar1 = (*pcVar4)(param_1,*(undefined8 *)((long)&DAT_00100098 + lVar5));
          if (iVar1 < 0) break;
        }
      }
      lVar5 = lVar5 + 0x28;
    } while (lVar5 != 0x5a0);
  }
  else {
    _printk(&DAT_0010265a);
    iVar1 = -0x16;
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_48) {
    return iVar1;
  }
LAB_00101404:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010140c zte_misc_common_callback_get */

int zte_misc_common_callback_get(undefined8 param_1,undefined8 *param_2)

{
  int iVar1;
  int iVar2;
  size_t __n;
  size_t sVar3;
  code *pcVar4;
  char *__s1;
  long lVar5;
  char local_88 [64];
  long local_48;
  
  lVar5 = sp_el0;
  local_48 = *(long *)(lVar5 + 0x710);
  local_88[0x30] = '\0';
  local_88[0x31] = '\0';
  local_88[0x32] = '\0';
  local_88[0x33] = '\0';
  local_88[0x34] = '\0';
  local_88[0x35] = '\0';
  local_88[0x36] = '\0';
  local_88[0x37] = '\0';
  local_88[0x38] = '\0';
  local_88[0x39] = '\0';
  local_88[0x3a] = '\0';
  local_88[0x3b] = '\0';
  local_88[0x3c] = '\0';
  local_88[0x3d] = '\0';
  local_88[0x3e] = '\0';
  local_88[0x3f] = '\0';
  local_88[0x20] = '\0';
  local_88[0x21] = '\0';
  local_88[0x22] = '\0';
  local_88[0x23] = '\0';
  local_88[0x24] = '\0';
  local_88[0x25] = '\0';
  local_88[0x26] = '\0';
  local_88[0x27] = '\0';
  local_88[0x28] = '\0';
  local_88[0x29] = '\0';
  local_88[0x2a] = '\0';
  local_88[0x2b] = '\0';
  local_88[0x2c] = '\0';
  local_88[0x2d] = '\0';
  local_88[0x2e] = '\0';
  local_88[0x2f] = '\0';
  local_88[0x10] = '\0';
  local_88[0x11] = '\0';
  local_88[0x12] = '\0';
  local_88[0x13] = '\0';
  local_88[0x14] = '\0';
  local_88[0x15] = '\0';
  local_88[0x16] = '\0';
  local_88[0x17] = '\0';
  local_88[0x18] = '\0';
  local_88[0x19] = '\0';
  local_88[0x1a] = '\0';
  local_88[0x1b] = '\0';
  local_88[0x1c] = '\0';
  local_88[0x1d] = '\0';
  local_88[0x1e] = '\0';
  local_88[0x1f] = '\0';
  local_88[0] = '\0';
  local_88[1] = '\0';
  local_88[2] = '\0';
  local_88[3] = '\0';
  local_88[4] = '\0';
  local_88[5] = '\0';
  local_88[6] = '\0';
  local_88[7] = '\0';
  local_88[8] = '\0';
  local_88[9] = '\0';
  local_88[10] = '\0';
  local_88[0xb] = '\0';
  local_88[0xc] = '\0';
  local_88[0xd] = '\0';
  local_88[0xe] = '\0';
  local_88[0xf] = '\0';
  iVar1 = sscanf((char *)*param_2,"%s",local_88);
  if (iVar1 == 1) {
    lVar5 = 0;
    iVar1 = 0;
    do {
      __s1 = *(char **)((long)&node_ops_list + lVar5);
      __n = strnlen(local_88,0x40);
      if (0x40 < __n) {
LAB_00101584:
        __fortify_panic(2,0x40,__n + 1);
        goto LAB_00101590;
      }
      if (__n == 0x40) {
LAB_00101568:
        __n = 0x41;
        __fortify_panic(4,0x40,0x41);
        goto LAB_00101584;
      }
      iVar2 = strncmp(__s1,local_88,__n);
      if (iVar2 == 0) {
        sVar3 = strlen(__s1);
        __n = strnlen(local_88,0x40);
        if (0x40 < __n) goto LAB_00101584;
        if (__n == 0x40) goto LAB_00101568;
        if ((sVar3 == __n) &&
           (pcVar4 = *(code **)((long)&DAT_00100088 + lVar5), pcVar4 != (code *)0x0)) {
          if (*(int *)(pcVar4 + -4) != 0x2990b6e9) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x101514);
            (*pcVar4)();
          }
          iVar1 = (*pcVar4)(param_1,*(undefined8 *)((long)&DAT_00100098 + lVar5));
          if (iVar1 < 0) break;
        }
      }
      lVar5 = lVar5 + 0x28;
    } while (lVar5 != 0x5a0);
  }
  else {
    _printk(&DAT_0010265a);
    iVar1 = -0x16;
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_48) {
    return iVar1;
  }
LAB_00101590:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00101598 zte_misc_probe */

void zte_misc_probe(long param_1)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined4 uVar4;
  long lVar5;
  undefined *puVar6;
  undefined8 uVar7;
  char *__s;
  long lVar8;
  long lVar9;
  ulong uVar10;
  char *local_f0;
  undefined8 local_e8;
  undefined8 local_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
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
  
  lVar5 = sp_el0;
  local_68 = *(long *)(lVar5 + 0x710);
  _printk(&DAT_00102977,"zte_misc_probe");
  local_f0 = (char *)0x0;
  local_e8 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e0 = 0;
  lVar5 = of_find_node_opts_by_path("/chosen",0);
  if (lVar5 == 0) {
    puVar6 = &DAT_001027e0;
  }
  else {
    iVar3 = of_property_read_string(lVar5,"bootargs",&local_f0);
    if (-1 < iVar3) {
      __s = strstr(local_f0,"kmparam.mode=");
      if (__s == (char *)0x0) {
        _printk(&DAT_00102686);
      }
      else {
        sscanf(__s,"kmparam.mode=%s",&local_e8);
        iVar3 = (int)local_e8;
        zte_poweroff_charging_param = iVar3 == 0x72616863 && local_e8._3_4_ == 0x72656772;
        _printk(&DAT_001028a8,zte_poweroff_charging_param,&local_e8);
      }
      goto LAB_0010164c;
    }
    puVar6 = &DAT_0010284a;
  }
  _printk(puVar6,"zte_poweroff_charging_handle_init");
LAB_0010164c:
  _printk(&DAT_001028f1);
  lVar5 = *(long *)(param_1 + 0x2f8);
  if (lVar5 == 0) {
    uVar7 = 0xffffffed;
  }
  else {
    lVar8 = of_get_next_child(lVar5,0);
    if (lVar8 != 0) {
      uVar10 = 0xffffffff;
      do {
        lVar9 = of_find_property(lVar8,"label",0);
        if (lVar9 == 0) {
          _dev_warn(param_1 + 0x10,"Found without labels\n");
        }
        else {
          if ((int)uVar10 == 0xf) {
            _printk(&DAT_0010292b);
            break;
          }
          uVar1 = (int)uVar10 + 1;
          uVar10 = (ulong)uVar1;
          uVar7 = of_get_property(lVar8,"label",0);
          uVar7 = kstrdup(uVar7,0xcc0);
          if (0x100 < (uVar10 << 4 | 8)) {
LAB_00101820:
                    /* WARNING: Does not return */
            pcVar2 = (code *)SoftwareBreakpoint(1,0x101824);
            (*pcVar2)();
          }
          (&DAT_00101ec0)[uVar10 * 2] = uVar7;
          uVar4 = of_get_named_gpio(lVar8,"zte-misc",0);
          if (uVar1 == 0x10) goto LAB_00101820;
          uVar7 = (&DAT_00101ec0)[uVar10 * 2];
          (&zte_gpios)[uVar10 * 4] = uVar4;
          _printk(&DAT_001026ab,uVar4,uVar7);
        }
        lVar8 = of_get_next_child(lVar5,lVar8);
      } while (lVar8 != 0);
    }
    _printk(&DAT_00102895,"zte_misc_probe");
    uVar7 = 0;
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar7);
}



/* 0010182c zte_misc_remove */

void zte_misc_remove(void)

{
  return;
}



/* 00101834 zte_timezone_setup */

void zte_timezone_setup(undefined8 param_1)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 local_20;
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_20 = 0;
  uVar2 = kstrtoll(param_1,0,&local_20);
  if ((int)uVar2 == 0) {
    uVar2 = 1;
    zte_timezone = (undefined4)local_20;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 001018a0 zte_poweroff_charging_handle */

undefined8 zte_poweroff_charging_handle(char *param_1)

{
  int iVar1;
  
  iVar1 = strncmp(param_1,"charger",7);
  zte_poweroff_charging = (uint)(iVar1 == 0);
  _printk(&DAT_001025e0,param_1);
  return 0;
}



/* 001018fc init_module */

void init_module(void)

{
  _printk(&DAT_00102977,"zte_misc_init");
  __platform_driver_register(zte_misc_device_driver,&__this_module);
  return;
}



/* 00101940 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(zte_misc_device_driver);
  return;
}



