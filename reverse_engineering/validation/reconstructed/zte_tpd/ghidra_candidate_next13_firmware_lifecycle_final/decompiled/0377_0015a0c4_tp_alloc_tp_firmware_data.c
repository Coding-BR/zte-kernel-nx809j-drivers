
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
  if (lVar3 == 0) {
    _printk(&DAT_0016430a);
    uVar2 = 0xfffffff4;
  }
  else {
    uVar2 = vmalloc_noprof((long)param_1 + 0x18);
    *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = uVar2;
    if ((*(long **)(lVar1 + 0xc58))[1] == 0) {
      _printk(&DAT_00168923);
      kfree(*(undefined8 *)(lVar1 + 0xc58));
      uVar2 = 0xfffffff4;
    }
    else {
      **(long **)(lVar1 + 0xc58) = (long)param_1;
      memset(*(void **)(*(long *)(lVar1 + 0xc58) + 8),0,(long)param_1 + 0x18);
      uVar2 = 0;
    }
  }
  return uVar2;
}

