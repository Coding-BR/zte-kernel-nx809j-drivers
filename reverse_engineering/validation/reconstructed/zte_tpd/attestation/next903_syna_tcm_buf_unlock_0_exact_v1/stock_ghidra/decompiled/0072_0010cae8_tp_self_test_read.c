
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
    lVar2 = __kmalloc_cache_noprof(_platform_driver_unregister,0xdc0,0x1000);
    if (lVar2 == 0) {
      _printk(&DAT_00133d80);
      return -0xc;
    }
    if (*param_4 == 0) {
      pcVar4 = *(code **)(lVar5 + 0xf98);
      if (pcVar4 == (code *)0x0) {
        lVar5 = 0;
      }
      else {
        if (*(int *)(pcVar4 + -4) != 0x64f25fb2) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10cb90);
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

