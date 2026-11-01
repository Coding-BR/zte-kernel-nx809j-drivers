
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void ram_load(ulong *param_1,long param_2)

{
  ulong uVar1;
  ushort *puVar2;
  long lVar3;
  int *piVar4;
  long lVar5;
  code *pcVar6;
  ulong uVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  ulong uVar11;
  uint uVar12;
  int iVar13;
  ulong uVar14;
  byte *pbVar15;
  ulong uVar16;
  ushort auStack_7c [2];
  long lStack_78;
  undefined1 *puStack_70;
  code *pcStack_68;
  int *piStack_60;
  ulong *puStack_50;
  long lStack_48;
  
  ram_load_load_cont = ram_load_load_cont + 1;
  if (param_1 == (ulong *)0x0) {
    _printk(&DAT_0010fb9e,"haptic_hv",0x6e9,"ram_load",aw_ram_name);
    release_firmware(0);
    if (0x14 < ram_load_load_cont) {
      return;
    }
    queue_delayed_work_on(0x20,_system_wq,param_2 + 0x3c0,0xfa);
    _printk(&DAT_0010fbc1,"haptic_hv",0x6ef,"ram_load",ram_load_load_cont);
    return;
  }
  _printk(&DAT_00110d00,"haptic_hv",0x6f4,"ram_load",aw_ram_name,*param_1);
  uVar1 = *param_1;
  puVar2 = (ushort *)param_1[1];
  if (uVar1 < 3) {
    uVar8 = 0;
    goto LAB_0010b400;
  }
  uVar11 = uVar1 - 2;
  if (uVar11 < 2) {
    uVar7 = 2;
    iVar10 = 2;
    uVar8 = 0;
LAB_0010b3dc:
    do {
      iVar10 = iVar10 + 1;
      pbVar15 = (byte *)((long)puVar2 + uVar7);
      uVar7 = (ulong)iVar10;
      uVar8 = uVar8 + *pbVar15;
    } while (uVar7 < uVar1);
  }
  else {
    iVar10 = 2;
    uVar12 = (uint)(uVar1 - 3);
    uVar7 = 2;
    uVar8 = 0;
    if (((0x7ffffffd < uVar12) || (uVar8 = 0, 0x7ffffffc < uVar12)) || (uVar1 - 3 >> 0x20 != 0))
    goto LAB_0010b3dc;
    uVar14 = uVar11 & 0xfffffffffffffffe;
    iVar9 = 0;
    uVar7 = uVar14 + 2;
    iVar10 = (int)uVar14 + 2;
    iVar13 = 0;
    pbVar15 = (byte *)((long)puVar2 + 3);
    uVar16 = uVar14;
    do {
      uVar16 = uVar16 - 2;
      iVar9 = iVar9 + (uint)pbVar15[-1];
      iVar13 = iVar13 + (uint)*pbVar15;
      pbVar15 = pbVar15 + 2;
    } while (uVar16 != 0);
    uVar8 = iVar13 + iVar9;
    if (uVar11 != uVar14) goto LAB_0010b3dc;
  }
  uVar8 = uVar8 & 0xffff;
LAB_0010b400:
  if (uVar8 == ((uint)(*puVar2 >> 8) | (*puVar2 & 0xff00ff) << 8)) {
    _printk(&DAT_001111fe,"haptic_hv",0x6fd,"ram_load",uVar8);
    *(uint *)(param_2 + 0x454) = uVar8;
    uVar11 = *param_1;
    uVar1 = uVar11 + 4;
    piVar4 = (int *)__kmalloc_noprof(uVar1,0xdc0);
    if (piVar4 == (int *)0x0) {
      release_firmware(param_1);
      _printk(&DAT_0010f404,"haptic_hv",0x704,"ram_load");
    }
    else {
      if (uVar1 < 4) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(1,0x10b640);
        (*pcVar6)();
      }
      uVar7 = *param_1;
      uVar1 = 0;
      if (true) {
        uVar1 = uVar11;
      }
      *piVar4 = (int)uVar7;
      if (uVar1 < uVar7) {
        lVar5 = __fortify_panic(0x11);
        pcStack_68 = get_ram_num;
        lVar3 = sp_el0;
        lStack_78 = *(long *)(lVar3 + 0x710);
        auStack_7c[0] = 0;
        piStack_60 = piVar4;
        puStack_50 = param_1;
        lStack_48 = param_2;
        if ((*(byte *)(lVar5 + 6) & 1) == 0) {
          puStack_70 = &stack0xffffffffffffffc0;
          _printk(&DAT_001105a9,"haptic_hv",0x268,"get_ram_num");
        }
        else {
          puStack_70 = &stack0xffffffffffffffc0;
          mutex_lock(lVar5 + 0x2f0);
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0x38);
          if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b6a8);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5);
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0x68);
          if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b6d4);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5,1);
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0xf8);
          if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b6fc);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5);
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0x130);
          if (*(int *)(pcVar6 + -4) != 0x13c2d68c) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b728);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5,auStack_7c);
          *(char *)(lVar5 + 0x45c) =
               (char)(((uint)(auStack_7c[0] >> 8) | (auStack_7c[0] & 0xff00ff) << 8) +
                      ~*(uint *)(lVar5 + 0x458) >> 2);
          _printk(&DAT_00110f9c,"haptic_hv",0x277,"get_ram_num");
          _printk(&DAT_00110824,"haptic_hv",0x278,"get_ram_num",*(undefined1 *)(lVar5 + 0x45c));
          pcVar6 = *(code **)(*(long *)(lVar5 + 0x5c8) + 0x68);
          if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b7b4);
            (*pcVar6)();
          }
          (*pcVar6)(lVar5,0);
          mutex_unlock(lVar5 + 0x2f0);
        }
        lVar3 = sp_el0;
        if (*(long *)(lVar3 + 0x710) == lStack_78) {
          return;
        }
                    /* WARNING: Subroutine does not return */
        __stack_chk_fail();
      }
      memcpy(piVar4 + 1,(void *)param_1[1],uVar7);
      release_firmware(param_1);
      pcVar6 = *(code **)(*(long *)(param_2 + 0x5c8) + 0x30);
      if (*(int *)(pcVar6 + -4) != -0x2e8ff3f0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10b5b0);
        (*pcVar6)();
      }
      iVar10 = (*pcVar6)(param_2,piVar4);
      if (iVar10 == 0) {
        iVar10 = *piVar4;
        *(undefined1 *)(param_2 + 6) = 1;
        *(uint *)(param_2 + 0x450) = iVar10 - (uint)*(byte *)(param_2 + 0x45e);
        _printk(&DAT_0011057a,"haptic_hv",0x711,"ram_load");
        get_ram_num(param_2);
      }
      else {
        _printk(&DAT_00110f63,"haptic_hv",0x70c,"ram_load");
      }
      kfree(piVar4);
    }
  }
  else {
    _printk(&DAT_0010edf9,"haptic_hv",0x6f9,"ram_load",uVar8);
    release_firmware(param_1);
  }
  return;
}

