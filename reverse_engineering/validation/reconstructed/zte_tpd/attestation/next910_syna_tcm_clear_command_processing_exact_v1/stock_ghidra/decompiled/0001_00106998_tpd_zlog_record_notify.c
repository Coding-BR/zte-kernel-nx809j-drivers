
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_zlog_record_notify(undefined4 param_1)

{
  long lVar1;
  long lVar2;
  uint uVar3;
  undefined4 uVar4;
  size_t sVar5;
  ulong uVar6;
  undefined8 uVar7;
  undefined8 uVar8;
  long lVar9;
  char *pcVar10;
  
  lVar1 = tpd_cdev;
  if ((*(byte *)(tpd_cdev + 0xbf0) & 1) == 0) {
    tpd_zlog_register(tpd_cdev);
  }
  if ((*(long *)(lVar1 + 0xa48) == 0) || (*(long *)(lVar1 + 0xbe8) == 0)) {
    _printk(&DAT_00132a6a);
    return;
  }
  uVar3 = jiffies_to_msecs(_jiffies - *(long *)(lVar1 + 0xbf8));
  pcVar10 = *(char **)(lVar1 + 0xbe8);
  sVar5 = strlen(pcVar10);
  snprintf(pcVar10 + (int)sVar5,(long)(0x800 - (int)sVar5),
           " IC name: %s,module name:%s, Firmware version: 0x%x",zlog_tp_dev._24_8_,
           zlog_tp_dev._16_8_,(ulong)*(uint *)(lVar1 + 0xd00));
  lVar2 = tpd_cdev;
  switch(param_1) {
  case 1:
    if (*(long *)(tpd_cdev + 0xac0) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb58));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb58));
        _printk(&DAT_0013251e,uVar4,1);
        *(long *)(lVar2 + 0xac0) = *(long *)(lVar2 + 0xac0) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xac0) + 1;
    }
    *(long *)(lVar2 + 0xac0) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xb58) = _jiffies;
    _printk(&DAT_0013cac0,*(undefined8 *)(lVar1 + 0xac0),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd i2c read err,count:%d\n %s\n",
                       *(undefined8 *)(lVar1 + 0xac0),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar6 = *(long *)(lVar1 + 0xac0) * -0x3333333333333333;
    if (0x1999999999999999 < (uVar6 >> 1 | uVar6 << 0x3f)) goto LAB_00106f00;
    uVar8 = 1;
    break;
  case 2:
    if (*(long *)(tpd_cdev + 0xac8) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb60));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb60));
        _printk(&DAT_0013251e,uVar4,2);
        *(long *)(lVar2 + 0xac8) = *(long *)(lVar2 + 0xac8) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xac8) + 1;
    }
    *(long *)(lVar2 + 0xac8) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xb60) = _jiffies;
    _printk(&DAT_0013c3c6,*(undefined8 *)(lVar1 + 0xac8),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd i2c write err,count:%d.\n %s\n",
                       *(undefined8 *)(lVar1 + 0xac8),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar6 = *(long *)(lVar1 + 0xac8) * -0x3333333333333333;
    if (0x1999999999999999 < (uVar6 >> 1 | uVar6 << 0x3f)) goto LAB_00106f78;
    uVar8 = 2;
    break;
  case 3:
    if (*(long *)(tpd_cdev + 0xad0) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb68));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb68));
        _printk(&DAT_0013251e,uVar4,3);
        *(long *)(lVar2 + 0xad0) = *(long *)(lVar2 + 0xad0) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xad0) + 1;
    }
    *(long *)(lVar2 + 0xad0) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xb68) = _jiffies;
    _printk(&DAT_0013364a,*(undefined8 *)(lVar1 + 0xad0),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd i2c read warnning,count:%d\n %s\n",
                       *(undefined8 *)(lVar1 + 0xad0),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
LAB_00106f00:
    uVar8 = 0x40000b;
    break;
  case 4:
    if (*(long *)(tpd_cdev + 0xad8) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb70));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb70));
        _printk(&DAT_0013251e,uVar4,4);
        *(long *)(lVar2 + 0xad8) = *(long *)(lVar2 + 0xad8) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xad8) + 1;
    }
    *(long *)(lVar2 + 0xad8) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xb70) = _jiffies;
    _printk(&DAT_00134fbe,*(undefined8 *)(lVar1 + 0xad8),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd i2c write warnning,count:%d\n %s\n",
                       *(undefined8 *)(lVar1 + 0xad8),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
LAB_00106f78:
    uVar8 = 0x40000c;
    break;
  case 5:
    if (*(long *)(tpd_cdev + 0xae0) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb78));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb78));
        _printk(&DAT_0013251e,uVar4,5);
        *(long *)(lVar2 + 0xae0) = *(long *)(lVar2 + 0xae0) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xae0) + 1;
    }
    *(long *)(lVar2 + 0xae0) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xb78) = _jiffies;
    _printk(&DAT_0013c3f3,*(undefined8 *)(lVar1 + 0xae0),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd SPI read err,count:%d\n %s\n",
                       *(undefined8 *)(lVar1 + 0xae0),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar6 = *(long *)(lVar1 + 0xae0) * -0x3333333333333333;
    if (0x1999999999999999 < (uVar6 >> 1 | uVar6 << 0x3f)) goto LAB_0010704c;
    uVar8 = 6;
    break;
  case 6:
    if (*(long *)(tpd_cdev + 0xae8) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb80));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb80));
        _printk(&DAT_0013251e,uVar4,6);
        *(long *)(lVar2 + 0xae8) = *(long *)(lVar2 + 0xae8) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xae8) + 1;
    }
    *(long *)(lVar2 + 0xae8) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xb80) = _jiffies;
    _printk(&DAT_001330d5,*(undefined8 *)(lVar1 + 0xae8),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd SPI write err,count:%d\n %s\n",
                       *(undefined8 *)(lVar1 + 0xae8),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar6 = *(long *)(lVar1 + 0xae8) * -0x3333333333333333;
    if (0x1999999999999999 < (uVar6 >> 1 | uVar6 << 0x3f)) goto LAB_00106ff4;
    uVar8 = 7;
    break;
  case 7:
    if (*(long *)(tpd_cdev + 0xaf0) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb88));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb88));
        _printk(&DAT_0013251e,uVar4,7);
        *(long *)(lVar2 + 0xaf0) = *(long *)(lVar2 + 0xaf0) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xaf0) + 1;
    }
    *(long *)(lVar2 + 0xaf0) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xb88) = _jiffies;
    _printk(&DAT_0013d7c2,*(undefined8 *)(lVar1 + 0xaf0),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd SPI read warnning,count:%d\n %s\n",
                       *(undefined8 *)(lVar1 + 0xaf0),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
LAB_0010704c:
    uVar8 = 0x40000d;
    break;
  case 8:
    if (*(long *)(tpd_cdev + 0xaf8) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb90));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb90));
        _printk(&DAT_0013251e,uVar4,8);
        *(long *)(lVar2 + 0xaf8) = *(long *)(lVar2 + 0xaf8) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xaf8) + 1;
    }
    *(long *)(lVar2 + 0xaf8) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xb90) = _jiffies;
    _printk(&DAT_00138c4e,*(undefined8 *)(lVar1 + 0xaf8),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd SPI write warnning,count:%d\n %s\n",
                       *(undefined8 *)(lVar1 + 0xaf8),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
LAB_00106ff4:
    uVar8 = 0x40000e;
    break;
  case 9:
    if (*(long *)(tpd_cdev + 0xb00) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xb98));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xb98));
        _printk(&DAT_0013251e,uVar4,9);
        *(long *)(lVar2 + 0xb00) = *(long *)(lVar2 + 0xb00) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xb00) + 1;
    }
    *(long *)(lVar2 + 0xb00) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xb98) = _jiffies;
    _printk(&DAT_0013369e,*(undefined8 *)(lVar1 + 0xb00),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd crc check err,count:%d.\n %s\n",
                       *(undefined8 *)(lVar1 + 0xb00),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar8 = 3;
    break;
  case 10:
    if (*(long *)(tpd_cdev + 0xb08) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xba0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xba0));
        _printk(&DAT_0013251e,uVar4,10);
        *(long *)(lVar2 + 0xb08) = *(long *)(lVar2 + 0xb08) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xb08) + 1;
    }
    *(long *)(lVar2 + 0xb08) = lVar9;
    *(long *)(lVar1 + 0xba0) = _jiffies;
    _printk(&DAT_00139882,*(undefined8 *)(lVar1 + 0xb08),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar8 = *(undefined8 *)(lVar1 + 0xb08);
    pcVar10 = "tpd firmware upgrade err,count:%d. \n %s\n";
    goto LAB_001076d8;
  case 0xb:
    if (*(long *)(tpd_cdev + 0xb10) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xba8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xba8));
        _printk(&DAT_0013251e,uVar4,0xb);
        *(long *)(lVar2 + 0xb10) = *(long *)(lVar2 + 0xb10) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xb10) + 1;
    }
    *(long *)(lVar2 + 0xb10) = lVar9;
    *(long *)(lVar1 + 0xba8) = _jiffies;
    _printk(&DAT_001368e5,*(undefined8 *)(lVar1 + 0xb10),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd esd check err,count:%d.\n %s\n",
                       *(undefined8 *)(lVar1 + 0xb10),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar6 = *(long *)(lVar1 + 0xb10) * -0x3333333333333333;
    if ((uVar6 >> 1 | uVar6 << 0x3f) < 0x199999999999999a) goto LAB_00107610;
    goto LAB_00107600;
  case 0xc:
    if (*(long *)(tpd_cdev + 0xb18) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbb0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbb0));
        _printk(&DAT_0013251e,uVar4,0xc);
        *(long *)(lVar2 + 0xb18) = *(long *)(lVar2 + 0xb18) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xb18) + 1;
    }
    *(long *)(lVar2 + 0xb18) = lVar9;
    *(long *)(lVar1 + 0xbb0) = _jiffies;
    _printk(&DAT_0013b442,*(undefined8 *)(lVar1 + 0xb18),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd esd check warnning,count:%d.\n %s\n",
                       *(undefined8 *)(lVar1 + 0xb18),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
LAB_00107600:
    uVar8 = 0x40000f;
    break;
  case 0xd:
    _printk(&DAT_00139df7,*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd probe err.\n %s\n",
                       *(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
LAB_00107610:
    uVar8 = 5;
    break;
  case 0xe:
    _printk(&DAT_00137fd5,*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd tp gesture open when suspend.\n %s\n",
                       *(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar8 = 9;
    break;
  case 0xf:
    if (*(long *)(tpd_cdev + 0xb30) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbc8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbc8));
        _printk(&DAT_0013251e,uVar4,0xf);
        *(long *)(lVar2 + 0xb30) = *(long *)(lVar2 + 0xb30) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xb30) + 1;
    }
    *(long *)(lVar2 + 0xb30) = lVar9;
    *(long *)(lVar1 + 0xbc8) = _jiffies;
    _printk(&DAT_001336cb,*(undefined8 *)(lVar1 + 0xb30),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar8 = *(undefined8 *)(lVar1 + 0xb30);
    pcVar10 = "tpd request firmware upgrade err,count:%d.\n %s\n";
LAB_001076d8:
    zlog_client_record(uVar7,pcVar10,uVar8,*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar8 = 4;
    break;
  case 0x10:
    if (*(long *)(tpd_cdev + 0xb38) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbd0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbd0));
        _printk(&DAT_0013251e,uVar4,0x10);
        *(long *)(lVar2 + 0xb38) = *(long *)(lVar2 + 0xb38) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xb38) + 1;
    }
    *(long *)(lVar2 + 0xb38) = lVar9;
    *(long *)(lVar1 + 0xbd0) = _jiffies;
    _printk(&DAT_00132a8a,*(undefined8 *)(lVar1 + 0xb38),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd ghost err,count:%lu.\n %s\n",
                       *(undefined8 *)(lVar1 + 0xb38),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar8 = 0x10;
    break;
  case 0x11:
    if (*(long *)(tpd_cdev + 0xb40) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbd8));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbd8));
        _printk(&DAT_0013251e,uVar4,0x11);
        *(long *)(lVar2 + 0xb40) = *(long *)(lVar2 + 0xb40) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xb40) + 1;
    }
    *(long *)(lVar2 + 0xb40) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xbd8) = _jiffies;
    _printk(&DAT_0013926a,*(undefined8 *)(lVar1 + 0xb40),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd tp hal service is crash,count:%d.\n %s\n"
                       ,*(undefined8 *)(lVar1 + 0xb40),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar8 = 0x11;
    break;
  case 0x12:
    if (*(long *)(tpd_cdev + 0xb48) == 0) {
      lVar9 = 1;
    }
    else {
      uVar6 = jiffies_to_msecs(_jiffies - *(long *)(tpd_cdev + 0xbe0));
      if (((uint)(uVar6 >> 5) & 0x7ffffff) < 0x753) {
        uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + 0xbe0));
        _printk(&DAT_0013251e,uVar4,0x12);
        *(long *)(lVar2 + 0xb48) = *(long *)(lVar2 + 0xb48) + 1;
        goto switchD_00106a4c_default;
      }
      lVar9 = *(long *)(lVar2 + 0xb48) + 1;
    }
    *(long *)(lVar2 + 0xb48) = lVar9;
    if (uVar3 < 200) goto switchD_00106a4c_default;
    *(long *)(lVar1 + 0xbe0) = _jiffies;
    _printk(&DAT_0013929e,*(undefined8 *)(lVar1 + 0xb48),*(undefined8 *)(lVar1 + 0xbe8));
    zlog_client_record(*(undefined8 *)(lVar1 + 0xa48),"tpd tp save buffer is full,count:%d.\n %s\n",
                       *(undefined8 *)(lVar1 + 0xb48),*(undefined8 *)(lVar1 + 0xbe8));
    uVar7 = *(undefined8 *)(lVar1 + 0xa48);
    uVar8 = 0x12;
    break;
  default:
    goto switchD_00106a4c_default;
  }
  zlog_client_notify(uVar7,uVar8);
switchD_00106a4c_default:
  memset(*(void **)(lVar1 + 0xbe8),0,0x800);
  return;
}

