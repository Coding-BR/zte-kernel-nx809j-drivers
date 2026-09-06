
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong zlog_write_internal(void *param_1,ulong param_2)

{
  undefined8 uVar1;
  undefined8 *puVar2;
  long lVar3;
  undefined1 *puVar4;
  ulong uVar5;
  undefined8 uVar6;
  
  if (DAT_00100fcc < 0x401) {
    puVar2 = (undefined8 *)__kmalloc_cache_noprof(_mutex_unlock,0xdc0,0x20);
    while (puVar2 != (undefined8 *)0x0) {
      *(int *)(puVar2 + 2) = (int)param_2 + 1;
      uVar5 = (ulong)*(uint *)(puVar2 + 2);
      lVar3 = __kmalloc_noprof(uVar5,0xdc0);
      puVar2[3] = lVar3;
      if (lVar3 == 0) {
        _printk(&DAT_0010100a,"zlog_write_internal");
        if (puVar2[3] != 0) {
          kfree();
        }
        kfree(puVar2);
        return 0;
      }
      if (param_2 <= uVar5) {
        memcpy((void *)puVar2[3],param_1,param_2);
        *(undefined1 *)(puVar2[3] + param_2) = 0;
        mutex_lock(&g_zlog_info);
        if (((DAT_00100f48 == puVar2) || ((undefined8 **)puVar2 == &DAT_00100f48)) ||
           ((undefined8 **)DAT_00100f48[1] != &DAT_00100f48)) {
          __list_add_valid_or_report(puVar2,&DAT_00100f48);
        }
        else {
          DAT_00100f48[1] = puVar2;
          *puVar2 = DAT_00100f48;
          puVar2[1] = &DAT_00100f48;
          DAT_00100f48 = puVar2;
        }
        DAT_00100fcc = DAT_00100fcc + 1;
        DAT_00100fc8 = 1;
        mutex_unlock(&g_zlog_info);
        __wake_up(&DAT_00100fb0,1,1,0);
        return param_2;
      }
      __fortify_panic(0x11,uVar5,param_2);
      uVar1 = _mutex_unlock;
      lVar3 = sp_el0;
      uVar6 = *(undefined8 *)(lVar3 + 0x50);
      *(undefined1 **)(lVar3 + 0x50) = &zlog_write_internal__alloc_tag;
      puVar2 = (undefined8 *)__kmalloc_cache_noprof(uVar1,0xdc0,0x20);
      *(undefined8 *)(lVar3 + 0x50) = uVar6;
    }
    puVar4 = &DAT_0010130b;
  }
  else {
    puVar4 = &DAT_0010116e;
  }
  _printk(puVar4,"zlog_write_internal");
  return 0xfffffffffffffff4;
}

