
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

