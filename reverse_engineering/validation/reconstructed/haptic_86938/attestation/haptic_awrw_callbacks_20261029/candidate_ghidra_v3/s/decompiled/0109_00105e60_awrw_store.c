
undefined8 awrw_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  int iVar1;
  int iVar2;
  undefined8 uVar3;
  size_t sVar4;
  undefined1 *puVar5;
  code *pcVar6;
  long lVar7;
  long lVar8;
  uint uVar9;
  undefined4 local_84;
  undefined8 local_80;
  undefined1 local_78 [4];
  undefined1 local_74 [4];
  undefined4 local_70;
  undefined1 local_6c;
  undefined2 local_68;
  undefined4 local_66;
  undefined2 local_62;
  undefined1 *local_60;
  undefined2 local_58;
  undefined2 local_56;
  undefined2 local_54;
  undefined2 local_52;
  undefined8 local_50;
  long local_48;
  
  lVar8 = sp_el0;
  local_48 = *(long *)(lVar8 + 0x710);
  lVar8 = *(long *)(param_1 + 0x98);
  local_78[0] = 0;
  local_6c = 0;
  local_70 = 0;
  local_80 = 0;
  local_84 = 0;
  iVar1 = sscanf(param_3,"%x %x %x",(long)&local_80 + 4,&local_80,&local_84);
  if (iVar1 != 3) {
    _printk(&DAT_001072b0,"haptic_hv",0xc94,"awrw_store");
    goto LAB_00106088;
  }
  if ((uint)local_80 == 0) {
    uVar3 = 0xc6f;
LAB_00106180:
    _printk(&DAT_001072b0,"haptic_hv",uVar3,"awrw_store");
    param_4 = 0xffffffffffffffde;
  }
  else {
    *(uint *)(lVar8 + 0x52c) = (uint)local_80;
    *(int *)(lVar8 + 0x528) = local_80._4_4_;
    if (*(long *)(lVar8 + 0x530) != 0) {
      kfree();
    }
    lVar7 = lVar8 + -0xa8;
    uVar3 = __kmalloc_noprof(local_80 & 0xffffffff,0xcc0);
    *(undefined8 *)(lVar8 + 0x530) = uVar3;
    if (local_80._4_4_ == 1) {
      mutex_lock(lVar8 + 0x248);
      pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x38);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x105fc4);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0x110);
      if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x105ff0);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7,0);
      pcVar6 = *(code **)(*(long *)(lVar8 + 0x520) + 0xf0);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x106018);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      local_74[0] = (undefined1)local_84;
      local_50 = *(undefined8 *)(lVar8 + 0x530);
      local_68 = *(undefined2 *)(*(long *)(lVar8 + 0x280) + 2);
      local_66 = 0x10000;
      local_60 = local_74;
      local_62 = 0;
      local_56 = 1;
      local_54 = (undefined2)local_80;
      local_52 = 0;
      local_58 = local_68;
      iVar1 = i2c_transfer(*(undefined8 *)(*(long *)(lVar8 + 0x280) + 0x18),&local_68,2);
      if (iVar1 < 0) {
        puVar5 = &DAT_00106d2d;
        uVar3 = 0x65;
      }
      else {
        if (iVar1 == 2) goto LAB_00106080;
        puVar5 = &DAT_00106fe3;
        uVar3 = 0x68;
      }
      _printk(puVar5,"haptic_hv",uVar3,"i2c_r_bytes");
    }
    else {
      if (local_80._4_4_ != 0) goto LAB_00106088;
      iVar1 = (uint)local_80;
      uVar9 = (uint)local_80 * 5;
      sVar4 = strlen(param_3);
      if (sVar4 - 0xf != (ulong)uVar9) {
        uVar3 = 0xc79;
        goto LAB_00106180;
      }
      if (iVar1 != 0) {
        uVar9 = 0;
        iVar1 = 0xf;
        do {
          local_70 = *(undefined4 *)(param_3 + iVar1);
          local_6c = 0;
          iVar2 = kstrtou8(&local_70,0,local_78);
          if (iVar2 < 0) {
            uVar3 = 0xc81;
            goto LAB_00106180;
          }
          iVar1 = iVar1 + 5;
          *(undefined1 *)(*(long *)(lVar8 + 0x530) + (long)(int)uVar9) = local_78[0];
          uVar9 = uVar9 + 1;
        } while (uVar9 < (uint)local_80);
      }
      mutex_lock(lVar8 + 0x248);
      i2c_w_bytes(lVar7,local_84,*(undefined8 *)(lVar8 + 0x530),local_80 & 0xffffffff);
    }
LAB_00106080:
    mutex_unlock(lVar8 + 0x248);
  }
LAB_00106088:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

