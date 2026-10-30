
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_zlog_record_notify(undefined4 param_1)

{
  long lVar1;
  long lVar2;
  uint uVar3;
  undefined4 uVar4;
  size_t sVar5;
  ulong uVar6;
  long lVar7;
  char *__s;
  
  lVar1 = tpd_cdev;
  if ((*(byte *)(tpd_cdev + 0xbf0) & 1) == 0) {
    tpd_zlog_register(tpd_cdev);
  }
  if ((*(long *)(lVar1 + 0xa48) == 0) || (*(long *)(lVar1 + 0xbe8) == 0)) {
    _printk(&DAT_0017e266);
    return;
  }
  uVar3 = jiffies_to_msecs(_jiffies - *(long *)(lVar1 + 0xbf8));
  __s = *(char **)(lVar1 + 0xbe8);
  sVar5 = strlen(__s);
  snprintf(__s + (int)sVar5,(long)(0x800 - (int)sVar5),
           " IC name: %s,module name:%s, Firmware version: 0x%x",PTR_s_Unknown_00130748,
           PTR_s_Unknown_00130740,(ulong)*(uint *)(lVar1 + 0xd00));
  lVar2 = tpd_cdev;
  switch(param_1) {
  case 1:
    if (*(long *)(tpd_cdev + 0xac0) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb58));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb58));
        _printk(&DAT_0017e013,uVar4,1);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xac0) + 1;
    }
    *(long *)(lVar2 + 0xac0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb58) = _jiffies;
      _printk(&DAT_00182985,*(undefined8 *)(lVar1 + 0xac0),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 2:
    if (*(long *)(tpd_cdev + 0xac8) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb60));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb60));
        _printk(&DAT_0017e013,uVar4,2);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xac8) + 1;
    }
    *(long *)(lVar2 + 0xac8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb60) = _jiffies;
      _printk(&DAT_00182721,*(undefined8 *)(lVar1 + 0xac8),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 3:
    if (*(long *)(tpd_cdev + 0xad0) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb68));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb68));
        _printk(&DAT_0017e013,uVar4,3);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xad0) + 1;
    }
    *(long *)(lVar2 + 0xad0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb68) = _jiffies;
      _printk(&DAT_0017e8be,*(undefined8 *)(lVar1 + 0xad0),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 4:
    if (*(long *)(tpd_cdev + 0xad8) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb70));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb70));
        _printk(&DAT_0017e013,uVar4,4);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xad8) + 1;
    }
    *(long *)(lVar2 + 0xad8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb70) = _jiffies;
      _printk(&DAT_0017f44b,*(undefined8 *)(lVar1 + 0xad8),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 5:
    if (*(long *)(tpd_cdev + 0xae0) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb78));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb78));
        _printk(&DAT_0017e013,uVar4,5);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xae0) + 1;
    }
    *(long *)(lVar2 + 0xae0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb78) = _jiffies;
      _printk(&DAT_0018274e,*(undefined8 *)(lVar1 + 0xae0),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 6:
    if (*(long *)(tpd_cdev + 0xae8) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb80));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb80));
        _printk(&DAT_0017e013,uVar4,6);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xae8) + 1;
    }
    *(long *)(lVar2 + 0xae8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb80) = _jiffies;
      _printk(&DAT_0017e5d0,*(undefined8 *)(lVar1 + 0xae8),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 7:
    if (*(long *)(tpd_cdev + 0xaf0) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb88));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb88));
        _printk(&DAT_0017e013,uVar4,7);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xaf0) + 1;
    }
    *(long *)(lVar2 + 0xaf0) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb88) = _jiffies;
      _printk(&DAT_00182ef9,*(undefined8 *)(lVar1 + 0xaf0),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 8:
    if (*(long *)(tpd_cdev + 0xaf8) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb90));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb90));
        _printk(&DAT_0017e013,uVar4,8);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xaf8) + 1;
    }
    *(long *)(lVar2 + 0xaf8) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb90) = _jiffies;
      _printk(&DAT_00180e2e,*(undefined8 *)(lVar1 + 0xaf8),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 9:
    if (*(long *)(tpd_cdev + 0xb00) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb98));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb98));
        _printk(&DAT_0017e013,uVar4,9);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb00) + 1;
    }
    *(long *)(lVar2 + 0xb00) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xb98) = _jiffies;
      _printk(&DAT_0017e912,*(undefined8 *)(lVar1 + 0xb00),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 10:
    if (*(long *)(tpd_cdev + 0xb08) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xba0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xba0));
        _printk(&DAT_0017e013,uVar4,10);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb08) + 1;
    }
    *(long *)(lVar2 + 0xb08) = lVar7;
    *(long *)(lVar1 + 0xba0) = _jiffies;
    _printk(&DAT_001813a1,*(undefined8 *)(lVar1 + 0xb08),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xb:
    if (*(long *)(tpd_cdev + 0xb10) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xba8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xba8));
        _printk(&DAT_0017e013,uVar4,0xb);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb10) + 1;
    }
    *(long *)(lVar2 + 0xb10) = lVar7;
    *(long *)(lVar1 + 0xba8) = _jiffies;
    _printk(&DAT_0017fe6d,*(undefined8 *)(lVar1 + 0xb10),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xc:
    if (*(long *)(tpd_cdev + 0xb18) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbb0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbb0));
        _printk(&DAT_0017e013,uVar4,0xc);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb18) + 1;
    }
    *(long *)(lVar2 + 0xb18) = lVar7;
    *(long *)(lVar1 + 0xbb0) = _jiffies;
    _printk(&DAT_00182069,*(undefined8 *)(lVar1 + 0xb18),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xd:
    _printk(&DAT_001816fb,*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xe:
    _printk(&DAT_001807ee,*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0xf:
    if (*(long *)(tpd_cdev + 0xb30) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbc8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbc8));
        _printk(&DAT_0017e013,uVar4,0xf);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb30) + 1;
    }
    *(long *)(lVar2 + 0xb30) = lVar7;
    *(long *)(lVar1 + 0xbc8) = _jiffies;
    _printk(&DAT_0017e93f,*(undefined8 *)(lVar1 + 0xb30),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0x10:
    if (*(long *)(tpd_cdev + 0xb38) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbd0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbd0));
        _printk(&DAT_0017e013,uVar4,0x10);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb38) + 1;
    }
    *(long *)(lVar2 + 0xb38) = lVar7;
    *(long *)(lVar1 + 0xbd0) = _jiffies;
    _printk(&DAT_0017e286,*(undefined8 *)(lVar1 + 0xb38),*(undefined8 *)(lVar1 + 0xbe8));
    return;
  case 0x11:
    if (*(long *)(tpd_cdev + 0xb40) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbd8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbd8));
        _printk(&DAT_0017e013,uVar4,0x11);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb40) + 1;
    }
    *(long *)(lVar2 + 0xb40) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xbd8) = _jiffies;
      _printk(&DAT_001810fd,*(undefined8 *)(lVar1 + 0xb40),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
    break;
  case 0x12:
    if (*(long *)(tpd_cdev + 0xb48) == 0) {
      lVar7 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbe0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbe0));
        _printk(&DAT_0017e013,uVar4,0x12);
        return;
      }
      lVar7 = *(long *)(lVar2 + 0xb48) + 1;
    }
    *(long *)(lVar2 + 0xb48) = lVar7;
    if (199 < uVar3) {
      *(long *)(lVar1 + 0xbe0) = _jiffies;
      _printk(&DAT_00181131,*(undefined8 *)(lVar1 + 0xb48),*(undefined8 *)(lVar1 + 0xbe8));
      return;
    }
  }
  memset(*(void **)(lVar1 + 0xbe8),0,0x800);
  return;
}

