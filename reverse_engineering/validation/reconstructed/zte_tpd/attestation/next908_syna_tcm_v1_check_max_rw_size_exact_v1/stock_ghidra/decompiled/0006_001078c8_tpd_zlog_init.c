
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_zlog_init(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  *(undefined8 *)(tpd_cdev + 0xbe8) = 0;
  *(undefined1 *)(lVar1 + 0xbf0) = 0;
  *(undefined8 *)(lVar1 + 0xbf8) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb50) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb58) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb60) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb68) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb70) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb78) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb80) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb88) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb90) = _jiffies;
  *(undefined8 *)(lVar1 + 0xb98) = _jiffies;
  *(undefined8 *)(lVar1 + 0xba0) = _jiffies;
  *(undefined8 *)(lVar1 + 0xba8) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbb0) = _jiffies;
  *(undefined8 *)(lVar1 + 3000) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbc0) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbc8) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbd0) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbd8) = _jiffies;
  *(undefined8 *)(lVar1 + 0xbe0) = _jiffies;
  return;
}

