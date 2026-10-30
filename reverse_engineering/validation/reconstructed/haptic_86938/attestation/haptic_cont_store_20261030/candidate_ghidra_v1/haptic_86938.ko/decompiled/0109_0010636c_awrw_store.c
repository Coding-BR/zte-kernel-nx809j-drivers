
undefined8 awrw_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  undefined4 uVar1;
  int iVar2;
  int iVar3;
  long lVar4;
  size_t sVar5;
  undefined1 *puVar6;
  undefined8 uVar7;
  ulong uVar8;
  long lVar9;
  code *pcVar10;
  long lVar11;
  uint uVar12;
  undefined4 local_94;
  undefined8 local_90;
  undefined1 local_88 [4];
  undefined1 local_84 [4];
  undefined4 local_80;
  undefined1 local_7c;
  undefined2 local_78;
  undefined4 local_76;
  undefined2 local_72;
  undefined1 *local_70;
  undefined2 local_68;
  undefined2 local_66;
  undefined2 local_64;
  undefined2 local_62;
  undefined8 local_60;
  long local_58;
  
  lVar11 = sp_el0;
  local_58 = *(long *)(lVar11 + 0x710);
  lVar11 = *(long *)(param_1 + 0x98);
  local_88[0] = 0;
  local_7c = 0;
  local_80 = 0;
  local_90 = 0;
  local_94 = 0;
  iVar2 = sscanf(param_3,"%x %x %x",(long)&local_90 + 4,&local_90,&local_94);
  if (iVar2 != 3) {
    _printk(&DAT_00109415,"haptic_hv",0xc94,"awrw_store");
    goto LAB_001066a4;
  }
  iVar2 = (uint)local_90;
  if ((uint)local_90 == 0) {
    _printk(&DAT_00109415,"haptic_hv",0xc6f,"awrw_store");
    param_4 = 0xffffffffffffffde;
    goto LAB_001066a4;
  }
  mutex_lock(lVar11 + 0x248);
  uVar1 = local_90._4_4_;
  lVar4 = __kmalloc_noprof(local_90 & 0xffffffff,0xcc0);
  if (lVar4 == 0) {
    param_4 = 0xfffffffffffffff4;
  }
  else {
    lVar9 = *(long *)(lVar11 + 0x530);
    *(int *)(lVar11 + 0x52c) = iVar2;
    *(undefined4 *)(lVar11 + 0x528) = uVar1;
    *(long *)(lVar11 + 0x530) = lVar4;
    if (lVar9 != 0) {
      kfree(lVar9);
    }
    lVar4 = lVar11 + -0xa8;
    if (local_90._4_4_ == 1) {
      pcVar10 = *(code **)(*(long *)(lVar11 + 0x520) + 0x38);
      if (*(int *)(pcVar10 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x1064c4);
        (*pcVar10)();
      }
      (*pcVar10)(lVar4);
      pcVar10 = *(code **)(*(long *)(lVar11 + 0x520) + 0x110);
      if (*(int *)(pcVar10 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x1064f0);
        (*pcVar10)();
      }
      (*pcVar10)(lVar4,0);
      pcVar10 = *(code **)(*(long *)(lVar11 + 0x520) + 0xf0);
      if (*(int *)(pcVar10 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x106518);
        (*pcVar10)();
      }
      (*pcVar10)(lVar4);
      local_84[0] = (undefined1)local_94;
      local_60 = *(undefined8 *)(lVar11 + 0x530);
      local_78 = *(undefined2 *)(*(long *)(lVar11 + 0x280) + 2);
      local_76 = 0x10000;
      local_70 = local_84;
      local_72 = 0;
      local_66 = 1;
      local_64 = (undefined2)local_90;
      local_62 = 0;
      local_68 = local_78;
      iVar2 = i2c_transfer(*(undefined8 *)(*(long *)(lVar11 + 0x280) + 0x18),&local_78,2);
      if (iVar2 < 0) {
        puVar6 = &DAT_00108bf3;
        uVar7 = 0x65;
      }
      else {
        if (iVar2 == 2) goto LAB_0010669c;
        puVar6 = &DAT_001090d6;
        uVar7 = 0x68;
      }
      _printk(puVar6,"haptic_hv",uVar7,"i2c_r_bytes");
    }
    else if (local_90._4_4_ == 0) {
      iVar2 = (uint)local_90;
      uVar12 = (uint)local_90 * 5;
      sVar5 = strlen(param_3);
      if (sVar5 - 0xf == (ulong)uVar12) {
        if (iVar2 == 0) {
          uVar8 = 0;
        }
        else {
          uVar12 = 0;
          iVar2 = 0xf;
          do {
            local_80 = *(undefined4 *)(param_3 + iVar2);
            local_7c = 0;
            iVar3 = kstrtou8(&local_80,0,local_88);
            if (iVar3 < 0) {
              uVar7 = 0xc81;
              goto LAB_00106664;
            }
            iVar2 = iVar2 + 5;
            *(undefined1 *)(*(long *)(lVar11 + 0x530) + (long)(int)uVar12) = local_88[0];
            uVar12 = uVar12 + 1;
            uVar8 = local_90 & 0xffffffff;
          } while (uVar12 < (uint)local_90);
        }
        i2c_w_bytes(lVar4,local_94,*(undefined8 *)(lVar11 + 0x530),uVar8);
      }
      else {
        uVar7 = 0xc79;
LAB_00106664:
        _printk(&DAT_00109415,"haptic_hv",uVar7,"awrw_store");
        param_4 = 0xffffffffffffffde;
      }
    }
  }
LAB_0010669c:
  mutex_unlock(lVar11 + 0x248);
LAB_001066a4:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}

