
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 haptic_audio_store(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  long *plVar1;
  long *plVar2;
  undefined4 uVar3;
  undefined1 uVar4;
  int iVar5;
  undefined1 *puVar6;
  undefined1 *puVar7;
  ulong uVar8;
  long lVar9;
  code *pcVar10;
  long lVar11;
  undefined8 local_60;
  undefined8 local_58;
  undefined8 local_50;
  long local_48;
  
  lVar11 = sp_el0;
  local_48 = *(long *)(lVar11 + 0x710);
  lVar11 = *(long *)(param_1 + 0x98);
  local_58 = 0;
  local_50 = 0;
  local_60 = 0;
  if ((*(byte *)(lVar11 + -0xa2) & 1) == 0) {
    _printk(&DAT_00114362,"haptic_hv",0xba9,"haptic_audio_store");
  }
  else {
    iVar5 = sscanf(param_3,"%d %d %d %d %d %d",&local_60,(ulong)&local_60 | 4,&local_58,
                   (long)&local_58 + 4,&local_50,(long)&local_50 + 4);
    if (iVar5 == 6) {
      if ((int)local_58 != 0) {
        _printk(&DAT_001129a8,"haptic_hv",0xbb1,"haptic_audio_store",local_60 & 0xffffffff,
                local_60._4_4_,local_58 & 0xffffffff,local_58._4_4_,(undefined4)local_50,
                local_50._4_4_);
      }
      puVar6 = (undefined1 *)__kmalloc_cache_noprof(_enable_irq,0xdc0,0x18);
      if (puVar6 == (undefined1 *)0x0) {
        _printk(&DAT_001131ca,"haptic_hv",2999,"haptic_audio_store");
      }
      else {
        mutex_lock(lVar11 + 0x448);
        *puVar6 = (char)local_60;
        puVar6[1] = (char)(local_60 >> 0x20);
        puVar6[3] = (char)local_50;
        puVar6[2] = (char)local_58;
        puVar6[5] = (char)(local_58 >> 0x20);
        uVar4 = 0x80;
        if ((local_50._4_4_ & 0xff) < 0x81) {
          uVar4 = (char)((ulong)local_50 >> 0x20);
        }
        puVar6[4] = uVar4;
        puVar7 = (undefined1 *)__kmalloc_cache_noprof(_enable_irq,0xdc0,0x18);
        if (puVar7 != (undefined1 *)0x0) {
          uVar3 = *(undefined4 *)(puVar6 + 1);
          plVar1 = (long *)(lVar11 + 0x4e8);
          uVar4 = puVar6[5];
          *puVar7 = *puVar6;
          plVar2 = (long *)(puVar7 + 8);
          *(undefined4 *)(puVar7 + 1) = uVar3;
          puVar7[5] = uVar4;
          *(long **)(puVar7 + 8) = plVar2;
          *(long **)(puVar7 + 0x10) = plVar2;
          lVar9 = *(long *)(lVar11 + 0x4e8);
          if (((*(long **)(lVar9 + 8) == plVar1) && (plVar2 != plVar1)) && ((long *)lVar9 != plVar2)
             ) {
            *(long **)(lVar9 + 8) = plVar2;
            *(long *)(puVar7 + 8) = lVar9;
            *(long **)(puVar7 + 0x10) = plVar1;
            *plVar1 = (long)plVar2;
          }
          else {
            __list_add_valid_or_report(plVar2);
          }
        }
        if (puVar6[1] == -1) {
          _printk(&DAT_001135c8,"haptic_hv",0xbca,"haptic_audio_store");
          uVar8 = hrtimer_active(lVar11 + 0x478);
          if ((uVar8 & 1) != 0) {
            _printk(&DAT_001129ee,"haptic_hv",0xbcc,"haptic_audio_store");
            hrtimer_cancel(lVar11 + 0x478);
            *(undefined1 *)(lVar11 + 0x4f8) = 0;
            func_0x00109f18(lVar11 + -0xa8);
          }
        }
        else {
          uVar8 = hrtimer_active(lVar11 + 0x478);
          if ((uVar8 & 1) == 0) {
            _printk(&DAT_00112aac,"haptic_hv",0xbd5,"haptic_audio_store");
            pcVar10 = *(code **)(*(long *)(lVar11 + 0x520) + 0xc0);
            if (*(int *)(pcVar10 + -4) != 0x7b877e65) {
                    /* WARNING: Does not return */
              pcVar10 = (code *)SoftwareBreakpoint(0x8228,0x10f200);
              (*pcVar10)();
            }
            (*pcVar10)(lVar11 + -0xa8,1,0);
            hrtimer_start_range_ns
                      (lVar11 + 0x478,
                       (long)((*(int *)(lVar11 + 0x430) % 1000000) * 1000) +
                       (long)(*(int *)(lVar11 + 0x430) / 1000000) * 1000000000,0,1);
          }
        }
        mutex_unlock(lVar11 + 0x448);
        kfree(puVar6);
      }
    }
  }
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) == local_48) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

