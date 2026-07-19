
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 tpfwupgrade_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined8 uVar4;
  code *pcVar5;
  uint local_3c;
  long local_38;
  
  lVar1 = tpd_cdev;
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  local_3c = 0;
  iVar2 = kstrtouint_from_user(param_2,param_3,10,&local_3c);
  if (iVar2 == 0) {
    _printk(&DAT_00164700,"tpfwupgrade_store",local_3c);
    mutex_lock(lVar1 + 0xc60);
    lVar3 = *(long *)(lVar1 + 0xc58);
    if (local_3c < 0xb) {
      if (lVar3 != 0) {
        pcVar5 = *(code **)(lVar1 + 0xe18);
        if (pcVar5 != (code *)0x0) {
          if (*(int *)(pcVar5 + -4) != 0x4d7650a4) {
                    /* WARNING: Does not return */
            pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x160c58);
            (*pcVar5)();
          }
          (*pcVar5)(lVar1,0,0);
          lVar3 = *(long *)(lVar1 + 0xc58);
        }
        if (*(long *)(lVar3 + 8) != 0) {
          vfree(*(long *)(lVar3 + 8));
          *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
          lVar3 = *(long *)(lVar1 + 0xc58);
        }
        kfree(lVar3);
        *(undefined8 *)(lVar1 + 0xc58) = 0;
        *(undefined4 *)(lVar1 + 0x448) = 0;
      }
    }
    else {
      if (lVar3 != 0) {
        if (*(long *)(lVar3 + 8) != 0) {
          vfree(*(long *)(lVar3 + 8));
          lVar3 = *(long *)(lVar1 + 0xc58);
        }
        kfree(lVar3);
      }
      *(undefined4 *)(lVar1 + 0x448) = 0;
      lVar3 = __kmalloc_cache_noprof(___check_object_size,0xdc0,0x18);
      *(long *)(lVar1 + 0xc58) = lVar3;
      if (lVar3 == 0) {
        _printk(&DAT_0016430a);
        param_3 = 0xfffffffffffffff4;
      }
      else {
        uVar4 = vmalloc_noprof((ulong)local_3c + 0x18);
        *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = uVar4;
        if ((*(ulong **)(lVar1 + 0xc58))[1] == 0) {
          _printk(&DAT_00168923);
          kfree(*(undefined8 *)(lVar1 + 0xc58));
          param_3 = 0xfffffffffffffff4;
        }
        else {
          **(ulong **)(lVar1 + 0xc58) = (ulong)local_3c;
          memset(*(void **)(*(long *)(lVar1 + 0xc58) + 8),0,(ulong)local_3c + 0x18);
        }
      }
    }
    mutex_unlock(lVar1 + 0xc60);
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

