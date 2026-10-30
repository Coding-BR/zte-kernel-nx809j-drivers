/* 0010688c tpd_zlog_register */

void tpd_zlog_register(long param_1)

{
  long lVar1;
  
  if (*(long *)(param_1 + 0xa48) == 0) {
    lVar1 = zlog_register_client(zlog_tp_dev);
    *(long *)(param_1 + 0xa48) = lVar1;
    if (lVar1 == 0) {
      _printk(&DAT_00136f7e,"tpd_zlog_register");
    }
    else {
      lVar1 = vmalloc_noprof(0x800);
      *(long *)(param_1 + 0xbe8) = lVar1;
      if (lVar1 == 0) {
        _printk(&DAT_00134fa2);
        memset(*(void **)(param_1 + 0xbe8),0,0x800);
      }
      if (*(char *)(param_1 + 0xc00) != -1) {
        if (*(char **)(tpd_cdev + 0xbe8) != (char *)0x0) {
          snprintf(*(char **)(tpd_cdev + 0xbe8),0x800,"tp probe fail, chip id:%d");
        }
        tpd_zlog_record_notify(0xd);
      }
    }
    *(undefined1 *)(param_1 + 0xbf0) = 1;
  }
  else {
    _printk(&DAT_00139229);
  }
  return;
}



/* 00106998 tpd_zlog_record_notify */

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



/* 00107718 tpd_zlog_check */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 tpd_zlog_check(uint param_1)

{
  long lVar1;
  long lVar2;
  code *pcVar3;
  undefined4 uVar4;
  ulong uVar5;
  undefined8 uVar6;
  ulong uVar7;
  
  if (0x12 < param_1) {
                    /* WARNING: Does not return */
    pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x1077c4);
    (*pcVar3)();
  }
  uVar7 = (ulong)param_1;
  lVar1 = tpd_cdev + 0xab8;
  if (*(long *)(lVar1 + (ulong)param_1 * 8) != 0) {
    lVar2 = tpd_cdev + 0xb50;
    uVar5 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar7 * 8));
    if (((uint)(uVar5 >> 5) & 0x7ffffff) < 0x753) {
      uVar4 = jiffies_to_msecs(_jiffies - *(long *)(lVar2 + uVar7 * 8));
      _printk(&DAT_0013251e,uVar4,uVar7);
      uVar6 = 0xfffffffb;
      goto LAB_00107774;
    }
  }
  uVar6 = 0;
LAB_00107774:
  *(long *)(lVar1 + uVar7 * 8) = *(long *)(lVar1 + uVar7 * 8) + 1;
  return uVar6;
}



/* 001077c8 zlog_register_work_init */

void zlog_register_work_init(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"zlog_register_work_init");
  *(undefined8 *)(lVar1 + 0xa50) = 0xfffffffe00000;
  *(long *)(lVar1 + 0xa58) = lVar1 + 0xa58;
  *(long *)(lVar1 + 0xa60) = lVar1 + 0xa58;
  *(code **)(lVar1 + 0xa68) = zlog_register_work;
  init_timer_key(lVar1 + 0xa70,&delayed_work_timer_fn,0x200000,0,0);
  return;
}



/* 00107844 zlog_register_work */

void zlog_register_work(void)

{
  if ((*(byte *)(tpd_cdev + 0xbf0) & 1) == 0) {
    tpd_zlog_register();
  }
  return;
}



/* 00107874 zlog_register_work_deinit */

void zlog_register_work_deinit(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"zlog_register_work_deinit");
  cancel_delayed_work_sync(lVar1 + 0xa50);
  vfree(*(undefined8 *)(lVar1 + 0xbe8));
  *(undefined8 *)(lVar1 + 0xbe8) = 0;
  return;
}



/* 001078c8 tpd_zlog_init */

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



/* 00107984 get_tp_algo_item_id */

ulong get_tp_algo_item_id(char *param_1)

{
  undefined *puVar1;
  size_t sVar2;
  long lVar3;
  byte *pbVar4;
  
  puVar1 = PTR_s_algo_open_001004a8;
  pbVar4 = &ztp_algo_info_l;
  sVar2 = strlen(param_1);
  lVar3 = strnstr(param_1,puVar1,sVar2);
  puVar1 = PTR_s_jitter_pixel_001004b8;
  if (lVar3 == 0) {
    pbVar4 = &DAT_001004b0;
    sVar2 = strlen(param_1);
    lVar3 = strnstr(param_1,puVar1,sVar2);
    puVar1 = PTR_s_jitter_timer_001004c8;
    if (lVar3 == 0) {
      pbVar4 = &DAT_001004c0;
      sVar2 = strlen(param_1);
      lVar3 = strnstr(param_1,puVar1,sVar2);
      puVar1 = PTR_s_click_pixel_001004d8;
      if (lVar3 == 0) {
        pbVar4 = &DAT_001004d0;
        sVar2 = strlen(param_1);
        lVar3 = strnstr(param_1,puVar1,sVar2);
        puVar1 = PTR_s_long_press_open_001004e8;
        if (lVar3 == 0) {
          pbVar4 = &DAT_001004e0;
          sVar2 = strlen(param_1);
          lVar3 = strnstr(param_1,puVar1,sVar2);
          puVar1 = PTR_s_long_press_timer_001004f8;
          if (lVar3 == 0) {
            pbVar4 = &DAT_001004f0;
            sVar2 = strlen(param_1);
            lVar3 = strnstr(param_1,puVar1,sVar2);
            puVar1 = PTR_s_long_press_pixel_00100508;
            if (lVar3 == 0) {
              pbVar4 = &DAT_00100500;
              sVar2 = strlen(param_1);
              lVar3 = strnstr(param_1,puVar1,sVar2);
              if (lVar3 == 0) {
                return 0xfffffffb;
              }
            }
          }
        }
      }
    }
  }
  _printk(&DAT_0013a9f5,"get_tp_algo_item_id",*pbVar4);
  return (ulong)*pbVar4;
}



/* 00107aec get_tp_chip_id */

undefined8 get_tp_chip_id(void)

{
  long lVar1;
  long lVar2;
  undefined1 *puVar3;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00138c7f,"get_tp_chip_id");
  *(undefined1 *)(lVar1 + 0x446) = 0xff;
  _printk(&DAT_0013d7f2,"get_tp_chip_id","Unknown_lcd");
  puVar3 = &tp_ic_vendor_info_l;
  lVar2 = strnstr("Unknown_lcd",PTR_s_synaptics_001003f8,0xb);
  if (lVar2 == 0) {
    puVar3 = &DAT_00100400;
    lVar2 = strnstr("Unknown_lcd",PTR_s_focal_00100408,0xb);
    if (lVar2 == 0) {
      puVar3 = &DAT_00100410;
      lVar2 = strnstr("Unknown_lcd",PTR_s_goodix_00100418,0xb);
      if (lVar2 == 0) {
        puVar3 = &DAT_00100420;
        lVar2 = strnstr("Unknown_lcd",PTR_s_himax_00100428,0xb);
        if (lVar2 == 0) {
          puVar3 = &DAT_00100430;
          lVar2 = strnstr("Unknown_lcd",PTR_s_novatek_00100438,0xb);
          if (lVar2 == 0) {
            puVar3 = &DAT_00100440;
            lVar2 = strnstr("Unknown_lcd",PTR_s_ilitek_00100448,0xb);
            if (lVar2 == 0) {
              puVar3 = &DAT_00100450;
              lVar2 = strnstr("Unknown_lcd",PTR_DAT_00100458,0xb);
              if (lVar2 == 0) {
                puVar3 = &DAT_00100460;
                lVar2 = strnstr("Unknown_lcd",PTR_s_chipone_00100468,0xb);
                if (lVar2 == 0) {
                  puVar3 = &DAT_00100470;
                  lVar2 = strnstr("Unknown_lcd",PTR_s_galaxycore_00100478,0xb);
                  if (lVar2 == 0) {
                    puVar3 = &DAT_00100480;
                    lVar2 = strnstr("Unknown_lcd",PTR_s_omnivision_00100488,0xb);
                    if (lVar2 == 0) {
                      puVar3 = &DAT_00100490;
                      lVar2 = strnstr("Unknown_lcd",PTR_s_Unknown_00100498,0xb);
                      if (lVar2 == 0) {
                        return 0xfffffffb;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  *(undefined1 *)(lVar1 + 0x446) = *puVar3;
  _printk(&DAT_00138004,"get_tp_chip_id");
  return 0;
}



/* 00107ce0 get_lcd_panel_name */

char * get_lcd_panel_name(void)

{
  return "Unknown_lcd";
}



/* 00107cf0 tp_free_tp_firmware_data */

void tp_free_tp_firmware_data(void)

{
  long lVar1;
  long lVar2;
  
  lVar1 = tpd_cdev;
  lVar2 = *(long *)(tpd_cdev + 0xc58);
  if (lVar2 != 0) {
    if (*(long *)(lVar2 + 8) != 0) {
      vfree(*(long *)(lVar2 + 8));
      *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
      **(undefined8 **)(lVar1 + 0xc58) = 0;
      lVar2 = *(long *)(lVar1 + 0xc58);
    }
    kfree(lVar2);
    *(undefined8 *)(lVar1 + 0xc58) = 0;
  }
  *(undefined4 *)(lVar1 + 0x448) = 0;
  return;
}



/* 00107d54 tp_alloc_tp_firmware_data */

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
  lVar3 = __kmalloc_cache_noprof(_platform_device_add,0xdc0,0x18);
  *(long *)(lVar1 + 0xc58) = lVar3;
  if (lVar3 == 0) {
    _printk(&DAT_00132ac3);
    uVar2 = 0xfffffff4;
  }
  else {
    uVar2 = vmalloc_noprof((long)param_1 + 0x18);
    *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = uVar2;
    if ((*(long **)(lVar1 + 0xc58))[1] == 0) {
      _printk(&DAT_0013c41e);
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



/* 00107eb8 tpd_copy_to_tp_firmware_data */

int tpd_copy_to_tp_firmware_data(char *param_1)

{
  uint uVar1;
  long lVar2;
  size_t sVar3;
  ulong *puVar4;
  int iVar5;
  ulong uVar6;
  
  lVar2 = tpd_cdev;
  puVar4 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar4 == (ulong *)0x0) || (puVar4[1] == 0)) {
    _printk(&DAT_0013cb0c);
    iVar5 = -0xc;
  }
  else {
    uVar6 = *puVar4;
    if (uVar6 == 0) {
      _printk(&DAT_0013aa16);
      iVar5 = -0x16;
    }
    else {
      uVar1 = *(uint *)(tpd_cdev + 0x448);
      if (uVar1 < uVar6) {
        sVar3 = strlen(param_1);
        iVar5 = (int)uVar6 - uVar1;
        if (uVar1 + (int)sVar3 <= uVar6) {
          iVar5 = (int)sVar3;
        }
        memcpy((void *)(*(long *)(*(long *)(lVar2 + 0xc58) + 8) + (ulong)*(uint *)(lVar2 + 0x448)),
               param_1,(long)iVar5);
        *(int *)(lVar2 + 0x448) = *(int *)(lVar2 + 0x448) + iVar5;
      }
      else {
        iVar5 = 0;
      }
    }
  }
  return iVar5;
}



/* 00107f84 tpd_reset_fw_data_pos_and_size */

void tpd_reset_fw_data_pos_and_size(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  **(ulong **)(tpd_cdev + 0xc58) = (ulong)*(uint *)(tpd_cdev + 0x448);
  *(undefined4 *)(lVar1 + 0x448) = 0;
  return;
}



/* 00107fa4 tpd_proc_deinit */

void tpd_proc_deinit(void)

{
  if (tpd_proc_dir == 0) {
    _printk(&DAT_0013dd69,"tpd_proc_deinit");
  }
  else {
    remove_proc_entry("ts_information");
    remove_proc_entry("wake_gesture",tpd_proc_dir);
    remove_proc_entry("smart_cover",tpd_proc_dir);
    remove_proc_entry("glove_mode",tpd_proc_dir);
    remove_proc_entry("FW_upgrade",tpd_proc_dir);
    remove_proc_entry("suspend",tpd_proc_dir);
    remove_proc_entry("headset_state",tpd_proc_dir);
    remove_proc_entry("rotation_limit_level",tpd_proc_dir);
    remove_proc_entry("mRotation",tpd_proc_dir);
    remove_proc_entry("single_tap",tpd_proc_dir);
    remove_proc_entry("single_aod",tpd_proc_dir);
    remove_proc_entry("get_noise",tpd_proc_dir);
    remove_proc_entry("edge_report_limit",tpd_proc_dir);
    remove_proc_entry("one_key",tpd_proc_dir);
    remove_proc_entry("play_game",tpd_proc_dir);
    remove_proc_entry("tp_report_rate",tpd_proc_dir);
    remove_proc_entry("follow_hand_level",tpd_proc_dir);
    remove_proc_entry("sensibility",tpd_proc_dir);
    remove_proc_entry("game_partition",tpd_proc_dir);
    remove_proc_entry("pen_only",tpd_proc_dir);
    remove_proc_entry("finger_lock_flag",tpd_proc_dir);
    remove_proc_entry("tp_self_test",tpd_proc_dir);
    remove_proc_entry("tp_palm_mode",tpd_proc_dir);
    remove_proc_entry("fold_state",tpd_proc_dir);
    remove_proc_entry("fake_sleep",tpd_proc_dir);
    remove_proc_entry("screen_off_awake",tpd_proc_dir);
    remove_proc_entry("BBAT_test",tpd_proc_dir);
    remove_proc_entry("frame_data",tpd_proc_dir);
    remove_proc_entry("ghost_debug",tpd_proc_dir);
    remove_proc_entry("touchscreen",0);
  }
  return;
}



/* 001081c8 zte_touch_pdev_register */

int zte_touch_pdev_register(void)

{
  long lVar1;
  int iVar2;
  long lVar3;
  code *pcVar4;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_0013879a,"zte_touch_pdev_register");
  lVar3 = platform_device_alloc("zte_touch",0xffffffff);
  *(long *)(lVar1 + 0xdd0) = lVar3;
  if (lVar3 == 0) {
    _printk(&DAT_00132af5,"zte_touch_pdev_register");
    pcVar4 = (code *)0x0;
    iVar2 = -0xc;
  }
  else {
    iVar2 = platform_device_add();
    if (iVar2 < 0) {
      _printk(&DAT_0013bccc,"zte_touch_pdev_register",iVar2);
      pcVar4 = *(code **)(*(long *)(lVar1 + 0xdd0) + 0x338);
      if (*(int *)(pcVar4 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8229,0x108298);
        (*pcVar4)();
      }
      (*pcVar4)(*(long *)(lVar1 + 0xdd0) + 0x10);
      pcVar4 = (code *)0x0;
    }
    else {
      iVar2 = 0;
      pcVar4 = tpd_report_uevent;
    }
  }
  *(code **)(lVar1 + 0xea0) = pcVar4;
  return iVar2;
}



/* 001082ac tpd_report_uevent */

void tpd_report_uevent(char param_1)

{
  long lVar1;
  long lVar2;
  char *local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_38 = (char *)0x0;
  uStack_30 = 0;
  if (param_1 == '\x02') {
    _printk(&DAT_00138cbd,"tpd_report_uevent");
    local_38 = "pen_capacity_low=true";
  }
  else if (param_1 == '\x01') {
    _printk(&DAT_001398ee,"tpd_report_uevent");
    local_38 = "double_tap=true";
  }
  else {
    if (param_1 != '\0') {
      _printk(&DAT_0013a3f7,"tpd_report_uevent",param_1);
      goto LAB_00108384;
    }
    _printk(&DAT_00139e4f,"tpd_report_uevent");
    local_38 = "single_tap=true";
  }
  kobject_uevent_env(*(long *)(lVar2 + 0xdd0) + 0x10,2,&local_38);
LAB_00108384:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001083b4 zte_touch_pdev_unregister */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_touch_pdev_unregister(void)

{
  long lVar1;
  code *pcVar2;
  
  lVar1 = tpd_cdev;
  if (*(long *)(tpd_cdev + 0xdd0) == 0) {
    if (*(int *)(_DAT_00000338 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1083f8);
      (*pcVar2)();
    }
    (*_DAT_00000338)(0x10);
    platform_device_unregister(*(undefined8 *)(lVar1 + 0xdd0));
  }
  return;
}



/* 00108418 tpd_probe_work_init */

void tpd_probe_work_init(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_probe_work_init");
  *(undefined8 *)(lVar1 + 0x8d0) = 0xfffffffe00000;
  *(long *)(lVar1 + 0x8d8) = lVar1 + 0x8d8;
  *(long *)(lVar1 + 0x8e0) = lVar1 + 0x8d8;
  *(code **)(lVar1 + 0x8e8) = ztp_probe_work;
  init_timer_key(lVar1 + 0x8f0,&delayed_work_timer_fn,0x200000,0,0);
  return;
}



/* 00108494 ztp_probe_work */

void ztp_probe_work(void)

{
  _printk(&DAT_001343f2);
  syna_dev_module_init();
  return;
}



/* 001084c0 tpd_probe_work_deinit */

void tpd_probe_work_deinit(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_probe_work_deinit");
  cancel_delayed_work_sync(lVar1 + 0x8d0);
  return;
}



/* 00108508 tpd_workqueue_init */

undefined8 tpd_workqueue_init(void)

{
  long lVar1;
  int iVar2;
  long lVar3;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00136fbe);
  lVar3 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"tpd_wq");
  *(long *)(lVar1 + 0x4b0) = lVar3;
  if (lVar3 != 0) {
    iVar2 = tpd_report_work_init();
    lVar3 = tpd_cdev;
    if (iVar2 == 0) {
      _printk(&DAT_00132ab3,"tpd_probe_work_init");
      *(undefined8 *)(lVar3 + 0x8d0) = 0xfffffffe00000;
      *(long *)(lVar3 + 0x8d8) = lVar3 + 0x8d8;
      *(long *)(lVar3 + 0x8e0) = lVar3 + 0x8d8;
      *(code **)(lVar3 + 0x8e8) = ztp_probe_work;
      init_timer_key(lVar3 + 0x8f0,&delayed_work_timer_fn,0x200000,0,0);
      tpd_resume_work_init();
      lVar3 = tpd_cdev;
      _printk(&DAT_00132ab3,"zlog_register_work_init");
      *(undefined8 *)(lVar3 + 0xa50) = 0xfffffffe00000;
      *(long *)(lVar3 + 0xa58) = lVar3 + 0xa58;
      *(long *)(lVar3 + 0xa60) = lVar3 + 0xa58;
      *(code **)(lVar3 + 0xa68) = zlog_register_work;
      init_timer_key(lVar3 + 0xa70,&delayed_work_timer_fn,0x200000,0,0);
      *(undefined8 *)(lVar1 + 0x938) = 0xfffffffe00000;
      *(long *)(lVar1 + 0x940) = lVar1 + 0x940;
      *(long *)(lVar1 + 0x948) = lVar1 + 0x940;
      *(code **)(lVar1 + 0x950) = tp_ghost_check_work;
      init_timer_key(lVar1 + 0x958,&delayed_work_timer_fn,0x200000,0,0);
      return 0;
    }
    if (*(long *)(lVar1 + 0x4b0) == 0) {
      destroy_workqueue(0);
    }
  }
  _printk(&DAT_001398c6,"tpd_workqueue_init");
  return 0xfffffff4;
}



/* 00108690 tp_ghost_check_work */

void tp_ghost_check_work(void)

{
  long lVar1;
  ulong uVar2;
  int iVar3;
  code *pcVar4;
  
  lVar1 = tpd_cdev;
  uVar2 = tp_ghost_check();
  if ((uVar2 & 1) != 0) {
    _printk(&DAT_0013c444);
    iVar3 = *(int *)(lVar1 + 0x4a8);
    if (iVar3 < 3) {
      pcVar4 = *(code **)(lVar1 + 0xff0);
      if (pcVar4 != (code *)0x0) {
        if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8229,0x108720);
          (*pcVar4)();
        }
        (*pcVar4)(lVar1);
        _printk(&DAT_001392e6,*(int *)(lVar1 + 0x4a8) + 1);
        iVar3 = *(int *)(lVar1 + 0x4a8);
      }
      *(int *)(lVar1 + 0x4a8) = iVar3 + 1;
    }
    else {
      _printk(&DAT_001374c9);
    }
  }
  ghost_check_reset();
  *(undefined1 *)(lVar1 + 0x488) = 0;
  return;
}



/* 00108744 tpd_workqueue_deinit */

void tpd_workqueue_deinit(void)

{
  long lVar1;
  long lVar2;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_workqueue_deinit");
  tpd_report_work_deinit();
  tpd_resume_work_deinit();
  lVar2 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_probe_work_deinit");
  cancel_delayed_work_sync(lVar2 + 0x8d0);
  lVar2 = tpd_cdev;
  _printk(&DAT_00132ab3,"zlog_register_work_deinit");
  cancel_delayed_work_sync(lVar2 + 0xa50);
  vfree(*(undefined8 *)(lVar2 + 0xbe8));
  *(undefined8 *)(lVar2 + 0xbe8) = 0;
  cancel_delayed_work_sync(lVar1 + 0x938);
  return;
}



/* 001087e4 zte_touch_probe */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_touch_probe(long param_1)

{
  int iVar1;
  long lVar2;
  long lVar3;
  long lVar4;
  undefined8 uVar5;
  uint uVar6;
  undefined1 uVar7;
  uint local_3c;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  _printk(&DAT_00132b38,"zte_touch_probe",0xb2a);
  lVar2 = devm_kmalloc(param_1 + 0x10,0x1008,0xdc0);
  if (lVar2 == 0) {
    _printk(&DAT_0013d819);
  }
  else {
    *(long *)(lVar2 + 0xdc8) = param_1;
    tpd_cdev = lVar2;
    *(long *)(param_1 + 0xa8) = lVar2;
    zte_touch_pdev_register();
    uVar5 = *(undefined8 *)(param_1 + 0x2f8);
    local_3c = 0;
    lVar3 = of_find_property(uVar5,"zte,tp_algo",0);
    *(bool *)(lVar2 + 0x1b) = lVar3 != 0;
    if (lVar3 != 0) {
      _printk(&DAT_00133d1a);
    }
    lVar3 = of_find_property(uVar5,"zte,tp_long_press",0);
    *(bool *)(lVar2 + 0x25) = lVar3 != 0;
    if (lVar3 != 0) {
      _printk(&DAT_0013ae16);
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_timer",&local_3c,1,0);
      if (-1 < iVar1) {
        *(short *)(lVar2 + 0x3c) = (short)local_3c;
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_left_v",&local_3c,1,0);
      if (-1 < iVar1) {
        *(char *)(lVar2 + 0x34) = (char)local_3c;
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_right_v",&local_3c,1,0);
      if (-1 < iVar1) {
        *(char *)(lVar2 + 0x35) = (char)local_3c;
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_left_h",&local_3c,1,0);
      if (-1 < iVar1) {
        *(char *)(lVar2 + 0x36) = (char)local_3c;
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_long_press_right_h",&local_3c,1,0);
      if (-1 < iVar1) {
        *(char *)(lVar2 + 0x37) = (char)local_3c;
      }
    }
    lVar3 = of_find_property(uVar5,"zte,ghost_check_config",0);
    *(bool *)(lVar2 + 0x490) = lVar3 != 0;
    if (lVar3 == 0) {
      uVar7 = 0x19;
      *(undefined1 *)(lVar2 + 0x495) = 0x23;
      *(undefined4 *)(lVar2 + 0x491) = 0x8051419;
      *(undefined8 *)(lVar2 + 0x498) = 0xc81ffffffff;
      *(undefined4 *)(lVar2 + 0x4a0) = 0x321;
      uVar6 = 0x321;
    }
    else {
      _printk(&DAT_001379bf);
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_single_time",&local_3c,1,0)
      ;
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 0x19;
      }
      *(undefined1 *)(lVar2 + 0x491) = uVar7;
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_multi_time",&local_3c,1,0);
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 0x14;
      }
      *(undefined1 *)(lVar2 + 0x492) = uVar7;
      iVar1 = of_property_read_variable_u32_array
                        (uVar5,"zte,ghost_check_single_count",&local_3c,1,0);
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 5;
      }
      *(undefined1 *)(lVar2 + 0x493) = uVar7;
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_multi_count",&local_3c,1,0)
      ;
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 8;
      }
      *(undefined1 *)(lVar2 + 0x494) = uVar7;
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_start_time",&local_3c,1,0);
      uVar7 = (undefined1)local_3c;
      if (iVar1 < 0) {
        uVar7 = 0x23;
      }
      *(undefined1 *)(lVar2 + 0x495) = uVar7;
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ghost_check_ignore_id",&local_3c,1,0);
      uVar6 = local_3c;
      if (iVar1 < 0) {
        uVar6 = 0xffffffff;
      }
      *(uint *)(lVar2 + 0x498) = uVar6;
      iVar1 = of_property_read_variable_u32_array
                        (uVar5,"zte,ghost_check_ignore_edge_area",&local_3c,1,0);
      uVar6 = local_3c;
      if (iVar1 < 0) {
        uVar6 = 0x1401;
      }
      *(uint *)(lVar2 + 0x49c) = uVar6;
      iVar1 = of_property_read_variable_u32_array
                        (uVar5,"zte,ghost_check_ignore_corner_x",&local_3c,1,0);
      uVar6 = local_3c;
      if (iVar1 < 0) {
        uVar6 = 0x321;
      }
      *(uint *)(lVar2 + 0x4a0) = uVar6;
      iVar1 = of_property_read_variable_u32_array
                        (uVar5,"zte,ghost_check_ignore_corner_y",&local_3c,1,0);
      uVar7 = *(undefined1 *)(lVar2 + 0x491);
      uVar6 = local_3c;
      if (iVar1 < 0) {
        uVar6 = 0x321;
      }
    }
    *(uint *)(lVar2 + 0x4a4) = uVar6;
    _printk(&DAT_00133d35,uVar7);
    _printk(&DAT_00136921,*(undefined1 *)(lVar2 + 0x492));
    _printk(&DAT_00133d5a,*(undefined1 *)(lVar2 + 0x493));
    _printk(&DAT_0013440b,*(undefined1 *)(lVar2 + 0x494));
    _printk(&DAT_0013a419,*(undefined1 *)(lVar2 + 0x495));
    _printk(&DAT_00139922,*(undefined4 *)(lVar2 + 0x498));
    _printk(&DAT_0013700e,*(undefined4 *)(lVar2 + 0x49c));
    _printk(&DAT_0013258f,*(undefined4 *)(lVar2 + 0x4a0));
    _printk(&DAT_00134430,*(undefined4 *)(lVar2 + 0x4a4));
    iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_jitter_check",&local_3c,1,0);
    if (-1 < iVar1) {
      *(char *)(lVar2 + 0x24) = (char)local_3c;
      _printk(&DAT_0013d846,local_3c & 0xff);
      if ((*(char *)(lVar2 + 0x24) != '\0') &&
         (iVar1 = of_property_read_variable_u32_array(uVar5,"zte,tp_jitter_timer",&local_3c,1,0),
         -1 < iVar1)) {
        *(short *)(lVar2 + 0x3e) = (short)local_3c;
        _printk(&DAT_00136945,local_3c & 0xffff);
      }
    }
    iVar1 = of_property_read_variable_u32_array
                      (uVar5,"zte,tp_edge_click_suppression_pixel",&local_3c,1,0);
    if (-1 < iVar1) {
      *(char *)(lVar2 + 0x26) = (char)local_3c;
      _printk(&DAT_001379e1,local_3c & 0xff);
      *(uint *)(lVar2 + 0x27) = (uint)*(byte *)(lVar2 + 0x26) * 0x1010101;
    }
    lVar3 = of_find_property(uVar5,"zte,ufp_enable",0);
    *(bool *)(lVar2 + 0x1c) = lVar3 != 0;
    if (lVar3 != 0) {
      _printk(&DAT_00139326);
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ufp_circle_center_x",&local_3c,1,0);
      if (-1 < iVar1) {
        *(short *)(lVar2 + 0x1e) = (short)local_3c;
        _printk(&DAT_00138038,local_3c & 0xffff);
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ufp_circle_center_y",&local_3c,1,0);
      if (-1 < iVar1) {
        *(short *)(lVar2 + 0x20) = (short)local_3c;
        _printk(&DAT_0013373a,local_3c & 0xffff);
      }
      iVar1 = of_property_read_variable_u32_array(uVar5,"zte,ufp_circle_radius",&local_3c,1,0);
      if (-1 < iVar1) {
        *(short *)(lVar2 + 0x22) = (short)local_3c;
        _printk(&DAT_00133148,local_3c & 0xffff);
      }
    }
    __mutex_init(lVar2 + 0xc60,"&ztp_dev->cmd_mutex",&zte_touch_probe___key);
    __mutex_init(lVar2 + 0xc90,"&ztp_dev->report_mutex",&zte_touch_probe___key_136);
    __mutex_init(lVar2 + 0xcc0,"&ztp_dev->tp_resume_mutex",&zte_touch_probe___key_138);
    tpd_proc_dir = proc_mkdir("touchscreen",0);
    if (tpd_proc_dir == 0) {
      _printk(&DAT_0013ae3b,"create_tpd_proc_entry");
    }
    else {
      lVar3 = proc_create("ts_information",0x1b4,tpd_proc_dir,proc_ops_tp_module_Info);
      if (lVar3 == 0) {
        _printk(&DAT_0013704c);
      }
      lVar3 = proc_create("wake_gesture",0x1b4,tpd_proc_dir,proc_ops_wake_gesture);
      if (lVar3 == 0) {
        _printk(&DAT_0013569b);
      }
      lVar3 = proc_create("smart_cover",0x1b4,tpd_proc_dir,proc_ops_smart_cover);
      if (lVar3 == 0) {
        _printk(&DAT_00138cd4);
      }
      lVar3 = proc_create("glove_mode",0x1b4,tpd_proc_dir,proc_ops_glove);
      if (lVar3 == 0) {
        _printk(&DAT_0013d240);
      }
      lVar3 = proc_create("FW_upgrade",0x1b4,tpd_proc_dir,proc_ops_tpfwupgrade);
      if (lVar3 == 0) {
        _printk(&DAT_00132bc0);
      }
      lVar3 = proc_create("suspend",0x1b4,tpd_proc_dir,proc_ops_suspend);
      if (lVar3 == 0) {
        _printk(&DAT_00139ecc);
      }
      lVar3 = proc_create("headset_state",0x1b4,tpd_proc_dir,proc_ops_headset_state);
      if (lVar3 == 0) {
        _printk(&DAT_00139eeb);
      }
      lVar3 = proc_create("rotation_limit_level",0x1b4,tpd_proc_dir,proc_ops_rotation_limit_level);
      if (lVar3 == 0) {
        _printk(&DAT_00131fe5);
      }
      lVar3 = proc_create("mRotation",0x1b4,tpd_proc_dir,proc_ops_mrotation);
      if (lVar3 == 0) {
        _printk(&DAT_0013c45e);
      }
      lVar3 = proc_create("single_tap",0x1b4,tpd_proc_dir,proc_ops_single_tap);
      if (lVar3 == 0) {
        _printk(&DAT_0013bcfb);
      }
      lVar3 = proc_create("single_aod",0x1b4,tpd_proc_dir,proc_ops_single_aod);
      if (lVar3 == 0) {
        _printk(&DAT_00137501);
      }
      lVar3 = proc_create("single_game",0x1b4,tpd_proc_dir,proc_ops_single_game);
      if (lVar3 == 0) {
        _printk(&DAT_00139340);
      }
      lVar3 = proc_create("get_noise",0x1b4,tpd_proc_dir,proc_ops_get_noise);
      if (lVar3 == 0) {
        _printk(&DAT_0013806f);
      }
      lVar3 = proc_create("edge_report_limit",0x1b4,tpd_proc_dir,proc_ops_edge_report_limit);
      if (lVar3 == 0) {
        _printk(&DAT_0013a43d);
      }
      lVar3 = proc_create("one_key",0x1b4,tpd_proc_dir,proc_ops_onekey);
      if (lVar3 == 0) {
        _printk(&DAT_001349fa);
      }
      lVar3 = proc_create("play_game",0x1b4,tpd_proc_dir,proc_ops_playgame);
      if (lVar3 == 0) {
        _printk(&DAT_00135d7d);
      }
      lVar3 = proc_create("tp_report_rate",0x1b4,tpd_proc_dir,proc_ops_tp_report_rate);
      if (lVar3 == 0) {
        _printk(&DAT_00136962);
      }
      lVar3 = proc_create("follow_hand_level",0x1b4,tpd_proc_dir,proc_ops_follow_hand_level);
      if (lVar3 == 0) {
        _printk(&DAT_0013d87b);
      }
      lVar3 = proc_create("stability_level",0x1b4,tpd_proc_dir,proc_ops_stability_level);
      if (lVar3 == 0) {
        _printk(&DAT_00139945);
      }
      lVar3 = proc_create("sensibility",0x1b4,tpd_proc_dir,proc_ops_sensibility_level);
      if (lVar3 == 0) {
        _printk(&DAT_00136397);
      }
      lVar3 = proc_create("game_partition",0x1b4,tpd_proc_dir,proc_ops_game_partition);
      if (lVar3 == 0) {
        _printk(&DAT_0013d262);
      }
      lVar3 = proc_create("pen_only",0x1b4,tpd_proc_dir,proc_ops_pen_only);
      if (lVar3 == 0) {
        _printk(&DAT_0013ddf5);
      }
      lVar3 = proc_create("finger_lock_flag",0x1b4,tpd_proc_dir,proc_ops_finger_lock_flag);
      if (lVar3 == 0) {
        _printk(&DAT_001387c3);
      }
      lVar3 = proc_create("tp_self_test",0x1b4,tpd_proc_dir,proc_ops_tp_self_test);
      if (lVar3 == 0) {
        _printk(&DAT_001387eb);
      }
      lVar3 = proc_create("tp_palm_mode",0x1b4,tpd_proc_dir,proc_ops_palm_mode);
      if (lVar3 == 0) {
        _printk(&DAT_001356bf);
      }
      lVar3 = proc_create("fold_state",0x1b4,tpd_proc_dir,proc_ops_fold_state);
      if (lVar3 == 0) {
        _printk(&DAT_0013447d);
      }
      lVar3 = proc_create("fake_sleep",0x1b4,tpd_proc_dir,proc_ops_fake_sleep);
      if (lVar3 == 0) {
        _printk(&DAT_0013996c);
      }
      lVar3 = proc_create("screen_off_awake",0x1b4,tpd_proc_dir,proc_ops_screen_off_awake);
      if (lVar3 == 0) {
        _printk(&DAT_00139363);
      }
      lVar3 = proc_create("zlog_debug",0x1b4,tpd_proc_dir,proc_ops_zlog_debug);
      if (lVar3 == 0) {
        _printk(&DAT_001356e0);
      }
      lVar3 = proc_create("ghost_debug",0x1b4,tpd_proc_dir,proc_ops_ghost_debug);
      if (lVar3 == 0) {
        _printk(&DAT_0013ae5c);
      }
      lVar3 = proc_create("BBAT_test",0x1b4,tpd_proc_dir,proc_ops_BBAT_test);
      if (lVar3 == 0) {
        _printk(&DAT_00137a19);
      }
      lVar3 = proc_create("tp_test",0x1b4,tpd_proc_dir,proc_ops_tp_test);
      if (lVar3 == 0) {
        _printk(&DAT_00137072);
      }
      lVar3 = proc_create("frame_data",0x1b4,tpd_proc_dir,proc_ops_frame_data);
      if (lVar3 == 0) {
        _printk(&DAT_0013449f);
      }
    }
    lVar3 = tpd_cdev;
    if (*(long *)(tpd_cdev + 0xdd0) == 0) {
      _printk(&DAT_00137a7f);
    }
    else {
      lVar4 = kobject_create_and_add("fwupdate",*(long *)(tpd_cdev + 0xdd0) + 0x10);
      *(long *)(lVar3 + 0xc50) = lVar4;
      if (lVar4 == 0) {
        _printk(&DAT_00133e38);
      }
      else {
        iVar1 = sysfs_create_bin_file(lVar4,fwimage_attr);
        if (iVar1 != 0) {
          _printk(&DAT_00135e39,iVar1);
          kobject_put(*(undefined8 *)(lVar3 + 0xc50));
        }
      }
    }
    tpd_clean_all_event();
    ghost_check_reset();
    ufp_mac_init();
    iVar1 = tpd_workqueue_init();
    if (iVar1 == 0) {
      queue_delayed_work_on(0x20,*(undefined8 *)(lVar2 + 0x4b0),lVar2 + 0x8d0,0x177);
      lVar3 = tpd_cdev;
      *(undefined8 *)(tpd_cdev + 0xbe8) = 0;
      *(undefined1 *)(lVar3 + 0xbf0) = 0;
      *(undefined8 *)(lVar3 + 0xbf8) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb50) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb58) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb60) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb68) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb70) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb78) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb80) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb88) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb90) = _jiffies;
      *(undefined8 *)(lVar3 + 0xb98) = _jiffies;
      *(undefined8 *)(lVar3 + 0xba0) = _jiffies;
      *(undefined8 *)(lVar3 + 0xba8) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbb0) = _jiffies;
      *(undefined8 *)(lVar3 + 3000) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbc0) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbc8) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbd0) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbd8) = _jiffies;
      *(undefined8 *)(lVar3 + 0xbe0) = _jiffies;
      queue_delayed_work_on(0x20,*(undefined8 *)(lVar2 + 0x4b8),lVar2 + 0xa50,0x4e2);
      *(undefined1 *)(lVar2 + 0x1d) = 0;
      *(undefined1 *)(lVar2 + 0xc00) = 0xff;
      *(undefined4 *)(lVar2 + 0x4a8) = 0;
      *(undefined4 *)(lVar2 + 0xde0) = 0;
      __init_swait_queue_head(lVar2 + 0xde8,"&x->wait",&init_completion___key);
      *(undefined1 *)(lVar2 + 0xe01) = 0;
      _printk(&DAT_00139313,"zte_touch_probe",0xb51);
      uVar5 = 0;
      goto LAB_00109160;
    }
  }
  uVar5 = 0xfffffff4;
LAB_00109160:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  return;
}



/* 00109668 zte_touch_remove */

void zte_touch_remove(void)

{
  _printk(&DAT_00139313,"zte_touch_remove",0xb57);
  zte_touch_deinit();
  return;
}



/* 001096a0 zte_touch_shutdown */

void zte_touch_shutdown(void)

{
  long lVar1;
  long lVar2;
  code *pcVar3;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00139313,"zte_touch_shutdown",0xb60);
  pcVar3 = *(code **)(lVar1 + 0xf90);
  if (pcVar3 != (code *)0x0) {
    if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x1096f8);
      (*pcVar3)();
    }
    (*pcVar3)(lVar1);
  }
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_workqueue_deinit");
  tpd_report_work_deinit();
  tpd_resume_work_deinit();
  lVar2 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_probe_work_deinit");
  cancel_delayed_work_sync(lVar2 + 0x8d0);
  lVar2 = tpd_cdev;
  _printk(&DAT_00132ab3,"zlog_register_work_deinit");
  cancel_delayed_work_sync(lVar2 + 0xa50);
  vfree(*(undefined8 *)(lVar2 + 0xbe8));
  *(undefined8 *)(lVar2 + 0xbe8) = 0;
  cancel_delayed_work_sync(lVar1 + 0x938);
  return;
}



/* 00109784 tp_module_info_read */

void tp_module_info_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  uint uVar3;
  int iVar4;
  undefined8 uVar5;
  code *pcVar6;
  ulong uVar7;
  char local_120 [200];
  long local_58;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_58 = *(long *)(lVar1 + 0x710);
  if (*param_4 != 0) {
    uVar5 = 0;
LAB_001099e8:
    lVar1 = sp_el0;
    if (*(long *)(lVar1 + 0x710) == local_58) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  local_120[0xb8] = '\0';
  local_120[0xb9] = '\0';
  local_120[0xba] = '\0';
  local_120[0xbb] = '\0';
  local_120[0xbc] = '\0';
  local_120[0xbd] = '\0';
  local_120[0xbe] = '\0';
  local_120[0xbf] = '\0';
  local_120[0xc0] = '\0';
  local_120[0xc1] = '\0';
  local_120[0xc2] = '\0';
  local_120[0xc3] = '\0';
  local_120[0xc4] = '\0';
  local_120[0xc5] = '\0';
  local_120[0xc6] = '\0';
  local_120[199] = '\0';
  local_120[0xa8] = '\0';
  local_120[0xa9] = '\0';
  local_120[0xaa] = '\0';
  local_120[0xab] = '\0';
  local_120[0xac] = '\0';
  local_120[0xad] = '\0';
  local_120[0xae] = '\0';
  local_120[0xaf] = '\0';
  local_120[0xb0] = '\0';
  local_120[0xb1] = '\0';
  local_120[0xb2] = '\0';
  local_120[0xb3] = '\0';
  local_120[0xb4] = '\0';
  local_120[0xb5] = '\0';
  local_120[0xb6] = '\0';
  local_120[0xb7] = '\0';
  pcVar6 = *(code **)(tpd_cdev + 0xe20);
  local_120[0x98] = '\0';
  local_120[0x99] = '\0';
  local_120[0x9a] = '\0';
  local_120[0x9b] = '\0';
  local_120[0x9c] = '\0';
  local_120[0x9d] = '\0';
  local_120[0x9e] = '\0';
  local_120[0x9f] = '\0';
  local_120[0xa0] = '\0';
  local_120[0xa1] = '\0';
  local_120[0xa2] = '\0';
  local_120[0xa3] = '\0';
  local_120[0xa4] = '\0';
  local_120[0xa5] = '\0';
  local_120[0xa6] = '\0';
  local_120[0xa7] = '\0';
  local_120[0x88] = '\0';
  local_120[0x89] = '\0';
  local_120[0x8a] = '\0';
  local_120[0x8b] = '\0';
  local_120[0x8c] = '\0';
  local_120[0x8d] = '\0';
  local_120[0x8e] = '\0';
  local_120[0x8f] = '\0';
  local_120[0x90] = '\0';
  local_120[0x91] = '\0';
  local_120[0x92] = '\0';
  local_120[0x93] = '\0';
  local_120[0x94] = '\0';
  local_120[0x95] = '\0';
  local_120[0x96] = '\0';
  local_120[0x97] = '\0';
  local_120[0x78] = '\0';
  local_120[0x79] = '\0';
  local_120[0x7a] = '\0';
  local_120[0x7b] = '\0';
  local_120[0x7c] = '\0';
  local_120[0x7d] = '\0';
  local_120[0x7e] = '\0';
  local_120[0x7f] = '\0';
  local_120[0x80] = '\0';
  local_120[0x81] = '\0';
  local_120[0x82] = '\0';
  local_120[0x83] = '\0';
  local_120[0x84] = '\0';
  local_120[0x85] = '\0';
  local_120[0x86] = '\0';
  local_120[0x87] = '\0';
  local_120[0x68] = '\0';
  local_120[0x69] = '\0';
  local_120[0x6a] = '\0';
  local_120[0x6b] = '\0';
  local_120[0x6c] = '\0';
  local_120[0x6d] = '\0';
  local_120[0x6e] = '\0';
  local_120[0x6f] = '\0';
  local_120[0x70] = '\0';
  local_120[0x71] = '\0';
  local_120[0x72] = '\0';
  local_120[0x73] = '\0';
  local_120[0x74] = '\0';
  local_120[0x75] = '\0';
  local_120[0x76] = '\0';
  local_120[0x77] = '\0';
  local_120[0x58] = '\0';
  local_120[0x59] = '\0';
  local_120[0x5a] = '\0';
  local_120[0x5b] = '\0';
  local_120[0x5c] = '\0';
  local_120[0x5d] = '\0';
  local_120[0x5e] = '\0';
  local_120[0x5f] = '\0';
  local_120[0x60] = '\0';
  local_120[0x61] = '\0';
  local_120[0x62] = '\0';
  local_120[99] = '\0';
  local_120[100] = '\0';
  local_120[0x65] = '\0';
  local_120[0x66] = '\0';
  local_120[0x67] = '\0';
  local_120[0x48] = '\0';
  local_120[0x49] = '\0';
  local_120[0x4a] = '\0';
  local_120[0x4b] = '\0';
  local_120[0x4c] = '\0';
  local_120[0x4d] = '\0';
  local_120[0x4e] = '\0';
  local_120[0x4f] = '\0';
  local_120[0x50] = '\0';
  local_120[0x51] = '\0';
  local_120[0x52] = '\0';
  local_120[0x53] = '\0';
  local_120[0x54] = '\0';
  local_120[0x55] = '\0';
  local_120[0x56] = '\0';
  local_120[0x57] = '\0';
  local_120[0x38] = '\0';
  local_120[0x39] = '\0';
  local_120[0x3a] = '\0';
  local_120[0x3b] = '\0';
  local_120[0x3c] = '\0';
  local_120[0x3d] = '\0';
  local_120[0x3e] = '\0';
  local_120[0x3f] = '\0';
  local_120[0x40] = '\0';
  local_120[0x41] = '\0';
  local_120[0x42] = '\0';
  local_120[0x43] = '\0';
  local_120[0x44] = '\0';
  local_120[0x45] = '\0';
  local_120[0x46] = '\0';
  local_120[0x47] = '\0';
  local_120[0x28] = '\0';
  local_120[0x29] = '\0';
  local_120[0x2a] = '\0';
  local_120[0x2b] = '\0';
  local_120[0x2c] = '\0';
  local_120[0x2d] = '\0';
  local_120[0x2e] = '\0';
  local_120[0x2f] = '\0';
  local_120[0x30] = '\0';
  local_120[0x31] = '\0';
  local_120[0x32] = '\0';
  local_120[0x33] = '\0';
  local_120[0x34] = '\0';
  local_120[0x35] = '\0';
  local_120[0x36] = '\0';
  local_120[0x37] = '\0';
  local_120[0x18] = '\0';
  local_120[0x19] = '\0';
  local_120[0x1a] = '\0';
  local_120[0x1b] = '\0';
  local_120[0x1c] = '\0';
  local_120[0x1d] = '\0';
  local_120[0x1e] = '\0';
  local_120[0x1f] = '\0';
  local_120[0x20] = '\0';
  local_120[0x21] = '\0';
  local_120[0x22] = '\0';
  local_120[0x23] = '\0';
  local_120[0x24] = '\0';
  local_120[0x25] = '\0';
  local_120[0x26] = '\0';
  local_120[0x27] = '\0';
  local_120[8] = '\0';
  local_120[9] = '\0';
  local_120[10] = '\0';
  local_120[0xb] = '\0';
  local_120[0xc] = '\0';
  local_120[0xd] = '\0';
  local_120[0xe] = '\0';
  local_120[0xf] = '\0';
  local_120[0x10] = '\0';
  local_120[0x11] = '\0';
  local_120[0x12] = '\0';
  local_120[0x13] = '\0';
  local_120[0x14] = '\0';
  local_120[0x15] = '\0';
  local_120[0x16] = '\0';
  local_120[0x17] = '\0';
  local_120[0] = '\0';
  local_120[1] = '\0';
  local_120[2] = '\0';
  local_120[3] = '\0';
  local_120[4] = '\0';
  local_120[5] = '\0';
  local_120[6] = '\0';
  local_120[7] = '\0';
  if (pcVar6 != (code *)0x0) {
    if (*(int *)(pcVar6 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10982c);
      (*pcVar6)();
    }
    (*pcVar6)(tpd_cdev);
  }
  uVar3 = snprintf(local_120,200,"TP module: %s(0x%x)\n",lVar2 + 0xd40,
                   (ulong)*(uint *)(lVar2 + 0xcfc));
  if (uVar3 < 0xc9) {
    uVar7 = (ulong)uVar3;
    iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"IC type : %s\n",lVar2 + 0xd18);
    uVar7 = uVar7 + (long)iVar4;
    if (*(int *)(lVar2 + 0xd0c) != 0) {
      if (200 < uVar7) goto LAB_00109a1c;
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"I2C address: 0x%x\n");
      uVar7 = uVar7 + (long)iVar4;
    }
    if (*(int *)(lVar2 + 0xd14) != 0) {
      if (200 < uVar7) goto LAB_00109a1c;
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Spi num: %d\n");
      uVar7 = uVar7 + (long)iVar4;
    }
    if (uVar7 < 0xc9) {
      iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Firmware version : %d\n",
                       (ulong)*(uint *)(lVar2 + 0xd00));
      uVar7 = uVar7 + (long)iVar4;
      if (*(int *)(lVar2 + 0xd04) != 0) {
        if (200 < uVar7) goto LAB_00109a1c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Config version:0x%x\n");
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(int *)(lVar2 + 0xd08) != 0) {
        if (200 < uVar7) goto LAB_00109a1c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Display version:0x%x\n");
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(char *)(lVar2 + 0xd68) != '\0') {
        if (200 < uVar7) goto LAB_00109a1c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"Chip hard version:%s\n",lVar2 + 0xd68);
        uVar7 = uVar7 + (long)iVar4;
      }
      if (*(char *)(lVar2 + 0xd90) != '\0') {
        if (200 < uVar7) goto LAB_00109a1c;
        iVar4 = snprintf(local_120 + uVar7,200 - uVar7,"fw update status:%s\n",lVar2 + 0xd90);
        uVar7 = uVar7 + (long)iVar4;
      }
      uVar5 = simple_read_from_buffer(param_2,param_3,param_4,local_120,uVar7);
      goto LAB_001099e8;
    }
  }
LAB_00109a1c:
                    /* WARNING: Does not return */
  pcVar6 = (code *)SoftwareBreakpoint(0x5512,0x109a20);
  (*pcVar6)();
}



/* 00109a28 tp_wake_gesture_read */

void tp_wake_gesture_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  uint *puVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  puVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0x38a);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x109ac4);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"tp_wake_gesture_read",*puVar2);
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*puVar2);
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 00109b1c tp_wake_gesture_write */

undefined8 tp_wake_gesture_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00133167,"tp_wake_gesture_write");
    pcVar4 = *(code **)(lVar2 + 0xe30);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x109be0);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00109bf0 tp_smart_cover_read */

void tp_smart_cover_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xe38);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x109c8c);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"tp_smart_cover_read",*(undefined4 *)(lVar2 + 4));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 4));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 00109ce4 tp_smart_cover_write */

undefined8 tp_smart_cover_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00133167,"tp_smart_cover_write");
    pcVar4 = *(code **)(lVar2 + 0xe40);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x109da8);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00109db8 tp_glove_read */

void tp_glove_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xe48);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x109e54);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"tp_glove_read",*(undefined4 *)(lVar2 + 8));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 8));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 00109eac tp_glove_write */

undefined8 tp_glove_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00133167,"tp_glove_write");
    pcVar4 = *(code **)(lVar2 + 0xe50);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x109f70);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00109f80 tpfwupgrade_store */

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
    _printk(&DAT_00133167,"tpfwupgrade_store",local_3c);
    mutex_lock(lVar1 + 0xc60);
    lVar3 = *(long *)(lVar1 + 0xc58);
    if (local_3c < 0xb) {
      if (lVar3 != 0) {
        pcVar5 = *(code **)(lVar1 + 0xe18);
        if (pcVar5 != (code *)0x0) {
          if (*(int *)(pcVar5 + -4) != 0x4d7650a4) {
                    /* WARNING: Does not return */
            pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10a0e4);
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
      lVar3 = __kmalloc_cache_noprof(_platform_device_add,0xdc0,0x18);
      *(long *)(lVar1 + 0xc58) = lVar3;
      if (lVar3 == 0) {
        _printk(&DAT_00132ac3);
        param_3 = 0xfffffffffffffff4;
      }
      else {
        uVar4 = vmalloc_noprof((ulong)local_3c + 0x18);
        *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = uVar4;
        if ((*(ulong **)(lVar1 + 0xc58))[1] == 0) {
          _printk(&DAT_0013c41e);
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



/* 0010a1b4 suspend_show */

void suspend_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_58 [32];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_58[0x18] = '\0';
  local_58[0x19] = '\0';
  local_58[0x1a] = '\0';
  local_58[0x1b] = '\0';
  local_58[0x1c] = '\0';
  local_58[0x1d] = '\0';
  local_58[8] = '\0';
  local_58[9] = '\0';
  local_58[10] = '\0';
  local_58[0xb] = '\0';
  local_58[0xc] = '\0';
  local_58[0xd] = '\0';
  local_58[0xe] = '\0';
  local_58[0xf] = '\0';
  local_58[0x10] = '\0';
  local_58[0x11] = '\0';
  local_58[0x12] = '\0';
  local_58[0x13] = '\0';
  local_58[0x14] = '\0';
  local_58[0x15] = '\0';
  local_58[0x16] = '\0';
  local_58[0x17] = '\0';
  local_58[0] = '\0';
  local_58[1] = '\0';
  local_58[2] = '\0';
  local_58[3] = '\0';
  local_58[4] = '\0';
  local_58[5] = '\0';
  local_58[6] = '\0';
  local_58[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xe58);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10a254);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"suspend_show",*(undefined1 *)(lVar2 + 0x15));
    iVar3 = snprintf(local_58,0x1e,"tp suspend is: %u\n",(ulong)*(byte *)(lVar2 + 0x15));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_58,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010a2ac suspend_store */

undefined8 suspend_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00133167,"suspend_store");
    mutex_lock(lVar2 + 0xc60);
    if (local_2c == *(byte *)(lVar2 + 0x16)) {
      _printk(&DAT_0013d8c7,"suspend_store");
    }
    else {
      pcVar4 = *(code **)(lVar2 + 0xe60);
      *(bool *)(lVar2 + 0x16) = local_2c != 0;
      if (pcVar4 != (code *)0x0) {
        if (*(int *)(pcVar4 + -4) != 0x38d5b490) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10a394);
          (*pcVar4)();
        }
        (*pcVar4)(lVar2,0);
      }
    }
    mutex_unlock(lVar2 + 0xc60);
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a3c4 headset_state_show */

void headset_state_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_58 [32];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_58[0x18] = '\0';
  local_58[0x19] = '\0';
  local_58[0x1a] = '\0';
  local_58[0x1b] = '\0';
  local_58[0x1c] = '\0';
  local_58[0x1d] = '\0';
  local_58[8] = '\0';
  local_58[9] = '\0';
  local_58[10] = '\0';
  local_58[0xb] = '\0';
  local_58[0xc] = '\0';
  local_58[0xd] = '\0';
  local_58[0xe] = '\0';
  local_58[0xf] = '\0';
  local_58[0x10] = '\0';
  local_58[0x11] = '\0';
  local_58[0x12] = '\0';
  local_58[0x13] = '\0';
  local_58[0x14] = '\0';
  local_58[0x15] = '\0';
  local_58[0x16] = '\0';
  local_58[0x17] = '\0';
  local_58[0] = '\0';
  local_58[1] = '\0';
  local_58[2] = '\0';
  local_58[3] = '\0';
  local_58[4] = '\0';
  local_58[5] = '\0';
  local_58[6] = '\0';
  local_58[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xe78);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10a464);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"headset_state_show",*(undefined1 *)(lVar2 + 0x17));
    iVar3 = snprintf(local_58,0x1e,"headset state: %u\n",(ulong)*(byte *)(lVar2 + 0x17));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_58,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010a4bc headset_state_store */

ulong headset_state_store(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    local_4c = (uint)(local_4c != 0);
    _printk(&DAT_001325c6,"headset_state_store");
    pcVar4 = *(code **)(lVar2 + 0xe70);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10a5bc);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_4c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a5c8 _inline_copy_from_user */

size_t _inline_copy_from_user(long param_1,ulong param_2,ulong param_3)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  ulong uVar3;
  ulong uVar4;
  
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar4 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar4 = param_2 & (long)(param_2 << 8) >> 8;
  }
  uVar3 = param_3;
  if ((param_3 < 0x8000000001) && (uVar4 <= 0x8000000000 - param_3)) {
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar3 = puVar1[1];
    uVar4 = ttbr1_el1;
    ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar4 & 0xffffffffffff;
    ttbr0_el1 = uVar3;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    uVar3 = __arch_copy_from_user(uVar3,param_1,param_2 & 0xff7fffffffffffff,param_3);
    uVar2 = daif;
    uVar4 = daif;
    daif = uVar4 | 0xc0;
    uVar4 = ttbr1_el1;
    ttbr0_el1 = (uVar4 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar4 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    if (uVar3 == 0) {
      return 0;
    }
  }
  memset((void *)(param_1 + (param_3 - uVar3)),0,uVar3);
  return uVar3;
}



/* 0010a6c0 get_rotation_limit_level */

void get_rotation_limit_level
               (undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xe88);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10a75c);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"get_rotation_limit_level",*(undefined4 *)(lVar2 + 0xc));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0xc));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010a7b4 set_rotation_limit_level */

undefined8 set_rotation_limit_level(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    _printk(&DAT_00138090,"set_rotation_limit_level",local_2c);
    pcVar4 = *(code **)(lVar2 + 0xe80);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10a86c);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010a87c display_rotation_show */

void display_rotation_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  char local_58 [32];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_58[0x18] = '\0';
  local_58[0x19] = '\0';
  local_58[0x1a] = '\0';
  local_58[0x1b] = '\0';
  local_58[0x1c] = '\0';
  local_58[0x1d] = '\0';
  local_58[8] = '\0';
  local_58[9] = '\0';
  local_58[10] = '\0';
  local_58[0xb] = '\0';
  local_58[0xc] = '\0';
  local_58[0xd] = '\0';
  local_58[0xe] = '\0';
  local_58[0xf] = '\0';
  local_58[0x10] = '\0';
  local_58[0x11] = '\0';
  local_58[0x12] = '\0';
  local_58[0x13] = '\0';
  local_58[0x14] = '\0';
  local_58[0x15] = '\0';
  local_58[0x16] = '\0';
  local_58[0x17] = '\0';
  local_58[0] = '\0';
  local_58[1] = '\0';
  local_58[2] = '\0';
  local_58[3] = '\0';
  local_58[4] = '\0';
  local_58[5] = '\0';
  local_58[6] = '\0';
  local_58[7] = '\0';
  if (*param_4 == 0) {
    _printk(&DAT_0013ae7f,"display_rotation_show",*(undefined4 *)(tpd_cdev + 0x10));
    iVar3 = snprintf(local_58,0x1e,"display rotation: %d\n",(ulong)*(uint *)(lVar2 + 0x10));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_58,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010a954 set_display_rotation */

ulong set_display_rotation(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  undefined4 local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    *(undefined4 *)(lVar2 + 0x10) = local_4c;
    _printk(&DAT_001325e3,"set_display_rotation");
    pcVar4 = *(code **)(lVar2 + 0xe90);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10aa4c);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_4c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010aa5c tp_single_tap_read */

void tp_single_tap_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xeb8);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10aaf8);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_00134a19,"tp_single_tap_read",*(undefined4 *)(lVar2 + 0x44c));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x44c));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010ab50 tp_single_tap_write */

undefined8 tp_single_tap_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
  code *pcVar5;
  int local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar4 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar4 == 0) {
    bVar3 = local_2c != 0;
    local_2c = 0;
    if (bVar3) {
      local_2c = 5;
    }
    _printk(&DAT_00138090,"tp_single_tap_write");
    pcVar5 = *(code **)(lVar2 + 0xec0);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10ac18);
        (*pcVar5)();
      }
      (*pcVar5)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010ac28 tp_single_aod_read */

void tp_single_aod_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xec8);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10acc4);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_00134a19,"tp_single_aod_read",*(undefined4 *)(lVar2 + 0x450));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x450));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010ad1c tp_single_aod_write */

undefined8 tp_single_aod_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
  code *pcVar5;
  int local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar4 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar4 == 0) {
    bVar3 = local_2c != 0;
    local_2c = 0;
    if (bVar3) {
      local_2c = 5;
    }
    _printk(&DAT_00138090,"tp_single_aod_write");
    pcVar5 = *(code **)(lVar2 + 0xed0);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10ade4);
        (*pcVar5)();
      }
      (*pcVar5)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010adf4 tp_single_game_read */

void tp_single_game_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xed8);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10ae90);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_00134a19,"tp_single_game_read",*(undefined4 *)(lVar2 + 0x454));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x454));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010aee8 tp_single_game_write */

undefined8 tp_single_game_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
  code *pcVar5;
  int local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar4 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar4 == 0) {
    bVar3 = local_2c != 0;
    local_2c = 0;
    if (bVar3) {
      local_2c = 5;
    }
    _printk(&DAT_00138090,"tp_single_game_write");
    pcVar5 = *(code **)(lVar2 + 0xee0);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10afb0);
        (*pcVar5)();
      }
      (*pcVar5)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010afc0 get_tp_noise_show */

void get_tp_noise_show(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  code *pcVar4;
  long lVar5;
  char local_68 [32];
  long local_48;
  
  lVar1 = tpd_cdev;
  lVar5 = sp_el0;
  uVar3 = 0;
  local_48 = *(long *)(lVar5 + 0x710);
  local_68[0x18] = '\0';
  local_68[0x19] = '\0';
  local_68[0x1a] = '\0';
  local_68[0x1b] = '\0';
  local_68[0x1c] = '\0';
  local_68[0x1d] = '\0';
  local_68[8] = '\0';
  local_68[9] = '\0';
  local_68[10] = '\0';
  local_68[0xb] = '\0';
  local_68[0xc] = '\0';
  local_68[0xd] = '\0';
  local_68[0xe] = '\0';
  local_68[0xf] = '\0';
  local_68[0x10] = '\0';
  local_68[0x11] = '\0';
  local_68[0x12] = '\0';
  local_68[0x13] = '\0';
  local_68[0x14] = '\0';
  local_68[0x15] = '\0';
  local_68[0x16] = '\0';
  local_68[0x17] = '\0';
  local_68[0] = '\0';
  local_68[1] = '\0';
  local_68[2] = '\0';
  local_68[3] = '\0';
  local_68[4] = '\0';
  local_68[5] = '\0';
  local_68[6] = '\0';
  local_68[7] = '\0';
  if (*param_4 == 0) {
    mutex_lock(tpd_cdev + 0xc60);
    pcVar4 = *(code **)(lVar1 + 0xee8);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10b040);
        (*pcVar4)();
      }
      (*pcVar4)(lVar1);
    }
    if (*(undefined8 **)(lVar1 + 0xc58) == (undefined8 *)0x0) {
      lVar5 = 0;
    }
    else {
      iVar2 = snprintf(local_68,0x1e,"%zu\n",**(undefined8 **)(lVar1 + 0xc58));
      lVar5 = (long)iVar2;
      _printk(&DAT_0013572b,**(undefined8 **)(lVar1 + 0xc58));
    }
    mutex_unlock(lVar1 + 0xc60);
    uVar3 = simple_read_from_buffer(param_2,param_3,param_4,local_68,lVar5);
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 0010b0dc get_tp_noise_store */

undefined8 get_tp_noise_store(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xc60);
  lVar2 = *(long *)(lVar1 + 0xc58);
  if (lVar2 != 0) {
    if (*(long *)(lVar2 + 8) != 0) {
      vfree(*(long *)(lVar2 + 8));
      *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
      lVar2 = *(long *)(lVar1 + 0xc58);
    }
    kfree(lVar2);
    *(undefined8 *)(lVar1 + 0xc58) = 0;
  }
  *(undefined4 *)(lVar1 + 0x448) = 0;
  mutex_unlock(lVar1 + 0xc60);
  return param_3;
}



/* 0010b150 tp_edge_report_limit_read */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long tp_edge_report_limit_read
               (undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined8 *puVar4;
  ulong uVar5;
  
  lVar3 = tpd_cdev;
  if (*param_4 == 0) {
    puVar4 = (undefined8 *)__kmalloc_cache_noprof(_platform_driver_unregister,0xdc0,0x1000);
    if (puVar4 == (undefined8 *)0x0) {
      _printk(&DAT_00133d80);
      lVar3 = -0xc;
    }
    else {
      builtin_strncpy((char *)(puVar4 + 0xc),"algo_ope",8);
      builtin_strncpy((char *)(puVar4 + 0xd),"n:1 > ed",8);
      builtin_strncpy((char *)(puVar4 + 0xe),"ge_repor",8);
      builtin_strncpy((char *)(puVar4 + 0xf),"t_limit\n",8);
      builtin_strncpy((char *)(puVar4 + 10),"algo_ope",8);
      builtin_strncpy((char *)(puVar4 + 0xb),"n, echo ",8);
      puVar4[3] = 0x2323232323232323;
      *(char (*) [8])(puVar4 + 4) = (char  [8])0x23232323232323;
      builtin_strncpy((char *)(puVar4 + 0x15),"e_report",8);
      builtin_strncpy((char *)(puVar4 + 0x16),"_limit\n",8);
      puVar4[1] = 0x2323232323232323;
      puVar4[2] = 0x2323232323232323;
      builtin_strncpy((char *)(puVar4 + 0x10),"jitter_p",8);
      builtin_strncpy((char *)(puVar4 + 0x11),"ixel, ec",8);
      builtin_strncpy((char *)(puVar4 + 0x13),"r_pixel:",8);
      builtin_strncpy((char *)(puVar4 + 0x14),"10 > edg",8);
      builtin_strncpy((char *)(puVar4 + 0x12),"ho jitte",8);
      *puVar4 = 0x2323232323232323;
      *(undefined1 *)((long)puVar4 + 0x4f) = 10;
      builtin_strncpy((char *)((long)puVar4 + 199),"ho jitte",8);
      builtin_strncpy((char *)((long)puVar4 + 0xbf),"imer, ec",8);
      builtin_strncpy((char *)((long)puVar4 + 0xb7),"jitter_t",8);
      *(undefined8 *)((long)puVar4 + 0x2f) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x37) = 0x2323232323232323;
      builtin_strncpy((char *)((long)puVar4 + 0xe7),"t_limit\n",8);
      builtin_strncpy((char *)((long)puVar4 + 0xdf),"ge_repor",8);
      *(undefined8 *)((long)puVar4 + 0x3f) = 0x2323232323232323;
      builtin_strncpy((char *)((long)puVar4 + 0xd7),"100 > ed",8);
      builtin_strncpy((char *)((long)puVar4 + 0xcf),"r_timer:",8);
      builtin_strncpy((char *)((long)puVar4 + 0x47),"#######\n",8);
      builtin_strncpy((char *)((long)puVar4 + 0xff),"o click_",8);
      builtin_strncpy((char *)((long)puVar4 + 0xf7),"xel, ech",8);
      builtin_strncpy((char *)((long)puVar4 + 0xef),"click_pi",8);
      builtin_strncpy((char *)((long)puVar4 + 0x11c),"t_limit\n",8);
      *(undefined8 *)((long)puVar4 + 0x27) = 0x2323232323232323;
      *(undefined1 *)((long)puVar4 + 0x223) = 10;
      builtin_strncpy((char *)((long)puVar4 + 0x10f)," > edge_",8);
      builtin_strncpy((char *)((long)puVar4 + 0x117),"report_l",8);
      builtin_strncpy((char *)((long)puVar4 + 0x107),"pixel:10",8);
      *(undefined4 *)((long)puVar4 + 0x15c) = 0xa74696d;
      builtin_strncpy((char *)((long)puVar4 + 0x124),"long_pre",8);
      builtin_strncpy((char *)((long)puVar4 + 300),"ss_open,",8);
      builtin_strncpy((char *)((long)puVar4 + 0x14c),"> edge_r",8);
      builtin_strncpy((char *)((long)puVar4 + 0x154),"eport_li",8);
      builtin_strncpy((char *)((long)puVar4 + 0x134)," echo lo",8);
      builtin_strncpy((char *)((long)puVar4 + 0x13c),"ng_press",8);
      builtin_strncpy((char *)((long)puVar4 + 0x144),"_open:1 ",8);
      builtin_strncpy((char *)(puVar4 + 0x2e),", echo l",8);
      builtin_strncpy((char *)(puVar4 + 0x2f),"ong_pres",8);
      builtin_strncpy((char *)(puVar4 + 0x2c),"long_pre",8);
      builtin_strncpy((char *)(puVar4 + 0x2d),"ss_timer",8);
      builtin_strncpy((char *)(puVar4 + 0x32),"ge_repor",8);
      builtin_strncpy((char *)(puVar4 + 0x33),"t_limit\n",8);
      builtin_strncpy((char *)(puVar4 + 0x30),"s_timer:",8);
      builtin_strncpy((char *)(puVar4 + 0x31),"500 > ed",8);
      *(undefined4 *)(puVar4 + 0x3b) = 0xa7469;
      builtin_strncpy((char *)(puVar4 + 0x34),"pixel li",8);
      builtin_strncpy((char *)(puVar4 + 0x35),"mit leve",8);
      builtin_strncpy((char *)(puVar4 + 0x39)," edge_re",8);
      builtin_strncpy((char *)(puVar4 + 0x3a),"port_lim",8);
      builtin_strncpy((char *)(puVar4 + 0x36),"l,user s",8);
      builtin_strncpy((char *)(puVar4 + 0x37),"etting. ",8);
      builtin_strncpy((char *)(puVar4 + 0x38),"echo 5 >",8);
      builtin_strncpy((char *)((long)puVar4 + 0x1eb),", echo l",8);
      builtin_strncpy((char *)((long)puVar4 + 499),"ong_pres",8);
      builtin_strncpy((char *)((long)puVar4 + 0x1db),"long_pre",8);
      builtin_strncpy((char *)((long)puVar4 + 0x1e3),"ss_pixel",8);
      builtin_strncpy((char *)((long)puVar4 + 0x213),"ge_repor",8);
      builtin_strncpy((char *)((long)puVar4 + 0x21b),"t_limit\n",8);
      builtin_strncpy((char *)((long)puVar4 + 0x1fb),"s_pixel:",8);
      builtin_strncpy((char *)((long)puVar4 + 0x203),"10,10,20",8);
      builtin_strncpy((char *)((long)puVar4 + 0x20b),",20 > ed",8);
      *(undefined8 *)((long)puVar4 + 0x23c) = 0x2323232323232323;
      *(char (*) [8])((long)puVar4 + 0x244) = (char  [8])0x23232323232323;
      *(undefined8 *)((long)puVar4 + 0x22c) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x234) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x224) = 0x2323232323232323;
      *(undefined2 *)((long)puVar4 + 0x273) = 10;
      *(undefined8 *)((long)puVar4 + 0x25b) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x263) = 0x2323232323232323;
      builtin_strncpy((char *)((long)puVar4 + 0x26b),"#######\n",8);
      *(undefined8 *)((long)puVar4 + 0x24b) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0x253) = 0x2323232323232323;
      iVar2 = snprintf((char *)((long)puVar4 + 0x274),0xd8c,"algo_open:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x1b));
      lVar1 = (long)iVar2 + 0x274;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0xd8c - (long)iVar2,"jitter_pixel:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x24));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"jitter_timer:%5u\n",
                       (ulong)*(ushort *)(lVar3 + 0x3e));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"click_pixel:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x26));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"long_press_open:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x25));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"long_press_timer:%5u\n",
                       (ulong)*(ushort *)(lVar3 + 0x3c));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"pixel limit level:%5u\n",
                       (ulong)*(byte *)(lVar3 + 0x38));
      lVar1 = lVar1 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar1),0x1000 - lVar1,"click_pixel width:");
      uVar5 = lVar1 + iVar2;
      if (uVar5 < 0xffb) {
        iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                         (ulong)*(byte *)(lVar3 + 0x27));
        uVar5 = uVar5 + (long)iVar2;
        if (uVar5 < 0xffb) {
          iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                           (ulong)*(byte *)(lVar3 + 0x28));
          uVar5 = uVar5 + (long)iVar2;
          if (uVar5 < 0xffb) {
            iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                             (ulong)*(byte *)(lVar3 + 0x29));
            uVar5 = uVar5 + (long)iVar2;
            if (uVar5 < 0xffb) {
              iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                               (ulong)*(byte *)(lVar3 + 0x2a));
              uVar5 = uVar5 + (long)iVar2;
            }
          }
        }
      }
      iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"\n long_press_pixel:");
      uVar5 = uVar5 + (long)iVar2;
      if (uVar5 < 0xffb) {
        iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                         (ulong)*(byte *)(lVar3 + 0x34));
        uVar5 = uVar5 + (long)iVar2;
        if (uVar5 < 0xffb) {
          iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                           (ulong)*(byte *)(lVar3 + 0x35));
          uVar5 = uVar5 + (long)iVar2;
          if (uVar5 < 0xffb) {
            iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                             (ulong)*(byte *)(lVar3 + 0x36));
            uVar5 = uVar5 + (long)iVar2;
            if (uVar5 < 0xffb) {
              iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"%5u",
                               (ulong)*(byte *)(lVar3 + 0x37));
              uVar5 = uVar5 + (long)iVar2;
            }
          }
        }
      }
      iVar2 = snprintf((char *)((long)puVar4 + uVar5),0x1000 - uVar5,"\n");
      lVar3 = uVar5 + (long)iVar2;
      simple_read_from_buffer(param_2,param_3,param_4,puVar4,lVar3);
      kfree(puVar4);
    }
  }
  else {
    lVar3 = 0;
  }
  return lVar3;
}



/* 0010b690 tp_edge_report_limit_write */

void tp_edge_report_limit_write(undefined8 param_1,long param_2,ulong param_3)

{
  undefined1 uVar1;
  ushort uVar2;
  long lVar3;
  bool bVar4;
  int iVar5;
  long lVar6;
  char *pcVar7;
  ulong uVar8;
  uint uVar9;
  ulong uVar10;
  undefined8 local_c0;
  char *local_b8;
  char local_b0 [104];
  long local_48;
  
  lVar3 = tpd_cdev;
  lVar6 = sp_el0;
  local_48 = *(long *)(lVar6 + 0x710);
  local_b0[0x60] = '\0';
  local_b0[0x61] = '\0';
  local_b0[0x62] = '\0';
  local_b0[99] = '\0';
  if (99 < param_3) {
    param_3 = 100;
  }
  local_b0[0x50] = '\0';
  local_b0[0x51] = '\0';
  local_b0[0x52] = '\0';
  local_b0[0x53] = '\0';
  local_b0[0x54] = '\0';
  local_b0[0x55] = '\0';
  local_b0[0x56] = '\0';
  local_b0[0x57] = '\0';
  local_b0[0x58] = '\0';
  local_b0[0x59] = '\0';
  local_b0[0x5a] = '\0';
  local_b0[0x5b] = '\0';
  local_b0[0x5c] = '\0';
  local_b0[0x5d] = '\0';
  local_b0[0x5e] = '\0';
  local_b0[0x5f] = '\0';
  local_b0[0x40] = '\0';
  local_b0[0x41] = '\0';
  local_b0[0x42] = '\0';
  local_b0[0x43] = '\0';
  local_b0[0x44] = '\0';
  local_b0[0x45] = '\0';
  local_b0[0x46] = '\0';
  local_b0[0x47] = '\0';
  local_b0[0x48] = '\0';
  local_b0[0x49] = '\0';
  local_b0[0x4a] = '\0';
  local_b0[0x4b] = '\0';
  local_b0[0x4c] = '\0';
  local_b0[0x4d] = '\0';
  local_b0[0x4e] = '\0';
  local_b0[0x4f] = '\0';
  local_b0[0x30] = '\0';
  local_b0[0x31] = '\0';
  local_b0[0x32] = '\0';
  local_b0[0x33] = '\0';
  local_b0[0x34] = '\0';
  local_b0[0x35] = '\0';
  local_b0[0x36] = '\0';
  local_b0[0x37] = '\0';
  local_b0[0x38] = '\0';
  local_b0[0x39] = '\0';
  local_b0[0x3a] = '\0';
  local_b0[0x3b] = '\0';
  local_b0[0x3c] = '\0';
  local_b0[0x3d] = '\0';
  local_b0[0x3e] = '\0';
  local_b0[0x3f] = '\0';
  local_b0[0x20] = '\0';
  local_b0[0x21] = '\0';
  local_b0[0x22] = '\0';
  local_b0[0x23] = '\0';
  local_b0[0x24] = '\0';
  local_b0[0x25] = '\0';
  local_b0[0x26] = '\0';
  local_b0[0x27] = '\0';
  local_b0[0x28] = '\0';
  local_b0[0x29] = '\0';
  local_b0[0x2a] = '\0';
  local_b0[0x2b] = '\0';
  local_b0[0x2c] = '\0';
  local_b0[0x2d] = '\0';
  local_b0[0x2e] = '\0';
  local_b0[0x2f] = '\0';
  local_b0[0x10] = '\0';
  local_b0[0x11] = '\0';
  local_b0[0x12] = '\0';
  local_b0[0x13] = '\0';
  local_b0[0x14] = '\0';
  local_b0[0x15] = '\0';
  local_b0[0x16] = '\0';
  local_b0[0x17] = '\0';
  local_b0[0x18] = '\0';
  local_b0[0x19] = '\0';
  local_b0[0x1a] = '\0';
  local_b0[0x1b] = '\0';
  local_b0[0x1c] = '\0';
  local_b0[0x1d] = '\0';
  local_b0[0x1e] = '\0';
  local_b0[0x1f] = '\0';
  local_b0[0] = '\0';
  local_b0[1] = '\0';
  local_b0[2] = '\0';
  local_b0[3] = '\0';
  local_b0[4] = '\0';
  local_b0[5] = '\0';
  local_b0[6] = '\0';
  local_b0[7] = '\0';
  local_b0[8] = '\0';
  local_b0[9] = '\0';
  local_b0[10] = '\0';
  local_b0[0xb] = '\0';
  local_b0[0xc] = '\0';
  local_b0[0xd] = '\0';
  local_b0[0xe] = '\0';
  local_b0[0xf] = '\0';
  local_c0 = 0;
  if (param_2 != 0) {
    __check_object_size(local_b0,param_3,0);
    lVar6 = _inline_copy_from_user(local_b0,param_2,param_3);
    if (lVar6 != 0) {
      _printk(&DAT_001344ed);
      uVar8 = 0xffffffffffffffea;
      goto LAB_0010b86c;
    }
  }
  iVar5 = get_tp_algo_item_id(local_b0);
  uVar8 = param_3;
  if (iVar5 < 0) {
    iVar5 = kstrtouint_from_user(param_2,param_3,10,&local_c0);
    uVar8 = 0xffffffffffffffea;
    if (iVar5 == 0) {
      if ((uint)local_c0 < 0xb) {
        uVar2 = *(ushort *)(lVar3 + 0x442);
        *(char *)(lVar3 + 0x38) = (char)local_c0;
        if ((uint)local_c0 < 6) {
          uVar9 = ((uint)local_c0 * uVar2 * 7) / 1000;
        }
        else {
          uVar9 = ((uint)uVar2 * 0x23) / 1000 + ((uint)local_c0 + 0xfffb) * ((uVar2 >> 1) / 0x7d);
        }
        *(short *)(lVar3 + 0x2c) = (short)uVar9;
        *(undefined2 *)(lVar3 + 0x2e) = 0;
        _printk(&DAT_001331b8,local_c0 & 0xffffffff,uVar9 & 0xffff,0);
        uVar8 = param_3;
      }
    }
    goto LAB_0010b86c;
  }
  pcVar7 = strchr(local_b0,0x3a);
  pcVar7 = pcVar7 + 1;
  local_b8 = pcVar7;
  _printk(&DAT_00132047,pcVar7);
  if (iVar5 < 3) {
    if (iVar5 == 0) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        bVar4 = local_c0._4_4_ != 0;
        local_c0 = (ulong)CONCAT14(bVar4,(uint)local_c0);
        *(bool *)(lVar3 + 0x1b) = bVar4;
        _printk(&DAT_001380ba);
      }
      goto LAB_0010b86c;
    }
    if (iVar5 == 1) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        *(char *)(lVar3 + 0x24) = (char)(local_c0 >> 0x20);
        _printk(&DAT_0013aa4c,local_c0._4_4_ & 0xff);
      }
      goto LAB_0010b86c;
    }
    if (iVar5 == 2) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        *(short *)(lVar3 + 0x3e) = (short)(local_c0 >> 0x20);
        _printk(&DAT_00133d9d,local_c0._4_4_ & 0xffff);
      }
      goto LAB_0010b86c;
    }
  }
  else if (iVar5 < 5) {
    if (iVar5 == 3) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        *(char *)(lVar3 + 0x26) = (char)(local_c0 >> 0x20);
        _printk(&DAT_00139996,local_c0._4_4_ & 0xff);
        uVar1 = *(undefined1 *)(lVar3 + 0x26);
        *(undefined1 *)(lVar3 + 0x27) = uVar1;
        *(undefined1 *)(lVar3 + 0x28) = uVar1;
        *(undefined1 *)(lVar3 + 0x29) = uVar1;
        *(undefined1 *)(lVar3 + 0x2a) = uVar1;
      }
      goto LAB_0010b86c;
    }
    if (iVar5 == 4) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        bVar4 = local_c0._4_4_ != 0;
        local_c0 = (ulong)CONCAT14(bVar4,(uint)local_c0);
        *(bool *)(lVar3 + 0x25) = bVar4;
        _printk(&DAT_00138d08);
      }
      goto LAB_0010b86c;
    }
  }
  else {
    if (iVar5 == 5) {
      iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
      if (iVar5 == 0) {
        *(short *)(lVar3 + 0x3c) = (short)(local_c0 >> 0x20);
        _printk(&DAT_001380ba,local_c0._4_4_ & 0xffff);
      }
      goto LAB_0010b86c;
    }
    if (iVar5 == 6) {
      uVar10 = 0;
      do {
        pcVar7 = strsep(&local_b8,",");
        if (pcVar7 == (char *)0x0) break;
        iVar5 = kstrtouint(pcVar7,10,(long)&local_c0 + 4);
        if (iVar5 == 0) {
          *(char *)(lVar3 + 0x34 + uVar10) = (char)(local_c0 >> 0x20);
          _printk(&DAT_0013d903,(uint)uVar10 & 0xffff,local_c0._4_4_ & 0xff);
          uVar10 = uVar10 + 1;
        }
      } while (uVar10 < 4);
      goto LAB_0010b86c;
    }
  }
  _printk(&DAT_0013c493);
LAB_0010b86c:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}



/* 0010ba4c get_one_key */

void get_one_key(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xef0);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10bae8);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"get_one_key",*(undefined4 *)(lVar2 + 0x458));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x458));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010bb40 set_one_key */

undefined8 set_one_key(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00138090,"set_one_key");
    pcVar4 = *(code **)(lVar2 + 0xef8);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10bc04);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010bc14 get_play_game */

void get_play_game(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xf00);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10bcb0);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"get_play_game",*(undefined4 *)(lVar2 + 0x45c));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x45c));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010bd08 set_play_game */

undefined8 set_play_game(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    _printk(&DAT_00138090,"set_play_game",local_2c);
    pcVar4 = *(code **)(lVar2 + 0xf08);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10bdc0);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010bdd0 get_tp_report_rate */

void get_tp_report_rate(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xf18);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10be6c);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"get_tp_report_rate",*(undefined4 *)(lVar2 + 0x464));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x464));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010bec4 set_tp_report_rate */

undefined8 set_tp_report_rate(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    _printk(&DAT_00138090,"set_tp_report_rate",local_2c);
    pcVar4 = *(code **)(lVar2 + 0xf10);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10bf7c);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010bf8c get_follow_hand_level */

void get_follow_hand_level(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xf28);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10c028);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"get_follow_hand_level",*(undefined4 *)(lVar2 + 0x468));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x468));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010c080 set_follow_hand_level */

undefined8 set_follow_hand_level(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    _printk(&DAT_00138090,"set_follow_hand_level",local_2c);
    pcVar4 = *(code **)(lVar2 + 0xf20);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10c138);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010c148 get_stability_level */

void get_stability_level(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xf38);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10c1e4);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"get_stability_level",*(undefined4 *)(lVar2 + 0x46c));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x46c));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010c23c set_stability_level */

undefined8 set_stability_level(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  undefined4 local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    _printk(&DAT_00138090,"set_stability_level",local_2c);
    pcVar4 = *(code **)(lVar2 + 0xf30);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10c2f4);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010c304 tp_sensibility_level_read */

void tp_sensibility_level_read
               (undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xf60);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10c3a0);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013deb7,"tp_sensibility_level_read",*(undefined1 *)(lVar2 + 0x40));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(byte *)(lVar2 + 0x40));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010c3f8 tp_sensibility_level_write */

ulong tp_sensibility_level_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar3 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar3 == 0) && (iVar3 = kstrtouint(&local_48,0,&local_4c), iVar3 == 0)) {
    *(char *)(lVar2 + 0x40) = (char)local_4c;
    _printk(&DAT_00133dba,"tp_sensibility_level_write",local_4c & 0xff);
    pcVar4 = *(code **)(lVar2 + 0xf68);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != -0x1e29c23f) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10c4f4);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_4c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010c504 tp_game_partition_read */

void tp_game_partition_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char acStack_448 [1024];
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  memset(acStack_448,0,0x400);
  lVar1 = tpd_cdev;
  if (*param_4 == 0) {
    _printk(&DAT_0013c4ab,"tp_game_partition_read",tpd_cdev + 0x41);
    iVar2 = snprintf(acStack_448,0x400,"%s\n",lVar1 + 0x41);
    uVar3 = simple_read_from_buffer(param_2,param_3,param_4,acStack_448,(long)iVar2);
  }
  else {
    uVar3 = 0;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 0010c5e0 tp_game_partition_write */

ulong tp_game_partition_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  code *pcVar2;
  long lVar3;
  undefined *puVar4;
  undefined1 auStack_438 [1024];
  long local_38;
  
  lVar1 = tpd_cdev;
  lVar3 = sp_el0;
  local_38 = *(long *)(lVar3 + 0x710);
  _printk(&DAT_00139f5b,"tp_game_partition_write",0x400,param_3);
  if (param_3 < 0x401) {
    memset(auStack_438,0,0x400);
    __check_object_size(auStack_438,param_3,0);
    lVar3 = _inline_copy_from_user(auStack_438,param_2,param_3);
    if (lVar3 == 0) {
      if (*(int *)(*(code **)(lVar1 + 0xf50) + -4) != 0x64f25fb2) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x10c69c);
        (*pcVar2)();
      }
      (**(code **)(lVar1 + 0xf50))(lVar1,auStack_438);
      snprintf((char *)(lVar1 + 0x41),0x400,"%s\n",auStack_438);
      _printk(&DAT_00132072,"tp_game_partition_write",lVar1 + 0x41);
      goto LAB_0010c6ec;
    }
    puVar4 = &DAT_00135dcd;
  }
  else {
    puVar4 = &DAT_00139f70;
  }
  _printk(puVar4,"tp_game_partition_write");
  param_3 = 0xffffffffffffffea;
LAB_0010c6ec:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010c724 tp_pen_only_read */

void tp_pen_only_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xf80);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10c7c0);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_00136436,"tp_pen_only_read",*(undefined1 *)(lVar2 + 0x441));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(byte *)(lVar2 + 0x441));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010c818 tp_pen_only_write */

ulong tp_pen_only_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  long lVar2;
  bool bVar3;
  int iVar4;
  code *pcVar5;
  uint local_4c;
  undefined8 local_48;
  undefined2 local_40;
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_4c = 0;
  if (8 < param_3) {
    param_3 = 9;
  }
  local_40 = 0;
  local_48 = 0;
  __check_object_size(&local_48,param_3,0);
  iVar4 = _inline_copy_from_user(&local_48,param_2,param_3);
  if ((iVar4 == 0) && (iVar4 = kstrtouint(&local_48,0,&local_4c), iVar4 == 0)) {
    bVar3 = local_4c != 0;
    local_4c = (uint)bVar3;
    *(bool *)(lVar2 + 0x441) = bVar3;
    _printk(&DAT_0013def1,"tp_pen_only_write");
    pcVar5 = *(code **)(lVar2 + 0xf88);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != -0x1e29c23f) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10c91c);
        (*pcVar5)();
      }
      (*pcVar5)(lVar2,local_4c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010c92c get_finger_lock_flag */

void get_finger_lock_flag(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    _printk(&DAT_0013ae7f,"get_finger_lock_flag",*(undefined4 *)(tpd_cdev + 0x474));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x474));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010ca00 set_finger_lock_flag */

undefined8 set_finger_lock_flag(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00138090,"set_finger_lock_flag");
    *(uint *)(lVar2 + 0x474) = local_2c;
    if (local_2c != 0) {
      if ((char)DAT_00131c40 == '\x01') {
        complete(&DAT_00131c20);
      }
      if (*(int *)(lVar2 + 0x458) == 0) {
        msleep(100);
        report_ufp_uevent(0);
      }
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010cae8 tp_self_test_read */

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



/* 0010cc50 tp_self_test_write */

undefined8 tp_self_test_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  code *pcVar3;
  
  lVar1 = tpd_cdev;
  iVar2 = tp_alloc_tp_firmware_data(0x100000);
  if (iVar2 == 0) {
    pcVar3 = *(code **)(lVar1 + 4000);
    if (pcVar3 != (code *)0x0) {
      if (*(int *)(pcVar3 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x10cca0);
        (*pcVar3)();
      }
      (*pcVar3)(lVar1);
    }
    lVar1 = tpd_cdev;
    **(ulong **)(tpd_cdev + 0xc58) = (ulong)*(uint *)(tpd_cdev + 0x448);
    *(undefined4 *)(lVar1 + 0x448) = 0;
  }
  else {
    _printk(&DAT_00135dfd);
    param_3 = 0xfffffffffffffff4;
  }
  return param_3;
}



/* 0010cce8 tp_palm_mode_read */

void tp_palm_mode_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xfa8);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10cd84);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_00134a19,"tp_palm_mode_read",*(undefined4 *)(lVar2 + 0x478));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x478));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010cddc tp_palm_mode_write */

undefined8 tp_palm_mode_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00138090,"tp_palm_mode_write");
    pcVar4 = *(code **)(lVar2 + 0xfb0);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10cea0);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010ceb0 tp_fold_state_read */

void tp_fold_state_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xfb8);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10cf4c);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_00134a19,"tp_fold_state_read",*(undefined4 *)(lVar2 + 0x47c));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x47c));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010cfa4 tp_fold_state_write */

undefined8 tp_fold_state_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00138090,"tp_fold_state_write");
    pcVar4 = *(code **)(lVar2 + 0xfc0);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10d068);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010d078 get_fake_sleep */

void get_fake_sleep(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xfc8);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10d114);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"get_fake_sleep",*(undefined4 *)(lVar2 + 0x480));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x480));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010d16c set_fake_sleep */

undefined8 set_fake_sleep(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00138090,"set_fake_sleep");
    pcVar4 = *(code **)(lVar2 + 0xfd0);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10d230);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010d240 get_screen_off_awake */

void get_screen_off_awake(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0xfd8);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10d2dc);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"get_screen_off_awake",*(undefined4 *)(lVar2 + 0x484));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x484));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010d334 set_screen_off_awake */

undefined8 set_screen_off_awake(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00138090,"set_screen_off_awake");
    pcVar4 = *(code **)(lVar2 + 0xfe0);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10d3f8);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010d408 tp_zlog_debug_read */

void tp_zlog_debug_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  undefined8 uVar2;
  char local_50 [56];
  long local_18;
  
  lVar1 = sp_el0;
  uVar2 = 0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_50[0x2c] = '\0';
  local_50[0x2d] = '\0';
  local_50[0x2e] = '\0';
  local_50[0x2f] = '\0';
  local_50[0x30] = '\0';
  local_50[0x31] = '\0';
  local_50[0x24] = '\0';
  local_50[0x25] = '\0';
  local_50[0x26] = '\0';
  local_50[0x27] = '\0';
  local_50[0x28] = '\0';
  local_50[0x29] = '\0';
  local_50[0x2a] = '\0';
  local_50[0x2b] = '\0';
  local_50[0x1c] = '\0';
  local_50[0x1d] = '\0';
  local_50[0x1e] = '\0';
  local_50[0x1f] = '\0';
  local_50[0x20] = '\0';
  local_50[0x21] = '\0';
  local_50[0x22] = '\0';
  local_50[0x23] = '\0';
  local_50[0x14] = '\0';
  local_50[0x15] = '\0';
  local_50[0x16] = '\0';
  local_50[0x17] = '\0';
  local_50[0x18] = '\0';
  local_50[0x19] = '\0';
  local_50[0x1a] = '\0';
  local_50[0x1b] = '\0';
  local_50[0xc] = '\0';
  local_50[0xd] = '\0';
  local_50[0xe] = '\0';
  local_50[0xf] = '\0';
  local_50[0x10] = '\0';
  local_50[0x11] = '\0';
  local_50[0x12] = '\0';
  local_50[0x13] = '\0';
  if (*param_4 == 0) {
    builtin_strncpy(local_50 + 8,"use",4);
    builtin_strncpy(local_50,"this no ",8);
    uVar2 = simple_read_from_buffer(param_2,param_3,param_4,local_50,0xb);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 0010d4a8 tp_zlog_debug_write */

ulong tp_zlog_debug_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  long lVar1;
  int iVar2;
  uint local_3c;
  undefined8 local_38;
  undefined2 local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  if (8 < param_3) {
    param_3 = 9;
  }
  local_3c = 0;
  local_30 = 0;
  local_38 = 0;
  __check_object_size(&local_38,param_3,0);
  iVar2 = _inline_copy_from_user(&local_38,param_2,param_3);
  if ((iVar2 == 0) && (iVar2 = kstrtouint(&local_38,0,&local_3c), iVar2 == 0)) {
    if ((local_3c < 0x10) && ((1 << (ulong)(local_3c & 0x1f) & 0xee66U) != 0)) {
      tpd_zlog_record_notify();
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010d57c ghost_debug_read */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

long ghost_debug_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined8 *puVar4;
  
  lVar1 = tpd_cdev;
  if (*param_4 == 0) {
    puVar4 = (undefined8 *)__kmalloc_cache_noprof(_platform_driver_unregister,0xdc0,0x1000);
    if (puVar4 == (undefined8 *)0x0) {
      _printk(&DAT_00133d80);
      lVar3 = -0xc;
    }
    else {
      _printk(&DAT_00133d35,*(undefined1 *)(lVar1 + 0x491));
      _printk(&DAT_00136921,*(undefined1 *)(lVar1 + 0x492));
      _printk(&DAT_00133d5a,*(undefined1 *)(lVar1 + 0x493));
      _printk(&DAT_0013440b,*(undefined1 *)(lVar1 + 0x494));
      _printk(&DAT_0013a419,*(undefined1 *)(lVar1 + 0x495));
      _printk(&DAT_00139922,*(undefined4 *)(lVar1 + 0x498));
      _printk(&DAT_0013700e,*(undefined4 *)(lVar1 + 0x49c));
      _printk(&DAT_0013258f,*(undefined4 *)(lVar1 + 0x4a0));
      _printk(&DAT_00134430,*(undefined4 *)(lVar1 + 0x4a4));
      *(undefined2 *)(puVar4 + 5) = 10;
      *(undefined2 *)(puVar4 + 0x1a) = 10;
      builtin_strncpy((char *)((long)puVar4 + 0x81),"nore_cor",8);
      builtin_strncpy((char *)((long)puVar4 + 0x89),"ner_x,ig",8);
      builtin_strncpy((char *)((long)puVar4 + 0x91),"nore_cor",8);
      builtin_strncpy((char *)((long)puVar4 + 0x29),"single_t",8);
      builtin_strncpy((char *)((long)puVar4 + 0x31),"ime,mult",8);
      builtin_strncpy((char *)((long)puVar4 + 0x61),"me,ignor",8);
      builtin_strncpy((char *)((long)puVar4 + 0x69),"e_id,ign",8);
      builtin_strncpy((char *)((long)puVar4 + 0x39),"i_time,s",8);
      builtin_strncpy((char *)((long)puVar4 + 0x79),"_area,ig",8);
      builtin_strncpy((char *)((long)puVar4 + 0x71),"ore_edge",8);
      *(undefined2 *)((long)puVar4 + 0xf9) = 10;
      builtin_strncpy((char *)((long)puVar4 + 0x41),"ingle_co",8);
      builtin_strncpy((char *)((long)puVar4 + 0x49),"unt,mult",8);
      builtin_strncpy((char *)((long)puVar4 + 0x51),"i_count,",8);
      builtin_strncpy((char *)((long)puVar4 + 0x59),"start_ti",8);
      puVar4[2] = 0x2323232323232323;
      puVar4[3] = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0xe1) = 0x2323232323232323;
      builtin_strncpy((char *)(puVar4 + 0x17),",801,801",8);
      builtin_strncpy((char *)(puVar4 + 0x18)," > ghost",8);
      builtin_strncpy((char *)(puVar4 + 0x19),"_debug \n",8);
      builtin_strncpy((char *)(puVar4 + 4),"#######\n",8);
      *(undefined8 *)((long)puVar4 + 0xe9) = 0x2323232323232323;
      builtin_strncpy((char *)(puVar4 + 0x13),"rner_y \n",8);
      builtin_strncpy((char *)(puVar4 + 0x14),"echo 25,",8);
      builtin_strncpy((char *)(puVar4 + 0x15),"20,5,8,3",8);
      builtin_strncpy((char *)(puVar4 + 0x16),"5,9,3201",8);
      builtin_strncpy((char *)((long)puVar4 + 0xf1),"#######\n",8);
      *puVar4 = 0x2323232323232323;
      puVar4[1] = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0xd9) = 0x2323232323232323;
      *(undefined8 *)((long)puVar4 + 0xd1) = 0x2323232323232323;
      iVar2 = snprintf((char *)((long)puVar4 + 0xfa),0x1000,"ghost_check_single_time is %d\n",
                       (ulong)*(byte *)(lVar1 + 0x491));
      lVar3 = (long)iVar2 + 0xfa;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0xf06 - (long)iVar2,
                       "ghost_check_multi_time is %d\n",(ulong)*(byte *)(lVar1 + 0x492));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_single_count is %d\n",(ulong)*(byte *)(lVar1 + 0x493));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_multi_count is %d\n",(ulong)*(byte *)(lVar1 + 0x494));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_start_time is %d\n",(ulong)*(byte *)(lVar1 + 0x495));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,"ghost_check_ignore_id is %d\n"
                       ,(ulong)*(uint *)(lVar1 + 0x498));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_ignore_edge_area is %d\n",(ulong)*(uint *)(lVar1 + 0x49c));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_ignore_corner_x is %d\n",(ulong)*(uint *)(lVar1 + 0x4a0));
      lVar3 = lVar3 + iVar2;
      iVar2 = snprintf((char *)((long)puVar4 + lVar3),0x1000 - lVar3,
                       "ghost_check_ignore_corner_y is %d\n",(ulong)*(uint *)(lVar1 + 0x4a4));
      lVar3 = lVar3 + iVar2;
      simple_read_from_buffer(param_2,param_3,param_4,puVar4,lVar3);
      kfree(puVar4);
    }
  }
  else {
    lVar3 = 0;
  }
  return lVar3;
}



/* 0010d8d0 ghost_debug_write */

ulong ghost_debug_write(undefined8 param_1,long param_2,ulong param_3)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  char *pcVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  undefined1 uVar10;
  undefined1 uVar11;
  undefined1 uVar12;
  undefined1 uVar13;
  undefined1 uVar14;
  undefined4 local_e4;
  char *local_e0;
  undefined8 local_d8;
  undefined8 local_d0;
  undefined8 local_c8;
  undefined8 local_c0;
  undefined8 uStack_b8;
  char local_b0 [104];
  long local_48;
  
  lVar1 = tpd_cdev;
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  local_b0[0x60] = '\0';
  local_b0[0x61] = '\0';
  local_b0[0x62] = '\0';
  local_b0[99] = '\0';
  if (99 < param_3) {
    param_3 = 100;
  }
  local_b0[0x50] = '\0';
  local_b0[0x51] = '\0';
  local_b0[0x52] = '\0';
  local_b0[0x53] = '\0';
  local_b0[0x54] = '\0';
  local_b0[0x55] = '\0';
  local_b0[0x56] = '\0';
  local_b0[0x57] = '\0';
  local_b0[0x58] = '\0';
  local_b0[0x59] = '\0';
  local_b0[0x5a] = '\0';
  local_b0[0x5b] = '\0';
  local_b0[0x5c] = '\0';
  local_b0[0x5d] = '\0';
  local_b0[0x5e] = '\0';
  local_b0[0x5f] = '\0';
  local_b0[0x40] = '\0';
  local_b0[0x41] = '\0';
  local_b0[0x42] = '\0';
  local_b0[0x43] = '\0';
  local_b0[0x44] = '\0';
  local_b0[0x45] = '\0';
  local_b0[0x46] = '\0';
  local_b0[0x47] = '\0';
  local_b0[0x48] = '\0';
  local_b0[0x49] = '\0';
  local_b0[0x4a] = '\0';
  local_b0[0x4b] = '\0';
  local_b0[0x4c] = '\0';
  local_b0[0x4d] = '\0';
  local_b0[0x4e] = '\0';
  local_b0[0x4f] = '\0';
  local_b0[0x30] = '\0';
  local_b0[0x31] = '\0';
  local_b0[0x32] = '\0';
  local_b0[0x33] = '\0';
  local_b0[0x34] = '\0';
  local_b0[0x35] = '\0';
  local_b0[0x36] = '\0';
  local_b0[0x37] = '\0';
  local_b0[0x38] = '\0';
  local_b0[0x39] = '\0';
  local_b0[0x3a] = '\0';
  local_b0[0x3b] = '\0';
  local_b0[0x3c] = '\0';
  local_b0[0x3d] = '\0';
  local_b0[0x3e] = '\0';
  local_b0[0x3f] = '\0';
  local_b0[0x20] = '\0';
  local_b0[0x21] = '\0';
  local_b0[0x22] = '\0';
  local_b0[0x23] = '\0';
  local_b0[0x24] = '\0';
  local_b0[0x25] = '\0';
  local_b0[0x26] = '\0';
  local_b0[0x27] = '\0';
  local_b0[0x28] = '\0';
  local_b0[0x29] = '\0';
  local_b0[0x2a] = '\0';
  local_b0[0x2b] = '\0';
  local_b0[0x2c] = '\0';
  local_b0[0x2d] = '\0';
  local_b0[0x2e] = '\0';
  local_b0[0x2f] = '\0';
  local_b0[0x10] = '\0';
  local_b0[0x11] = '\0';
  local_b0[0x12] = '\0';
  local_b0[0x13] = '\0';
  local_b0[0x14] = '\0';
  local_b0[0x15] = '\0';
  local_b0[0x16] = '\0';
  local_b0[0x17] = '\0';
  local_b0[0x18] = '\0';
  local_b0[0x19] = '\0';
  local_b0[0x1a] = '\0';
  local_b0[0x1b] = '\0';
  local_b0[0x1c] = '\0';
  local_b0[0x1d] = '\0';
  local_b0[0x1e] = '\0';
  local_b0[0x1f] = '\0';
  local_b0[0] = '\0';
  local_b0[1] = '\0';
  local_b0[2] = '\0';
  local_b0[3] = '\0';
  local_b0[4] = '\0';
  local_b0[5] = '\0';
  local_b0[6] = '\0';
  local_b0[7] = '\0';
  local_b0[8] = '\0';
  local_b0[9] = '\0';
  local_b0[10] = '\0';
  local_b0[0xb] = '\0';
  local_b0[0xc] = '\0';
  local_b0[0xd] = '\0';
  local_b0[0xe] = '\0';
  local_b0[0xf] = '\0';
  local_e4 = 0;
  local_c0 = 0;
  uStack_b8 = 0;
  local_d0 = 0;
  local_c8 = 0;
  local_d8 = 0;
  if (param_2 != 0) {
    __check_object_size(local_b0,param_3,0);
    lVar4 = _inline_copy_from_user(local_b0,param_2,param_3);
    if (lVar4 != 0) {
      _printk(&DAT_00132617);
      param_3 = 0xffffffffffffffea;
      goto LAB_0010da3c;
    }
  }
  local_e0 = local_b0;
  pcVar5 = strsep(&local_e0,",");
  if (pcVar5 == (char *)0x0) {
    uVar6 = 0;
    uVar7 = 0;
    uVar8 = 0;
    uVar9 = 0;
    uVar10 = 0;
    uVar11 = 0;
    uVar12 = 0;
    uVar13 = 0;
    uVar14 = 0;
  }
  else {
    uVar6 = 0;
    do {
      iVar3 = kstrtouint(pcVar5,10,&local_e4);
      if (iVar3 == 0) {
        if (0x13 < uVar6) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(1,0x10da88);
          (*pcVar2)();
        }
        *(short *)((long)&local_d8 + (ulong)uVar6 * 2) = (short)local_e4;
        uVar6 = uVar6 + 1;
      }
      pcVar5 = strsep(&local_e0,",");
    } while ((pcVar5 != (char *)0x0) && (uVar6 < 10));
    uVar9 = (uint)local_d0._2_2_;
    uVar8 = (uint)local_d0._4_2_;
    uVar7 = (uint)local_d0._6_2_;
    uVar6 = (uint)(ushort)local_c8;
    uVar10 = (undefined1)local_d0;
    uVar11 = local_d8._6_1_;
    uVar12 = local_d8._4_1_;
    uVar13 = local_d8._2_1_;
    uVar14 = (undefined1)local_d8;
  }
  *(undefined1 *)(lVar1 + 0x491) = uVar14;
  *(undefined1 *)(lVar1 + 0x492) = uVar13;
  *(undefined1 *)(lVar1 + 0x493) = uVar12;
  *(undefined1 *)(lVar1 + 0x494) = uVar11;
  *(undefined1 *)(lVar1 + 0x495) = uVar10;
  *(uint *)(lVar1 + 0x498) = uVar9;
  *(uint *)(lVar1 + 0x49c) = uVar8;
  *(uint *)(lVar1 + 0x4a0) = uVar7;
  *(uint *)(lVar1 + 0x4a4) = uVar6;
LAB_0010da3c:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_48) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010da90 tp_BBAT_test_read */

void tp_BBAT_test_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  uint uVar2;
  int iVar3;
  undefined8 uVar4;
  ulong uVar5;
  code *pcVar6;
  char local_48 [16];
  long local_38;
  
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar6 = *(code **)(tpd_cdev + 0xfe8);
    if (pcVar6 == (code *)0x0) {
      uVar5 = (ulong)(*(char *)(tpd_cdev + 0x14) == '\0') << 1;
    }
    else {
      if (*(int *)(pcVar6 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10dafc);
        (*pcVar6)();
      }
      uVar2 = (*pcVar6)();
      if (uVar2 == 0) {
        uVar5 = 0;
      }
      else {
        uVar5 = (ulong)uVar2;
        _printk(&DAT_0013d976);
      }
    }
    iVar3 = snprintf(local_48,10,"%d\n",uVar5);
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010db98 tp_BBAT_test_write */

undefined8 tp_BBAT_test_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  _printk(&DAT_0013aa69);
  return param_3;
}



/* 0010dbd0 tp_test_read */

void tp_test_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    if (*(char *)(tpd_cdev + 0xc00) == -1) {
      _printk(&DAT_0013d992,*(undefined1 *)(tpd_cdev + 0x446));
      if ((*(byte *)(lVar2 + 0x1d) & 1) == 0) {
        _printk(&DAT_00139fb8);
        uVar4 = 2;
      }
      else {
        _printk(&DAT_001380e2);
        uVar4 = 0;
      }
    }
    else {
      _printk(&DAT_00134a44);
      uVar4 = 1;
    }
    iVar3 = snprintf(local_48,10,"%d\n",uVar4);
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010dcdc tp_test_write */

undefined8 tp_test_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  _printk(&DAT_0013aa69);
  return param_3;
}



/* 0010dd14 tp_frame_data_read */

void tp_frame_data_read(undefined8 param_1,undefined8 param_2,undefined8 param_3,long *param_4)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined8 uVar4;
  code *pcVar5;
  char local_48 [16];
  long local_38;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  uVar4 = 0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48[8] = '\0';
  local_48[9] = '\0';
  local_48[0] = '\0';
  local_48[1] = '\0';
  local_48[2] = '\0';
  local_48[3] = '\0';
  local_48[4] = '\0';
  local_48[5] = '\0';
  local_48[6] = '\0';
  local_48[7] = '\0';
  if (*param_4 == 0) {
    pcVar5 = *(code **)(tpd_cdev + 0x1000);
    if (pcVar5 != (code *)0x0) {
      if (*(int *)(pcVar5 + -4) != 0x73fc0d79) {
                    /* WARNING: Does not return */
        pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x10ddb0);
        (*pcVar5)();
      }
      (*pcVar5)(tpd_cdev);
    }
    _printk(&DAT_0013ae7f,"tp_frame_data_read",*(undefined4 *)(lVar2 + 0x460));
    iVar3 = snprintf(local_48,10,"%u\n",(ulong)*(uint *)(lVar2 + 0x460));
    uVar4 = simple_read_from_buffer(param_2,param_3,param_4,local_48,(long)iVar3);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0010de08 tp_frame_data_write */

undefined8 tp_frame_data_write(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  long lVar2;
  int iVar3;
  code *pcVar4;
  uint local_2c;
  long local_28;
  
  lVar2 = tpd_cdev;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  iVar3 = kstrtouint_from_user(param_2,param_3,10,&local_2c);
  if (iVar3 == 0) {
    local_2c = (uint)(local_2c != 0);
    _printk(&DAT_00138090,"tp_frame_data_write");
    pcVar4 = *(code **)(lVar2 + 0xff8);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x6af8b499) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10decc);
        (*pcVar4)();
      }
      (*pcVar4)(lVar2,local_2c);
    }
  }
  else {
    param_3 = 0xffffffffffffffea;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010dedc tpd_sysfs_fwimage_show */

size_t tpd_sysfs_fwimage_show(void)

{
  long lVar1;
  void *in_x3;
  size_t in_x5;
  long *plVar2;
  ulong uVar3;
  ulong uVar4;
  size_t __n;
  
  lVar1 = tpd_cdev;
  plVar2 = *(long **)(tpd_cdev + 0xc58);
  if ((plVar2 == (long *)0x0) || (plVar2[1] == 0)) {
    _printk(&DAT_0013cb0c);
    __n = 0xfffffffffffffff4;
  }
  else if (*plVar2 == 0) {
    _printk(&DAT_0013aa16);
    __n = 0xffffffffffffffea;
  }
  else {
    mutex_lock(tpd_cdev + 0xc60);
    uVar3 = (ulong)*(uint *)(lVar1 + 0x448);
    uVar4 = **(ulong **)(lVar1 + 0xc58);
    if (uVar4 < uVar3 || uVar4 - uVar3 == 0) {
      *(undefined4 *)(lVar1 + 0x448) = 0;
      vfree((*(ulong **)(lVar1 + 0xc58))[1]);
      *(undefined8 *)(*(long *)(lVar1 + 0xc58) + 8) = 0;
      kfree(*(undefined8 *)(lVar1 + 0xc58));
      *(undefined8 *)(lVar1 + 0xc58) = 0;
      _printk(&DAT_00135e5e);
      mutex_unlock(lVar1 + 0xc60);
      __n = 0;
    }
    else {
      __n = uVar4 - uVar3;
      if (uVar3 + in_x5 <= uVar4) {
        __n = in_x5;
      }
      memcpy(in_x3,(void *)(*(long *)(*(long *)(lVar1 + 0xc58) + 8) +
                           (ulong)*(uint *)(lVar1 + 0x448)),__n);
      *(int *)(lVar1 + 0x448) = *(int *)(lVar1 + 0x448) + (int)__n;
      mutex_unlock(lVar1 + 0xc60);
    }
  }
  return __n;
}



/* 0010dff0 tpd_sysfs_fwimage_store */

size_t tpd_sysfs_fwimage_store(void)

{
  long lVar1;
  size_t sVar2;
  ulong uVar3;
  void *in_x3;
  size_t in_x5;
  ulong *puVar4;
  ulong uVar5;
  
  lVar1 = tpd_cdev;
  puVar4 = *(ulong **)(tpd_cdev + 0xc58);
  if ((puVar4 == (ulong *)0x0) || (puVar4[1] == 0)) {
    _printk(&DAT_0013cb0c);
    sVar2 = 0xfffffffffffffff4;
  }
  else {
    uVar5 = *puVar4;
    if (uVar5 == 0) {
      _printk(&DAT_0013aa16);
    }
    else {
      uVar3 = (ulong)*(uint *)(tpd_cdev + 0x448);
      if (uVar3 <= uVar5 && uVar5 - uVar3 != 0) {
        sVar2 = uVar5 - uVar3;
        if (uVar3 + in_x5 <= uVar5) {
          sVar2 = in_x5;
        }
        _printk(&DAT_00135e78,uVar3,sVar2);
        mutex_lock(lVar1 + 0xc60);
        memcpy((void *)(*(long *)(*(long *)(lVar1 + 0xc58) + 8) + (ulong)*(uint *)(lVar1 + 0x448)),
               in_x3,sVar2);
        *(int *)(lVar1 + 0x448) = *(int *)(lVar1 + 0x448) + (int)sVar2;
        mutex_unlock(lVar1 + 0xc60);
        return sVar2;
      }
      *(undefined4 *)(tpd_cdev + 0x448) = 0;
    }
    sVar2 = 0xffffffffffffffea;
  }
  return sVar2;
}



/* 0010e0d0 zte_touch_deinit */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_touch_deinit(void)

{
  long lVar1;
  long lVar2;
  long lVar3;
  code *pcVar4;
  
  lVar1 = tpd_cdev;
  if ((tpd_cdev == 0) || (zte_touch_deinit_ztp_release == '\x01')) {
    _printk(&DAT_00132c08);
  }
  else {
    ufp_mac_exit();
    lVar2 = tpd_cdev;
    _printk(&DAT_00132ab3,"zlog_register_work_deinit");
    cancel_delayed_work_sync(lVar2 + 0xa50);
    vfree(*(undefined8 *)(lVar2 + 0xbe8));
    *(undefined8 *)(lVar2 + 0xbe8) = 0;
    tpd_proc_deinit();
    lVar2 = tpd_cdev;
    _printk(&DAT_00132ab3,"tpd_workqueue_deinit");
    tpd_report_work_deinit();
    tpd_resume_work_deinit();
    lVar3 = tpd_cdev;
    _printk(&DAT_00132ab3,"tpd_probe_work_deinit");
    cancel_delayed_work_sync(lVar3 + 0x8d0);
    lVar3 = tpd_cdev;
    _printk(&DAT_00132ab3,"zlog_register_work_deinit");
    cancel_delayed_work_sync(lVar3 + 0xa50);
    vfree(*(undefined8 *)(lVar3 + 0xbe8));
    *(undefined8 *)(lVar3 + 0xbe8) = 0;
    cancel_delayed_work_sync(lVar2 + 0x938);
    if (*(long *)(lVar1 + 0x4b0) == 0) {
      destroy_workqueue(0);
    }
    lVar1 = tpd_cdev;
    if (*(long *)(tpd_cdev + 0xc50) != 0) {
      sysfs_remove_bin_file(*(long *)(tpd_cdev + 0xc50),fwimage_attr);
      kobject_put(*(undefined8 *)(lVar1 + 0xc50));
    }
    lVar1 = tpd_cdev;
    if (*(long *)(tpd_cdev + 0xdd0) == 0) {
      if (*(int *)(_DAT_00000338 + -4) != 0x6c81b8c8) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10e218);
        (*pcVar4)();
      }
      (*_DAT_00000338)(0x10);
      platform_device_unregister(*(undefined8 *)(lVar1 + 0xdd0));
    }
    zte_touch_deinit_ztp_release = '\x01';
  }
  return;
}



/* 0010e254 tpd_touch_press */

/* WARNING: Type propagation algorithm not settling */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_touch_press(long param_1,uint param_2,uint param_3,ulong param_4,undefined4 param_5,
                    undefined4 param_6)

{
  long lVar1;
  uint *puVar2;
  int iVar3;
  undefined4 uVar4;
  char cVar5;
  byte bVar6;
  ushort uVar7;
  int iVar8;
  code *pcVar9;
  uint uVar10;
  uint uVar11;
  ulong uVar12;
  undefined *puVar13;
  uint uVar14;
  uint uVar15;
  long lVar16;
  long lVar17;
  ulong uVar18;
  ulong uVar19;
  
  lVar16 = tpd_cdev;
  uVar10 = param_2 & 0xffff;
  uVar15 = param_3 & 0xffff;
  if ((param_2 & 0xfffe) == 0) {
    uVar10 = 1;
  }
  if ((param_3 & 0xfffe) == 0) {
    uVar15 = 1;
  }
  if (*(int *)(tpd_cdev + 0x10) != 0) {
    param_2 = uVar10;
    param_3 = uVar15;
  }
  uVar10 = (uint)param_4 & 0xffff;
  if ((param_1 == 0) || (9 < uVar10)) {
    _printk(&DAT_0013aeb8,"tpd_touch_press");
    return;
  }
  uVar18 = param_4 & 0xffffffff;
  lVar1 = (param_4 & 0xffff) + (param_4 & 0xffff) * 0x10;
  uVar19 = lVar1 * 8;
  puVar2 = (uint *)(&point_report_info + uVar19);
  (&DAT_001316a8)[lVar1] = param_1;
  if (*(char *)(&DAT_00131678 + lVar1) == '\x01') {
    if (((*(char *)(lVar16 + 0x25) != '\0') && (((&DAT_00131681)[uVar19] & 1) == 0)) &&
       ((*(uint *)(lVar16 + 0x10) | 2) != 3)) {
      uVar7 = *(ushort *)(lVar16 + 0x442);
      uVar14 = (uint)uVar7;
      uVar15 = param_2 & 0xffff;
      uVar11 = (uint)(uVar7 >> 2);
      if ((uVar11 < uVar15) && (uVar15 < (uint)uVar7 * 3 >> 2)) {
        (&DAT_00131681)[uVar19] = 1;
        uVar14 = (uint)*(ushort *)(lVar16 + 0x442);
        uVar11 = (uint)(*(ushort *)(lVar16 + 0x442) >> 2);
      }
      if (((int)(&DAT_00131640)[lVar1 * 2] < (int)uVar11) ||
         (uVar14 * 3 >> 2 < (uint)(&DAT_00131640)[lVar1 * 2])) {
        if (*(char *)(lVar16 + 0x25) == '\0') {
LAB_0010e9b4:
          (&DAT_00131680)[uVar19] = 0;
        }
        else {
          if ((*(uint *)(lVar16 + 0x10) | 2) == 3) {
            if (((((uint)*(byte *)(lVar16 + 0x34) <= (param_2 & 0xffff)) &&
                 ((int)uVar15 <= (int)(uVar14 - *(byte *)(lVar16 + 0x35)))) &&
                ((uint)*(byte *)(lVar16 + 0x36) <= (param_3 & 0xffff))) &&
               ((int)(param_3 & 0xffff) <=
                (int)((uint)*(ushort *)(lVar16 + 0x444) - (uint)*(byte *)(lVar16 + 0x37)))) {
              if ((*(char *)(lVar16 + 0x38) == '\0') ||
                 ((param_3 & 0xffff) <= (uint)*(ushort *)(lVar16 + 0x2e))) goto LAB_0010e9b4;
              uVar11 = (uint)*(ushort *)(lVar16 + 0x2c);
              if ((uint)*(ushort *)(lVar16 + 0x2c) <= (param_2 & 0xffff)) goto LAB_0010e9a8;
            }
          }
          else if ((uint)*(byte *)(lVar16 + 0x34) <= (param_2 & 0xffff)) {
            uVar11 = (uint)*(byte *)(lVar16 + 0x35);
LAB_0010e9a8:
            if ((int)uVar15 <= (int)(uVar14 - uVar11)) goto LAB_0010e9b4;
          }
          if ((&DAT_00131680)[uVar19] == '\x01') {
            lVar17 = *(long *)(&DAT_00131690 + uVar19);
          }
          else {
            *(uint *)(&DAT_00131658 + uVar19) = uVar15;
            *(uint *)(&DAT_0013165c + uVar19) = param_3 & 0xffff;
            (&DAT_00131680)[uVar19] = 1;
            lVar17 = _jiffies;
            *(long *)(&DAT_00131690 + uVar19) = _jiffies;
          }
          uVar11 = jiffies_to_msecs(_jiffies - lVar17);
          if (800 < uVar11) {
            iVar8 = *(int *)(&DAT_00131658 + uVar19) - uVar15;
            iVar3 = -iVar8;
            if (-1 < iVar8) {
              iVar3 = iVar8;
            }
            if (iVar3 < 0x15) {
              iVar8 = *(int *)(&DAT_0013165c + uVar19) - (param_3 & 0xffff);
              iVar3 = -iVar8;
              if (-1 < iVar8) {
                iVar3 = iVar8;
              }
              if (iVar3 < 0x15) {
                tpd_touch_release((&DAT_001316a8)[lVar1],uVar18);
                (&DAT_00131680)[uVar19] = 0;
                return;
              }
            }
            *(uint *)(&DAT_00131658 + uVar19) = uVar15;
            *(uint *)(&DAT_0013165c + uVar19) = param_3 & 0xffff;
            *(long *)(&DAT_00131690 + uVar19) = _jiffies;
          }
        }
      }
    }
  }
  else {
    uVar12 = point_is_in_limit_area(param_2,param_3);
    if ((uVar12 & 1) != 0) goto LAB_0010e3e4;
    if (*(char *)(tpd_cdev + 0x25) != '\0') {
      if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
        uVar15 = param_2 & 0xffff;
        if (((uVar15 < *(byte *)(tpd_cdev + 0x34)) ||
            ((((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35)) <
               (int)uVar15 || ((param_3 & 0xffff) < (uint)*(byte *)(tpd_cdev + 0x36))) ||
             ((int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x37)) <
              (int)(param_3 & 0xffff))))) ||
           (((*(char *)(tpd_cdev + 0x38) != '\0' &&
             ((uint)*(ushort *)(tpd_cdev + 0x2e) < (param_3 & 0xffff))) &&
            (((param_2 & 0xffff) < (uint)*(ushort *)(tpd_cdev + 0x2c) ||
             ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(ushort *)(tpd_cdev + 0x2c)) <
              (int)uVar15)))))) {
LAB_0010e3e4:
          uVar12 = point_is_in_limit_area(param_2,param_3);
          if (((uVar12 & 1) == 0) && (*(char *)(tpd_cdev + 0x25) != '\0')) {
            if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
              uVar15 = param_2 & 0xffff;
              if (((*(byte *)(tpd_cdev + 0x34) <= uVar15) &&
                  ((((int)uVar15 <=
                     (int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35))
                    && ((uint)*(byte *)(tpd_cdev + 0x36) <= (param_3 & 0xffff))) &&
                   ((int)(param_3 & 0xffff) <=
                    (int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x37)))))
                  ) && (((*(char *)(tpd_cdev + 0x38) == '\0' ||
                         ((param_3 & 0xffff) <= (uint)*(ushort *)(tpd_cdev + 0x2e))) ||
                        (((uint)*(ushort *)(tpd_cdev + 0x2c) <= (param_2 & 0xffff) &&
                         ((int)uVar15 <=
                          (int)((uint)*(ushort *)(tpd_cdev + 0x442) -
                               (uint)*(ushort *)(tpd_cdev + 0x2c)))))))) goto LAB_0010e634;
            }
            else if (((uint)*(byte *)(tpd_cdev + 0x34) <= (param_2 & 0xffff)) &&
                    ((int)(param_2 & 0xffff) <=
                     (int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35))))
            goto LAB_0010e634;
            if ((*(byte *)((long)&DAT_00131678 + uVar19 + 5) & 1) == 0) {
              *(undefined1 *)((long)&DAT_00131678 + uVar19 + 5) = 1;
              *(long *)(&DAT_00131698 + uVar19) = _jiffies;
              _printk(&DAT_0013b590,uVar10,param_2 & 0xffff,param_3 & 0xffff);
            }
            if ((((((DAT_00131678._3_1_ & 1) == 0) && ((DAT_00131700._3_1_ & 1) == 0)) &&
                 (((DAT_00131788._3_1_ & 1) == 0 &&
                  (((((DAT_00131810._3_1_ & 1) == 0 && ((DAT_00131898._3_1_ & 1) == 0)) &&
                    ((DAT_00131920._3_1_ & 1) == 0)) &&
                   (((DAT_001319a8._3_1_ & 1) == 0 && ((DAT_00131a30._3_1_ & 1) == 0)))))))) &&
                ((DAT_00131ab8._3_1_ & 1) == 0)) && (DAT_00131b40._3_1_ != '\x01')) {
LAB_0010e63c:
              bVar6 = *(byte *)((long)&DAT_00131678 + uVar19 + 1);
            }
            else {
              *(undefined1 *)((long)&DAT_00131678 + uVar19 + 6) = 1;
              bVar6 = *(byte *)((long)&DAT_00131678 + uVar19 + 1);
            }
          }
          else {
LAB_0010e634:
            if ((*(byte *)((long)&DAT_00131678 + uVar19 + 5) & 1) != 0) goto LAB_0010e63c;
            *(undefined1 *)((long)&DAT_00131678 + uVar19 + 5) = 1;
            _printk(&DAT_00137091,uVar10,param_2 & 0xffff,param_3 & 0xffff);
            bVar6 = *(byte *)((long)&DAT_00131678 + uVar19 + 1);
          }
          if ((bVar6 & 1) == 0) {
            *puVar2 = param_2 & 0xffff;
            if ((uVar19 | 4) < 0x551) {
              (&DAT_00131630)[uVar19] = (char)param_5;
              *(uint *)(&DAT_0013162c + uVar19) = param_3 & 0xffff;
              (&DAT_00131631)[uVar19] = (char)param_6;
              *(undefined1 *)((long)&DAT_00131678 + uVar19 + 1) = 1;
              return;
            }
            goto LAB_0010e878;
          }
          iVar8 = *puVar2 - (param_2 & 0xffff);
          iVar3 = -iVar8;
          if (-1 < iVar8) {
            iVar3 = iVar8;
          }
          if (iVar3 < 0x65) {
            if (0x550 < (uVar19 | 4)) goto LAB_0010e878;
            iVar8 = *(int *)(&DAT_0013162c + uVar19) - (param_3 & 0xffff);
            iVar3 = -iVar8;
            if (-1 < iVar8) {
              iVar3 = iVar8;
            }
            if (iVar3 < 0x65) {
              return;
            }
          }
        }
      }
      else if (((param_2 & 0xffff) < (uint)*(byte *)(tpd_cdev + 0x34)) ||
              ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x35)) <
               (int)(param_2 & 0xffff))) goto LAB_0010e3e4;
    }
    if ((*(byte *)((long)&DAT_00131678 + uVar19 + 1) & 1) == 0) {
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 2) = 0;
    }
    else {
      (&DAT_0013163c)[uVar19] = (char)param_5;
      *(uint *)(&DAT_00131634 + uVar19) = param_2 & 0xffff;
      *(uint *)(&DAT_00131638 + uVar19) = param_3 & 0xffff;
      (&DAT_0013163d)[uVar19] = (char)param_6;
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 2) = 1;
    }
  }
  cVar5 = *(char *)((long)&DAT_00131678 + uVar19 + 2);
  *(undefined1 *)(&DAT_00131678 + lVar1) = 1;
  if (cVar5 == '\x01') {
    if ((*(byte *)((long)&DAT_00131678 + uVar19 + 3) & 1) == 0) {
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 3) = 1;
      lVar17 = _jiffies;
      (&DAT_00131682)[uVar19] = 1;
      *(long *)(&DAT_00131688 + uVar19) = lVar17;
      *(int *)(lVar16 + 0x48c) = *(int *)(lVar16 + 0x48c) + 1;
      (&DAT_00131640)[lVar1 * 2] = *puVar2;
      if (0x550 < (uVar19 | 4)) goto LAB_0010e878;
      (&DAT_00131644)[lVar1 * 2] = *(undefined4 *)(&DAT_0013162c + uVar19);
      point_report_reset(uVar10);
      _printk(&DAT_0013882f,uVar10,*puVar2,*(undefined4 *)(&DAT_0013162c + uVar19));
    }
    if (0x550 < (uVar19 | 4)) {
LAB_0010e878:
                    /* WARNING: Does not return */
      pcVar9 = (code *)SoftwareBreakpoint(1,0x10e87c);
      (*pcVar9)();
    }
    tpd_touch_report(param_1,*puVar2,*(undefined4 *)(&DAT_0013162c + uVar19),uVar18,param_5,param_6)
    ;
    input_event(param_1,0,0,0);
    usleep_range_state(1000,0x5dc,2);
    if ((*(byte *)((long)&DAT_00131678 + uVar19 + 3) & 1) == 0) {
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 3) = 1;
      lVar17 = _jiffies;
      (&DAT_00131682)[uVar19] = 1;
      *(long *)(&DAT_00131688 + uVar19) = lVar17;
      *(int *)(lVar16 + 0x48c) = *(int *)(lVar16 + 0x48c) + 1;
      uVar4 = *(undefined4 *)(&DAT_0013162c + uVar19);
      (&DAT_00131640)[lVar1 * 2] = *puVar2;
      (&DAT_00131644)[lVar1 * 2] = uVar4;
      point_report_reset(uVar10);
      _printk(&DAT_0013882f,uVar10,*(undefined4 *)(&DAT_00131634 + uVar19),
              *(undefined4 *)(&DAT_00131638 + uVar19));
    }
    uVar15 = *(uint *)(&DAT_00131634 + uVar19);
    uVar11 = *(uint *)(&DAT_00131638 + uVar19);
  }
  else {
    bVar6 = *(byte *)((long)&DAT_00131678 + uVar19 + 3);
    uVar15 = param_2;
    uVar11 = param_3;
    if (*(char *)(lVar16 + 0x24) == '\0') {
      if ((bVar6 & 1) == 0) {
        *(undefined1 *)((long)&DAT_00131678 + uVar19 + 3) = 1;
        *(int *)(lVar16 + 0x48c) = *(int *)(lVar16 + 0x48c) + 1;
        (&DAT_00131640)[lVar1 * 2] = param_2 & 0xffff;
        (&DAT_00131644)[lVar1 * 2] = param_3 & 0xffff;
        point_report_reset(uVar10);
        puVar13 = &DAT_0013b516;
        lVar16 = _jiffies;
        goto LAB_0010e98c;
      }
    }
    else if ((bVar6 & 1) == 0) {
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 3) = 1;
      *(int *)(lVar16 + 0x48c) = *(int *)(lVar16 + 0x48c) + 1;
      point_report_reset(uVar10);
      (&DAT_00131640)[lVar1 * 2] = param_2 & 0xffff;
      (&DAT_00131644)[lVar1 * 2] = param_3 & 0xffff;
      lVar16 = _jiffies;
      puVar13 = &DAT_0013d29d;
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 7) = 1;
LAB_0010e98c:
      *(long *)(&DAT_00131688 + uVar19) = lVar16;
      _printk(puVar13,uVar10,param_2 & 0xffff,param_3 & 0xffff);
    }
    else if (*(char *)((long)&DAT_00131678 + uVar19 + 7) == '\x01') {
      uVar10 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131688 + uVar19));
      iVar8 = (&DAT_00131640)[lVar1 * 2] - (param_2 & 0xffff);
      iVar3 = -iVar8;
      if (-1 < iVar8) {
        iVar3 = iVar8;
      }
      uVar15 = (uint)*(byte *)(lVar16 + 0x24);
      if (uVar10 < 0x65) {
        uVar15 = (uint)*(byte *)(lVar16 + 0x24) * 3;
      }
      if (iVar3 <= (int)uVar15) {
        iVar8 = (&DAT_00131644)[lVar1 * 2] - (param_3 & 0xffff);
        iVar3 = -iVar8;
        if (-1 < iVar8) {
          iVar3 = iVar8;
        }
        if (iVar3 <= (int)uVar15) goto LAB_0010e7e0;
      }
      tpd_touch_report(param_1,param_2,param_3,uVar18,param_5,param_6);
      *(undefined1 *)((long)&DAT_00131678 + uVar19 + 7) = 0;
      goto LAB_0010e7e0;
    }
  }
  tpd_touch_report(param_1,uVar15,uVar11,uVar18,param_5,param_6);
LAB_0010e7e0:
  *(undefined1 *)((long)&DAT_00131678 + uVar19 + 2) = 0;
  (&DAT_0013164c)[lVar1 * 2] = param_2 & 0xffff;
  (&DAT_00131650)[lVar1 * 2] = param_3 & 0xffff;
  return;
}



/* 0010ea98 point_report_reset */

void point_report_reset(uint param_1)

{
  ulong uVar1;
  long lVar2;
  code *pcVar3;
  
  lVar2 = tpd_cdev;
  if (param_1 < 10) {
    uVar1 = (ulong)param_1;
    if (*(char *)((long)&DAT_00131678 + uVar1 * 0x88 + 4) == '\x01') {
      _printk(&DAT_001375a3,"point_report_reset",param_1);
      *(undefined1 *)((long)&DAT_00131678 + uVar1 * 0x88 + 4) = 0;
      mutex_lock(lVar2 + 0xc90);
      input_event((&DAT_001316a8)[uVar1 * 0x11],3,0x2f,param_1);
      input_mt_report_slot_state((&DAT_001316a8)[uVar1 * 0x11],0,0);
      input_event((&DAT_001316a8)[uVar1 * 0x11],0,0,0);
      mutex_unlock(lVar2 + 0xc90);
      usleep_range_state(1000,0x44c,2);
    }
    return;
  }
                    /* WARNING: Does not return */
  pcVar3 = (code *)SoftwareBreakpoint(1,0x10eb70);
  (*pcVar3)();
}



/* 0010eb70 tpd_touch_report */

void tpd_touch_report(undefined8 param_1,undefined2 param_2,undefined2 param_3,undefined2 param_4,
                     char param_5,char param_6)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,param_4);
  input_mt_report_slot_state(param_1,0,1);
  input_event(param_1,1,0x14a,1);
  input_event(param_1,3,0x35,param_2);
  input_event(param_1,3,0x36,param_3);
  if (param_6 != '\0') {
    input_event(param_1,3,0x3a,param_6);
  }
  if (param_5 != '\0') {
    input_event(param_1,3,0x30,param_5);
  }
  mutex_unlock(lVar1 + 0xc90);
  return;
}



/* 0010ec70 tpd_touch_release */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_touch_release(long param_1,ushort param_2)

{
  long lVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  char cVar6;
  char cVar7;
  byte bVar8;
  undefined2 uVar9;
  undefined2 uVar10;
  int iVar11;
  long lVar12;
  code *pcVar13;
  uint uVar14;
  ulong uVar15;
  undefined *puVar16;
  long lVar17;
  short sVar18;
  undefined8 uVar19;
  ulong uVar20;
  
  lVar12 = tpd_cdev;
  if (10 < param_2) {
                    /* WARNING: Does not return */
    pcVar13 = (code *)SoftwareBreakpoint(0x5512,0x10f1fc);
    (*pcVar13)();
  }
  if (param_1 == 0) {
    _printk(&DAT_0013aeb8,"tpd_touch_release",param_2);
    return;
  }
  if (param_2 == 10) {
LAB_0010f1fc:
                    /* WARNING: Does not return */
    pcVar13 = (code *)SoftwareBreakpoint(1,0x10f200);
    (*pcVar13)();
  }
  lVar1 = (ulong)param_2 + (ulong)param_2 * 0x10;
  uVar20 = lVar1 * 8;
  puVar2 = (undefined4 *)(&point_report_info + uVar20);
  if (*(char *)((long)&DAT_00131678 + uVar20 + 3) == '\x01') {
    mutex_lock(tpd_cdev + 0xc90);
    input_event(param_1,3,0x2f,param_2);
    input_mt_report_slot_state(param_1,0,0);
    uVar15 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131688 + uVar20));
    uVar4 = (&DAT_0013164c)[lVar1 * 2];
    uVar5 = (&DAT_00131650)[lVar1 * 2];
    *(ulong *)(&DAT_001316a0 + uVar20) = uVar15 & 0xffffffff;
    _printk(&DAT_0013cb8f,param_2,uVar4,uVar5);
    if ((is_fake_sleep_mode != 0) &&
       (uVar14 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131688 + uVar20)), uVar14 < 0x96)) {
      iVar11 = (&DAT_00131640)[lVar1 * 2] - (&DAT_0013164c)[lVar1 * 2];
      iVar3 = -iVar11;
      if (-1 < iVar11) {
        iVar3 = iVar11;
      }
      if (iVar3 < 0x32) {
        iVar11 = (&DAT_00131644)[lVar1 * 2] - (&DAT_00131650)[lVar1 * 2];
        iVar3 = -iVar11;
        if (-1 < iVar11) {
          iVar3 = iVar11;
        }
        if (iVar3 < 0x32) {
          ufp_report_gesture_uevent("single_tap=true");
        }
      }
    }
    if (((is_fake_sleep_mode != 0 || is_screen_off_awake_mode != 0) &&
        (uVar14 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131670 + uVar20)), uVar14 < 300)) &&
       (uVar14 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131688 + uVar20)), uVar14 < 0x96)) {
      iVar11 = (&DAT_00131640)[lVar1 * 2] - (&DAT_0013164c)[lVar1 * 2];
      iVar3 = -iVar11;
      if (-1 < iVar11) {
        iVar3 = iVar11;
      }
      if (iVar3 < 0x32) {
        iVar11 = (&DAT_00131644)[lVar1 * 2] - (&DAT_00131650)[lVar1 * 2];
        iVar3 = -iVar11;
        if (-1 < iVar11) {
          iVar3 = iVar11;
        }
        if (iVar3 < 0x32) {
          iVar11 = (&DAT_00131640)[lVar1 * 2] - *(int *)(&DAT_00131664 + uVar20);
          iVar3 = -iVar11;
          if (-1 < iVar11) {
            iVar3 = iVar11;
          }
          if (iVar3 < 1000) {
            iVar11 = (&DAT_00131644)[lVar1 * 2] - *(int *)(&DAT_00131668 + uVar20);
            iVar3 = -iVar11;
            if (-1 < iVar11) {
              iVar3 = iVar11;
            }
            if (iVar3 < 1000) {
              ufp_report_gesture_uevent("double_tap=true");
            }
          }
        }
      }
    }
    mutex_unlock(lVar12 + 0xc90);
    if ((*(ulong *)(&DAT_001316a0 + uVar20) < (ulong)*(byte *)(lVar12 + 0x495)) &&
       (((&DAT_00131682)[uVar20] & 1) == 0)) {
      if ((*(byte *)(lVar12 + 0x488) & 1) == 0) {
        _printk(&DAT_0013df38);
        *(undefined1 *)(lVar12 + 0x488) = 1;
        queue_delayed_work_on(0x20,*(undefined8 *)(lVar12 + 0x4b0),lVar12 + 0x938,500);
      }
      lVar17 = 0x491;
      if (2 < *(int *)(lVar12 + 0x48c)) {
        lVar17 = 0x492;
      }
      bVar8 = *(byte *)(lVar12 + lVar17);
      uVar15 = ghost_check_area(puVar2);
      if ((uVar15 & 1) == 0) {
        sVar18 = *(short *)((long)&DAT_00131684 + uVar20 + 2);
      }
      else {
        if (*(ulong *)(&DAT_001316a0 + uVar20) < (ulong)bVar8) {
          sVar18 = *(short *)((long)&DAT_00131684 + uVar20 + 2);
          *(short *)(&DAT_00131684 + lVar1 * 2) = *(short *)(&DAT_00131684 + lVar1 * 2) + 1;
        }
        else {
          sVar18 = *(short *)((long)&DAT_00131684 + uVar20 + 2);
        }
        sVar18 = sVar18 + 1;
        *(short *)((long)&DAT_00131684 + uVar20 + 2) = sVar18;
      }
      _printk(&DAT_0013b543,param_2,*(undefined2 *)(&DAT_00131684 + lVar1 * 2),sVar18);
    }
    *(int *)(lVar12 + 0x48c) = *(int *)(lVar12 + 0x48c) + -1;
  }
  if (((*(char *)(lVar12 + 0x25) != '\x01') ||
      ((*(byte *)((long)&DAT_00131678 + uVar20 + 6) & 1) != 0)) ||
     ((*(long *)(&DAT_00131698 + uVar20) == 0 ||
      (uVar14 = jiffies_to_msecs(_jiffies - *(long *)(&DAT_00131698 + uVar20)), lVar17 = tpd_cdev,
      *(ushort *)(lVar12 + 0x3c) <= uVar14)))) goto LAB_0010ed1c;
  _printk(&DAT_00138d2b,"edge_point_report",param_2);
  if (*(long *)(lVar17 + 0x4b8) == 0) {
    puVar16 = &DAT_0013d9bb;
  }
  else {
    if ((((((((DAT_00131678._3_1_ & 1) == 0) && ((DAT_00131700._3_1_ & 1) == 0)) &&
           ((DAT_00131788._3_1_ & 1) == 0)) &&
          (((DAT_00131810._3_1_ & 1) == 0 && ((DAT_00131898._3_1_ & 1) == 0)))) &&
         (((DAT_00131920._3_1_ & 1) == 0 &&
          (((DAT_001319a8._3_1_ & 1) == 0 && ((DAT_00131a30._3_1_ & 1) == 0)))))) &&
        ((DAT_00131ab8._3_1_ & 1) == 0)) && (DAT_00131b40._3_1_ != '\x01')) {
      mutex_lock(lVar17 + 0xc90);
      if ((0x550 < ((ulong)param_2 * 0x88 | 4)) || (0x550 < (uVar20 | 4))) goto LAB_0010f1fc;
      uVar19 = (&DAT_001316a8)[lVar1];
      uVar9 = *(undefined2 *)puVar2;
      uVar10 = *(undefined2 *)(&DAT_0013162c + uVar20);
      cVar6 = (&DAT_00131630)[uVar20];
      cVar7 = (&DAT_00131631)[uVar20];
      input_event(uVar19,3,0x2f,param_2);
      input_mt_report_slot_state(uVar19,0,1);
      input_event(uVar19,1,0x14a,1);
      input_event(uVar19,3,0x35,uVar9);
      input_event(uVar19,3,0x36,uVar10);
      if (cVar7 != '\0') {
        input_event(uVar19,3,0x3a,cVar7);
      }
      if (cVar6 != '\0') {
        input_event(uVar19,3,0x30,cVar6);
      }
      input_event((&DAT_001316a8)[lVar1],0,0,0);
      uVar4 = *puVar2;
      uVar5 = *(undefined4 *)(&DAT_0013162c + uVar20);
      *(undefined1 *)((long)&DAT_00131678 + uVar20 + 4) = 1;
      _printk(&DAT_00136450,"edge_point_report",param_2,uVar4,uVar5);
      mutex_unlock(lVar17 + 0xc90);
      if (param_2 < 5) {
        if (param_2 < 2) {
          if (param_2 == 0) {
            uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
            lVar17 = lVar17 + 0x4c0;
          }
          else {
            if (param_2 != 1) {
LAB_0010f290:
              _printk(&DAT_00134a75,"edge_point_report",param_2);
              goto LAB_0010ed1c;
            }
            uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
            lVar17 = lVar17 + 0x528;
          }
        }
        else if (param_2 == 2) {
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x590;
        }
        else if (param_2 == 3) {
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x5f8;
        }
        else {
          if (param_2 != 4) goto LAB_0010f290;
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x660;
        }
      }
      else if (param_2 < 7) {
        if (param_2 == 5) {
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x6c8;
        }
        else {
          if (param_2 != 6) goto LAB_0010f290;
          uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
          lVar17 = lVar17 + 0x730;
        }
      }
      else if (param_2 == 7) {
        uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
        lVar17 = lVar17 + 0x798;
      }
      else if (param_2 == 8) {
        uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
        lVar17 = lVar17 + 0x800;
      }
      else {
        if (param_2 != 9) goto LAB_0010f290;
        uVar19 = *(undefined8 *)(lVar17 + 0x4b8);
        lVar17 = lVar17 + 0x868;
      }
      queue_delayed_work_on(0x20,uVar19,lVar17,0xd);
      goto LAB_0010ed1c;
    }
    puVar16 = &DAT_0013c525;
  }
  _printk(puVar16,"edge_point_report");
LAB_0010ed1c:
  iVar11 = is_screen_off_awake_mode;
  iVar3 = is_fake_sleep_mode;
  *(undefined8 *)(&DAT_00131698 + uVar20) = 0;
  *(undefined1 *)((long)&DAT_00131678 + uVar20 + 3) = 0;
  *(undefined2 *)(&DAT_00131678 + lVar1) = 0;
  *(undefined4 *)((long)&DAT_00131678 + uVar20 + 5) = 0;
  *(undefined2 *)(&DAT_00131681 + uVar20) = 0;
  if (iVar3 != 0 || iVar11 != 0) {
    uVar4 = (&DAT_00131644)[lVar1 * 2];
    *(undefined4 *)(&DAT_00131664 + uVar20) = (&DAT_00131640)[lVar1 * 2];
    *(undefined4 *)(&DAT_00131668 + uVar20) = uVar4;
    *(undefined8 *)(&DAT_00131670 + uVar20) = *(undefined8 *)(&DAT_00131688 + uVar20);
  }
  return;
}



/* 0010f2ac ghost_check_area */

undefined8 ghost_check_area(long param_1)

{
  uint uVar1;
  int iVar2;
  ushort uVar3;
  ushort uVar4;
  undefined8 uVar5;
  undefined *puVar6;
  uint uVar7;
  
  uVar1 = *(uint *)(tpd_cdev + 0x10);
  uVar7 = (uint)*(ushort *)(param_1 + 0x18);
  if ((uVar1 | 2) == 3) {
    uVar3 = *(ushort *)(param_1 + 0x1c);
    iVar2 = *(int *)(tpd_cdev + 0x49c);
    if ((((iVar2 <= (int)(uint)uVar3) &&
         ((int)(uint)uVar3 <= (int)((uint)*(ushort *)(tpd_cdev + 0x444) - iVar2))) &&
        (iVar2 <= (int)(uint)*(ushort *)(param_1 + 0x18))) &&
       (uVar4 = *(ushort *)(tpd_cdev + 0x442), (int)uVar7 <= (int)((uint)uVar4 - iVar2))) {
LAB_0010f324:
      uVar5 = 1;
      if ((int)uVar1 < 2) {
        if (uVar1 != 0) {
          if (uVar1 != 1) {
            return uVar5;
          }
          goto LAB_0010f350;
        }
        if ((int)(uint)uVar3 <=
            (int)((uint)*(ushort *)(tpd_cdev + 0x444) - *(int *)(tpd_cdev + 0x4a4))) {
          return uVar5;
        }
LAB_0010f3b8:
        if ((*(int *)(tpd_cdev + 0x4a0) <= (int)uVar7) &&
           ((int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x4a0)))) {
          return uVar5;
        }
      }
      else {
        if (uVar1 == 2) {
          if (*(int *)(tpd_cdev + 0x4a4) <= (int)(uint)uVar3) {
            return uVar5;
          }
          goto LAB_0010f3b8;
        }
        if (uVar1 != 3) {
          return uVar5;
        }
LAB_0010f350:
        if ((*(int *)(tpd_cdev + 0x4a4) <= (int)uVar7) &&
           ((int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x4a4)))) {
          return uVar5;
        }
        if ((*(int *)(tpd_cdev + 0x4a0) <= (int)(uint)uVar3) &&
           ((int)(uint)uVar3 <=
            (int)((uint)*(ushort *)(tpd_cdev + 0x444) - *(int *)(tpd_cdev + 0x4a0)))) {
          return uVar5;
        }
      }
      puVar6 = &DAT_0013cbd4;
      goto code_r0x0010f3e0;
    }
  }
  else if ((*(int *)(tpd_cdev + 0x49c) <= (int)uVar7) &&
          (uVar4 = *(ushort *)(tpd_cdev + 0x442),
          (int)uVar7 <= (int)((uint)uVar4 - *(int *)(tpd_cdev + 0x49c)))) {
    uVar3 = *(ushort *)(param_1 + 0x1c);
    goto LAB_0010f324;
  }
  puVar6 = &DAT_00132c43;
code_r0x0010f3e0:
  _printk(puVar6);
  return 0;
}



/* 0010f400 tp_ghost_check */

undefined8 tp_ghost_check(void)

{
  long lVar1;
  uint uVar2;
  byte bVar3;
  byte bVar4;
  int iVar5;
  int iVar6;
  char *__s;
  uint uVar7;
  ulong uVar8;
  undefined8 uVar9;
  ushort uVar10;
  uint uVar12;
  long lVar13;
  ushort uVar11;
  
  lVar13 = tpd_cdev;
  __s = (char *)vmalloc_noprof(0x800);
  if (__s == (char *)0x0) {
    _printk(&DAT_0013944e);
    return 0;
  }
  uVar8 = (ulong)DAT_00131684._2_2_;
  bVar4 = DAT_0013170c._2_2_ != 0;
  if (DAT_00131684._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_00131794._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  iVar5 = *(int *)(lVar13 + 0x498);
  if (DAT_0013181c._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_001318a4._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_0013192c._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_001319b4._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_00131a3c._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_00131ac4._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  if (DAT_00131b4c._2_2_ != 0) {
    bVar4 = bVar4 + 1;
  }
  uVar12 = (uint)bVar4;
  uVar2 = *(uint *)(lVar13 + 0x48c);
  if ((int)*(uint *)(lVar13 + 0x48c) <= (int)uVar12) {
    uVar2 = uVar12;
  }
  lVar1 = 0x493;
  if (2 < uVar2) {
    lVar1 = 0x494;
  }
  bVar3 = *(byte *)(lVar13 + lVar1);
  uVar12 = bVar3 * uVar12;
  uVar10 = (ushort)bVar3;
  uVar11 = (ushort)bVar3;
  if (iVar5 == 0) {
    uVar8 = 0;
LAB_0010f520:
    if ((ushort)DAT_0013170c < uVar10) {
      if (DAT_0013170c._2_2_ != 0) {
        uVar7 = (uint)DAT_0013170c._2_2_ + (int)uVar8;
        uVar8 = (ulong)uVar7;
        if ((5 < bVar4) && (uVar7 = uVar7 & 0xffff, uVar12 < uVar7)) {
          uVar8 = (ulong)uVar7;
          goto LAB_0010f7c0;
        }
      }
      uVar7 = (uint)uVar8;
      if (iVar5 == 2) {
LAB_0010f590:
        if ((ushort)DAT_0013181c < uVar10) {
          if (((DAT_0013181c._2_2_ != 0) && (uVar7 = DAT_0013181c._2_2_ + uVar7, 5 < bVar4)) &&
             (uVar12 < (uVar7 & 0xffff))) {
            uVar8 = (ulong)(uVar7 & 0xffff);
            goto LAB_0010f7c0;
          }
          if (iVar5 != 4) goto LAB_0010f5c8;
LAB_0010f600:
          if ((ushort)DAT_0013192c < uVar11) {
            if (((DAT_0013192c._2_2_ == 0) || (uVar7 = DAT_0013192c._2_2_ + uVar7, bVar4 < 6)) ||
               ((uVar7 & 0xffff) <= uVar12)) {
              if (iVar5 != 6) goto LAB_0010f638;
LAB_0010f670:
              if (uVar11 <= (ushort)DAT_00131a3c) {
                uVar9 = 7;
                goto LAB_0010f774;
              }
              if (((DAT_00131a3c._2_2_ == 0) || (uVar7 = DAT_00131a3c._2_2_ + uVar7, bVar4 < 6)) ||
                 ((uVar7 & 0xffff) <= uVar12)) {
                if (iVar5 != 8) goto LAB_0010f6a8;
LAB_0010f6e0:
                if (uVar10 <= (ushort)DAT_00131b4c) {
                  uVar9 = 9;
                  goto LAB_0010f774;
                }
                if (((DAT_00131b4c._2_2_ == 0) || (bVar4 < 6)) ||
                   (uVar7 = DAT_00131b4c._2_2_ + uVar7 & 0xffff, uVar8 = (ulong)uVar7,
                   uVar7 <= uVar12)) {
LAB_0010f710:
                  vfree(__s);
                  return 0;
                }
              }
              else {
                uVar8 = (ulong)(uVar7 & 0xffff);
              }
            }
            else {
              uVar8 = (ulong)(uVar7 & 0xffff);
            }
LAB_0010f7c0:
            iVar5 = snprintf(__s,0x800,"multi ghost detect,ghost_count:%d. ",uVar8);
            goto LAB_0010f7d4;
          }
          uVar9 = 5;
        }
        else {
          uVar9 = 3;
        }
      }
      else {
LAB_0010f558:
        uVar7 = (uint)uVar8;
        if ((ushort)DAT_00131794 < uVar10) {
          if (((DAT_00131794._2_2_ != 0) && (uVar7 = DAT_00131794._2_2_ + uVar7, 5 < bVar4)) &&
             (uVar12 < (uVar7 & 0xffff))) {
            uVar8 = (ulong)(uVar7 & 0xffff);
            goto LAB_0010f7c0;
          }
          if (iVar5 != 3) goto LAB_0010f590;
LAB_0010f5c8:
          if ((ushort)DAT_001318a4 < uVar10) {
            if (((DAT_001318a4._2_2_ != 0) && (uVar7 = DAT_001318a4._2_2_ + uVar7, 5 < bVar4)) &&
               (uVar12 < (uVar7 & 0xffff))) {
              uVar8 = (ulong)(uVar7 & 0xffff);
              goto LAB_0010f7c0;
            }
            if (iVar5 != 5) goto LAB_0010f600;
LAB_0010f638:
            if ((ushort)DAT_001319b4 < uVar11) {
              if (((DAT_001319b4._2_2_ == 0) || (uVar7 = DAT_001319b4._2_2_ + uVar7, bVar4 < 6)) ||
                 ((uVar7 & 0xffff) <= uVar12)) {
                if (iVar5 != 7) goto LAB_0010f670;
LAB_0010f6a8:
                if (uVar11 <= (ushort)DAT_00131ac4) {
                  uVar9 = 8;
                  goto LAB_0010f774;
                }
                if (((DAT_00131ac4._2_2_ == 0) || (uVar7 = DAT_00131ac4._2_2_ + uVar7, bVar4 < 6))
                   || ((uVar7 & 0xffff) <= uVar12)) {
                  if (iVar5 == 9) goto LAB_0010f710;
                  goto LAB_0010f6e0;
                }
                uVar8 = (ulong)(uVar7 & 0xffff);
              }
              else {
                uVar8 = (ulong)(uVar7 & 0xffff);
              }
              goto LAB_0010f7c0;
            }
            uVar9 = 6;
          }
          else {
            uVar9 = 4;
          }
        }
        else {
          uVar9 = 2;
        }
      }
    }
    else {
      uVar9 = 1;
    }
  }
  else {
    if ((uint)(ushort)DAT_00131684 < (uint)bVar3) {
      if (((DAT_00131684._2_2_ == 0) || (bVar4 < 6)) || (DAT_00131684._2_2_ <= uVar12)) {
        if (iVar5 != 1) goto LAB_0010f520;
        goto LAB_0010f558;
      }
      goto LAB_0010f7c0;
    }
    uVar9 = 0;
  }
LAB_0010f774:
  iVar5 = snprintf(__s,0x800,"single ghost detect,touch id:%d, count:%d ",uVar9);
LAB_0010f7d4:
  iVar6 = snprintf(__s + iVar5,(long)(0x800 - iVar5),"point_down_num: %d.",(ulong)uVar2);
  uVar12 = 0;
  lVar13 = -0x550;
  iVar6 = iVar6 + iVar5;
  do {
    if (*(short *)(lVar13 + 0x131bd6) != 0) {
      iVar5 = snprintf(__s + iVar6,(long)(0x800 - iVar6)," point[%d] down: %d, %d. ",(ulong)uVar12,
                       (ulong)*(uint *)(tpd_nb + lVar13 + 8),(ulong)*(uint *)(tpd_nb + lVar13 + 0xc)
                      );
      iVar5 = iVar5 + iVar6;
      iVar6 = snprintf(__s + iVar5,(long)(0x800 - iVar5)," point[%d] up: %d, %d. ",(ulong)uVar12,
                       (ulong)*(uint *)(tpd_nb + lVar13 + 0x14),
                       (ulong)*(uint *)((long)&ufp_tp_ops + lVar13));
      iVar6 = iVar6 + iVar5;
    }
    lVar13 = lVar13 + 0x88;
    uVar12 = uVar12 + 1;
  } while (lVar13 != 0);
  _printk(&DAT_00137a9e,"tp_ghost_check",__s);
  if (*(char **)(tpd_cdev + 0xbe8) != (char *)0x0) {
    snprintf(*(char **)(tpd_cdev + 0xbe8),0x800,__s);
  }
  tpd_zlog_record_notify(0x10);
  vfree(__s);
  return 1;
}



/* 0010f924 ghost_check_reset */

void ghost_check_reset(void)

{
  DAT_00131684 = 0;
  DAT_0013170c = 0;
  DAT_00131794 = 0;
  DAT_0013181c = 0;
  DAT_001318a4 = 0;
  DAT_0013192c = 0;
  DAT_001319b4 = 0;
  DAT_00131a3c = 0;
  DAT_00131ac4 = 0;
  DAT_00131b4c = 0;
  return;
}



/* 0010f95c tpd_clean_all_event */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void tpd_clean_all_event(void)

{
  DAT_00131788._0_7_ = 0;
  ram0x0013178f = 0;
  DAT_00131810._0_7_ = 0;
  ram0x00131817 = 0;
  DAT_001319a8._0_7_ = 0;
  ram0x001319af = 0;
  DAT_00131684 = 0;
  DAT_0013170c = 0;
  DAT_00131794 = 0;
  DAT_0013181c = 0;
  DAT_001318a4 = 0;
  DAT_0013192c = 0;
  DAT_001319b4 = 0;
  DAT_00131a3c = 0;
  DAT_00131ac4 = 0;
  DAT_00131b4c = 0;
  DAT_00131678._0_7_ = 0;
  ram0x0013167f = 0;
  DAT_00131700._0_7_ = 0;
  ram0x00131707 = 0;
  DAT_00131898._0_7_ = 0;
  ram0x0013189f = 0;
  DAT_00131920._0_7_ = 0;
  ram0x00131927 = 0;
  DAT_00131a30._0_7_ = 0;
  ram0x00131a37 = 0;
  DAT_00131ab8._0_7_ = 0;
  DAT_00131b40._0_7_ = 0;
  ram0x00131abf = 0;
  ram0x00131b47 = 0;
  return;
}



/* 0010fa04 tpd_report_work_init */

undefined8 tpd_report_work_init(void)

{
  long lVar1;
  long lVar2;
  undefined8 uVar3;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_report_work_init");
  lVar2 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"tpd_report_wq");
  *(long *)(lVar1 + 0x4b8) = lVar2;
  if (lVar2 == 0) {
    _printk(&DAT_00133e5d,"tpd_report_work_init");
    uVar3 = 0xfffffff4;
  }
  else {
    *(undefined8 *)(lVar1 + 0x4c0) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x4c8) = lVar1 + 0x4c8;
    *(long *)(lVar1 + 0x4d0) = lVar1 + 0x4c8;
    *(code **)(lVar1 + 0x4d8) = tpd_id0_report_work;
    init_timer_key(lVar1 + 0x4e0,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x528) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x530) = lVar1 + 0x530;
    *(long *)(lVar1 + 0x538) = lVar1 + 0x530;
    *(code **)(lVar1 + 0x540) = tpd_id1_report_work;
    init_timer_key(lVar1 + 0x548,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x590) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x598) = lVar1 + 0x598;
    *(long *)(lVar1 + 0x5a0) = lVar1 + 0x598;
    *(code **)(lVar1 + 0x5a8) = tpd_id2_report_work;
    init_timer_key(lVar1 + 0x5b0,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x5f8) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x600) = lVar1 + 0x600;
    *(long *)(lVar1 + 0x608) = lVar1 + 0x600;
    *(code **)(lVar1 + 0x610) = tpd_id3_report_work;
    init_timer_key(lVar1 + 0x618,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x660) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x668) = lVar1 + 0x668;
    *(long *)(lVar1 + 0x670) = lVar1 + 0x668;
    *(code **)(lVar1 + 0x678) = tpd_id4_report_work;
    init_timer_key(lVar1 + 0x680,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x6c8) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x6d0) = lVar1 + 0x6d0;
    *(long *)(lVar1 + 0x6d8) = lVar1 + 0x6d0;
    *(code **)(lVar1 + 0x6e0) = tpd_id5_report_work;
    init_timer_key(lVar1 + 0x6e8,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x730) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x738) = lVar1 + 0x738;
    *(long *)(lVar1 + 0x740) = lVar1 + 0x738;
    *(code **)(lVar1 + 0x748) = tpd_id6_report_work;
    init_timer_key(lVar1 + 0x750,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x798) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x7a0) = lVar1 + 0x7a0;
    *(long *)(lVar1 + 0x7a8) = lVar1 + 0x7a0;
    *(code **)(lVar1 + 0x7b0) = tpd_id7_report_work;
    init_timer_key(lVar1 + 0x7b8,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x800) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x808) = lVar1 + 0x808;
    *(long *)(lVar1 + 0x810) = lVar1 + 0x808;
    *(code **)(lVar1 + 0x818) = tpd_id8_report_work;
    init_timer_key(lVar1 + 0x820,&delayed_work_timer_fn,0x200000,0,0);
    *(undefined8 *)(lVar1 + 0x868) = 0xfffffffe00000;
    *(long *)(lVar1 + 0x870) = lVar1 + 0x870;
    *(long *)(lVar1 + 0x878) = lVar1 + 0x870;
    *(code **)(lVar1 + 0x880) = tpd_id9_report_work;
    init_timer_key(lVar1 + 0x888,&delayed_work_timer_fn,0x200000,0,0);
    uVar3 = 0;
  }
  return uVar3;
}



/* 0010fca8 tpd_id0_report_work */

void tpd_id0_report_work(void)

{
  edge_long_press_up(DAT_001316a8,0);
  return;
}



/* 0010fcd4 tpd_id1_report_work */

void tpd_id1_report_work(void)

{
  edge_long_press_up(DAT_00131730,1);
  return;
}



/* 0010fd00 tpd_id2_report_work */

void tpd_id2_report_work(void)

{
  edge_long_press_up(DAT_001317b8,2);
  return;
}



/* 0010fd2c tpd_id3_report_work */

void tpd_id3_report_work(void)

{
  edge_long_press_up(DAT_00131840,3);
  return;
}



/* 0010fd58 tpd_id4_report_work */

void tpd_id4_report_work(void)

{
  edge_long_press_up(DAT_001318c8,4);
  return;
}



/* 0010fd84 tpd_id5_report_work */

void tpd_id5_report_work(void)

{
  edge_long_press_up(DAT_00131950,5);
  return;
}



/* 0010fdb0 tpd_id6_report_work */

void tpd_id6_report_work(void)

{
  edge_long_press_up(DAT_001319d8,6);
  return;
}



/* 0010fddc tpd_id7_report_work */

void tpd_id7_report_work(void)

{
  edge_long_press_up(DAT_00131a60,7);
  return;
}



/* 0010fe08 tpd_id8_report_work */

void tpd_id8_report_work(void)

{
  edge_long_press_up(DAT_00131ae8,8);
  return;
}



/* 0010fe34 tpd_id9_report_work */

void tpd_id9_report_work(void)

{
  edge_long_press_up(DAT_00131b70,9);
  return;
}



/* 0010fe60 tpd_report_work_deinit */

void tpd_report_work_deinit(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_report_work_deinit");
  cancel_delayed_work_sync(lVar1 + 0x4c0);
  cancel_delayed_work_sync(lVar1 + 0x528);
  cancel_delayed_work_sync(lVar1 + 0x590);
  cancel_delayed_work_sync(lVar1 + 0x5f8);
  cancel_delayed_work_sync(lVar1 + 0x660);
  cancel_delayed_work_sync(lVar1 + 0x6c8);
  cancel_delayed_work_sync(lVar1 + 0x730);
  cancel_delayed_work_sync(lVar1 + 0x798);
  cancel_delayed_work_sync(lVar1 + 0x800);
  cancel_delayed_work_sync(lVar1 + 0x868);
  return;
}



/* 0010feec point_is_in_limit_area */

undefined8 point_is_in_limit_area(uint param_1,ushort param_2)

{
  uint uVar1;
  ushort uVar2;
  
  uVar1 = param_1 & 0xffff;
  if ((*(uint *)(tpd_cdev + 0x10) | 2) == 3) {
    if (uVar1 < *(byte *)(tpd_cdev + 0x27)) {
      return 1;
    }
    if ((int)((uint)*(ushort *)(tpd_cdev + 0x442) - (uint)*(byte *)(tpd_cdev + 0x28)) <
        (int)(param_1 & 0xffff)) {
      return 1;
    }
    if (param_2 < *(byte *)(tpd_cdev + 0x29)) {
      return 1;
    }
    if ((int)((uint)*(ushort *)(tpd_cdev + 0x444) - (uint)*(byte *)(tpd_cdev + 0x2a)) <
        (int)(uint)param_2) {
      return 1;
    }
  }
  else {
    if (uVar1 < *(byte *)(tpd_cdev + 0x27)) {
      return 1;
    }
    uVar2 = *(ushort *)(tpd_cdev + 0x442);
    if ((int)((uint)uVar2 - (uint)*(byte *)(tpd_cdev + 0x28)) < (int)uVar1) {
      return 1;
    }
    if (((*(uint *)(tpd_cdev + 0x10) == 0) &&
        ((uVar1 < (uint)*(byte *)(tpd_cdev + 0x34) * 3 >> 1 ||
         ((int)((uint)uVar2 - ((uint)*(byte *)(tpd_cdev + 0x35) * 3 >> 1)) < (int)uVar1)))) &&
       (((DAT_00131678._3_1_ & 1) != 0 ||
        (((((((DAT_00131700._3_1_ & 1) != 0 || ((DAT_00131788._3_1_ & 1) != 0)) ||
            ((DAT_00131810._3_1_ & 1) != 0)) ||
           (((DAT_00131898._3_1_ & 1) != 0 || ((DAT_00131920._3_1_ & 1) != 0)))) ||
          (((DAT_001319a8._3_1_ & 1) != 0 ||
           (((DAT_00131a30._3_1_ & 1) != 0 || ((DAT_00131ab8._3_1_ & 1) != 0)))))) ||
         (DAT_00131b40._3_1_ == '\x01')))))) {
      _printk(&DAT_00135ea1,uVar1,param_2);
      return 1;
    }
    if ((*(char *)(tpd_cdev + 0x38) != '\0') && (*(ushort *)(tpd_cdev + 0x2e) < param_2)) {
      if (uVar1 < *(ushort *)(tpd_cdev + 0x2c)) {
        return 1;
      }
      if ((int)((uint)uVar2 - (uint)*(ushort *)(tpd_cdev + 0x2c)) < (int)uVar1) {
        return 1;
      }
    }
  }
  return 0;
}



/* 001100ac edge_long_press_up */

void edge_long_press_up(undefined8 param_1,ushort param_2)

{
  long lVar1;
  code *pcVar2;
  ulong uVar3;
  
  lVar1 = tpd_cdev;
  if (9 < param_2) goto LAB_00110318;
  uVar3 = ((ulong)param_2 + (ulong)param_2 * 0x10) * 8;
  if (*(char *)((long)&DAT_00131678 + uVar3 + 4) == '\0') {
    return;
  }
  mutex_lock(tpd_cdev + 0xc90);
  input_event(param_1,3,0x2f,param_2);
  input_mt_report_slot_state(param_1,0,0);
  if (param_2 == 0) {
LAB_00110158:
    if (((DAT_00131700._3_1_ & 1) == 0) && ((DAT_00131700._4_1_ & 1) == 0)) {
      if (param_2 != 2) goto LAB_001101c8;
LAB_0011017c:
      if (((DAT_00131810._3_1_ & 1) == 0) && ((DAT_00131810._4_1_ & 1) == 0)) {
        if (param_2 != 4) goto LAB_001101ec;
LAB_00110210:
        if (((DAT_00131920._3_1_ & 1) == 0) && ((DAT_00131920._4_1_ & 1) == 0)) {
          if (param_2 != 6) goto LAB_00110234;
LAB_00110258:
          if (((DAT_00131a30._3_1_ & 1) == 0) && ((DAT_00131a30._4_1_ & 1) == 0)) {
            if (param_2 != 8) goto LAB_0011027c;
LAB_001102a0:
            if (((DAT_00131b40._3_1_ & 1) == 0) && ((DAT_00131b40._4_1_ & 1) == 0)) {
LAB_001102b8:
              input_event(param_1,1,0x14a,0);
            }
          }
        }
      }
    }
  }
  else if (((DAT_00131678._3_1_ & 1) == 0) && ((DAT_00131678._4_1_ & 1) == 0)) {
    if (param_2 != 1) goto LAB_00110158;
LAB_001101c8:
    if (((DAT_00131788._3_1_ & 1) == 0) && ((DAT_00131788._4_1_ & 1) == 0)) {
      if (param_2 != 3) goto LAB_0011017c;
LAB_001101ec:
      if (((DAT_00131898._3_1_ & 1) == 0) && ((DAT_00131898._4_1_ & 1) == 0)) {
        if (param_2 != 5) goto LAB_00110210;
LAB_00110234:
        if (((DAT_001319a8._3_1_ & 1) == 0) && ((DAT_001319a8._4_1_ & 1) == 0)) {
          if (param_2 != 7) goto LAB_00110258;
LAB_0011027c:
          if (((DAT_00131ab8._3_1_ & 1) == 0) && ((DAT_00131ab8._4_1_ & 1) == 0)) {
            if (param_2 != 9) goto LAB_001102a0;
            goto LAB_001102b8;
          }
        }
      }
    }
  }
  input_event(param_1,0,0,0);
  mutex_unlock(lVar1 + 0xc90);
  *(undefined1 *)((long)&DAT_00131678 + uVar3 + 4) = 0;
  if ((uVar3 | 4) < 0x551) {
    _printk(&DAT_0013a4f6,"edge_long_press_up",param_2,*(undefined4 *)(&point_report_info + uVar3),
            *(undefined4 *)(&DAT_0013162c + uVar3));
    return;
  }
LAB_00110318:
                    /* WARNING: Does not return */
  pcVar2 = (code *)SoftwareBreakpoint(1,0x11031c);
  (*pcVar2)();
}



/* 00110320 change_tp_state */

void change_tp_state(uint param_1)

{
  long lVar1;
  code *pcVar2;
  undefined *puVar3;
  
  lVar1 = tpd_cdev;
  mutex_lock(tpd_cdev + 0xcc0);
  if ((3 < param_1) || (2 < current_lcd_state)) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x5512,0x110498);
    (*pcVar2)();
  }
  _printk(&DAT_0013df70,(&lcdstate_to_str)[current_lcd_state],
          *(undefined8 *)(lcdchange_to_str + (ulong)param_1 * 8));
  if (current_lcd_state == 2) {
    if (param_1 == 0) goto LAB_0011043c;
    if (param_1 == 2) {
LAB_001103f4:
      current_lcd_state = 0;
      queue_work_on(0x20,*(undefined8 *)(tpd_cdev + 0x4b0),tpd_cdev + 0x9c0);
      DAT_00131ba8 = 0;
      goto LAB_0011043c;
    }
    if (param_1 != 3) goto LAB_00110458;
LAB_001103c4:
    current_lcd_state = 1;
    DAT_00131c20 = 0;
LAB_0011042c:
    DAT_00131ba8 = 0;
    queue_work_on(0x20,*(undefined8 *)(tpd_cdev + 0x4b0),tpd_cdev + 0x9a0);
  }
  else {
    if (current_lcd_state == 1) {
      if (param_1 == 1) {
LAB_00110418:
        current_lcd_state = 2;
        goto LAB_0011042c;
      }
      if (param_1 == 2) goto LAB_001103f4;
LAB_00110458:
      puVar3 = &DAT_00139fed;
    }
    else {
      if (current_lcd_state == 0) {
        if (param_1 != 3) {
          if (param_1 != 1) goto LAB_00110458;
          goto LAB_00110418;
        }
        goto LAB_001103c4;
      }
      current_lcd_state = 0;
      queue_work_on(0x20,*(undefined8 *)(tpd_cdev + 0x4b0),tpd_cdev + 0x9c0);
      puVar3 = &DAT_001337b9;
      DAT_00131ba8 = 0;
    }
    _printk(puVar3);
  }
LAB_0011043c:
  mutex_unlock(lVar1 + 0xcc0);
  return;
}



/* 0011049c suspend_tp_need_awake */

uint suspend_tp_need_awake(void)

{
  uint uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(tpd_cdev + 0xe68);
  if (pcVar2 == (code *)0x0) {
    return 0;
  }
  if (*(int *)(pcVar2 + -4) != -0x7f7ec5d7) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1104d0);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1 & 1;
}



/* 001104f0 tp_esd_check */

uint tp_esd_check(void)

{
  uint uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(tpd_cdev + 0xe98);
  if (pcVar2 == (code *)0x0) {
    return 0;
  }
  if (*(int *)(pcVar2 + -4) != -0x7f7ec5d7) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x110524);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1 & 1;
}



/* 00110544 set_lcd_reset_processing */

void set_lcd_reset_processing(byte param_1)

{
  *(byte *)(tpd_cdev + 0x18) = param_1;
  _printk(&DAT_00139a18,param_1 & 1);
  return;
}



/* 00110580 set_gpio_mode */

undefined8 set_gpio_mode(undefined4 param_1)

{
  undefined8 uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(tpd_cdev + 0xf58);
  if (pcVar2 == (code *)0x0) {
    return 0xfffffffb;
  }
  if (*(int *)(pcVar2 + -4) != -0x1e29c23f) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8229,0x1105bc);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)(tpd_cdev,param_1);
  return uVar1;
}



/* 001105d8 tpd_reset_gpio_output */

void tpd_reset_gpio_output(uint param_1)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(tpd_cdev + 0xeb0);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x5d031687) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x110610);
      (*pcVar1)();
    }
    (*pcVar1)(param_1 & 1);
  }
  return;
}



/* 00110624 ufp_report_lcd_state_delayed_work */

void ufp_report_lcd_state_delayed_work(void)

{
  long lVar1;
  undefined8 uVar2;
  undefined8 uVar3;
  
  lVar1 = tpd_cdev;
  uVar3 = *(undefined8 *)(tpd_cdev + 0x4b0);
  uVar2 = __msecs_to_jiffies();
  mod_delayed_work_on(0x20,uVar3,lVar1 + 0x9e0,uVar2);
  return;
}



/* 0011066c cancel_report_lcd_state_delayed_work */

void cancel_report_lcd_state_delayed_work(void)

{
  cancel_delayed_work_sync(tpd_cdev + 0x9e0);
  return;
}



/* 00110698 tpd_resume_work_init */

void tpd_resume_work_init(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_resume_work_init");
  *(undefined8 *)(lVar1 + 0x9c0) = 0xfffffffe00000;
  *(long *)(lVar1 + 0x9c8) = lVar1 + 0x9c8;
  *(long *)(lVar1 + 0x9d0) = lVar1 + 0x9c8;
  *(code **)(lVar1 + 0x9d8) = tpd_resume_work;
  *(undefined8 *)(lVar1 + 0x9a0) = 0xfffffffe00000;
  *(long *)(lVar1 + 0x9a8) = lVar1 + 0x9a8;
  *(long *)(lVar1 + 0x9b0) = lVar1 + 0x9a8;
  *(undefined8 *)(lVar1 + 0x9e0) = 0xfffffffe00000;
  *(code **)(lVar1 + 0x9b8) = tpd_suspend_work;
  *(long *)(lVar1 + 0x9e8) = lVar1 + 0x9e8;
  *(long *)(lVar1 + 0x9f0) = lVar1 + 0x9e8;
  *(code **)(lVar1 + 0x9f8) = ufp_report_lcd_state_work;
  init_timer_key(lVar1 + 0xa00,&delayed_work_timer_fn,0x200000,0,0);
  return;
}



/* 0011074c tpd_resume_work */

void tpd_resume_work(void)

{
  long lVar1;
  code *pcVar2;
  
  lVar1 = tpd_cdev;
  pcVar2 = *(code **)(tpd_cdev + 0xe08);
  if (pcVar2 != (code *)0x0) {
    if (*(int *)(pcVar2 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x110788);
      (*pcVar2)();
    }
    (*pcVar2)(*(undefined8 *)(tpd_cdev + 0xdd8));
    *(undefined4 *)(lVar1 + 0x4a8) = 0;
  }
  return;
}



/* 001107a4 tpd_suspend_work */

void tpd_suspend_work(void)

{
  code *pcVar1;
  
  pcVar1 = *(code **)(tpd_cdev + 0xe10);
  if (pcVar1 != (code *)0x0) {
    if (*(int *)(pcVar1 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1107dc);
      (*pcVar1)();
    }
    (*pcVar1)(*(undefined8 *)(tpd_cdev + 0xdd8));
  }
  return;
}



/* 001107f0 ufp_report_lcd_state_work */

void ufp_report_lcd_state_work(void)

{
  ufp_report_lcd_state();
  return;
}



/* 00110810 tpd_resume_work_deinit */

void tpd_resume_work_deinit(void)

{
  long lVar1;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00132ab3,"tpd_resume_work_deinit");
  cancel_work_sync(lVar1 + 0x9c0);
  cancel_work_sync(lVar1 + 0x9a0);
  cancel_delayed_work_sync(lVar1 + 0x9e0);
  return;
}



/* 00110868 ufp_get_lcdstate */

undefined4 ufp_get_lcdstate(void)

{
  return current_lcd_state;
}



/* 00110878 ufp_report_gesture_uevent */

void ufp_report_gesture_uevent(char *param_1)

{
  long lVar1;
  int iVar2;
  undefined8 uVar3;
  char *local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  uStack_30 = 0;
  local_38 = param_1;
  kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_38);
  pm_wakeup_ws_event(tp_wakeup,2000,0);
  iVar2 = strcmp(param_1,"single_tap=true");
  if (iVar2 == 0) {
    uVar3 = 0x96;
    DAT_00131ba8 = 1;
  }
  else {
    iVar2 = strcmp(param_1,"double_tap=true");
    if (iVar2 != 0) goto LAB_00110920;
    uVar3 = 0;
  }
  mod_delayed_work_on(0x20,DAT_00131c18,&DAT_00131bb0,uVar3);
LAB_00110920:
  _printk(&DAT_0013c546,param_1);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00110960 report_ufp_uevent */

void report_ufp_uevent(int param_1)

{
  byte bVar1;
  long lVar2;
  long lVar3;
  code *pcVar4;
  char *local_40;
  char *local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar3 = tpd_cdev;
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  if ((param_1 == 0) || ((report_ufp_uevent_area_meet_down & 1) != 0)) {
    bVar1 = 0;
    if (param_1 == 0) {
      bVar1 = report_ufp_uevent_area_meet_down;
    }
    if (bVar1 == 1) {
      report_ufp_uevent_area_meet_down = 0;
      if (ufp_tp_ops == 0) {
        _printk(&DAT_00138864);
      }
      else {
        local_40 = "areameet_up=true";
        if (2 < current_lcd_state) goto LAB_00110be0;
        local_38 = (&tppower_to_str)[current_lcd_state];
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0013889c,"areameet_up=true",local_38);
      }
      if (*(int *)(lVar3 + 0x458) == 0) {
        if ((char)DAT_00131c40 != '\0') {
          complete(&DAT_00131c20);
          DAT_00131c40._0_1_ = '\0';
        }
      }
      else {
        if (((char)DAT_00131c40 != '\0') && ((DAT_00131c42 & 1) == 0)) {
          complete(&DAT_00131c20);
          DAT_00131c40._0_1_ = '\0';
        }
        if ((DAT_00131c40._1_1_ == '\x01') && ((DAT_00131c42 & 1) == 0)) {
          DAT_00131c40._1_1_ = '\0';
          _printk(&DAT_00138100);
        }
      }
    }
  }
  else {
    report_ufp_uevent_area_meet_down = 1;
    if (current_lcd_state == 0) {
      if (ufp_tp_ops == 0) {
        _printk(&DAT_00138864);
      }
      else {
        local_40 = "areameet_down=true";
        local_38 = "TP_POWER_STATUS=2";
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0013889c,"areameet_down=true",local_38);
      }
      DAT_00131c40._1_1_ = '\x01';
    }
    else {
      if (ufp_tp_ops == 0) {
        _printk(&DAT_00138864);
      }
      else {
        ufp_report_gesture_uevent("single_tap=true");
        local_40 = "aod_areameet_down=true";
        if (2 < current_lcd_state) {
LAB_00110be0:
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x110be4);
          (*pcVar4)();
        }
        local_38 = (&tppower_to_str)[current_lcd_state];
        uStack_30 = 0;
        kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
        _printk(&DAT_0013889c,"aod_areameet_down=true",local_38);
      }
      DAT_00131c40._0_1_ = '\x01';
    }
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_28) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}



/* 00110be8 one_key_report */

void one_key_report(int param_1,int param_2,int param_3,uint param_4)

{
  ushort uVar1;
  long lVar2;
  code *pcVar3;
  char *pcVar4;
  char *local_40;
  undefined8 uStack_38;
  undefined8 local_30;
  long local_28;
  
  lVar2 = sp_el0;
  local_28 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    if (9 < param_4) {
LAB_00110d20:
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x110d24);
      (*pcVar3)();
    }
    if (one_key_report_one_key_finger[param_4] == '\0') goto LAB_00110ca0;
    one_key_report_one_key_finger[param_4] = 0;
    pcVar4 = "fp_gesture_up=true";
    one_key_report_one_key_down = 0;
  }
  else {
    uVar1 = *(ushort *)(tpd_cdev + 0x22);
    if (param_2 <= (int)((uint)*(ushort *)(tpd_cdev + 0x1e) - (uint)uVar1) ||
        (int)((uint)uVar1 + (uint)*(ushort *)(tpd_cdev + 0x1e)) <= param_2) goto LAB_00110ca0;
    if ((param_3 <= (int)((uint)*(ushort *)(tpd_cdev + 0x20) - (uint)uVar1)) ||
       ((int)((uint)*(ushort *)(tpd_cdev + 0x20) + (uint)uVar1) <= param_3)) goto LAB_00110ca0;
    if (9 < param_4) goto LAB_00110d20;
    if ((one_key_report_one_key_finger[param_4] != '\0') || ((one_key_report_one_key_down & 1) != 0)
       ) goto LAB_00110ca0;
    one_key_report_one_key_finger[param_4] = 1;
    pcVar4 = "fp_gesture_down=true";
    one_key_report_one_key_down = 1;
  }
  uStack_38 = *(undefined8 *)(one_key_finger_id + (ulong)param_4 * 8);
  local_30 = 0;
  local_40 = pcVar4;
  kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_40);
  _printk(&DAT_0013c546,pcVar4);
LAB_00110ca0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00110d28 uf_touch_report */

void uf_touch_report(int param_1,int param_2,int param_3,uint param_4)

{
  ushort uVar1;
  long lVar2;
  code *pcVar3;
  char *pcVar4;
  char *local_30;
  undefined *local_28;
  undefined8 uStack_20;
  long local_18;
  
  lVar2 = sp_el0;
  local_18 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    if (9 < param_4) {
LAB_00110ed8:
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x110edc);
      (*pcVar3)();
    }
    if (*(int *)(uf_touch_report_fp_finger + (ulong)param_4 * 4) == 0) goto LAB_00110e30;
    *(undefined4 *)(uf_touch_report_fp_finger + (ulong)param_4 * 4) = 0;
    uf_touch_report_area_meet_down = 0;
    if (ufp_tp_ops == 0) {
LAB_00110e6c:
      _printk(&DAT_00138864);
      goto LAB_00110e30;
    }
    local_30 = "areameet_up=true";
    if (2 < current_lcd_state) goto LAB_00110ed8;
    local_28 = (&tppower_to_str)[current_lcd_state];
    uStack_20 = 0;
    kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_30);
    pcVar4 = "areameet_up=true";
  }
  else {
    uVar1 = *(ushort *)(tpd_cdev + 0x22);
    if (param_2 <= (int)((uint)*(ushort *)(tpd_cdev + 0x1e) - (uint)uVar1) ||
        (int)((uint)uVar1 + (uint)*(ushort *)(tpd_cdev + 0x1e)) <= param_2) goto LAB_00110e30;
    if ((param_3 <= (int)((uint)*(ushort *)(tpd_cdev + 0x20) - (uint)uVar1)) ||
       ((int)((uint)*(ushort *)(tpd_cdev + 0x20) + (uint)uVar1) <= param_3)) goto LAB_00110e30;
    if (9 < param_4) goto LAB_00110ed8;
    if ((*(int *)(uf_touch_report_fp_finger + (ulong)param_4 * 4) != 0) ||
       ((uf_touch_report_area_meet_down & 1) != 0)) goto LAB_00110e30;
    *(undefined4 *)(uf_touch_report_fp_finger + (ulong)param_4 * 4) = 1;
    uf_touch_report_area_meet_down = 1;
    if (ufp_tp_ops == 0) goto LAB_00110e6c;
    local_30 = "areameet_down=true";
    if (2 < current_lcd_state) goto LAB_00110ed8;
    local_28 = (&tppower_to_str)[current_lcd_state];
    uStack_20 = 0;
    kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_30);
    pcVar4 = "areameet_down=true";
  }
  _printk(&DAT_0013889c,pcVar4,local_28);
LAB_00110e30:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_18) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00110ee0 ufp_report_lcd_state */

void ufp_report_lcd_state(void)

{
  long lVar1;
  long lVar2;
  int iVar3;
  undefined *puVar4;
  char *local_38;
  undefined8 uStack_30;
  long local_28;
  
  lVar2 = ufp_tp_ops;
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  if (ufp_tp_ops == 0) {
    puVar4 = &DAT_00138864;
  }
  else {
    local_38 = "aod=true";
    uStack_30 = 0;
    _printk(&DAT_001369ee);
    iVar3 = kobject_uevent_env(lVar2 + 0x10,2,&local_38);
    if (iVar3 == 0) goto LAB_00110f48;
    puVar4 = &DAT_001388bd;
  }
  _printk(puVar4);
LAB_00110f48:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00110f84 ufp_notifier_cb */

undefined8 ufp_notifier_cb(int param_1)

{
  change_tp_state(param_1 != 0);
  return 0;
}



/* 00110fb0 ufp_mac_init */

undefined8 ufp_mac_init(void)

{
  DAT_00131c18 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"single_tap_cancel");
  DAT_00131bb0 = 0xfffffffe00000;
  DAT_00131bb8 = &DAT_00131bb8;
  DAT_00131bc0 = &DAT_00131bb8;
  DAT_00131bc8 = ufp_single_tap_work;
  init_timer_key(&DAT_00131bd0,&delayed_work_timer_fn,0x200000,0,0);
  DAT_00131ba8 = 0;
  wakeup_source_add(tp_wakeup);
  DAT_00131c20 = 0;
  __init_swait_queue_head(&DAT_00131c28,"&x->wait",&init_completion___key);
  DAT_00131c40 = 0;
  DAT_00131c42 = 0;
  if (*(long *)(tpd_cdev + 0xdd0) != 0) {
    ufp_tp_ops = *(long *)(tpd_cdev + 0xdd0);
  }
  return 0;
}



/* 0011108c ufp_single_tap_work */

void ufp_single_tap_work(void)

{
  DAT_00131ba8 = 0;
  return;
}



/* 0011109c ufp_mac_exit */

void ufp_mac_exit(void)

{
  cancel_delayed_work_sync(&DAT_00131bb0);
  __flush_workqueue(DAT_00131c18);
  destroy_workqueue(DAT_00131c18);
  wakeup_source_remove(tp_wakeup);
  ufp_tp_ops = 0;
  return;
}



/* 001110f0 syna_dev_free_input_events */

void syna_dev_free_input_events(long param_1)

{
  long lVar1;
  int iVar2;
  
  lVar1 = *(long *)(param_1 + 0x3b0);
  if (lVar1 != 0) {
    mutex_lock(param_1 + 0x278);
    iVar2 = 0;
    do {
      input_event(lVar1,3,0x2f,iVar2);
      input_mt_report_slot_state(lVar1,0,0);
      tpd_touch_release(lVar1,iVar2);
      one_key_report(0,0xffffffff,0xffffffff,iVar2);
      iVar2 = iVar2 + 1;
    } while (iVar2 != 10);
    input_event(lVar1,1,0x14a,0);
    input_event(lVar1,1,0x145,0);
    if (DAT_00131c40._1_1_ != '\0' || (char)DAT_00131c40 != '\0') {
      DAT_00131c42 = 1;
      _printk(&DAT_0013aee5,"syna_dev_free_input_events");
    }
    report_ufp_uevent(0);
    input_event(lVar1,0,0,0);
    mutex_unlock(param_1 + 0x278);
  }
  return;
}



/* 0011120c syna_dev_set_screen_on_fp_mode */

int syna_dev_set_screen_on_fp_mode(undefined8 *param_1,undefined4 param_2)

{
  int iVar1;
  
  _printk(&DAT_001375c2,"syna_dev_set_screen_on_fp_mode");
  if (param_1 == (undefined8 *)0x0) {
    iVar1 = -0x16;
  }
  else {
    iVar1 = syna_tcm_set_dynamic_config(*param_1,0xd4,3,param_2);
    if (iVar1 < 0) {
      _printk(&DAT_0013be12,"syna_dev_set_screen_on_fp_mode");
    }
    else {
      iVar1 = 0;
    }
  }
  return iVar1;
}



/* 00111298 syna_dev_set_tp_report_rate */

undefined8 syna_dev_set_tp_report_rate(undefined8 *param_1,int param_2,undefined4 param_3)

{
  undefined8 uVar1;
  undefined *puVar2;
  
  _printk(&DAT_0013b5e5,"syna_dev_set_tp_report_rate","syna_dev_set_tp_report_rate");
  if (param_1 == (undefined8 *)0x0) {
    return 0xffffffea;
  }
  if (param_2 < 2) {
    if (param_2 == 0) {
      uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,0,param_3);
      if ((int)uVar1 < 0) {
        return uVar1;
      }
      puVar2 = &DAT_00135f02;
    }
    else {
      if (param_2 != 1) {
LAB_001113dc:
        _printk(&DAT_0013cc2f,"syna_dev_set_tp_report_rate","syna_dev_set_tp_report_rate");
        return 0;
      }
      uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,5,param_3);
      if ((int)uVar1 < 0) {
        return uVar1;
      }
      puVar2 = &DAT_0013a520;
    }
  }
  else if (param_2 == 2) {
    uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,4,param_3);
    if ((int)uVar1 < 0) {
      return uVar1;
    }
    puVar2 = &DAT_00137ac0;
  }
  else if (param_2 == 3) {
    uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,3,param_3);
    if ((int)uVar1 < 0) {
      return uVar1;
    }
    puVar2 = &DAT_00134533;
  }
  else {
    if (param_2 != 4) goto LAB_001113dc;
    uVar1 = syna_tcm_set_dynamic_config(*param_1,0xe6,1,param_3);
    if ((int)uVar1 < 0) {
      return uVar1;
    }
    puVar2 = &DAT_00138d4b;
  }
  _printk(puVar2,"syna_dev_set_tp_report_rate");
  return 0;
}



/* 001113fc syna_dev_do_reflash */

void syna_dev_do_reflash(long *param_1,uint param_2)

{
  long lVar1;
  int iVar2;
  undefined4 *local_30;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_30 = (undefined4 *)0x0;
  if (param_1 == (long *)0x0) {
    iVar2 = -0x16;
  }
  else {
    lVar1 = *param_1;
    iVar2 = request_firmware(&local_30,"syna_firmware.img",*(undefined8 *)(param_1[1] + 0x70));
    if (iVar2 < 0) {
      _printk(&DAT_0013812d,"syna_dev_do_reflash","syna_firmware.img");
    }
    else {
      iVar2 = syna_tcm_do_fw_update(lVar1,*(undefined8 *)(local_30 + 2),*local_30,0,param_2 & 1);
      if (iVar2 < 0) {
        _printk(&DAT_00132c76,"syna_dev_do_reflash");
      }
      _printk(&DAT_00135127,"syna_dev_do_reflash",*(undefined1 *)(lVar1 + 9));
      release_firmware(local_30);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}



/* 00111504 syna_dev_set_charger_mode */

uint syna_dev_set_charger_mode(undefined8 *param_1,undefined4 param_2,undefined4 param_3)

{
  uint uVar1;
  
  _printk(&DAT_00136a10,"syna_dev_set_charger_mode",param_2);
  if (param_1 == (undefined8 *)0x0) {
    uVar1 = 0xffffffea;
  }
  else {
    uVar1 = syna_tcm_set_dynamic_config(*param_1,7,param_2,param_3);
    uVar1 = uVar1 & (int)uVar1 >> 0x1f;
  }
  return uVar1;
}



/* 00111578 syna_dev_set_sensibility_level */

undefined8 syna_dev_set_sensibility_level(undefined8 *param_1,int param_2,undefined4 param_3)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  _printk(&DAT_0013b5e5,"syna_dev_set_sensibility_level","syna_dev_set_sensibility_level");
  if (param_1 == (undefined8 *)0x0) {
    uVar2 = 0xffffffea;
  }
  else {
    puVar1 = &DAT_0013cc2f;
    if (param_2 < 2) {
      if (param_2 == 0) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_00134552;
      }
      else if (param_2 == 1) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8 | 1,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_00138d6a;
      }
    }
    else if (param_2 == 2) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8 | 2,
                         param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_001337f8;
    }
    else if (param_2 == 3) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8 | 3,
                         param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_00133828;
    }
    else {
      puVar1 = &DAT_0013cc2f;
      if (param_2 == 4) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(int *)(param_1 + 0xc0) << 4 | *(int *)((long)param_1 + 0x604) << 8 | 4,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_001364a5;
      }
    }
    _printk(puVar1,"syna_dev_set_sensibility_level","syna_dev_set_sensibility_level");
    uVar2 = 0;
  }
  return uVar2;
}



/* 00111718 syna_dev_set_follow_hand_level */

undefined8 syna_dev_set_follow_hand_level(undefined8 *param_1,int param_2,undefined4 param_3)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  _printk(&DAT_0013b5e5,"syna_dev_set_follow_hand_level","syna_dev_set_follow_hand_level");
  if (param_1 == (undefined8 *)0x0) {
    uVar2 = 0xffffffea;
  }
  else {
    puVar1 = &DAT_0013cc2f;
    if (param_2 < 2) {
      if (param_2 == 0) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(uint *)((long)param_1 + 0x5fc) | *(int *)((long)param_1 + 0x604) << 8,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_0013be46;
      }
      else if (param_2 == 1) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(uint *)((long)param_1 + 0x5fc) | *(int *)((long)param_1 + 0x604) << 8 |
                           0x10,param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_00139485;
      }
    }
    else if (param_2 == 2) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(uint *)((long)param_1 + 0x5fc) | *(int *)((long)param_1 + 0x604) << 8 |
                         0x20,param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_0013af1b;
    }
    else if (param_2 == 3) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(uint *)((long)param_1 + 0x5fc) | *(int *)((long)param_1 + 0x604) << 8 |
                         0x30,param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_0013a53f;
    }
    else {
      puVar1 = &DAT_0013cc2f;
      if (param_2 == 4) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(uint *)((long)param_1 + 0x5fc) | *(int *)((long)param_1 + 0x604) << 8 |
                           0x40,param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_0013c56e;
      }
    }
    _printk(puVar1,"syna_dev_set_follow_hand_level","syna_dev_set_follow_hand_level");
    uVar2 = 0;
  }
  return uVar2;
}



/* 001118a4 syna_dev_set_stability_level */

undefined8 syna_dev_set_stability_level(undefined8 *param_1,int param_2,undefined4 param_3)

{
  undefined *puVar1;
  undefined8 uVar2;
  
  _printk(&DAT_0013b5e5,"syna_dev_set_stability_level","syna_dev_set_stability_level");
  if (param_1 == (undefined8 *)0x0) {
    uVar2 = 0xffffffea;
  }
  else {
    puVar1 = &DAT_0013cc2f;
    if (param_2 < 2) {
      if (param_2 == 0) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4,param_3)
        ;
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_0013be93;
      }
      else if (param_2 == 1) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4 | 0x100,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_00137af1;
      }
    }
    else if (param_2 == 2) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4 | 0x200,
                         param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_0013af4b;
    }
    else if (param_2 == 3) {
      uVar2 = syna_tcm_set_dynamic_config
                        (*param_1,0xf9,
                         *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4 | 0x300,
                         param_3);
      if ((int)uVar2 < 0) {
        return uVar2;
      }
      puVar1 = &DAT_0013a56f;
    }
    else {
      puVar1 = &DAT_0013cc2f;
      if (param_2 == 4) {
        uVar2 = syna_tcm_set_dynamic_config
                          (*param_1,0xf9,
                           *(uint *)((long)param_1 + 0x5fc) | *(int *)(param_1 + 0xc0) << 4 | 0x400,
                           param_3);
        if ((int)uVar2 < 0) {
          return uVar2;
        }
        puVar1 = &DAT_00135f21;
      }
    }
    _printk(puVar1,"syna_dev_set_stability_level","syna_dev_set_stability_level");
    uVar2 = 0;
  }
  return uVar2;
}



/* 00111a30 syna_dev_set_display_rotation */

undefined8 syna_dev_set_display_rotation(undefined8 *param_1,undefined4 param_2,undefined4 param_3)

{
  int iVar1;
  undefined8 uVar2;
  undefined4 uVar3;
  
  iVar1 = *(int *)((long)param_1 + 0x60c);
  _printk(&DAT_00138d9a,"syna_dev_set_display_rotation",param_2);
  if (param_1 == (undefined8 *)0x0) {
    uVar2 = 0xffffffea;
  }
  else {
    uVar3 = 0;
    if (iVar1 != 0) {
      uVar3 = 3;
    }
    uVar2 = syna_tcm_set_dynamic_config(*param_1,0xb6,uVar3,param_3);
    if (-1 < (int)uVar2) {
      _printk(&DAT_001394b5,"syna_dev_set_display_rotation",uVar3);
      uVar2 = syna_tcm_set_dynamic_config(*param_1,0xb5,iVar1,param_3);
      if (-1 < (int)uVar2) {
        _printk(&DAT_0013af79,"syna_dev_set_display_rotation",iVar1);
        uVar2 = syna_tcm_set_dynamic_config(*param_1,0xb4,param_2,param_3);
        if (-1 < (int)uVar2) {
          _printk(&DAT_00132655,"syna_dev_set_display_rotation",param_2);
          uVar2 = 0;
        }
      }
    }
  }
  return uVar2;
}



/* 00111b38 syna_dev_set_play_game */

uint syna_dev_set_play_game(undefined8 *param_1,uint param_2,undefined4 param_3)

{
  uint uVar1;
  
  _printk(&DAT_00136a10,"syna_dev_set_play_game",param_2);
  if (param_1 == (undefined8 *)0x0) {
    uVar1 = 0xffffffea;
  }
  else {
    uVar1 = syna_tcm_set_dynamic_config(*param_1,0xd5,param_2 | param_2 << 1,param_3);
    uVar1 = uVar1 & (int)uVar1 >> 0x1f;
  }
  return uVar1;
}



/* 00111bac syna_recovery_game_mode_after_reset */

undefined8 syna_recovery_game_mode_after_reset(long *param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined4 uVar4;
  undefined *puVar5;
  
  if (param_1 == (long *)0x0) {
    return 0xffffffea;
  }
  lVar3 = param_1[0x4e];
  if (((lVar3 == -0xa8) || (*(int *)(lVar3 + 0xb8) == 0)) || ((*(byte *)(lVar3 + 0xbc) & 1) == 0)) {
    uVar4 = *(undefined4 *)(*param_1 + 0x20c);
  }
  else {
    uVar4 = 0;
  }
  if (*(int *)((long)param_1 + 0x5dc) == 0) {
    iVar1 = syna_dev_set_tp_report_rate(param_1,(int)param_1[0xbf],uVar4);
    puVar5 = &DAT_0013afb0;
    if (-1 < iVar1) goto LAB_00111d1c;
    puVar2 = &DAT_00138927;
  }
  else {
    _printk(&DAT_00136a10,"syna_dev_set_play_game",1);
    iVar1 = syna_tcm_set_dynamic_config(*param_1,0xd5,3,uVar4);
    if (iVar1 < 0) {
      _printk(&DAT_00135157,"syna_recovery_game_mode_after_reset");
    }
    iVar1 = syna_dev_set_tp_report_rate(param_1,(int)param_1[0xbf],uVar4);
    if (iVar1 < 0) {
      _printk(&DAT_00138927,"syna_recovery_game_mode_after_reset");
    }
    iVar1 = syna_dev_set_sensibility_level(param_1,*(undefined4 *)((long)param_1 + 0x5fc),uVar4);
    if (iVar1 < 0) {
      _printk(&DAT_00135157,"syna_recovery_game_mode_after_reset");
    }
    iVar1 = syna_dev_set_follow_hand_level(param_1,(int)param_1[0xc0],uVar4);
    if (iVar1 < 0) {
      _printk(&DAT_00135157,"syna_recovery_game_mode_after_reset");
    }
    iVar1 = syna_dev_set_stability_level(param_1,*(undefined4 *)((long)param_1 + 0x604),uVar4);
    puVar5 = &DAT_0013cc54;
    if (-1 < iVar1) goto LAB_00111d1c;
    puVar2 = &DAT_00135157;
  }
  _printk(puVar2,"syna_recovery_game_mode_after_reset");
LAB_00111d1c:
  _printk(puVar5,"syna_recovery_game_mode_after_reset");
  return 0;
}



/* 00111d48 syna_dev_get_frame_data */

uint syna_dev_get_frame_data(undefined8 *param_1,int param_2,undefined4 param_3)

{
  uint uVar1;
  undefined4 uVar2;
  
  _printk(&DAT_00136a10,"syna_dev_get_frame_data",param_2);
  if (param_1 == (undefined8 *)0x0) {
    uVar1 = 0xffffffea;
  }
  else {
    uVar2 = 0;
    if (param_2 != 0) {
      uVar2 = 6;
    }
    uVar1 = syna_tcm_set_dynamic_config(*param_1,0xf3,uVar2,param_3);
    uVar1 = uVar1 & (int)uVar1 >> 0x1f;
  }
  return uVar1;
}



/* 00111dc4 syna_ts_check_dt */

undefined4 syna_ts_check_dt(long param_1)

{
  undefined8 *puVar1;
  long lVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  ulong uVar6;
  undefined4 uVar7;
  int iVar8;
  undefined8 *local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  iVar3 = of_count_phandle_with_args(*(undefined8 *)(param_1 + 0x2e8),"panel",0);
  if (iVar3 < 1) {
    uVar7 = 0xffffffed;
  }
  else {
    iVar8 = 0;
    uVar7 = 0xffffffff;
    do {
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      local_a8 = 0;
      uStack_a0 = 0;
      local_b8 = (undefined8 *)0x0;
      uStack_b0 = 0;
      iVar4 = __of_parse_phandle_with_args
                        (*(undefined8 *)(param_1 + 0x2e8),"panel",0,0,iVar8,&local_b8);
      puVar1 = local_b8;
      if (iVar4 != 0) {
        puVar1 = (undefined8 *)0x0;
      }
      if (puVar1 != (undefined8 *)0x0) {
        _printk(&DAT_0013267f,"syna_ts_check_dt","syna_ts_check_dt",*puVar1);
      }
      uVar6 = of_drm_find_panel(puVar1);
      if (uVar6 < 0xfffffffffffff001) {
        strncpy(&DEVICE_NODE_NAME,(char *)*puVar1,100);
        uVar7 = 0;
        active_panel = uVar6;
        break;
      }
      if (uVar6 == 0xffffffffffffffed) {
        uVar7 = 0xffffffed;
        puVar5 = &DAT_00134582;
LAB_00111e54:
        _printk(puVar5,"syna_ts_check_dt","syna_ts_check_dt");
      }
      else if (uVar6 == 0xfffffffffffffdfb) {
        uVar7 = 0xfffffdfb;
        puVar5 = &DAT_00133e98;
        goto LAB_00111e54;
      }
      iVar8 = iVar8 + 1;
    } while (iVar3 != iVar8);
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_68) {
    return uVar7;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00111f64 zte_reset_frame_list */

void zte_reset_frame_list(long param_1)

{
  mutex_lock(param_1 + 0x470);
  *(undefined8 *)(param_1 + 0x43c) = 0;
  memset(*(void **)(param_1 + 0x460),0,0x32000);
  mutex_unlock(param_1 + 0x470);
  _printk(&DAT_001370dd,"zte_reset_frame_list");
  return;
}



/* 00111fcc syna_dev_module_init */

void syna_dev_module_init(void)

{
  int iVar1;
  
  iVar1 = syna_hw_interface_init();
  if (-1 < iVar1) {
    msleep(200);
    __platform_driver_register(&syna_dev_driver,&__this_module);
  }
  return;
}



/* 0011200c syna_dev_module_exit */

void syna_dev_module_exit(void)

{
  platform_driver_unregister(&syna_dev_driver);
  syna_hw_interface_exit();
  return;
}



/* 00112038 syna_dev_probe */

void syna_dev_probe(long param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  undefined4 uVar4;
  long lVar5;
  long *plVar6;
  ulong uVar7;
  long lVar8;
  long local_68;
  undefined8 local_60;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 uStack_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 uStack_40;
  undefined4 local_3c;
  long local_38;
  
  lVar8 = sp_el0;
  local_38 = *(long *)(lVar8 + 0x710);
  local_68 = 0;
  _printk(&DAT_001370f9,"syna_dev_probe");
  lVar8 = *(long *)(param_1 + 0xa0);
  if (lVar8 == 0) {
    _printk(&DAT_00137b1f,"syna_dev_probe");
    iVar2 = -0x16;
    goto LAB_001120e4;
  }
  lVar5 = syna_request_managed_device();
  if (lVar5 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
  }
  else {
    plVar6 = (long *)devm_kmalloc(lVar5,0x6d0,0xdc0);
    if (plVar6 != (long *)0x0) {
      *(undefined4 *)(plVar6 + 0xb1) = 0;
      __init_swait_queue_head(plVar6 + 0xb2,"&x->wait",&init_completion___key);
      iVar1 = syna_tcm_allocate_device(&local_68,lVar8 + 8,plVar6);
      if ((iVar1 < 0) || (local_68 == 0)) {
        iVar3 = 0x136a31;
        iVar2 = iVar1;
LAB_001121dc:
        _printk(iVar1,iVar3,"syna_dev_probe");
      }
      else {
        *plVar6 = local_68;
        plVar6[1] = param_1;
        plVar6[0x4e] = lVar8;
        local_60 = *(undefined8 *)(lVar8 + 0x158);
        local_58 = *(undefined4 *)(lVar8 + 0x160);
        local_4c = *(undefined4 *)(lVar8 + 0x170);
        uStack_50 = *(undefined4 *)(lVar8 + 0x168);
        local_54 = *(undefined4 *)(lVar8 + 0x164);
        local_3c = *(undefined4 *)(lVar8 + 0xf8);
        uStack_40 = *(undefined4 *)(lVar8 + 0x16c);
        local_48 = *(undefined4 *)(lVar8 + 0x174);
        local_44 = *(undefined4 *)(lVar8 + 0x178);
        iVar2 = syna_tcm_config_timings(local_68,&local_60,0,0xffff);
        if (iVar2 < 0) {
          _printk(&DAT_0013209c,"syna_dev_probe");
        }
        else {
          *(undefined1 *)(plVar6 + 0x5d) = 0;
          plVar6[0x55] = 0;
          plVar6[0x56] = 0;
          __mutex_init(plVar6 + 0x57,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
          __mutex_init(plVar6 + 0x4f,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
          *(undefined1 *)((long)plVar6 + 0x2f4) = 0;
          *(undefined2 *)((long)plVar6 + 0x581) = 1;
          plVar6[0xd5] = (long)syna_dev_connect;
          plVar6[0xd6] = (long)syna_dev_disconnect;
          plVar6[0xd7] = (long)syna_dev_set_up_app_fw;
          plVar6[0xd8] = (long)syna_dev_resume;
          *(undefined4 *)((long)plVar6 + 0x57c) = 0;
          plVar6[0xd9] = (long)syna_dev_suspend;
          lVar8 = __kmalloc_large_noprof(0x32000,0xcc0);
          plVar6[0x8c] = lVar8;
          __mutex_init(plVar6 + 0x8e,"&tcm->frame_mutex",&syna_dev_probe___key);
          __init_waitqueue_head
                    (plVar6 + 0x89,"&(tcm->frame_mmap_list.wait)",&syna_dev_probe___key_53);
          *(undefined4 *)(plVar6 + 0x8d) = 0;
          *(undefined4 *)(plVar6 + 0x94) = 0xff;
          plVar6[0x95] = (long)"input_agent";
          plVar6[0x96] = (long)zte_fops;
          plVar6[0x99] = 0;
          iVar2 = misc_register(plVar6 + 0x94);
          if (iVar2 != 0) {
            iVar1 = 0x1394f3;
            iVar3 = iVar1;
            goto LAB_001121dc;
          }
          plVar6[0xb5] = 0;
          *(long **)(param_1 + 0xa8) = plVar6;
          device_set_wakeup_capable(param_1 + 0x10,1);
          device_wakeup_enable(param_1 + 0x10);
          iVar2 = syna_dev_connect(plVar6);
          if (iVar2 < 0) {
            _printk(&DAT_00138e1a,"syna_dev_probe");
          }
          else {
            iVar2 = syna_cdev_create(plVar6,param_1);
            if (iVar2 < 0) {
              _printk(&DAT_0013269b,"syna_dev_probe");
            }
            else {
              iVar1 = syna_sysfs_create_dir(plVar6,param_1);
              if (-1 < iVar1) {
                syna_ts_register_for_panel_events(plVar6);
                _printk(&DAT_0013a0d0,"tpd_resume_suspend_register");
                lVar8 = tpd_cdev;
                *(code **)(tpd_cdev + 0xe08) = tpd_goodix_ts_resume;
                *(long **)(lVar8 + 0xdd8) = plVar6;
                *(code **)(lVar8 + 0xe10) = tpd_goodix_ts_suspend;
                *(undefined4 *)(plVar6 + 0xab) = 0;
                __init_swait_queue_head(plVar6 + 0xac,"&x->wait",&init_completion___key);
                *(undefined1 *)(plVar6 + 0xaf) = 0;
                *(undefined4 *)(plVar6 + 0xa4) = 0;
                lVar8 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"synaptics_tcm_helper");
                plVar6[0xa9] = lVar8;
                plVar6[0xa5] = 0xfffffffe00000;
                plVar6[0xa6] = (long)(plVar6 + 0xa6);
                plVar6[0xa7] = (long)(plVar6 + 0xa6);
                plVar6[0xa8] = (long)syna_dev_helper_work;
                plVar6[0xc0] = 0x200000002;
                *(undefined4 *)((long)plVar6 + 0x60c) = 2;
                plVar6[0xb6] = 0;
                *(undefined4 *)(plVar6 + 0xb7) = 0;
                *(undefined4 *)((long)plVar6 + 0x5c4) = 0;
                *(undefined4 *)((long)plVar6 + 0x5d4) = 0;
                *(undefined4 *)((long)plVar6 + 0x5dc) = 0;
                plVar6[0xbf] = 0x200000001;
                plVar6[0xbd] = 0;
                plVar6[0xbe] = 0;
                uVar4 = zte_get_boot_mode();
                *(undefined4 *)(plVar6 + 0xc3) = uVar4;
                _printk(&DAT_00137b52,"syna_dev_probe",uVar4);
                _printk(&DAT_001320c6,"syna_dev_probe","synaptics_tcm",1,&DAT_0013a013);
                lVar8 = tpd_cdev;
                *(undefined1 *)((long)plVar6 + 0x583) = 1;
                *(undefined1 *)(lVar8 + 0x1d) = 1;
                *(undefined1 *)(lVar8 + 0x446) = 1;
                uVar7 = completion_done(plVar6 + 0xb1);
                iVar2 = 0;
                if ((uVar7 & 1) == 0) {
                  complete(plVar6 + 0xb1);
                  iVar2 = 0;
                }
                goto LAB_001120e4;
              }
              _printk(&DAT_001326ca,"syna_dev_probe");
              syna_cdev_remove(plVar6);
              iVar2 = -0x14;
            }
            syna_dev_disconnect(plVar6);
          }
          kfree(plVar6[0x8c]);
          if ((char)plVar6[0x5d] != '\0') {
            _printk(&DAT_00135294,"syna_tcm_buf_release");
          }
          lVar5 = plVar6[0x55];
          lVar8 = syna_request_managed_device();
          if (lVar8 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          else if (lVar5 != 0) {
            devm_kfree(lVar8,lVar5);
          }
          plVar6[0x56] = 0;
          *(undefined1 *)(plVar6 + 0x5d) = 0;
        }
        syna_tcm_remove_device(local_68);
      }
      goto LAB_001120e4;
    }
  }
  _printk(&DAT_0013cc7e,"syna_dev_probe");
  iVar2 = -0xc;
LAB_001120e4:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar2);
}



/* 001125bc syna_dev_remove */

void syna_dev_remove(long param_1)

{
  char cVar1;
  long lVar2;
  undefined8 *puVar3;
  long lVar4;
  
  puVar3 = *(undefined8 **)(param_1 + 0xa8);
  if (puVar3 == (undefined8 *)0x0) {
    _printk(&DAT_00139a6e,"syna_dev_remove");
  }
  _printk(&DAT_001352c7,"syna_dev_remove");
  cancel_work_sync(puVar3 + 0xa5);
  __flush_workqueue(puVar3[0xa9]);
  destroy_workqueue(puVar3[0xa9]);
  if ((active_panel != 0) && (puVar3[0xaa] != 0)) {
    panel_event_notifier_unregister();
  }
  syna_sysfs_remove_dir(puVar3);
  syna_cdev_remove(puVar3);
  syna_dev_disconnect(puVar3);
  lVar4 = puVar3[0xb5];
  if (lVar4 != 0) {
    lVar2 = syna_request_managed_device();
    if (lVar2 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      cVar1 = *(char *)(puVar3 + 0x5d);
      goto joined_r0x001126d4;
    }
    devm_kfree(lVar2,lVar4);
  }
  cVar1 = *(char *)(puVar3 + 0x5d);
joined_r0x001126d4:
  if (cVar1 != '\0') {
    _printk(&DAT_00135294,"syna_tcm_buf_release");
  }
  lVar2 = puVar3[0x55];
  lVar4 = syna_request_managed_device();
  if (lVar4 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else if (lVar2 != 0) {
    devm_kfree(lVar4,lVar2);
  }
  puVar3[0x56] = 0;
  *(undefined1 *)(puVar3 + 0x5d) = 0;
  kfree(puVar3[0x8c]);
  syna_tcm_remove_device(*puVar3);
  return;
}



/* 001126f4 syna_dev_shutdown */

void syna_dev_shutdown(void)

{
  syna_dev_remove();
  return;
}



/* 00112714 syna_dev_connect */

int syna_dev_connect(long *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined *puVar3;
  code *pcVar4;
  long lVar5;
  long lVar6;
  
  lVar5 = *param_1;
  if (lVar5 == 0) {
    _printk(&DAT_00132c98,"syna_dev_connect");
    return -0x16;
  }
  if (*(char *)((long)param_1 + 0x582) == '\x01') {
    puVar3 = &DAT_0013afdc;
LAB_001127b0:
    _printk(puVar3,"syna_dev_connect","synaptics_tcm");
    iVar1 = 0;
  }
  else {
    lVar6 = param_1[0x4e];
    pcVar4 = *(code **)(lVar6 + 0x180);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x11276c);
        (*pcVar4)();
      }
      iVar1 = (*pcVar4)(lVar6,1);
      if (iVar1 < 0) {
        return -0x13;
      }
      if (0 < *(int *)(lVar6 + 0x154)) {
        msleep();
      }
    }
    pcVar4 = *(code **)(lVar6 + 0x188);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x112800);
        (*pcVar4)();
      }
      (*pcVar4)(lVar6);
    }
    iVar1 = syna_tcm_detect_device(*param_1,1,0);
    if (iVar1 < 0) {
      puVar3 = &DAT_00134aa9;
LAB_00112820:
      _printk(puVar3,"syna_dev_connect");
      return iVar1;
    }
    if (*(char *)(lVar5 + 9) == '\x01') {
      iVar1 = syna_dev_set_up_app_fw(param_1);
      if (iVar1 < 0) {
        _printk(&DAT_0013a017,"syna_dev_connect");
        _printk(&DAT_0013d9f3,"syna_dev_connect");
        syna_tcm_switch_fw_mode(lVar5,0xb,*(undefined4 *)(lVar5 + 0x1e8));
      }
      else {
        iVar1 = syna_dev_set_up_input_device(param_1);
        if (iVar1 < 0) {
          puVar3 = &DAT_0013b007;
          goto LAB_00112820;
        }
      }
    }
    else {
      _printk(&DAT_00133858,"syna_dev_connect");
      if ((*(char *)(lVar5 + 9) == '\v') &&
         (iVar1 = syna_tcm_get_boot_info(lVar5,0,0x14), -1 < iVar1)) {
        _printk(&DAT_0013a59d,"syna_dev_connect",*(undefined1 *)(lVar5 + 0xe1));
      }
    }
    iVar1 = syna_tcm_set_report_dispatcher(lVar5,0x10,syna_dev_process_unexpected_reset,param_1);
    if (iVar1 < 0) {
      _printk(&DAT_00132cb7,"syna_dev_connect");
    }
    lVar6 = param_1[0x4e];
    lVar5 = syna_request_managed_device();
    if (lVar5 == 0) {
      iVar1 = -0x16;
      puVar3 = &DAT_0013ccb3;
    }
    else if (*(int *)(lVar6 + 0xa8) < 0) {
      iVar1 = -0x16;
      puVar3 = &DAT_0013a5c4;
    }
    else {
      gpio_to_desc(*(int *)(lVar6 + 0xa8));
      uVar2 = gpiod_to_irq();
      *(undefined4 *)(lVar6 + 0xb8) = uVar2;
      iVar1 = devm_request_threaded_irq
                        (lVar5,uVar2,0,syna_dev_isr,*(undefined8 *)(lVar6 + 0xb0),"synaptics_tcm",
                         param_1);
      if (-1 < iVar1) {
        *(undefined1 *)(lVar6 + 0xbc) = 1;
        _printk(&DAT_00136b08,"syna_dev_request_irq");
        lVar5 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"syna_reflash");
        param_1[0x86] = lVar5;
        param_1[0x79] = 0xfffffffe00000;
        param_1[0x7a] = (long)(param_1 + 0x7a);
        param_1[0x7b] = (long)(param_1 + 0x7a);
        param_1[0x7c] = (long)syna_dev_reflash_startup_work;
        init_timer_key(param_1 + 0x7d,&delayed_work_timer_fn,0x200000,0,0);
        queue_delayed_work_on(0x20,param_1[0x86],param_1 + 0x79,0x32);
        *(undefined4 *)((long)param_1 + 0x57c) = 1;
        *(undefined1 *)((long)param_1 + 0x582) = 1;
        lVar5 = param_1[0x4e];
        _printk(&DAT_0013a04a,"syna_dev_show_info",*(undefined4 *)(*param_1 + 0x38),
                *(undefined4 *)(*param_1 + 0x3c));
        puVar3 = &DAT_0013a5e4;
        if (*(long *)(lVar5 + 0x188) != 0) {
          puVar3 = &DAT_0013650e;
        }
        _printk(&DAT_001357b3,"syna_dev_show_info",&DAT_0013650e,puVar3,&DAT_0013650e);
        puVar3 = &DAT_0013650e;
        if (*(char *)((long)param_1 + 0x581) == '\0') {
          puVar3 = &DAT_0013a5e4;
        }
        _printk(&DAT_0013b062,"syna_dev_show_info",puVar3,&DAT_0013a5e4,&DAT_0013650e);
        puVar3 = &DAT_0013aab0;
        goto LAB_001127b0;
      }
      puVar3 = &DAT_0013c5cc;
    }
    _printk(puVar3,"syna_dev_request_irq");
    _printk(&DAT_0013b658,"syna_dev_connect");
    if (param_1[0x76] != 0) {
      input_unregister_device();
      param_1[0x76] = 0;
    }
  }
  return iVar1;
}



/* 00112b04 syna_dev_disconnect */

undefined8 syna_dev_disconnect(long param_1)

{
  long lVar1;
  undefined *puVar2;
  int iVar3;
  code *pcVar4;
  long lVar5;
  long lVar6;
  
  if (*(char *)(param_1 + 0x582) == '\0') {
    puVar2 = &DAT_001351e7;
    goto LAB_00112c60;
  }
  lVar5 = *(long *)(param_1 + 0x270);
  if (*(int *)(param_1 + 0x57c) == 3) {
    _printk(&DAT_0013a5e7,"syna_dev_disconnect");
    pcVar4 = *(code **)(lVar5 + 0x180);
  }
  else {
    if (*(long *)(param_1 + 0x430) != 0) {
      cancel_delayed_work_sync(param_1 + 0x3c8);
      __flush_workqueue(*(undefined8 *)(param_1 + 0x430));
      destroy_workqueue(*(undefined8 *)(param_1 + 0x430));
      *(undefined8 *)(param_1 + 0x430) = 0;
    }
    if (*(int *)(lVar5 + 0xb8) != 0) {
      lVar6 = *(long *)(param_1 + 0x270);
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) {
        puVar2 = &DAT_0013ccb3;
      }
      else {
        iVar3 = *(int *)(lVar6 + 0xb8);
        if (iVar3 < 1) goto LAB_00112c0c;
        pcVar4 = *(code **)(lVar6 + 0x40);
        if (pcVar4 != (code *)0x0) {
          if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x112bdc);
            (*pcVar4)();
          }
          (*pcVar4)(lVar6 + 8,0);
          iVar3 = *(int *)(lVar6 + 0xb8);
        }
        devm_free_irq(lVar1,iVar3,param_1);
        puVar2 = &DAT_00136b5a;
        *(undefined4 *)(lVar6 + 0xb8) = 0;
        *(undefined1 *)(lVar6 + 0xbc) = 0;
      }
      _printk(puVar2,"syna_dev_release_irq");
    }
LAB_00112c0c:
    if (*(long *)(param_1 + 0x3b0) != 0) {
      input_unregister_device();
      *(undefined8 *)(param_1 + 0x3b0) = 0;
    }
    *(undefined8 *)(param_1 + 0x3b8) = 0;
    *(undefined4 *)(param_1 + 0x3c0) = 0;
    pcVar4 = *(code **)(lVar5 + 0x180);
  }
  if (pcVar4 != (code *)0x0) {
    if (*(int *)(pcVar4 + -4) != 0x5f30282b) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x112c4c);
      (*pcVar4)();
    }
    (*pcVar4)(lVar5,0);
  }
  puVar2 = &DAT_00136b34;
  *(undefined4 *)(param_1 + 0x57c) = 0;
  *(undefined1 *)(param_1 + 0x582) = 0;
LAB_00112c60:
  _printk(puVar2,"syna_dev_disconnect","synaptics_tcm");
  return 0;
}



/* 00112c90 syna_dev_set_up_app_fw */

int syna_dev_set_up_app_fw(long *param_1)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  long lVar4;
  undefined4 uVar5;
  
  if (param_1 == (long *)0x0) {
    return -0x16;
  }
  lVar2 = param_1[0x4e];
  lVar4 = *param_1;
  if (((lVar2 == -0xa8) || (*(int *)(lVar2 + 0xb8) == 0)) || ((*(byte *)(lVar2 + 0xbc) & 1) == 0)) {
    uVar5 = *(undefined4 *)(lVar4 + 0x20c);
  }
  else {
    uVar5 = 0;
  }
  if (*(char *)(lVar4 + 9) == '\x01') {
    iVar1 = syna_tcm_get_app_info(lVar4,lVar4 + 0xb0,uVar5);
    if (iVar1 < 0) {
      puVar3 = &DAT_0013324a;
    }
    else {
      iVar1 = syna_tcm_preserve_touch_report_config(lVar4,uVar5);
      if (-1 < iVar1) {
        return 0;
      }
      puVar3 = &DAT_00136b84;
    }
    _printk(puVar3,"syna_dev_set_up_app_fw");
  }
  else {
    _printk(&DAT_00133858,"syna_dev_set_up_app_fw");
    iVar1 = -0x16;
  }
  return iVar1;
}



/* 00112d6c syna_dev_resume */

void syna_dev_resume(long param_1)

{
  byte bVar1;
  int iVar2;
  undefined4 uVar3;
  long lVar4;
  undefined *puVar5;
  code *pcVar6;
  long *plVar7;
  long lVar8;
  char local_3c [4];
  long local_38;
  
  lVar8 = sp_el0;
  local_38 = *(long *)(lVar8 + 0x710);
  plVar7 = *(long **)(param_1 + 0x98);
  if (plVar7 == (long *)0x0) {
    uVar3 = 0xffffffea;
    goto LAB_00112ddc;
  }
  lVar8 = plVar7[0x4e];
  if (((lVar8 == -0xa8) || (*(int *)(lVar8 + 0xb8) == 0)) || ((*(byte *)(lVar8 + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*plVar7 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  if (*(int *)((long)plVar7 + 0x57c) == 1) {
    uVar3 = 0;
    goto LAB_00112ddc;
  }
  local_3c[0] = '\0';
  if ((char)DAT_00131c40 == '\x01') {
    if (*(int *)((long)plVar7 + 0x5d4) == 0) {
      _printk(&DAT_001381eb,"syna_dev_resume");
      lVar4 = wait_for_completion_timeout(&DAT_00131c20,0x271);
      if (lVar4 == 0) {
        _printk(&DAT_0013b0ad,"syna_dev_resume");
      }
      DAT_00131c40 = DAT_00131c40 & 0xff00;
      report_ufp_uevent(0);
    }
    else {
      _printk(&DAT_001338cd,"syna_dev_resume");
    }
  }
  _printk(&DAT_00132133,"syna_dev_resume");
  *(undefined4 *)((long)plVar7 + 0x57c) = 1;
  large_area_uevent_count = 0;
  if ((*(char *)((long)plVar7 + 0x581) == '\x01') &&
     (pcVar6 = *(code **)(lVar8 + 0x40), pcVar6 != (code *)0x0)) {
    if (*(int *)(pcVar6 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x112edc);
      (*pcVar6)();
    }
    (*pcVar6)(lVar8 + 8,0);
  }
  if (*(int *)((long)plVar7 + 0x5d4) == 0) {
LAB_00112f00:
    _printk(&DAT_001345e9,"syna_dev_resume");
    pcVar6 = *(code **)(lVar8 + 0x188);
    if (pcVar6 == (code *)0x0) {
      iVar2 = syna_tcm_reset(*plVar7,uVar3);
      if (iVar2 < 0) {
        puVar5 = &DAT_0013b6d5;
        goto LAB_00112fe0;
      }
    }
    else {
      if (*(int *)(pcVar6 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x112f54);
        (*pcVar6)();
      }
      (*pcVar6)(lVar8);
      if ((*(byte *)(lVar8 + 0xbc) & 1) == 0) {
        iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
        if (iVar2 < 0) {
LAB_00112f74:
          puVar5 = &DAT_00133276;
          goto LAB_00112fe0;
        }
        if (local_3c[0] != '\x10') {
          msleep(0x32);
          iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
          if (iVar2 < 0) goto LAB_00112f74;
          if (local_3c[0] != '\x10') {
            msleep(0x32);
            iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
            if (iVar2 < 0) goto LAB_00112f74;
            if (local_3c[0] != '\x10') {
              msleep(0x32);
              iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
              if (iVar2 < 0) goto LAB_00112f74;
              if (local_3c[0] != '\x10') {
                msleep(0x32);
                iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                if (iVar2 < 0) goto LAB_00112f74;
                if (local_3c[0] != '\x10') {
                  msleep(0x32);
                  iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                  if (iVar2 < 0) goto LAB_00112f74;
                  if (local_3c[0] != '\x10') {
                    msleep(0x32);
                    iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                    if (iVar2 < 0) goto LAB_00112f74;
                    if (local_3c[0] != '\x10') {
                      msleep(0x32);
                      iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                      if (iVar2 < 0) goto LAB_00112f74;
                      if (local_3c[0] != '\x10') {
                        msleep(0x32);
                        iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                        if (iVar2 < 0) goto LAB_00112f74;
                        if (local_3c[0] != '\x10') {
                          msleep(0x32);
                          iVar2 = syna_tcm_get_event_data(*plVar7,local_3c,0);
                          if (iVar2 < 0) goto LAB_00112f74;
                          if (local_3c[0] != '\x10') {
                            msleep(0x32);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
LAB_00112fb8:
    _printk(&DAT_00132709,"syna_dev_resume");
    iVar2 = syna_dev_set_up_app_fw(plVar7);
    if (iVar2 < 0) {
      puVar5 = &DAT_00137b71;
      goto LAB_00112fe0;
    }
    DAT_00131c42 = 0;
    DAT_00131c40 = 0;
    _printk(&DAT_0013aad3,"syna_dev_resume",*(undefined4 *)((long)plVar7 + 0x57c));
    bVar1 = *(byte *)(lVar8 + 0xbc);
  }
  else {
    if (DAT_00131c40._1_1_ == '\0' && (char)DAT_00131c40 == '\0') goto LAB_00112f00;
    _printk(&DAT_00136bb8,"syna_dev_resume");
    iVar2 = syna_dev_enter_normal_sensing(plVar7);
    if (-1 < iVar2) goto LAB_00112fb8;
    puVar5 = &DAT_0013cd80;
LAB_00112fe0:
    _printk(puVar5,"syna_dev_resume");
    bVar1 = *(byte *)(lVar8 + 0xbc);
  }
  if (((bVar1 & 1) == 0) && (pcVar6 = *(code **)(lVar8 + 0x40), pcVar6 != (code *)0x0)) {
    if (*(int *)(pcVar6 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x113050);
      (*pcVar6)();
    }
    (*pcVar6)(lVar8 + 8,1);
  }
  *(undefined1 *)(plVar7 + 0xb0) = 0;
  _printk(&DAT_001375c2,"syna_dev_set_screen_on_fp_mode");
  iVar2 = syna_tcm_set_dynamic_config(*plVar7,0xd4,3,uVar3);
  if (iVar2 < 0) {
    _printk(&DAT_0013be12,"syna_dev_set_screen_on_fp_mode");
    _printk(&DAT_00135f9d,"syna_dev_resume");
  }
  if ((syna_usb_detect_flag == '\x01') &&
     (iVar2 = syna_dev_set_charger_mode(plVar7,1,uVar3), iVar2 != 0)) {
    _printk(&DAT_0013e007,"syna_dev_resume");
  }
  syna_dev_set_display_rotation(plVar7,(int)plVar7[0xc1],uVar3);
  if (*(int *)((long)plVar7 + 0x5dc) == 0) {
    uVar3 = syna_dev_set_tp_report_rate(plVar7,(int)plVar7[0xbf],uVar3);
  }
  else {
    iVar2 = syna_dev_set_play_game(plVar7,1,uVar3);
    if (iVar2 != 0) {
      _printk(&DAT_00135157,"syna_dev_resume");
    }
    syna_dev_set_tp_report_rate(plVar7,(int)plVar7[0xbf],uVar3);
    syna_dev_set_sensibility_level(plVar7,*(undefined4 *)((long)plVar7 + 0x5fc),uVar3);
    syna_dev_set_follow_hand_level(plVar7,(int)plVar7[0xc0],uVar3);
    uVar3 = syna_dev_set_stability_level(plVar7,*(undefined4 *)((long)plVar7 + 0x604),uVar3);
  }
  *(undefined4 *)(plVar7 + 0xbd) = *(undefined4 *)((long)plVar7 + 0x5ec);
  *(undefined4 *)(plVar7 + 0xbe) = *(undefined4 *)((long)plVar7 + 0x5f4);
  _printk(&DAT_0013bf03,"syna_dev_resume",(int)plVar7[0xb6]);
  _printk(&DAT_0013c5f8,"syna_dev_resume",*(undefined4 *)((long)plVar7 + 0x5c4));
  _printk(&DAT_00138965,"syna_dev_resume",*(undefined4 *)((long)plVar7 + 0x5d4));
  _printk(&DAT_00133f2a,"syna_dev_resume",(int)plVar7[0xbd]);
  _printk(&DAT_0013a09e,"syna_dev_resume",(int)plVar7[0xbe]);
LAB_00112ddc:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar3);
}



/* 0011337c syna_dev_suspend */

undefined8 syna_dev_suspend(long param_1)

{
  int iVar1;
  undefined8 uVar2;
  undefined *puVar3;
  undefined4 uVar4;
  code *pcVar5;
  long *plVar6;
  long lVar7;
  
  plVar6 = *(long **)(param_1 + 0x98);
  if (*(int *)((long)plVar6 + 0x57c) == 1) {
    lVar7 = plVar6[0x4e];
    _printk(&DAT_0013cdaf,"syna_dev_suspend");
    *(bool *)((long)plVar6 + 0x581) = (int)plVar6[0xb6] != 0 || *(int *)((long)plVar6 + 0x5c4) != 0;
    _printk(&DAT_0013520e,"syna_dev_suspend");
    if (plVar6 != (long *)0x0) {
      if ((*(int *)(plVar6[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar6[0x4e] + 0xbc) & 1) == 0)) {
        uVar4 = *(undefined4 *)(*plVar6 + 0x20c);
      }
      else {
        uVar4 = 0;
      }
      if (*(char *)((long)plVar6 + 0x581) == '\x01') {
        iVar1 = syna_dev_enable_lowpwr_gesture(plVar6,1);
        if (-1 < iVar1) {
LAB_00113490:
          msleep(100);
LAB_00113498:
          *(undefined4 *)((long)plVar6 + 0x57c) = 2;
          syna_dev_free_input_events(plVar6);
          syna_tcm_clear_command_processing(*plVar6);
          if (((*(byte *)((long)plVar6 + 0x581) & 1) == 0) &&
             (pcVar5 = *(code **)(lVar7 + 0x40), pcVar5 != (code *)0x0)) {
            if (*(int *)(pcVar5 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
              pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x1134e0);
              (*pcVar5)();
            }
            (*pcVar5)(lVar7 + 8,0);
          }
          *(undefined4 *)(plVar6 + 0xbc) = 0;
          _printk(&DAT_00136bd9,"syna_dev_suspend",*(undefined4 *)((long)plVar6 + 0x57c));
          goto LAB_001133a0;
        }
        puVar3 = &DAT_0013820a;
      }
      else {
        if ((*(byte *)(plVar6 + 0xb0) & 1) != 0) goto LAB_00113498;
        iVar1 = syna_tcm_sleep(*plVar6,1,uVar4);
        if (-1 < iVar1) goto LAB_00113490;
        puVar3 = &DAT_00138240;
      }
      _printk(puVar3,"syna_dev_enter_lowpwr_sensing");
    }
    _printk(&DAT_0013e068,"syna_dev_suspend");
    uVar2 = 0xfffffffb;
  }
  else {
LAB_001133a0:
    uVar2 = 0;
  }
  return uVar2;
}



/* 00113504 syna_ts_register_for_panel_events */

void syna_ts_register_for_panel_events(long param_1)

{
  long lVar1;
  
  lVar1 = panel_event_notifier_register(1,0,active_panel,syna_ts_panel_notifier_callback,param_1);
  if (lVar1 == 0) {
    _printk(&DAT_0013b0ff,"syna_ts_register_for_panel_events");
  }
  else {
    _printk(&DAT_0013b6f8,"syna_ts_register_for_panel_events",active_panel);
    *(long *)(param_1 + 0x550) = lVar1;
  }
  return;
}



/* 00113590 syna_dev_helper_work */

void syna_dev_helper_work(long param_1)

{
  code *pcVar1;
  int iVar2;
  long lVar3;
  char cVar4;
  long *plVar5;
  
  if ((*(uint *)(param_1 + -8) & 0xff) == 1) {
    plVar5 = (long *)(param_1 + -0x528);
    lVar3 = *plVar5;
    cVar4 = *(char *)(lVar3 + 9);
    if (cVar4 == '\v') {
      iVar2 = syna_tcm_get_boot_info(lVar3,0,0x14);
      if (-1 < iVar2) {
        _printk(&DAT_00136549,"syna_dev_helper_work",*(undefined1 *)(*plVar5 + 0xe1),
                *(undefined1 *)(*plVar5 + 0xe9));
      }
      lVar3 = *plVar5;
      cVar4 = *(char *)(lVar3 + 9);
      if (cVar4 == '\v') {
        queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -0xf8),param_1 + -0x160,0x19);
        lVar3 = *plVar5;
        cVar4 = *(char *)(lVar3 + 9);
      }
    }
    if (cVar4 == '\x01') {
      if (*(short *)(lVar3 + 0xb2) == 0) {
        _printk(&DAT_00135260,"syna_dev_helper_work");
        if (*(int *)(*(code **)(param_1 + 400) + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
          pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x11365c);
          (*pcVar1)();
        }
        (**(code **)(param_1 + 400))(plVar5);
      }
      else {
        _printk(&DAT_0013392d,"syna_dev_helper_work");
        if (*(char *)(*plVar5 + 9) == '\v') {
          queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -0xf8),param_1 + -0x160,0x19);
        }
      }
    }
  }
  *(undefined4 *)(param_1 + -8) = 0;
  return;
}



/* 001136c4 syna_dev_set_up_input_device */

int syna_dev_set_up_input_device(long *param_1)

{
  ulong *puVar1;
  char cVar2;
  bool bVar3;
  int iVar4;
  undefined8 *puVar5;
  long lVar6;
  undefined8 uVar7;
  long lVar8;
  
  if (*(char *)(*param_1 + 9) == '\x01') {
    syna_dev_free_input_events();
    lVar6 = *param_1;
    if ((*(int *)(lVar6 + 0x10) != 0) || (*(int *)(lVar6 + 0x14) != 0)) {
      if (((int)param_1[0x77] != *(int *)(lVar6 + 0x10)) ||
         ((*(int *)((long)param_1 + 0x3bc) != *(int *)(lVar6 + 0x14) ||
          (*(uint *)(param_1 + 0x78) != *(uint *)(lVar6 + 0x18))))) {
        mutex_lock(param_1 + 0x4f);
        if (param_1[0x76] != 0) {
          input_unregister_device();
          param_1[0x76] = 0;
        }
        lVar8 = *param_1;
        lVar6 = syna_request_managed_device();
        if (lVar6 == 0) {
          _printk(&DAT_0013ccb3,"syna_dev_create_input_device");
          iVar4 = -0x16;
        }
        else {
          puVar5 = (undefined8 *)devm_input_allocate_device();
          if (puVar5 == (undefined8 *)0x0) {
            _printk(&DAT_00138164,"syna_dev_create_input_device");
            iVar4 = -0x13;
          }
          else {
            *puVar5 = "synaptics_tcm_touch";
            puVar5[1] = "synaptics_tcm/touch_input";
            *(undefined4 *)((long)puVar5 + 0x1c) = 0x10001;
            uVar7 = *(undefined8 *)(param_1[1] + 0x70);
            puVar5[0x59] = param_1;
            puVar5[0x52] = uVar7;
            puVar1 = puVar5 + 5;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 1;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 5;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 2;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 5;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 8;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 0xb;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 0x400;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 0xb;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 0x20;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 4;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 2;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            puVar1 = puVar5 + 8;
            Hint_Prefetch(puVar1,2,0,1);
            do {
              cVar2 = '\x01';
              bVar3 = (bool)ExclusiveMonitorPass(puVar1,0x10);
              if (bVar3) {
                *puVar1 = *puVar1 | 0x8000;
                cVar2 = ExclusiveMonitorsStatus();
              }
            } while (cVar2 != '\0');
            input_set_capability(puVar5,1,0x8f);
            input_set_abs_params(puVar5,0x35,0,*(undefined4 *)(lVar8 + 0x10),0,0);
            input_set_abs_params(puVar5,0x36,0,*(undefined4 *)(lVar8 + 0x14),0,0);
            input_mt_init_slots(puVar5,*(undefined4 *)(lVar8 + 0x18),2);
            input_set_abs_params(puVar5,0x30,0,0xff,0,0);
            input_set_abs_params(puVar5,0x31,0,0xff,0,0);
            *(undefined4 *)(param_1 + 0x77) = *(undefined4 *)(lVar8 + 0x10);
            *(undefined4 *)((long)param_1 + 0x3bc) = *(undefined4 *)(lVar8 + 0x14);
            *(undefined4 *)(param_1 + 0x78) = *(undefined4 *)(lVar8 + 0x18);
            iVar4 = input_register_device(puVar5);
            if (-1 < iVar4) {
              param_1[0x76] = (long)puVar5;
              iVar4 = syna_tcm_set_report_dispatcher
                                (*param_1,0x11,syna_dev_process_touch_report,param_1);
              if (iVar4 < 0) {
                _printk(&DAT_00136a7b,"syna_dev_set_up_input_device");
              }
              mutex_unlock(param_1 + 0x4f);
              return 0;
            }
            _printk(&DAT_00138191,"syna_dev_create_input_device");
            input_free_device(puVar5);
          }
        }
        _printk(&DAT_0013d2f5,"syna_dev_set_up_input_device");
        mutex_unlock(param_1 + 0x4f);
        return iVar4;
      }
      if (*(uint *)(param_1 + 0x78) < 0xb) {
        _printk(&DAT_0013da2b,"syna_dev_check_input_params");
      }
      else {
        _printk(&DAT_0013cced,"syna_dev_check_input_params");
      }
    }
  }
  else {
    _printk(&DAT_00133858,"syna_dev_set_up_input_device");
  }
  return 0;
}



/* 00113a9c syna_dev_process_unexpected_reset */

undefined8 syna_dev_process_unexpected_reset(void)

{
  undefined8 uVar1;
  undefined *puVar2;
  long in_x3;
  
  if (in_x3 == 0) {
    puVar2 = &DAT_00139a47;
LAB_00113ad8:
    _printk(puVar2,"syna_dev_process_unexpected_reset");
    uVar1 = 0xffffffea;
  }
  else {
    if (*(int *)(in_x3 + 0x57c) == 1) {
      _printk(&DAT_00132d01,"syna_dev_process_unexpected_reset");
      if (*(long *)(in_x3 + 0x548) == 0) {
        puVar2 = &DAT_0013cd2c;
        goto LAB_00113ad8;
      }
      if (*(int *)(in_x3 + 0x520) == 0) {
        *(undefined4 *)(in_x3 + 0x520) = 1;
        queue_work_on(0x20,*(long *)(in_x3 + 0x548),in_x3 + 0x528);
      }
    }
    uVar1 = 0;
  }
  return uVar1;
}



/* 00113b40 syna_dev_reflash_startup_work */

void syna_dev_reflash_startup_work(long param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined *puVar3;
  long lVar4;
  
  wait_for_completion_timeout(param_1 + 0x1c0,0xfa);
  if ((*(byte *)(param_1 + 0x1bb) & 1) == 0) {
    _printk(&DAT_0013715f,"syna_dev_reflash_startup_work");
    return;
  }
  lVar4 = param_1 + -0x3c8;
  pm_stay_awake(*(long *)(param_1 + -0x3c0) + 0x10);
  iVar1 = syna_dev_do_reflash(lVar4,0);
  if (-1 < iVar1) {
    iVar1 = syna_dev_set_up_app_fw(lVar4);
    if (iVar1 < 0) {
      puVar3 = &DAT_0013bece;
    }
    else {
      iVar1 = syna_dev_set_up_input_device(lVar4);
      if (-1 < iVar1) {
        _printk(&DAT_0013d320,"syna_dev_reflash_startup_work");
        syna_tpd_register_fw_class(lVar4);
        uVar2 = syna_dev_set_screen_on_fp_mode(lVar4,0);
        _printk(&DAT_0013cd54,"syna_dev_reflash_startup_work",uVar2);
        uVar2 = syna_dev_set_tp_report_rate(lVar4,*(undefined4 *)(param_1 + 0x230),0);
        _printk(&DAT_0013b032,"syna_dev_reflash_startup_work",*(undefined4 *)(param_1 + 0x230),uVar2
               );
        goto LAB_00113b90;
      }
      puVar3 = &DAT_00138191;
    }
    _printk(puVar3,"syna_dev_reflash_startup_work");
  }
LAB_00113b90:
  pm_relax(*(long *)(param_1 + -0x3c0) + 0x10);
  return;
}



/* 00113c74 syna_dev_process_touch_report */

void syna_dev_process_touch_report(char param_1,void *param_2,ulong param_3,long *param_4)

{
  long *plVar1;
  int iVar2;
  long lVar3;
  code *pcVar4;
  int iVar5;
  undefined8 uVar6;
  uint uVar7;
  uint uVar8;
  long lVar9;
  ulong uVar10;
  long *plVar11;
  int iVar12;
  ulong uVar13;
  ulong uVar14;
  int iVar15;
  char *local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  if (param_4 == (long *)0x0) {
    _printk(&DAT_00134ad2,"syna_dev_process_touch_report");
    iVar5 = -0x16;
    goto LAB_00114084;
  }
  if (param_1 != '\x11') {
    _printk(&DAT_0013712b,"syna_dev_process_touch_report",param_1);
    iVar5 = -0x16;
    goto LAB_00114084;
  }
  if ((*(int *)((long)param_4 + 900) < 1) || (*(char *)((long)param_4 + 0x584) == '\x01')) {
    if ((int)param_4[0xbc] != 0) {
      uVar7 = (uint)param_3;
      param_3 = param_3 & 0xffffffff;
      if (0x31fff < uVar7) {
        uVar7 = 0x32000;
      }
      memcpy((void *)param_4[0x8c],param_2,(ulong)uVar7);
      *(uint *)(param_4 + 0x87) = uVar7;
      *(undefined4 *)(param_4 + 0x8d) = 1;
      __wake_up(param_4 + 0x89,1,1,0);
    }
    iVar5 = syna_tcm_parse_touch_report(*param_4,param_2,param_3,param_4 + 2);
    lVar3 = tpd_cdev;
    if (iVar5 < 0) {
      _printk(&DAT_0013b69e,"syna_dev_process_touch_report");
      goto LAB_00114084;
    }
    lVar9 = param_4[0x76];
    if (lVar9 == 0) goto LAB_00114080;
    uVar7 = *(uint *)(*param_4 + 0x18);
    mutex_lock(param_4 + 0x4f);
    if ((*(int *)((long)param_4 + 0x57c) == 2) && (*(char *)((long)param_4 + 0x2f4) == '\x01')) {
      _printk(&DAT_00136abe,"syna_dev_report_input_events",(int)param_4[0x44]);
      if ((int)param_4[0x44] == 1) {
        _printk(&DAT_00136ae5,"syna_dev_report_input_events");
        ufp_report_gesture_uevent("double_tap=true");
      }
      else if ((int)param_4[0x44] == 0x10) {
        _printk(&DAT_00133ec9,"syna_dev_report_input_events");
        ufp_report_gesture_uevent("single_tap=true");
      }
      else {
        _printk(&DAT_001381be,"syna_dev_report_input_events");
      }
    }
    if ((int)param_4[0x44] == 0x80) {
      uVar6 = 1;
LAB_00113d90:
      report_ufp_uevent(uVar6);
    }
    else if ((int)param_4[0x44] == 0x81) {
      uVar6 = 0;
      goto LAB_00113d90;
    }
    if (*(int *)((long)param_4 + 0x57c) != 2) {
      if (uVar7 == 0) {
LAB_0011403c:
        input_event(lVar9,1,0x14a,0);
        input_event(lVar9,1,0x145,0);
      }
      else {
        uVar10 = 0;
        iVar5 = 0;
        plVar11 = param_4 + 5;
        do {
          if (((char)plVar11[-2] == '\x06') && (*(int *)((long)param_4 + 0x5e4) != 0)) {
            if (ufp_tp_ops == 0) {
              _printk(&DAT_0013459f);
            }
            else if (large_area_ignore_count < 0) {
              if (large_area_uevent_count < 3) {
                local_78 = "large_area=true";
                uStack_70 = 0;
                kobject_uevent_env(ufp_tp_ops + 0x10,2,&local_78);
                _printk(&DAT_0013389c);
                large_area_uevent_count = large_area_uevent_count + 1;
              }
            }
            else {
              large_area_ignore_count = large_area_ignore_count + -1;
              _printk(&DAT_001351aa);
            }
          }
          if (uVar10 == 10) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x1141ac);
            (*pcVar4)();
          }
          uVar8 = (uint)*(byte *)(plVar11 + -2);
          if ((*(char *)((long)param_4 + uVar10 + 0x264) != '\0') || (uVar8 != 0)) {
            if (uVar8 - 1 < 2) {
              uVar13 = (ulong)*(uint *)((long)plVar11 + -0xc);
              if ((int)param_4[0xc3] == 4) {
                iVar15 = *(int *)((long)plVar11 + -4);
                iVar12 = (int)*plVar11;
                uVar13 = uVar13 / 10;
                uVar14 = (ulong)*(uint *)(plVar11 + -1) / 10;
LAB_00113f20:
                input_event(lVar9,3,0x2f,uVar10 & 0xffffffff);
                input_mt_report_slot_state(lVar9,0,1);
                input_event(lVar9,1,0x14a,1);
                input_event(lVar9,1,0x145,1);
                input_event(lVar9,3,0x35,uVar13);
                input_event(lVar9,3,0x36,uVar14);
                iVar2 = iVar15;
                if (iVar15 <= iVar12) {
                  iVar2 = iVar12;
                }
                if (iVar12 <= iVar15) {
                  iVar15 = iVar12;
                }
                input_event(lVar9,3,0x30,iVar2);
                input_event(lVar9,3,0x31,iVar15);
              }
              else {
                iVar12 = (int)*plVar11;
                uVar14 = (ulong)*(uint *)(plVar11 + -1);
                iVar15 = *(int *)((long)plVar11 + -4);
                if (*(char *)(lVar3 + 0x1b) != '\x01') goto LAB_00113f20;
                if (iVar15 <= iVar12) {
                  iVar15 = iVar12;
                }
                tpd_touch_press(lVar9,uVar13,uVar14,uVar10 & 0xffffffff,iVar15,0);
                one_key_report(1,uVar13,uVar14,uVar10 & 0xffffffff);
              }
              iVar5 = iVar5 + 1;
            }
            else if (uVar8 == 0) {
              if ((*(char *)(lVar3 + 0x1b) == '\x01') && ((int)param_4[0xc3] != 4)) {
                tpd_touch_release(lVar9,uVar10 & 0xffffffff);
                one_key_report(0,0xffffffff,0xffffffff,uVar10 & 0xffffffff);
              }
              else {
                input_event(lVar9,3,0x2f,uVar10 & 0xffffffff);
                input_mt_report_slot_state(lVar9,0,0);
              }
            }
          }
          plVar1 = plVar11 + -2;
          plVar11 = (long *)((long)plVar11 + 0x34);
          *(char *)((long)param_4 + uVar10 + 0x264) = (char)*plVar1;
          uVar10 = uVar10 + 1;
        } while (uVar7 != uVar10);
        if (iVar5 == 0) goto LAB_0011403c;
      }
      input_event(lVar9,0,0,0);
    }
    mutex_unlock(param_4 + 0x4f);
  }
LAB_00114080:
  iVar5 = 0;
LAB_00114084:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar5);
}



/* 001141b4 syna_dev_isr */

undefined8 syna_dev_isr(undefined8 param_1,undefined8 *param_2)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  undefined1 local_2c [4];
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  lVar3 = param_2[0x4e];
  local_2c[0] = 0;
  if (((*(int *)((long)param_2 + 0x57c) == 1) || (*(char *)(param_2 + 0xaf) != '\x01')) ||
     (iVar1 = wait_for_completion_timeout(param_2 + 0xab,0xaf), iVar1 != 0)) {
    gpio_to_desc(*(undefined4 *)(lVar3 + 0xa8));
    iVar1 = gpiod_get_raw_value();
    if (iVar1 != *(int *)(lVar3 + 0xac)) goto LAB_00114240;
    lVar3 = sp_el0;
    *(undefined4 *)(param_2 + 0x5e) = *(undefined4 *)(lVar3 + 0x708);
    iVar1 = syna_tcm_get_event_data(*param_2,local_2c,param_2 + 0x55);
    if (-1 < iVar1) goto LAB_00114240;
    puVar2 = &DAT_001364d5;
  }
  else {
    puVar2 = &DAT_00133eec;
  }
  _printk(puVar2,"syna_dev_isr");
LAB_00114240:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return 1;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00114294 syna_dev_enter_normal_sensing */

int syna_dev_enter_normal_sensing(long *param_1)

{
  int iVar1;
  undefined *puVar2;
  undefined4 uVar3;
  
  if ((*(int *)(param_1[0x4e] + 0xb8) == 0) || ((*(byte *)(param_1[0x4e] + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*param_1 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  iVar1 = syna_tcm_sleep(*param_1,0,uVar3);
  if (iVar1 < 0) {
    puVar2 = &DAT_0013898e;
LAB_0011432c:
    _printk(puVar2,"syna_dev_enter_normal_sensing");
  }
  else {
    if (*(char *)((long)param_1 + 0x581) == '\x01') {
      iVar1 = syna_dev_enable_lowpwr_gesture(param_1,0,uVar3);
      if (iVar1 < 0) {
        puVar2 = &DAT_0013820a;
        goto LAB_0011432c;
      }
      msleep(100);
    }
    iVar1 = 0;
  }
  return iVar1;
}



/* 00114348 syna_dev_enable_lowpwr_gesture */

int syna_dev_enable_lowpwr_gesture(undefined8 *param_1,ulong param_2,undefined4 param_3)

{
  char *pcVar1;
  int iVar2;
  undefined4 uVar3;
  undefined1 uVar4;
  undefined *puVar5;
  
  if (*(char *)((long)param_1 + 0x581) != '\x01') {
    return 0;
  }
  if ((param_2 & 1) == 0) {
    if (*(byte *)((long)param_1 + 0x2f4) == 0) {
      uVar3 = 0;
      goto LAB_001143ec;
    }
    uVar4 = 0;
    uVar3 = 0;
    puVar5 = &UNK_00136512;
  }
  else {
    uVar3 = 1;
    if ((*(byte *)((long)param_1 + 0x2f4) & 1) != 0) goto LAB_001143ec;
    puVar5 = &DAT_001375f3;
    uVar4 = 1;
  }
  irq_set_irq_wake(*(undefined4 *)(param_1[0x4e] + 0xb8),uVar4);
  _printk(puVar5,"syna_dev_enable_lowpwr_gesture");
  *(undefined1 *)((long)param_1 + 0x2f4) = uVar4;
LAB_001143ec:
  iVar2 = syna_tcm_set_dynamic_config(*param_1,9,uVar3,param_3);
  if (iVar2 < 0) {
    pcVar1 = "enable";
    if ((param_2 & 1) == 0) {
      pcVar1 = "disable";
    }
    _printk(&DAT_00133f56,"syna_dev_enable_lowpwr_gesture",pcVar1);
  }
  else {
    iVar2 = syna_tcm_set_dynamic_config
                      (*param_1,0xfe,
                       *(uint *)((long)param_1 + 0x5c4) | *(int *)(param_1 + 0xb6) << 0xd,param_3);
    if (iVar2 < 0) {
      _printk(&DAT_0013be12,"syna_dev_enable_lowpwr_gesture");
    }
    else {
      _printk(&DAT_0013329f,"syna_dev_enable_lowpwr_gesture",*(undefined4 *)(param_1 + 0xb6),
              *(undefined4 *)((long)param_1 + 0x5c4));
      uVar3 = 0;
      if (*(int *)(param_1 + 0xb7) != 0) {
        uVar3 = 3;
      }
      iVar2 = syna_tcm_set_dynamic_config(*param_1,0xd4,uVar3,param_3);
      if (iVar2 < 0) {
        _printk(&DAT_0013be12,"syna_dev_enable_lowpwr_gesture");
      }
      else {
        _printk(&DAT_0013e036,"syna_dev_enable_lowpwr_gesture",*(undefined4 *)(param_1 + 0xb6));
      }
    }
  }
  return iVar2;
}



/* 00114510 syna_poll */

undefined4 syna_poll(long param_1,undefined8 *param_2)

{
  undefined4 uVar1;
  code *pcVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0x20);
  if (((param_2 != (undefined8 *)0x0) && (lVar3 != -0x448)) &&
     (pcVar2 = (code *)*param_2, pcVar2 != (code *)0x0)) {
    if (*(int *)(pcVar2 + -4) != -0x1a5eeedd) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x114554);
      (*pcVar2)();
    }
    (*pcVar2)();
    DataMemoryBarrier(2,3);
  }
  uVar1 = 0;
  if (*(int *)(lVar3 + 0x468) != 0) {
    uVar1 = 0x41;
  }
  return uVar1;
}



/* 00114580 syna_ioctl */

void syna_ioctl(long param_1,int param_2,ulong param_3)

{
  long lVar1;
  undefined8 uVar2;
  ulong uVar3;
  undefined8 *puVar4;
  ulong uVar5;
  long lVar6;
  undefined8 local_58;
  undefined8 local_50;
  undefined8 uStack_48;
  undefined8 local_40;
  undefined8 uStack_38;
  undefined4 local_2c;
  long local_28;
  
  lVar6 = sp_el0;
  local_28 = *(long *)(lVar6 + 0x710);
  lVar6 = *(long *)(param_1 + 0x20);
  local_2c = 0;
  if (param_2 == -0x3ffb8ffd) {
    local_2c = *(undefined4 *)(lVar6 + 0x438);
    mutex_lock(lVar6 + 0x470);
    puVar4 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar4 + 0x46) >> 5 & 1) != 0) ||
       (uVar5 = param_3, ((uint)*puVar4 >> 0x1a & 1) != 0)) {
      uVar5 = param_3 & (long)(param_3 << 8) >> 8;
    }
    if (uVar5 < 0x7ffffffffd) {
      uVar2 = daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar3 = puVar4[1];
      uVar5 = ttbr1_el1;
      ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
      ttbr0_el1 = uVar3;
      InstructionSynchronizationBarrier();
      daif = uVar2;
      lVar1 = __arch_copy_to_user(uVar3,param_3 & 0xff7fffffffffffff,&local_2c,4);
      puVar4 = (undefined8 *)daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar5 = ttbr1_el1;
      ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar5 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar4;
LAB_00114774:
      if (lVar1 == 0) {
        mutex_unlock(puVar4,lVar6 + 0x470);
        uVar2 = 0;
        goto LAB_001147bc;
      }
    }
  }
  else {
    if (param_2 != -0x3ffb8ffe) {
      if (param_2 == -0x3ffb8fff) {
        if (*(int *)(lVar6 + 0x5e0) == 0) {
          uVar2 = 0xfffffffffffffff5;
        }
        else {
          if (*(int *)(lVar6 + 0x468) == 0) {
            local_40 = 0;
            uStack_38 = 0;
            local_50 = 0;
            uStack_48 = 0;
            local_58 = 0;
            init_wait_entry(&local_58,0);
            while( true ) {
              lVar1 = prepare_to_wait_event(lVar6 + 0x448,&local_58,1);
              if (*(int *)(lVar6 + 0x468) != 0) break;
              if (lVar1 != 0) goto LAB_001147b4;
              schedule();
            }
            finish_wait(lVar6 + 0x448,&local_58);
          }
LAB_001147b4:
          uVar2 = 0;
          *(undefined4 *)(lVar6 + 0x468) = 0;
        }
      }
      else {
        uVar2 = 0xffffffffffffffe7;
      }
      goto LAB_001147bc;
    }
    local_2c = *(undefined4 *)(lVar6 + 0x5e0);
    mutex_lock(lVar6 + 0x470);
    puVar4 = (undefined8 *)sp_el0;
    if (((*(byte *)((long)puVar4 + 0x46) >> 5 & 1) != 0) ||
       (uVar5 = param_3, ((uint)*puVar4 >> 0x1a & 1) != 0)) {
      uVar5 = param_3 & (long)(param_3 << 8) >> 8;
    }
    if (uVar5 < 0x7ffffffffd) {
      uVar2 = daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar3 = puVar4[1];
      uVar5 = ttbr1_el1;
      ttbr1_el1 = uVar3 & 0xffff000000000000 | uVar5 & 0xffffffffffff;
      ttbr0_el1 = uVar3;
      InstructionSynchronizationBarrier();
      daif = uVar2;
      lVar1 = __arch_copy_to_user(uVar3,param_3 & 0xff7fffffffffffff,&local_2c,4);
      puVar4 = (undefined8 *)daif;
      uVar5 = daif;
      daif = uVar5 | 0xc0;
      uVar5 = ttbr1_el1;
      ttbr0_el1 = (uVar5 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar5 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = puVar4;
      goto LAB_00114774;
    }
  }
  mutex_unlock(puVar4,lVar6 + 0x470);
  uVar2 = 0xfffffffffffffff2;
LAB_001147bc:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar2);
}



/* 001147ec syna_mmap */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 syna_mmap(long param_1,long *param_2)

{
  int iVar1;
  ulong uVar2;
  undefined4 uVar3;
  
  uVar2 = param_2[1] - *param_2;
  if (uVar2 < 0x32001) {
    iVar1 = remap_pfn_range(param_2,*param_2,
                            (long)((_memstart_addr >> 0xc) * 0x40 +
                                  ((param_2[10] * 0x100000 +
                                    *(long *)(*(long *)(param_1 + 0x20) + 0x460) * 0x100 >> 8) +
                                   0x8000000000U >> 6)) >> 6,uVar2,param_2[3]);
    uVar3 = 0;
    if (iVar1 != 0) {
      uVar3 = 0xfffffff5;
    }
  }
  else {
    _printk(&DAT_0013a62e,"syna_mmap",uVar2 & 0xffffffff,0x32000);
    uVar3 = 0xffffffea;
  }
  return uVar3;
}



/* 001148a0 syna_open */

undefined8 syna_open(undefined8 param_1,long param_2)

{
  *(long *)(param_2 + 0x20) = *(long *)(param_2 + 0x20) + -0x4a0;
  _printk(&DAT_0013cdd8,"syna_open");
  return 0;
}



/* 001148e0 syna_release */

undefined8 syna_release(void)

{
  _printk(&DAT_0013b0e0,"syna_release");
  return 0;
}



/* 00114914 syna_ts_panel_notifier_callback */

void syna_ts_panel_notifier_callback(undefined8 param_1,int *param_2)

{
  int iVar1;
  undefined *puVar2;
  
  if (param_2 == (int *)0x0) {
    puVar2 = &DAT_0013274c;
  }
  else {
    iVar1 = *param_2;
    if (2 < iVar1) {
      if (iVar1 == 3) {
        panel_enter_low_power = 1;
        ufp_notifier_cb(1);
        ufp_report_lcd_state();
        return;
      }
      if (iVar1 == 4) {
        return;
      }
LAB_00114990:
      _printk(&DAT_0013d340,iVar1);
      return;
    }
    if (iVar1 == 1) {
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = '\0';
        ufp_notifier_cb(0);
        _printk(&DAT_00136539);
      }
      if ((char)param_2[3] == '\x01') {
        change_tp_state(3);
        return;
      }
      puVar2 = &DAT_001338fb;
    }
    else {
      if (iVar1 != 2) goto LAB_00114990;
      if (panel_enter_low_power == '\x01') {
        panel_enter_low_power = '\0';
        ufp_notifier_cb(0);
      }
      if ((char)param_2[3] != '\x01') {
        change_tp_state(2);
        return;
      }
      puVar2 = &DAT_00135230;
    }
  }
  _printk(puVar2);
  return;
}



/* 00114a44 tpd_goodix_ts_resume */

void tpd_goodix_ts_resume(long param_1)

{
  syna_dev_resume(*(long *)(param_1 + 8) + 0x10);
  return;
}



/* 00114a6c tpd_goodix_ts_suspend */

void tpd_goodix_ts_suspend(long param_1)

{
  syna_dev_suspend(*(long *)(param_1 + 8) + 0x10);
  return;
}



/* 00114a94 syna_pm_suspend */

undefined8 syna_pm_suspend(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x98);
  _printk(&DAT_00133951,"syna_pm_suspend");
  *(undefined1 *)(lVar1 + 0x578) = 1;
  *(undefined4 *)(lVar1 + 0x558) = 0;
  return 0;
}



/* 00114ae0 syna_pm_resume */

undefined8 syna_pm_resume(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0x98);
  _printk(&DAT_00137619,"syna_pm_resume");
  *(undefined1 *)(lVar1 + 0x578) = 0;
  complete(lVar1 + 0x558);
  return 0;
}



/* 00114b3c syna_cdev_create */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_cdev_create(long param_1,undefined8 param_2)

{
  int iVar1;
  uint uVar2;
  ulong uVar3;
  undefined *puVar4;
  ulong uVar5;
  
  _DAT_00131e88 = 0;
  _DAT_00131e90 = 0;
  DAT_00131e78 = 0;
  DAT_00131e80 = 0;
  DAT_00131e68 = 0;
  DAT_00131e70 = 0;
  DAT_00131e58 = 0;
  DAT_00131e60 = 0;
  DAT_00131e40 = 0;
  DAT_00131e48 = 0;
  DAT_00131e30 = 0;
  DAT_00131e38 = 0;
  DAT_00131e28 = 0;
  DAT_00131e10 = 0;
  _DAT_00131e18 = 0;
  DAT_00131e00 = 0;
  DAT_00131e08 = 0;
  DAT_00131df0 = 0;
  DAT_00131df8 = 0;
  DAT_00131dd8 = 0;
  DAT_00131de0 = 0;
  DAT_00131de8 = 0;
  DAT_00131e50 = 0;
  DAT_00131e20 = 0;
  g_cdev_data = param_2;
  *(undefined8 *)(param_1 + 0x388) = 0;
  *(undefined8 *)(param_1 + 0x390) = 0;
  __mutex_init(&DAT_00131e20,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  __mutex_init(&DAT_00131e50,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  _DAT_00131e18 = _DAT_00131e18 & 0xffffffffffffff00;
  DAT_00131dd8 = 0;
  DAT_00131de0 = 0;
  __mutex_init(&DAT_00131de8,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  if (syna_cdev_create_cdev_major_num == 0) {
    uVar2 = alloc_chrdev_region((uint *)(param_1 + 0x380),0,1,"synaptics_tcm");
    if (-1 < (int)uVar2) {
      syna_cdev_create_cdev_major_num = *(uint *)(param_1 + 0x380) >> 0x14;
      goto LAB_00114c58;
    }
    puVar4 = &DAT_00133faa;
  }
  else {
    iVar1 = syna_cdev_create_cdev_major_num << 0x14;
    *(int *)(param_1 + 0x380) = iVar1;
    uVar2 = register_chrdev_region(iVar1,1,"synaptics_tcm");
    if (-1 < (int)uVar2) {
LAB_00114c58:
      cdev_init(param_1 + 0x2f8,device_fops);
      *(undefined1 **)(param_1 + 0x358) = &__this_module;
      uVar2 = cdev_add(param_1 + 0x2f8,*(undefined4 *)(param_1 + 0x380),1);
      if ((int)uVar2 < 0) {
        uVar5 = (ulong)uVar2;
        _printk(&DAT_0013b736,"syna_cdev_create");
      }
      else {
        uVar5 = class_create("synaptics_tcm");
        if (uVar5 < 0xfffffffffffff001) {
          *(code **)(uVar5 + 0x20) = syna_cdev_devnode;
          uVar3 = device_create(uVar5,0,*(uint *)(param_1 + 0x380),0,"tcm%d",
                                *(uint *)(param_1 + 0x380) & 0xfffff);
          if (uVar3 < 0xfffffffffffff001) {
            *(ulong *)(param_1 + 0x390) = uVar3;
            DAT_00131e80 = DAT_00131e80 & 0xffffffff;
            *(ulong *)(param_1 + 0x388) = uVar5;
            *(undefined4 *)(param_1 + 900) = 0;
            *(long *)(param_1 + 0x4f8) = param_1 + 0x4f8;
            *(long *)(param_1 + 0x500) = param_1 + 0x4f8;
            __init_waitqueue_head(param_1 + 0x508,"&tcm->wait_frame",&syna_cdev_create___key);
            uVar5 = 0;
            goto LAB_00114d10;
          }
          _printk(&DAT_0013c628,"syna_cdev_create");
          class_destroy(uVar5);
          uVar5 = 0xfffffffe;
        }
        else {
          _printk(&DAT_00136585,"syna_cdev_create");
        }
        cdev_del(param_1 + 0x2f8);
      }
      unregister_chrdev_region(*(undefined4 *)(param_1 + 0x380),1);
      goto LAB_00114d10;
    }
    puVar4 = &DAT_0013b132;
  }
  uVar5 = (ulong)uVar2;
  _printk(puVar4,"syna_cdev_create");
LAB_00114d10:
  return uVar5 & 0xffffffff;
}



/* 00114db8 syna_cdev_devnode */

undefined8 syna_cdev_devnode(long *param_1,undefined2 *param_2)

{
  undefined8 uVar1;
  long lVar2;
  
  if (param_2 != (undefined2 *)0x0) {
    *param_2 = 0x600;
    lVar2 = param_1[0xe];
    if (lVar2 == 0) {
      lVar2 = *param_1;
    }
    uVar1 = kasprintf(0xcc0,&DAT_00136fcb,lVar2);
    return uVar1;
  }
  return 0;
}



/* 00114e04 syna_cdev_remove */

void syna_cdev_remove(long param_1)

{
  long lVar1;
  long *plVar2;
  long lVar3;
  long *plVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00132772,"syna_cdev_remove");
  }
  else {
    mutex_lock(&DAT_00131e50);
    plVar4 = *(long **)(param_1 + 0x4f8);
    while (plVar4 != (long *)(param_1 + 0x4f8)) {
      plVar2 = (long *)plVar4[1];
      if (((long *)*plVar2 == plVar4) && (lVar3 = *plVar4, *(long **)(lVar3 + 8) == plVar4)) {
        *(long **)(lVar3 + 8) = plVar2;
        *plVar2 = lVar3;
      }
      else {
        __list_del_entry_valid_or_report(plVar4);
      }
      *plVar4 = -0x2152ffffffffff00;
      plVar4[1] = -0x2152fffffffffede;
      kfree(plVar4[2]);
      kfree(plVar4);
      if (*(int *)(param_1 + 0x4f0) != 0) {
        *(int *)(param_1 + 0x4f0) = *(int *)(param_1 + 0x4f0) + -1;
      }
      plVar4 = *(long **)(param_1 + 0x4f8);
    }
    mutex_unlock(&DAT_00131e50);
    *(undefined4 *)(param_1 + 900) = 0;
    if (*(long *)(param_1 + 0x390) != 0) {
      device_destroy(*(undefined8 *)(param_1 + 0x388),*(undefined4 *)(param_1 + 0x380));
      class_destroy(*(undefined8 *)(param_1 + 0x388));
      cdev_del(param_1 + 0x2f8);
      unregister_chrdev_region(*(undefined4 *)(param_1 + 0x380),1);
    }
    if (DAT_00131e18 != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = DAT_00131dd8;
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    *(undefined8 *)(param_1 + 0x388) = 0;
    DAT_00131de0 = 0;
    DAT_00131e18 = '\0';
    *(undefined8 *)(param_1 + 0x390) = 0;
    g_cdev_data = 0;
  }
  return;
}



/* 00114f98 syna_cdev_llseek */

undefined8 syna_cdev_llseek(void)

{
  return 0xffffffffffffffea;
}



/* 00114fa4 syna_cdev_read */

ulong syna_cdev_read(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if (param_3 == 0) {
    uVar2 = 0;
  }
  else {
    uVar3 = *(undefined8 *)(g_cdev_data + 0xa8);
    mutex_lock(&DAT_00131e20);
    iVar1 = syna_cdev_ioctl_raw_read(uVar3,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff);
    uVar2 = (ulong)iVar1;
    if (uVar2 != param_3) {
      _printk(&DAT_00139525,"syna_cdev_read",param_3 & 0xffffffff,iVar1);
    }
    mutex_unlock(&DAT_00131e20);
  }
  return uVar2;
}



/* 00115048 syna_cdev_write */

ulong syna_cdev_write(undefined8 param_1,undefined8 param_2,ulong param_3)

{
  int iVar1;
  ulong uVar2;
  undefined8 uVar3;
  
  if (param_3 == 0) {
    uVar2 = 0;
  }
  else {
    uVar3 = *(undefined8 *)(g_cdev_data + 0xa8);
    mutex_lock(&DAT_00131e20);
    iVar1 = syna_cdev_ioctl_raw_write(uVar3,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff);
    uVar2 = (ulong)iVar1;
    if (uVar2 != param_3) {
      _printk(&DAT_001395b4,"syna_cdev_write",param_3 & 0xffffffff,iVar1);
    }
    mutex_unlock(&DAT_00131e20);
  }
  return uVar2;
}



/* 001150ec syna_cdev_ioctls */

long syna_cdev_ioctls(undefined8 param_1,byte param_2,ulong param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  byte bVar3;
  ushort uVar4;
  undefined2 uVar5;
  undefined8 *puVar6;
  ulong uVar7;
  byte *pbVar8;
  ulong uVar9;
  long lVar10;
  bool bVar11;
  uint uVar12;
  uint uVar13;
  int iVar14;
  ulong uVar15;
  long lVar16;
  long lVar17;
  void *pvVar18;
  undefined *puVar19;
  ulong __n;
  undefined8 *puVar20;
  undefined8 uVar21;
  char *pcVar22;
  uint uVar23;
  code *pcVar24;
  ulong uVar25;
  long *plVar26;
  ulong uVar27;
  long *plVar28;
  long *plVar29;
  long lVar30;
  byte *pbVar31;
  undefined8 local_188;
  ulong local_180;
  undefined1 auStack_178 [4];
  int local_174;
  undefined8 local_170;
  undefined8 local_168;
  undefined8 local_160;
  undefined8 local_158;
  undefined8 local_150;
  undefined8 local_148;
  undefined8 local_140;
  undefined8 local_138;
  ulong local_130;
  undefined8 uStack_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_110;
  undefined8 uStack_108;
  undefined8 local_100;
  undefined8 uStack_f8;
  undefined8 local_f0;
  undefined8 uStack_e8;
  undefined8 local_e0;
  undefined8 uStack_d8;
  undefined8 local_d0;
  undefined8 uStack_c8;
  undefined8 local_c0;
  undefined8 uStack_b8;
  undefined8 local_b0;
  undefined8 uStack_a8;
  undefined8 local_a0;
  undefined8 uStack_98;
  undefined8 local_90;
  undefined8 uStack_88;
  undefined8 local_80;
  undefined8 uStack_78;
  long local_70;
  
  lVar30 = sp_el0;
  local_70 = *(long *)(lVar30 + 0x710);
  local_188 = 0;
  local_180 = 0;
  plVar28 = *(long **)(g_cdev_data + 0xa8);
  mutex_lock(&DAT_00131e20);
  if (param_2 < 0x10) {
    if (param_2 < 2) {
      if (param_2 == 0) {
        uVar12 = syna_tcm_reset(*plVar28,*(undefined4 *)(*plVar28 + 0x20c));
        if ((int)uVar12 < 0) {
          puVar19 = &DAT_0013a66c;
        }
        else {
          if (*(char *)(*plVar28 + 9) != '\x01') goto LAB_001168dc;
          if (*(int *)((code *)plVar28[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x11538c);
            (*pcVar24)();
          }
          uVar12 = (*(code *)plVar28[0xd7])(plVar28);
          if (-1 < (int)uVar12) goto LAB_001168dc;
          puVar19 = &DAT_00132d53;
        }
        _printk(puVar19,"syna_cdev_ioctl_old_dispatch");
        goto LAB_001168dc;
      }
      if (param_2 == 1) {
        pcVar24 = *(code **)(plVar28[0x4e] + 0x40);
        if (pcVar24 == (code *)0x0) {
          uVar12 = 0xffffffea;
          goto LAB_001168dc;
        }
        if (param_3 == 1) {
          uVar21 = 1;
        }
        else {
          if (param_3 != 0) goto LAB_001168d8;
          uVar21 = 0;
        }
        if (*(int *)(pcVar24 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x1153cc);
          (*pcVar24)();
        }
        uVar12 = (*pcVar24)(plVar28[0x4e] + 8,uVar21);
        goto LAB_001168dc;
      }
LAB_001162e8:
      pcVar22 = "syna_cdev_ioctl_old_dispatch";
LAB_001162f8:
      _printk(&DAT_00135fc9,pcVar22,param_2);
      uVar12 = 0xffffffea;
      goto LAB_001168dc;
    }
    if (param_2 != 2) {
      if (param_2 == 3) {
        uVar12 = 0;
        *(undefined1 *)((long)plVar28 + 0x584) = 1;
        goto LAB_001168dc;
      }
      goto LAB_001162e8;
    }
    goto LAB_001168d8;
  }
  if (param_2 == 0x10) {
    uVar12 = 1;
    goto LAB_001168dc;
  }
  puVar6 = (undefined8 *)sp_el0;
  uVar7 = (long)(param_3 << 8) >> 8;
  if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
     (uVar25 = param_3, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
    uVar25 = param_3 & uVar7;
  }
  if (0x7ffffffff0 < uVar25) {
    uVar15 = 0x10;
LAB_001161ec:
    if (0x10 < uVar15) {
LAB_00117248:
                    /* WARNING: Subroutine does not return */
      __fortify_panic(uVar25,0xf,0,uVar15);
    }
    memset(auStack_178 + -uVar15,0,uVar15);
    puVar19 = &DAT_00134b30;
    pcVar22 = "syna_cdev_ioctls";
    uVar15 = uVar15 & 0xffffffff;
    goto LAB_00116938;
  }
  uVar21 = daif;
  uVar25 = daif;
  daif = uVar25 | 0xc0;
  uVar25 = ttbr1_el1;
  ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
  ttbr0_el1 = puVar6[1];
  InstructionSynchronizationBarrier();
  daif = uVar21;
  uVar15 = __arch_copy_from_user(uVar21,&local_188,param_3 & 0xff7fffffffffffff,0x10);
  uVar9 = local_180;
  uVar25 = daif;
  uVar27 = daif;
  daif = uVar27 | 0xc0;
  uVar27 = ttbr1_el1;
  ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
  ttbr1_el1 = uVar27 & 0xffffffffffff;
  InstructionSynchronizationBarrier();
  daif = uVar25;
  if (uVar15 != 0) goto LAB_001161ec;
  uVar23 = local_188._4_4_;
  uVar15 = (ulong)local_188._4_4_;
  if (0x1000 < local_188._4_4_) {
    _printk(uVar25,&DAT_001382a8,"syna_cdev_ioctls");
    uVar12 = 0xffffffcc;
    goto LAB_001168dc;
  }
  uVar12 = (uint)local_188;
  uVar25 = local_180;
  switch(param_2) {
  case 0x11:
    _printk(&DAT_00138a56,"syna_cdev_ioctl_store_pid");
    bVar3 = *(byte *)((long)puVar6 + 0x46);
    goto joined_r0x0011684c;
  case 0x12:
    uVar25 = local_188 & 0xffffffff;
    local_170 = (void *)((ulong)local_170 & 0xffffffff00000000);
    if ((*(byte *)((long)plVar28 + 0x582) & 1) == 0) {
      pcVar22 = "syna_cdev_ioctl_enable_irq";
LAB_00116e64:
      _printk(&DAT_0013e0ee,pcVar22);
      uVar12 = 0xfffffffa;
    }
    else {
      if (*(int *)((long)plVar28 + 0x57c) == 3) {
        puVar19 = &DAT_00138eb9;
        pcVar22 = "syna_cdev_ioctl_enable_irq";
        goto LAB_00116ac0;
      }
      if ((local_188._4_4_ < 4) || ((uint)local_188 < 4)) {
        puVar19 = &DAT_0013a131;
        pcVar22 = "syna_cdev_ioctl_enable_irq";
        goto LAB_00116bc4;
      }
      lVar30 = plVar28[0x4e];
      if (*(long *)(lVar30 + 0x40) == 0) {
        puVar19 = &DAT_0013463f;
        pcVar22 = "syna_cdev_ioctl_enable_irq";
        goto LAB_00116cac;
      }
      if (4 < local_188._4_4_) {
        __copy_overflow(4,uVar15);
LAB_00115330:
        pcVar22 = "syna_cdev_ioctl_enable_irq";
        goto LAB_00116cf4;
      }
      __check_object_size(&local_170,uVar15,0);
      if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
         (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
        uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
      }
      uVar27 = uVar15;
      if (0x8000000000 - uVar15 < uVar25) {
LAB_001152fc:
        uVar15 = uVar15 - uVar27;
        uVar25 = 0;
        if (uVar15 < 5) {
          uVar25 = 4 - uVar15;
        }
        if (uVar25 < uVar27) {
                    /* WARNING: Subroutine does not return */
          __fortify_panic(0xf,uVar25,uVar27);
        }
        memset((void *)((long)&local_170 + uVar15),0,uVar27);
        uVar15 = uVar27 & 0xffffffff;
        if ((int)uVar27 != 0) goto LAB_00115330;
      }
      else {
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
        ttbr0_el1 = puVar6[1];
        InstructionSynchronizationBarrier();
        daif = uVar21;
        uVar27 = __arch_copy_from_user(uVar21,&local_170,uVar9 & 0xff7fffffffffffff,uVar15);
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar25 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar21;
        if (uVar27 != 0) goto LAB_001152fc;
      }
      if ((uint)local_170 == 1) {
        if ((*(byte *)(plVar28[0x4e] + 0xbc) & 1) == 0) {
          if (*(int *)(*(code **)(lVar30 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x117000);
            (*pcVar24)();
          }
          uVar12 = (**(code **)(lVar30 + 0x40))(lVar30 + 8,1);
          if (-1 < (int)uVar12) {
            _printk(&DAT_0013bf41,"syna_cdev_ioctl_enable_irq");
            uVar12 = 0;
            DAT_00131e80._0_4_ = 0;
            break;
          }
LAB_00117008:
          puVar19 = &DAT_00134666;
LAB_00117014:
          _printk(puVar19,"syna_cdev_ioctl_enable_irq");
          break;
        }
      }
      else if ((uint)local_170 == 0) {
        if (*(char *)(plVar28[0x4e] + 0xbc) == '\x01') {
          if (*(int *)(*(code **)(lVar30 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x11646c);
            (*pcVar24)();
          }
          uVar12 = (**(code **)(lVar30 + 0x40))(lVar30 + 8,0);
          if (-1 < (int)uVar12) {
            _printk(&DAT_001382cb,"syna_cdev_ioctl_enable_irq");
            uVar12 = 0;
            DAT_00131e80._0_4_ = *(uint *)(*plVar28 + 0x20c);
            break;
          }
          puVar19 = &DAT_0013397d;
          goto LAB_00117014;
        }
      }
      else {
        if (*(int *)(*(code **)(lVar30 + 0x40) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x116f74);
          (*pcVar24)();
        }
        uVar12 = (**(code **)(lVar30 + 0x40))(lVar30 + 8,1);
        if ((int)uVar12 < 0) goto LAB_00117008;
        uVar12 = *(uint *)(*plVar28 + 0x20c);
        DAT_00131e80._0_4_ = (uint)local_170;
        if ((uint)local_170 < uVar12) {
          local_170 = (void *)CONCAT44(local_170._4_4_,uVar12);
          DAT_00131e80._0_4_ = uVar12;
        }
        _printk(&DAT_0013bf41,"syna_cdev_ioctl_enable_irq");
        _printk(&DAT_0013d387,"syna_cdev_ioctl_enable_irq",(uint)DAT_00131e80);
      }
LAB_00116500:
      uVar12 = 0;
    }
    break;
  case 0x13:
    uVar12 = syna_cdev_ioctl_raw_read(plVar28,local_180,local_188._4_4_,local_188 & 0xffffffff);
    break;
  case 0x14:
    uVar12 = syna_cdev_ioctl_raw_write(plVar28,local_180,local_188._4_4_,local_188 & 0xffffffff);
    break;
  case 0x15:
    lVar30 = plVar28[0x4e];
    local_174 = 0;
    if ((*(byte *)((long)plVar28 + 0x582) & 1) == 0) {
      pcVar22 = "syna_cdev_ioctl_get_frame";
      goto LAB_00116e64;
    }
    if (*(int *)((long)plVar28 + 0x57c) == 3) {
      puVar19 = &DAT_00138ef0;
      pcVar22 = "syna_cdev_ioctl_get_frame";
      goto LAB_00116ac0;
    }
    if (local_188._4_4_ < 4) {
      puVar19 = &DAT_00135ff1;
      pcVar22 = "syna_cdev_ioctl_get_frame";
      uVar25 = (ulong)local_188._4_4_;
      goto LAB_00116d10;
    }
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) || (((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar25 = local_180 & (long)(local_180 << 8) >> 8;
    }
    if (0x7ffffffffc < uVar25) {
      uVar15 = 4;
LAB_00116cbc:
      if (4 < uVar15) goto LAB_00117248;
      memset((void *)((long)&local_170 - uVar15),0,uVar15);
      pcVar22 = "syna_cdev_ioctl_get_frame";
      goto LAB_00116cf0;
    }
    uVar21 = daif;
    uVar25 = daif;
    daif = uVar25 | 0xc0;
    uVar25 = ttbr1_el1;
    ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
    ttbr0_el1 = puVar6[1];
    InstructionSynchronizationBarrier();
    daif = uVar21;
    uVar15 = __arch_copy_from_user(uVar21,&local_174,local_180 & 0xff7fffffffffffff,4);
    iVar14 = local_174;
    uVar25 = daif;
    uVar27 = daif;
    daif = uVar27 | 0xc0;
    uVar27 = ttbr1_el1;
    ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar27 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar25;
    if (uVar15 != 0) goto LAB_00116cbc;
    plVar29 = plVar28 + 0x9f;
    if ((long *)plVar28[0x9f] == plVar29) {
      lVar17 = __msecs_to_jiffies(local_174);
      if (lVar17 == 0 && (int)plVar28[0x9e] != 0) {
        lVar17 = 1;
      }
      if (((int)plVar28[0x9e] == 0) && (lVar17 != 0)) {
        local_158 = 0;
        local_150 = 0;
        local_168 = 0;
        local_160 = 0;
        local_170 = (void *)0x0;
        lVar16 = __msecs_to_jiffies(iVar14);
        init_wait_entry(&local_170,0);
        lVar17 = prepare_to_wait_event(plVar28 + 0xa1,&local_170,1);
        iVar14 = (int)plVar28[0x9e];
        if (lVar16 == 0 && iVar14 != 0) {
          lVar16 = 1;
        }
        while ((lVar10 = lVar16, iVar14 == 0 && (lVar10 = 0, lVar16 != 0))) {
          if (lVar17 != 0) goto LAB_00115928;
          lVar16 = schedule_timeout(lVar16);
          lVar17 = prepare_to_wait_event(plVar28 + 0xa1,&local_170,1);
          iVar14 = (int)plVar28[0x9e];
          if (lVar16 == 0 && iVar14 != 0) {
            lVar16 = 1;
          }
        }
        lVar17 = lVar10;
        finish_wait(plVar28 + 0xa1,&local_170);
      }
LAB_00115928:
      if ((int)lVar17 == 0) {
        local_188 = local_188 & 0xffffffff00000000;
        uVar12 = 0xffffff92;
        break;
      }
    }
    if ((long *)*plVar29 == plVar29) {
      uVar12 = 0xffffffc3;
      break;
    }
    mutex_lock(&DAT_00131e50);
    plVar29 = (long *)*plVar29;
    uVar13 = *(uint *)(plVar29 + 3);
    uVar25 = (ulong)uVar13;
    if (uVar23 < uVar13) {
      _printk(&DAT_00136cad,"syna_cdev_ioctl_get_frame",uVar23,uVar25);
      uVar12 = 0xffffffb5;
      break;
    }
    lVar17 = plVar29[2];
    __check_object_size(lVar17,uVar25,1);
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
       (uVar15 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar15 = uVar9 & (long)(uVar9 << 8) >> 8;
    }
    if (uVar15 <= 0x8000000000 - uVar25) {
      uVar21 = daif;
      uVar15 = daif;
      daif = uVar15 | 0xc0;
      uVar15 = ttbr1_el1;
      ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar15 & 0xffffffffffff;
      ttbr0_el1 = puVar6[1];
      InstructionSynchronizationBarrier();
      daif = uVar21;
      uVar13 = __arch_copy_to_user(uVar21,uVar9 & 0xff7fffffffffffff,lVar17,uVar25);
      uVar15 = daif;
      uVar25 = daif;
      daif = uVar25 | 0xc0;
      uVar25 = ttbr1_el1;
      ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar25 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar15;
    }
    if (uVar13 == 0) {
      uVar12 = 0;
    }
    else {
      _printk(uVar15,&DAT_00137646,"syna_cdev_ioctl_get_frame",uVar13);
      uVar12 = 0xffffffcc;
    }
    plVar26 = (long *)plVar29[1];
    local_188 = CONCAT44(local_188._4_4_,(int)plVar29[3]);
    if (((long *)*plVar26 == plVar29) && (lVar17 = *plVar29, *(long **)(lVar17 + 8) == plVar29)) {
      *(long **)(lVar17 + 8) = plVar26;
      *plVar26 = lVar17;
    }
    else {
      __list_del_entry_valid_or_report(plVar29);
    }
    *plVar29 = -0x2152ffffffffff00;
    plVar29[1] = -0x2152fffffffffede;
    if (uVar13 == 0) {
      uVar12 = *(uint *)(plVar29 + 3);
    }
    kfree(plVar29[2]);
    kfree(plVar29);
    uVar23 = *(uint *)(plVar28 + 0x9e);
    if (uVar23 != 0) {
      uVar23 = uVar23 - 1;
      *(uint *)(plVar28 + 0x9e) = uVar23;
    }
    if (((uVar23 < DAT_00131e88) && ((*(byte *)(plVar28[0x4e] + 0xbc) & 1) == 0)) &&
       (pcVar24 = *(code **)(lVar30 + 0x40), pcVar24 != (code *)0x0)) {
      if (*(int *)(pcVar24 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x115ab4);
        (*pcVar24)();
      }
      (*pcVar24)(lVar30 + 8,1);
    }
    puVar20 = &DAT_00131e50;
    goto LAB_00116840;
  case 0x16:
    lVar30 = *plVar28;
    local_174 = (uint)local_174._1_3_ << 8;
    local_138 = 0;
    local_130 = 0;
    local_148 = 0;
    local_140 = 0;
    local_158 = 0;
    local_150 = 0;
    local_168 = 0;
    local_160 = 0;
    local_170 = (void *)0x0;
    if ((*(byte *)((long)plVar28 + 0x582) & 1) == 0) {
      pcVar22 = "syna_cdev_ioctl_send_message";
      goto LAB_00116e64;
    }
    if (*(int *)((long)plVar28 + 0x57c) == 3) {
      puVar19 = &DAT_00133fff;
      pcVar22 = "syna_cdev_ioctl_send_message";
      goto LAB_00116ac0;
    }
    if (local_188._4_4_ < DAT_00131e80._4_4_ + 3) {
      puVar19 = &DAT_00135ff1;
      pcVar22 = "syna_cdev_ioctl_send_message";
      uVar25 = (ulong)local_188._4_4_;
    }
    else {
      uVar25 = local_188 & 0xffffffff;
      if (((uint)local_188 <= local_188._4_4_) && (0xfffff001 < (uint)local_188 - 0x1001)) {
        if (DAT_00131e18 != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(&DAT_00131de8);
        pbVar8 = DAT_00131dd8;
        uVar25 = DAT_00131de0 & 0xffffffff;
        uVar12 = (DAT_00131e80._4_4_ & ((int)DAT_00131e80._4_4_ >> 0x1f ^ 0xffffffffU)) + uVar23;
        uVar27 = (ulong)uVar12;
        DAT_00131e18 = DAT_00131e18 + '\x01';
        if ((uint)DAT_00131de0 < uVar12) {
          if (DAT_00131dd8 == (byte *)0x0) {
LAB_001156cc:
            lVar17 = syna_request_managed_device();
            if (lVar17 != 0) goto LAB_001156d4;
LAB_00117160:
            puVar19 = &DAT_0013ccb3;
LAB_00117168:
            _printk(puVar19,"syna_pal_mem_alloc");
            DAT_00131dd8 = (byte *)0x0;
          }
          else {
            lVar17 = syna_request_managed_device();
            if (lVar17 != 0) {
              devm_kfree(lVar17,pbVar8);
              goto LAB_001156cc;
            }
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            lVar17 = syna_request_managed_device();
            if (lVar17 == 0) goto LAB_00117160;
LAB_001156d4:
            if ((int)uVar12 < 1) {
              puVar19 = &DAT_00138e98;
              goto LAB_00117168;
            }
            DAT_00131dd8 = (byte *)devm_kmalloc(lVar17,uVar27,0xdc0);
            if (DAT_00131dd8 != (byte *)0x0) {
              DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,uVar12);
              uVar25 = uVar27;
              goto LAB_00116324;
            }
          }
          _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar27);
          DAT_00131de0 = 0;
          _printk(&DAT_00138268,"syna_cdev_ioctl_send_message",uVar23);
          uVar12 = 0xffffff0d;
        }
        else {
LAB_00116324:
          memset(DAT_00131dd8,0,uVar25);
          pbVar8 = DAT_00131dd8;
          uVar25 = local_188 & 0xffffffff;
          DAT_00131de0 = DAT_00131de0 & 0xffffffff;
          if ((int)(uint)local_188 < 0) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x800,0x117230);
            (*pcVar24)();
          }
          __check_object_size(DAT_00131dd8,uVar25,0);
          if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
             (uVar27 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
            uVar27 = uVar9 & (long)(uVar9 << 8) >> 8;
          }
          __n = uVar25;
          if (0x8000000000 - uVar25 < uVar27) {
LAB_00116380:
            memset(pbVar8 + (uVar25 - __n),0,__n);
            if ((int)__n != 0) {
              _printk(&DAT_001352ed,"syna_cdev_ioctl_send_message",local_188 & 0xffffffff);
              uVar12 = 0xffffffcc;
              goto LAB_00116758;
            }
          }
          else {
            uVar21 = daif;
            uVar27 = daif;
            daif = uVar27 | 0xc0;
            uVar27 = ttbr1_el1;
            ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar27 & 0xffffffffffff;
            ttbr0_el1 = puVar6[1];
            InstructionSynchronizationBarrier();
            daif = uVar21;
            __n = __arch_copy_from_user(uVar21,pbVar8,uVar9 & 0xff7fffffffffffff,uVar25);
            uVar21 = daif;
            uVar27 = daif;
            daif = uVar27 | 0xc0;
            uVar27 = ttbr1_el1;
            ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar27 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = uVar21;
            if (__n != 0) goto LAB_00116380;
          }
          uVar4 = *(ushort *)(pbVar8 + 1);
          if ((uint)local_188 < uVar4) {
            _printk(&DAT_00138303,"syna_cdev_ioctl_send_message",uVar4);
            uVar12 = 0xffffffcc;
          }
          else {
            local_130 = local_130 & 0xffffffffffffff00;
            local_170 = (void *)0x0;
            local_168 = 0;
            __mutex_init(&local_160,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
            pbVar31 = pbVar8 + 3;
            iVar14 = syna_tcm_send_command
                               (lVar30,*pbVar8,pbVar31,uVar4,&local_174,&local_170,
                                (uint)DAT_00131e80);
            if (iVar14 < 0) {
              _printk(&DAT_0013767e,"syna_cdev_ioctl_send_message",*pbVar8,uVar4);
            }
            memset(pbVar8,0,uVar15);
            *pbVar8 = (byte)local_174;
            pbVar8[1] = (byte)((ulong)local_168 >> 0x20);
            pbVar8[2] = (byte)((ulong)local_168 >> 0x28);
            if ((uint)DAT_00131de0 < local_168._4_4_) {
              _printk(&DAT_00136cad,"syna_cdev_ioctl_send_message",DAT_00131de0 & 0xffffffff,
                      local_168._4_4_);
              uVar12 = 0xffffffb5;
            }
            else if (local_168._4_4_ == 0) {
LAB_00116694:
              uVar12 = local_168._4_4_ +
                       (DAT_00131e80._4_4_ & ((int)DAT_00131e80._4_4_ >> 0x1f ^ 0xffffffffU)) + 3;
              uVar25 = (ulong)uVar12;
              local_188 = CONCAT44(local_188._4_4_,uVar12);
              if ((int)uVar12 < 0) {
                    /* WARNING: Does not return */
                pcVar24 = (code *)SoftwareBreakpoint(0x800,0x11723c);
                (*pcVar24)();
              }
              __check_object_size(pbVar8,uVar25,1);
              if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
                 (uVar15 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
                uVar15 = uVar9 & (long)(uVar9 << 8) >> 8;
              }
              if (uVar15 <= 0x8000000000 - uVar25) {
                uVar21 = daif;
                uVar15 = daif;
                daif = uVar15 | 0xc0;
                uVar15 = ttbr1_el1;
                ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar15 & 0xffffffffffff;
                ttbr0_el1 = puVar6[1];
                InstructionSynchronizationBarrier();
                daif = uVar21;
                uVar12 = __arch_copy_to_user(uVar21,uVar9 & 0xff7fffffffffffff,pbVar8,uVar25);
                uVar15 = daif;
                uVar25 = daif;
                daif = uVar25 | 0xc0;
                uVar25 = ttbr1_el1;
                ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
                ttbr1_el1 = uVar25 & 0xffffffffffff;
                InstructionSynchronizationBarrier();
                daif = uVar15;
              }
              if (uVar12 == 0) {
                uVar12 = (uint)local_188;
              }
              else {
                _printk(uVar15,&DAT_00136c2a,"syna_cdev_ioctl_send_message");
                uVar12 = 0xffffffcc;
              }
            }
            else {
              if ((pbVar31 != (byte *)0x0) && (local_170 != (void *)0x0)) {
                if ((local_168._4_4_ <= (uint)DAT_00131de0 - 3) &&
                   (local_168._4_4_ <= (uint)local_168)) {
                  memcpy(pbVar31,local_170,(ulong)local_168._4_4_);
                  if (1 < (int)DAT_00131e80._4_4_) {
                    uVar5 = *(undefined2 *)(lVar30 + 0x382);
                    pbVar8[local_168._4_4_ + 3] = (byte)uVar5;
                    pbVar8[local_168._4_4_ + 4] = (byte)((ushort)uVar5 >> 8);
                    if ((DAT_00131e80._4_4_ + 0xfffe & 0xffff) != 0) {
                      pbVar8[local_168._4_4_ + 5] = *(byte *)(lVar30 + 0x385);
                    }
                  }
                  goto LAB_00116694;
                }
                _printk(&DAT_0013a172,"syna_pal_mem_cpy");
              }
              _printk(&DAT_00134b70,"syna_cdev_ioctl_send_message");
              uVar12 = 0xffffffea;
            }
          }
        }
LAB_00116758:
        if (DAT_00131e18 == '\x01') {
          DAT_00131e18 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          DAT_00131e18 = DAT_00131e18 + -1;
        }
        mutex_unlock();
        if ((char)local_130 != '\0') {
          _printk(&DAT_00135294,"syna_tcm_buf_release");
        }
        pvVar18 = local_170;
        lVar30 = syna_request_managed_device();
        if (lVar30 == 0) {
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        }
        else if (pvVar18 != (void *)0x0) {
          devm_kfree(lVar30,pvVar18);
        }
        break;
      }
      puVar19 = &DAT_00136024;
      pcVar22 = "syna_cdev_ioctl_send_message";
    }
LAB_00116d10:
    _printk(puVar19,pcVar22,uVar25);
    uVar12 = 0xffffffea;
    break;
  case 0x17:
    uVar15 = local_188 & 0xffffffff;
    local_80 = 0;
    uStack_78 = 0;
    local_90 = 0;
    uStack_88 = 0;
    local_a0 = 0;
    uStack_98 = 0;
    local_b0 = 0;
    uStack_a8 = 0;
    local_c0 = 0;
    uStack_b8 = 0;
    local_d0 = 0;
    uStack_c8 = 0;
    local_e0 = 0;
    uStack_d8 = 0;
    local_f0 = 0;
    uStack_e8 = 0;
    local_100 = 0;
    uStack_f8 = 0;
    local_110 = 0;
    uStack_108 = 0;
    local_120 = 0;
    uStack_118 = 0;
    local_130 = 0;
    uStack_128 = 0;
    local_140 = 0;
    local_138 = 0;
    local_150 = 0;
    local_148 = 0;
    local_160 = 0;
    local_158 = 0;
    local_170 = (void *)0x0;
    local_168 = 0;
    if (*(int *)((long)plVar28 + 0x57c) == 3) {
      puVar19 = &DAT_001365b0;
      pcVar22 = "syna_cdev_ioctl_set_queued_types";
LAB_00116ac0:
      _printk(puVar19,pcVar22);
      uVar12 = 0;
    }
    else if (local_188._4_4_ < 0x100) {
      puVar19 = &DAT_00132d7e;
      pcVar22 = "syna_cdev_ioctl_set_queued_types";
      uVar25 = 0x100;
LAB_00116bc4:
      _printk(puVar19,pcVar22,local_188._4_4_,uVar25);
      uVar12 = 0xffffffea;
    }
    else {
      if ((uint)local_188 != 0) {
        if ((uint)local_188 < 0x101) {
          __check_object_size(&local_170,uVar15,0);
          if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
             (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
            uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
          }
          uVar27 = uVar15;
          if (uVar25 <= 0x8000000000 - uVar15) {
            uVar21 = daif;
            uVar25 = daif;
            daif = uVar25 | 0xc0;
            uVar25 = ttbr1_el1;
            ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
            ttbr0_el1 = puVar6[1];
            InstructionSynchronizationBarrier();
            daif = uVar21;
            uVar27 = __arch_copy_from_user(uVar21,&local_170,uVar9 & 0xff7fffffffffffff,uVar15);
            uVar21 = daif;
            uVar25 = daif;
            daif = uVar25 | 0xc0;
            uVar25 = ttbr1_el1;
            ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
            ttbr1_el1 = uVar25 & 0xffffffffffff;
            InstructionSynchronizationBarrier();
            daif = uVar21;
            if (uVar27 == 0) {
              uVar25 = 0;
              do {
                if ((*(char *)((long)&local_170 + uVar25) == '\x01') &&
                   (uVar12 = syna_tcm_set_data_duplicator
                                       (*plVar28,uVar25 & 0xffffffff,syna_cdev_process_reports,
                                        plVar28), (int)uVar12 < 0)) {
                  _printk(&DAT_0013b798,"syna_cdev_ioctl_set_queued_types",uVar25 & 0xffffffff);
                  goto LAB_00116844;
                }
                uVar25 = uVar25 + 1;
              } while (uVar25 != 0x100);
              goto LAB_00116500;
            }
          }
          uVar15 = uVar15 - uVar27;
          uVar25 = 0;
          if (uVar15 < 0x101) {
            uVar25 = 0x100 - uVar15;
          }
          if (uVar25 < uVar27) {
                    /* WARNING: Subroutine does not return */
            __fortify_panic(0xf);
          }
          memset((void *)((long)&local_170 + uVar15),0,uVar27);
          uVar15 = uVar27;
        }
        else {
          __copy_overflow(0x100,uVar15);
        }
        pcVar22 = "syna_cdev_ioctl_set_queued_types";
        uVar15 = uVar15 & 0xffffffff;
        goto LAB_00116cf4;
      }
      puVar19 = &DAT_0013da82;
      pcVar22 = "syna_cdev_ioctl_set_queued_types";
LAB_00116cac:
      _printk(puVar19,pcVar22);
      uVar12 = 0xffffffea;
    }
    break;
  case 0x18:
    local_174 = 0;
    if ((*(byte *)((long)plVar28 + 0x582) & 1) == 0) {
      pcVar22 = "syna_cdev_ioctl_check_frame";
      goto LAB_00116e64;
    }
    if (*(int *)((long)plVar28 + 0x57c) == 3) {
      puVar19 = &DAT_00138ef0;
      pcVar22 = "syna_cdev_ioctl_check_frame";
      goto LAB_00116ac0;
    }
    if ((local_188._4_4_ < 4) || ((uint)local_188 < 4)) {
      puVar19 = &DAT_00135899;
      pcVar22 = "syna_cdev_ioctl_check_frame";
      uVar25 = (ulong)local_188._4_4_;
      goto LAB_00116d10;
    }
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) || (((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar25 = local_180 & (long)(local_180 << 8) >> 8;
    }
    if (uVar25 < 0x7ffffffffd) {
      uVar21 = daif;
      uVar25 = daif;
      daif = uVar25 | 0xc0;
      uVar25 = ttbr1_el1;
      ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
      ttbr0_el1 = puVar6[1];
      InstructionSynchronizationBarrier();
      daif = uVar21;
      uVar15 = __arch_copy_from_user(uVar21,&local_174,local_180 & 0xff7fffffffffffff,4);
      iVar14 = local_174;
      uVar25 = daif;
      uVar27 = daif;
      daif = uVar27 | 0xc0;
      uVar27 = ttbr1_el1;
      ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar27 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar25;
      if (uVar15 != 0) goto LAB_00116c64;
      if ((long *)plVar28[0x9f] == plVar28 + 0x9f) {
        lVar30 = __msecs_to_jiffies(local_174);
        if (lVar30 == 0 && (int)plVar28[0x9e] != 0) {
          lVar30 = 1;
        }
        if (((int)plVar28[0x9e] == 0) && (lVar30 != 0)) {
          local_158 = 0;
          local_150 = 0;
          local_168 = 0;
          local_160 = 0;
          local_170 = (void *)0x0;
          lVar17 = __msecs_to_jiffies(iVar14);
          init_wait_entry(&local_170,0);
          lVar30 = prepare_to_wait_event(plVar28 + 0xa1,&local_170,1);
          iVar14 = (int)plVar28[0x9e];
          if (lVar17 == 0 && iVar14 != 0) {
            lVar17 = 1;
          }
          while ((lVar16 = lVar17, iVar14 == 0 && (lVar16 = 0, lVar17 != 0))) {
            if (lVar30 != 0) goto LAB_00115560;
            lVar17 = schedule_timeout(lVar17);
            lVar30 = prepare_to_wait_event(plVar28 + 0xa1,&local_170,1);
            iVar14 = (int)plVar28[0x9e];
            if (lVar17 == 0 && iVar14 != 0) {
              lVar17 = 1;
            }
          }
          lVar30 = lVar16;
          finish_wait(plVar28 + 0xa1,&local_170);
        }
LAB_00115560:
        if ((int)lVar30 == 0) {
          uVar12 = 0xffffff92;
          break;
        }
      }
      if ((int)uVar12 < 1) break;
      local_174 = (int)plVar28[0x9e];
      if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
         (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
        uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
      }
      if (uVar25 < 0x7ffffffffd) {
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
        ttbr0_el1 = puVar6[1];
        InstructionSynchronizationBarrier();
        daif = uVar21;
        iVar14 = __arch_copy_to_user(uVar21,uVar9 & 0xff7fffffffffffff,&local_174,4);
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar25 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar21;
        if (iVar14 == 0) break;
      }
      puVar19 = &DAT_00136c2a;
    }
    else {
      uVar15 = 4;
LAB_00116c64:
      if (4 < uVar15) goto LAB_00117248;
      memset((void *)((long)&local_170 - uVar15),0,uVar15);
      puVar19 = &DAT_0013b7d2;
    }
    _printk(puVar19,"syna_cdev_ioctl_check_frame");
    uVar12 = 0xffffffcc;
    break;
  case 0x19:
    mutex_lock(&DAT_00131e50);
    plVar29 = (long *)plVar28[0x9f];
    while (plVar29 != plVar28 + 0x9f) {
      plVar26 = (long *)plVar29[1];
      if (((long *)*plVar26 == plVar29) && (lVar30 = *plVar29, *(long **)(lVar30 + 8) == plVar29)) {
        *(long **)(lVar30 + 8) = plVar26;
        *plVar26 = lVar30;
      }
      else {
        __list_del_entry_valid_or_report(plVar29);
      }
      *plVar29 = -0x2152ffffffffff00;
      plVar29[1] = -0x2152fffffffffede;
      kfree(plVar29[2]);
      kfree(plVar29);
      if ((int)plVar28[0x9e] != 0) {
        *(int *)(plVar28 + 0x9e) = (int)plVar28[0x9e] + -1;
      }
      plVar29 = (long *)plVar28[0x9f];
    }
    mutex_unlock(&DAT_00131e50);
    if ((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) == 0) goto LAB_00116850;
    goto LAB_0011685c;
  case 0x1a:
    uVar25 = local_188 & 0xffffffff;
    if (((*(byte *)((long)plVar28 + 0x582) & 1) == 0) && (*(int *)((long)plVar28 + 0x57c) != 3)) {
      _printk(&DAT_0013e0ee,"syna_cdev_ioctl_application_info");
      uVar12 = 0xfffffffa;
      goto LAB_001168dc;
    }
    if ((local_188._4_4_ == 0) || (local_188._4_4_ < (uint)local_188)) {
      puVar19 = &DAT_00136d05;
      pcVar22 = "syna_cdev_ioctl_application_info";
      uVar12 = local_188._4_4_;
      goto LAB_00116a68;
    }
    lVar30 = plVar28[0xb5];
    if (lVar30 == 0) {
LAB_0011613c:
      lVar30 = syna_request_managed_device();
      if (lVar30 != 0) goto LAB_00116144;
LAB_00116e1c:
      puVar19 = &DAT_0013ccb3;
LAB_00116e24:
      _printk(puVar19,"syna_pal_mem_alloc");
      plVar28[0xb5] = 0;
LAB_00116e34:
      _printk(&DAT_00138a9f,"syna_cdev_ioctl_application_info",uVar25);
      uVar12 = 0xfffffff4;
      goto LAB_001168dc;
    }
    lVar17 = syna_request_managed_device();
    if (lVar17 != 0) {
      devm_kfree(lVar17,lVar30);
      goto LAB_0011613c;
    }
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    lVar30 = syna_request_managed_device();
    if (lVar30 == 0) goto LAB_00116e1c;
LAB_00116144:
    if (uVar12 == 0) {
      puVar19 = &DAT_00138e98;
      goto LAB_00116e24;
    }
    pvVar18 = (void *)devm_kmalloc(lVar30,uVar25,0xdc0);
    plVar28[0xb5] = (long)pvVar18;
    if (pvVar18 == (void *)0x0) goto LAB_00116e34;
    memset(pvVar18,0,uVar25);
    __check_object_size(pvVar18,uVar25,0);
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
       (uVar27 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar27 = uVar9 & (long)(uVar9 << 8) >> 8;
    }
    uVar15 = uVar25;
    if (0x8000000000 - uVar25 < uVar27) {
LAB_001161ac:
      uVar27 = 0;
      if (uVar15 <= uVar25) {
        uVar27 = uVar15;
      }
      if (uVar27 < uVar15) {
                    /* WARNING: Subroutine does not return */
        __fortify_panic(0xf,uVar27,uVar15);
      }
      memset((void *)((long)pvVar18 + (uVar25 - uVar15)),0,uVar15);
      if ((int)uVar15 == 0) goto LAB_00116848;
      puVar19 = &DAT_001352ed;
      pcVar22 = "syna_cdev_ioctl_application_info";
      uVar15 = uVar15 & 0xffffffff;
      goto LAB_00116938;
    }
    uVar21 = daif;
    uVar15 = daif;
    daif = uVar15 | 0xc0;
    uVar15 = ttbr1_el1;
    ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar15 & 0xffffffffffff;
    ttbr0_el1 = puVar6[1];
    InstructionSynchronizationBarrier();
    daif = uVar21;
    uVar15 = __arch_copy_from_user(uVar21,pvVar18,uVar9 & 0xff7fffffffffffff,uVar25);
    uVar21 = daif;
    uVar27 = daif;
    daif = uVar27 | 0xc0;
    uVar27 = ttbr1_el1;
    ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar27 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar21;
    if (uVar15 != 0) goto LAB_001161ac;
    goto LAB_00116848;
  case 0x1b:
    local_170 = (void *)((ulong)local_170 & 0xffffff0000000000);
    local_174 = (uint)local_174._1_3_ << 8;
    if (((*(byte *)((long)plVar28 + 0x582) & 1) == 0) && (*(int *)((long)plVar28 + 0x57c) != 3)) {
      pcVar22 = "syna_cdev_ioctl_do_hw_reset";
      goto LAB_00116e64;
    }
    if ((local_188._4_4_ < 5) || ((uint)local_188 < 5)) {
      puVar19 = &DAT_00135899;
      pcVar22 = "syna_cdev_ioctl_do_hw_reset";
      uVar25 = (ulong)local_188._4_4_;
      goto LAB_00116d10;
    }
    lVar30 = plVar28[0x4e];
    if (*(long *)(lVar30 + 0x188) == 0) {
      _printk(&DAT_0013b16f,"syna_cdev_ioctl_do_hw_reset");
      uVar12 = 0xffffffed;
      break;
    }
    uVar1 = *(undefined4 *)(lVar30 + 0xf8);
    uVar2 = *(undefined4 *)(lVar30 + 0xfc);
    if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) || (((uint)*puVar6 >> 0x1a & 1) != 0)) {
      uVar25 = local_180 & (long)(local_180 << 8) >> 8;
    }
    if (uVar25 < 0x7ffffffffc) {
      uVar21 = daif;
      uVar25 = daif;
      daif = uVar25 | 0xc0;
      uVar25 = ttbr1_el1;
      ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
      ttbr0_el1 = puVar6[1];
      InstructionSynchronizationBarrier();
      daif = uVar21;
      uVar15 = __arch_copy_from_user(uVar21,&local_170,local_180 & 0xff7fffffffffffff,5);
      uVar25 = daif;
      uVar27 = daif;
      daif = uVar27 | 0xc0;
      uVar27 = ttbr1_el1;
      ttbr0_el1 = (uVar27 & 0xffffffffffff) - 0x1000;
      ttbr1_el1 = uVar27 & 0xffffffffffff;
      InstructionSynchronizationBarrier();
      daif = uVar25;
      if (uVar15 == 0) {
        if (local_170._1_2_ != 0) {
          *(uint *)(plVar28[0x4e] + 0xfc) = (uint)local_170._1_2_;
        }
        if (local_170._3_2_ != 0) {
          *(uint *)(plVar28[0x4e] + 0xf8) = (uint)local_170._3_2_;
        }
        if (*(int *)(*(code **)(plVar28[0x4e] + 0x188) + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
          pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x115df8);
          (*pcVar24)();
        }
        (**(code **)(plVar28[0x4e] + 0x188))();
        *(undefined4 *)(plVar28[0x4e] + 0xfc) = uVar2;
        *(undefined4 *)(plVar28[0x4e] + 0xf8) = uVar1;
        if ((char)local_170 != '\x01') {
          if ((*(byte *)(plVar28[0x4e] + 0xbc) & 1) == 0) {
            syna_tcm_get_event_data(*plVar28,&local_174,0);
          }
          if (*(char *)(*plVar28 + 9) == '\x01') {
            if (*(int *)((code *)plVar28[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
              pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x115e64);
              (*pcVar24)();
            }
            uVar12 = (*(code *)plVar28[0xd7])(plVar28);
            if ((int)uVar12 < 0) {
              _printk(&DAT_001327f0,"syna_cdev_ioctl_do_hw_reset");
            }
            break;
          }
        }
        goto LAB_00116500;
      }
    }
    else {
      uVar15 = 5;
    }
    if (5 < uVar15) goto LAB_00117248;
    memset((void *)((long)&local_170 + (5 - uVar15)),0,uVar15);
    pcVar22 = "syna_cdev_ioctl_do_hw_reset";
LAB_00116cf0:
    uVar15 = uVar15 & 0xffffffff;
LAB_00116cf4:
    _printk(&DAT_001352ed,pcVar22,uVar15);
    uVar12 = 0xffffffcc;
    break;
  default:
    pcVar22 = "syna_cdev_ioctl_dispatch";
    goto LAB_001162f8;
  case 0x21:
    if ((uint)local_188 < 0x14) {
      pcVar22 = "syna_cdev_ioctl_set_config";
LAB_00116a1c:
      puVar19 = &DAT_00139aa5;
      uVar25 = 0x14;
LAB_00116a68:
      _printk(puVar19,pcVar22,uVar12,uVar25);
      uVar12 = 0xffffffea;
      goto LAB_001168dc;
    }
    lVar30 = *plVar28;
    if (DAT_00131e18 != '\0') {
      _printk(&DAT_00138e56,"syna_tcm_buf_lock");
    }
    mutex_lock(&DAT_00131de8);
    pbVar8 = DAT_00131dd8;
    DAT_00131e18 = DAT_00131e18 + '\x01';
    uVar12 = (uint)DAT_00131de0;
    if ((uint)DAT_00131de0 < 0x14) {
      if (DAT_00131dd8 == (byte *)0x0) {
LAB_00115ee8:
        lVar17 = syna_request_managed_device();
        if (lVar17 != 0) goto LAB_00115ef0;
LAB_001170e8:
        _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
        DAT_00131dd8 = (byte *)0x0;
      }
      else {
        lVar17 = syna_request_managed_device();
        if (lVar17 != 0) {
          devm_kfree(lVar17,pbVar8);
          goto LAB_00115ee8;
        }
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar17 = syna_request_managed_device();
        if (lVar17 == 0) goto LAB_001170e8;
LAB_00115ef0:
        uVar12 = 0x14;
        DAT_00131dd8 = (byte *)devm_kmalloc(lVar17,0x14,0xdc0);
        if (DAT_00131dd8 != (byte *)0x0) {
          DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,0x14);
          goto LAB_00115f14;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",0x14);
      DAT_00131de0 = 0;
      _printk(&DAT_00138268,"syna_cdev_ioctl_set_config",0x14);
      uVar12 = 0xffffff0d;
    }
    else {
LAB_00115f14:
      memset(DAT_00131dd8,0,(ulong)uVar12);
      pbVar8 = DAT_00131dd8;
      DAT_00131de0 = DAT_00131de0 & 0xffffffff;
      if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
         (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
        uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
      }
      if (uVar25 < 0x7fffffffed) {
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
        ttbr0_el1 = puVar6[1];
        InstructionSynchronizationBarrier();
        daif = uVar21;
        uVar15 = __arch_copy_from_user(uVar21,DAT_00131dd8,uVar9 & 0xff7fffffffffffff,0x14);
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr0_el1 = (uVar25 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar25 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar21;
        if (uVar15 != 0) goto LAB_00115f58;
      }
      else {
        uVar15 = 0x14;
LAB_00115f58:
        memset(pbVar8 + (0x14 - uVar15),0,uVar15);
        if ((int)uVar15 != 0) {
          _printk(&DAT_001352ed,"syna_cdev_ioctl_set_config",uVar15 & 0xffffffff);
          uVar12 = 0xffffffcc;
          goto LAB_00116824;
        }
      }
      pbVar8 = DAT_00131dd8;
      if (*(char *)((long)plVar28 + 0x582) == '\x01') {
        uVar12 = (uint)*(ushort *)(DAT_00131dd8 + 2);
        if (*(ushort *)(DAT_00131dd8 + 4) == 0) {
          if (uVar12 != 0) {
            bVar11 = false;
            goto LAB_001167b0;
          }
        }
        else {
          bVar11 = *(uint *)(lVar30 + 0x3c) != (uint)*(ushort *)(DAT_00131dd8 + 4);
          if (uVar12 == 0) {
joined_r0x001167bc:
            if (!bVar11) goto LAB_001167e4;
          }
          else {
LAB_001167b0:
            if (*(uint *)(lVar30 + 0x38) == uVar12) goto joined_r0x001167bc;
          }
          if (*(int *)(*(code **)(lVar30 + 0x3a8) + -4) != 0x4a0b1dd) {
                    /* WARNING: Does not return */
            pcVar24 = (code *)SoftwareBreakpoint(0x8228,0x1167e0);
            (*pcVar24)();
          }
          (**(code **)(lVar30 + 0x3a8))(lVar30);
        }
LAB_001167e4:
        uVar4 = *(ushort *)(pbVar8 + 8);
        if ((uVar4 & 1) != (ushort)*(byte *)(lVar30 + 0x37a)) {
          pcVar22 = "enable";
          if ((uVar4 & 1) == 0) {
            pcVar22 = "disable";
          }
          _printk(&DAT_0013cdf6,"syna_cdev_ioctl_set_config",pcVar22);
          syna_tcm_enable_predict_reading(lVar30,uVar4 & 1);
          uVar4 = *(ushort *)(pbVar8 + 8);
        }
        if (DAT_00131e80._4_4_ != uVar4 >> 8) {
          DAT_00131e80._4_4_ = (uint)(uVar4 >> 8);
          _printk(&DAT_00132dbe,"syna_cdev_ioctl_set_config");
        }
        DAT_00131e88 = (uint)pbVar8[10] << 2;
        if (pbVar8[10] != 0) {
          _printk(&DAT_001371a9,"syna_cdev_ioctl_set_config");
        }
      }
      uVar12 = 0;
    }
LAB_00116824:
    if (DAT_00131e18 != '\x01') {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      goto LAB_00116b14;
    }
LAB_00116830:
    DAT_00131e18 = '\0';
    goto LAB_00116834;
  case 0x22:
    if ((uint)local_188 < 0x14) {
      pcVar22 = "syna_cdev_ioctl_get_config_params";
      goto LAB_00116a1c;
    }
    lVar30 = *plVar28;
    if (DAT_00131e18 != '\0') {
      _printk(&DAT_00138e56,"syna_tcm_buf_lock");
    }
    mutex_lock(&DAT_00131de8);
    pbVar8 = DAT_00131dd8;
    DAT_00131e18 = DAT_00131e18 + '\x01';
    uVar12 = (uint)DAT_00131de0;
    if ((uint)DAT_00131de0 < 0x14) {
      if (DAT_00131dd8 == (byte *)0x0) {
LAB_00115b3c:
        lVar17 = syna_request_managed_device();
        if (lVar17 != 0) goto LAB_00115b44;
LAB_00117070:
        _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
        DAT_00131dd8 = (byte *)0x0;
      }
      else {
        lVar17 = syna_request_managed_device();
        if (lVar17 != 0) {
          devm_kfree(lVar17,pbVar8);
          goto LAB_00115b3c;
        }
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar17 = syna_request_managed_device();
        if (lVar17 == 0) goto LAB_00117070;
LAB_00115b44:
        uVar12 = 0x14;
        DAT_00131dd8 = (byte *)devm_kmalloc(lVar17,0x14,0xdc0);
        if (DAT_00131dd8 != (byte *)0x0) {
          DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,0x14);
          goto LAB_00115b68;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",0x14);
      DAT_00131de0 = 0;
      _printk(&DAT_00138268,"syna_cdev_ioctl_get_config_params",0x14);
      uVar12 = 0xffffff0d;
    }
    else {
LAB_00115b68:
      memset(DAT_00131dd8,0,(ulong)uVar12);
      DAT_00131de0 = DAT_00131de0 & 0xffffffff;
      pbVar8 = DAT_00131dd8;
      pbVar8[0x10] = 0;
      pbVar8[0x11] = 0;
      pbVar8[0x12] = 0;
      pbVar8[0x13] = 0;
      pbVar8[0] = 0;
      pbVar8[1] = 0;
      pbVar8[2] = 0;
      pbVar8[3] = 0;
      pbVar8[4] = 0;
      pbVar8[5] = 0;
      pbVar8[6] = 0;
      pbVar8[7] = 0;
      pbVar8[8] = 0;
      pbVar31 = DAT_00131dd8;
      pbVar8[9] = 0;
      pbVar8[10] = 0;
      pbVar8[0xb] = 0;
      pbVar8[0xc] = 0;
      pbVar8[0xd] = 0;
      pbVar8[0xe] = 0;
      pbVar8[0xf] = 0;
      *(short *)(DAT_00131dd8 + 2) = (short)*(undefined4 *)(lVar30 + 0x38);
      *(short *)(pbVar31 + 4) = (short)*(undefined4 *)(lVar30 + 0x3c);
      bVar3 = *pbVar31 & 0xfe | *(byte *)((long)plVar28 + 0x582);
      *pbVar31 = bVar3;
      *pbVar31 = bVar3 & 0xf7 | (*(int *)((long)plVar28 + 0x57c) == 3) << 3;
      if (*(byte *)(lVar30 + 0x80) != 0) {
        pbVar31[1] = *(byte *)(lVar30 + 0x80);
      }
      uVar4 = *(ushort *)(pbVar31 + 8);
      bVar3 = *(byte *)(lVar30 + 0x37a);
      *(ushort *)(pbVar31 + 8) = uVar4 & 0xfffe | (ushort)bVar3;
      *(ushort *)(pbVar31 + 8) = uVar4 & 0xfe | (ushort)bVar3 | DAT_00131e80._4_2_ << 8;
      pbVar31[10] = (byte)(DAT_00131e88 >> 2);
      if (((*(byte *)((long)puVar6 + 0x46) >> 5 & 1) != 0) ||
         (uVar25 = uVar9, ((uint)*puVar6 >> 0x1a & 1) != 0)) {
        uVar25 = uVar9 & (long)(uVar9 << 8) >> 8;
      }
      if (uVar25 < 0x7fffffffed) {
        uVar21 = daif;
        uVar25 = daif;
        daif = uVar25 | 0xc0;
        uVar25 = ttbr1_el1;
        ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar25 & 0xffffffffffff;
        ttbr0_el1 = puVar6[1];
        InstructionSynchronizationBarrier();
        daif = uVar21;
        iVar14 = __arch_copy_to_user(uVar21,uVar9 & 0xff7fffffffffffff,pbVar31,0x14);
        uVar25 = daif;
        uVar15 = daif;
        daif = uVar15 | 0xc0;
        uVar15 = ttbr1_el1;
        ttbr0_el1 = (uVar15 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar15 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = uVar25;
        if (iVar14 == 0) {
          uVar12 = 0x14;
          goto LAB_00115c98;
        }
      }
      _printk(uVar25,&DAT_00136c2a,"syna_cdev_ioctl_get_config_params");
      uVar12 = 0xffffffcc;
    }
LAB_00115c98:
    if (DAT_00131e18 == '\x01') goto LAB_00116830;
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
LAB_00116b14:
    DAT_00131e18 = DAT_00131e18 + -1;
LAB_00116834:
    puVar20 = &DAT_00131de8;
LAB_00116840:
    mutex_unlock(puVar20);
  }
LAB_00116844:
  if ((int)uVar12 < 0) goto LAB_001168dc;
LAB_00116848:
  bVar3 = *(byte *)((long)puVar6 + 0x46);
joined_r0x0011684c:
  if ((bVar3 >> 5 & 1) == 0) {
LAB_00116850:
    uVar25 = param_3;
    if (((uint)*puVar6 >> 0x1a & 1) != 0) goto LAB_0011685c;
  }
  else {
LAB_0011685c:
    uVar25 = param_3 & uVar7;
  }
  if (uVar25 < 0x7ffffffff1) {
    uVar21 = daif;
    uVar7 = daif;
    daif = uVar7 | 0xc0;
    uVar7 = ttbr1_el1;
    ttbr1_el1 = puVar6[1] & 0xffff000000000000 | uVar7 & 0xffffffffffff;
    ttbr0_el1 = puVar6[1];
    InstructionSynchronizationBarrier();
    daif = uVar21;
    uVar15 = __arch_copy_to_user(uVar21,param_3 & 0xff7fffffffffffff,&local_188,0x10);
    uVar21 = daif;
    uVar7 = daif;
    daif = uVar7 | 0xc0;
    uVar7 = ttbr1_el1;
    ttbr0_el1 = (uVar7 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar7 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar21;
    if ((int)uVar15 == 0) {
LAB_001168d8:
      uVar12 = 0;
      goto LAB_001168dc;
    }
  }
  else {
    uVar15 = 0x10;
  }
  puVar19 = &DAT_0013c686;
  pcVar22 = "syna_cdev_ioctls";
LAB_00116938:
  _printk(puVar19,pcVar22,uVar15);
  uVar12 = 0xffffffcc;
LAB_001168dc:
  mutex_unlock(&DAT_00131e20);
  lVar30 = sp_el0;
  if (*(long *)(lVar30 + 0x710) != local_70) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return (long)(int)uVar12;
}



/* 00117278 syna_cdev_open */

undefined8 syna_cdev_open(void)

{
  int iVar1;
  long *plVar2;
  long lVar3;
  long *plVar4;
  long *plVar5;
  
  plVar5 = *(long **)(g_cdev_data + 0xa8);
  mutex_lock(&DAT_00131e20);
  if (*(int *)((long)plVar5 + 900) == 0) {
    iVar1 = 1;
  }
  else {
    _printk(&DAT_001371e1,"syna_cdev_open");
    iVar1 = *(int *)((long)plVar5 + 900) + 1;
  }
  *(int *)((long)plVar5 + 900) = iVar1;
  DAT_00131e80 = 0;
  DAT_00131e88 = 0;
  DAT_00131e90 = *(undefined4 *)(*plVar5 + 0x3c);
  DAT_00131e8c = *(undefined4 *)(*plVar5 + 0x38);
  *(undefined1 *)(*plVar5 + 0x37a) = 0;
  *(undefined1 *)((long)plVar5 + 0x584) = 0;
  mutex_lock();
  plVar4 = (long *)plVar5[0x9f];
  while (plVar4 != plVar5 + 0x9f) {
    plVar2 = (long *)plVar4[1];
    if (((long *)*plVar2 == plVar4) && (lVar3 = *plVar4, *(long **)(lVar3 + 8) == plVar4)) {
      *(long **)(lVar3 + 8) = plVar2;
      *plVar2 = lVar3;
    }
    else {
      __list_del_entry_valid_or_report(plVar4);
    }
    *plVar4 = -0x2152ffffffffff00;
    plVar4[1] = -0x2152fffffffffede;
    kfree(plVar4[2]);
    kfree(plVar4);
    if ((int)plVar5[0x9e] != 0) {
      *(int *)(plVar5 + 0x9e) = (int)plVar5[0x9e] + -1;
    }
    plVar4 = (long *)plVar5[0x9f];
  }
  mutex_unlock(&DAT_00131e50);
  syna_tcm_clear_data_duplicator(*plVar5);
  mutex_unlock(&DAT_00131e20);
  _printk(&DAT_001358cd,"syna_cdev_open");
  return 0;
}



/* 001173e0 syna_cdev_release */

undefined8 syna_cdev_release(void)

{
  long lVar1;
  long *plVar2;
  long *plVar3;
  long *plVar4;
  
  plVar4 = *(long **)(g_cdev_data + 0xa8);
  if (*(int *)((long)plVar4 + 900) < 1) {
    _printk(&DAT_001358e9,"syna_cdev_release");
  }
  else {
    mutex_lock(&DAT_00131e20);
    *(int *)((long)plVar4 + 900) = *(int *)((long)plVar4 + 900) + -1;
    mutex_lock(&DAT_00131e50);
    plVar3 = (long *)plVar4[0x9f];
    while (plVar3 != plVar4 + 0x9f) {
      plVar2 = (long *)plVar3[1];
      if (((long *)*plVar2 == plVar3) && (lVar1 = *plVar3, *(long **)(lVar1 + 8) == plVar3)) {
        *(long **)(lVar1 + 8) = plVar2;
        *plVar2 = lVar1;
      }
      else {
        __list_del_entry_valid_or_report(plVar3);
      }
      *plVar3 = -0x2152ffffffffff00;
      plVar3[1] = -0x2152fffffffffede;
      kfree(plVar3[2]);
      kfree(plVar3);
      if ((int)plVar4[0x9e] != 0) {
        *(int *)(plVar4 + 0x9e) = (int)plVar4[0x9e] + -1;
      }
      plVar3 = (long *)plVar4[0x9f];
    }
    mutex_unlock(&DAT_00131e50);
    syna_tcm_clear_data_duplicator(*plVar4);
    mutex_unlock(&DAT_00131e20);
    DAT_00131e80 = 0;
    DAT_00131e88 = 0;
    _printk(&DAT_00138391,"syna_cdev_release");
    lVar1 = *plVar4;
    if (*(int *)(lVar1 + 0x38) != DAT_00131e8c) {
      *(int *)(lVar1 + 0x38) = DAT_00131e8c;
      lVar1 = *plVar4;
    }
    if (*(int *)(lVar1 + 0x3c) != DAT_00131e90) {
      *(int *)(lVar1 + 0x3c) = DAT_00131e90;
    }
  }
  return 0;
}



/* 00117558 syna_cdev_ioctl_raw_read */

ulong syna_cdev_ioctl_raw_read(long *param_1,ulong param_2,undefined8 param_3,uint param_4)

{
  undefined8 uVar1;
  void *pvVar2;
  uint uVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  code *pcVar7;
  ulong uVar8;
  undefined8 *puVar9;
  ulong uVar10;
  ulong uVar11;
  size_t __n;
  
  uVar11 = (ulong)param_4;
  if ((uint)param_3 < param_4) {
    _printk(&DAT_00139562,"syna_cdev_ioctl_raw_read",param_3,uVar11);
    return 0xffffffea;
  }
  if (param_4 == 0) {
    _printk(&DAT_0013b75a,"syna_cdev_ioctl_raw_read");
    return 0;
  }
  mutex_lock(*param_1 + 0x348);
  if (DAT_00131e18 != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(&DAT_00131de8);
  pvVar2 = DAT_00131dd8;
  __n = DAT_00131de0 & 0xffffffff;
  DAT_00131e18 = DAT_00131e18 + '\x01';
  if ((uint)DAT_00131de0 < param_4) {
    if (DAT_00131dd8 == (void *)0x0) {
LAB_001175e4:
      lVar4 = syna_request_managed_device();
      if (lVar4 != 0) goto LAB_001175ec;
LAB_00117810:
      puVar6 = &DAT_0013ccb3;
LAB_00117818:
      _printk(puVar6,"syna_pal_mem_alloc");
      DAT_00131dd8 = (void *)0x0;
    }
    else {
      lVar4 = syna_request_managed_device();
      if (lVar4 != 0) {
        devm_kfree(lVar4,pvVar2);
        goto LAB_001175e4;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) goto LAB_00117810;
LAB_001175ec:
      if ((int)param_4 < 1) {
        puVar6 = &DAT_00138e98;
        goto LAB_00117818;
      }
      __n = (size_t)param_4;
      DAT_00131dd8 = (void *)devm_kmalloc(lVar4,__n,0xdc0);
      if (DAT_00131dd8 != (void *)0x0) {
        DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,param_4);
        goto LAB_00117618;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar11);
    DAT_00131de0 = 0;
    _printk(&DAT_00138268,"syna_cdev_ioctl_raw_read",uVar11);
    uVar10 = 0xffffff0d;
    goto LAB_00117868;
  }
LAB_00117618:
  memset(DAT_00131dd8,0,__n);
  pvVar2 = DAT_00131dd8;
  DAT_00131de0 = DAT_00131de0 & 0xffffffff;
  if (*param_1 == 0) {
    uVar10 = 0xffffff0f;
    puVar5 = &DAT_00133fd6;
LAB_001177b4:
    _printk(puVar5,"syna_tcm_read");
  }
  else {
    lVar4 = *(long *)(*param_1 + 0x48);
    if (lVar4 == 0) {
      uVar10 = 0xffffff0f;
      puVar5 = &DAT_001389db;
      goto LAB_001177b4;
    }
    pcVar7 = *(code **)(lVar4 + 0x20);
    if (pcVar7 == (code *)0x0) {
      uVar10 = 0xffffff0b;
      puVar5 = &DAT_00136c67;
      goto LAB_001177b4;
    }
    if (*(int *)(pcVar7 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x117664);
      (*pcVar7)();
    }
    uVar3 = (*pcVar7)(lVar4,DAT_00131dd8,uVar11);
    if (-1 < (int)uVar3) {
      if ((int)param_4 < 0) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x800,0x1178d4);
        (*pcVar7)();
      }
      __check_object_size(pvVar2,uVar11,1);
      puVar9 = (undefined8 *)sp_el0;
      if (((*(byte *)((long)puVar9 + 0x46) >> 5 & 1) != 0) ||
         (uVar10 = param_2, ((uint)*puVar9 >> 0x1a & 1) != 0)) {
        uVar10 = param_2 & (long)(param_2 << 8) >> 8;
      }
      if (uVar10 <= 0x8000000000 - uVar11) {
        uVar1 = daif;
        uVar10 = daif;
        daif = uVar10 | 0xc0;
        uVar8 = puVar9[1];
        uVar10 = ttbr1_el1;
        ttbr1_el1 = uVar8 & 0xffff000000000000 | uVar10 & 0xffffffffffff;
        ttbr0_el1 = uVar8;
        InstructionSynchronizationBarrier();
        daif = uVar1;
        lVar4 = __arch_copy_to_user(uVar8,param_2 & 0xff7fffffffffffff,pvVar2,uVar11);
        puVar9 = (undefined8 *)daif;
        uVar10 = daif;
        daif = uVar10 | 0xc0;
        uVar10 = ttbr1_el1;
        ttbr0_el1 = (uVar10 & 0xffffffffffff) - 0x1000;
        ttbr1_el1 = uVar10 & 0xffffffffffff;
        InstructionSynchronizationBarrier();
        daif = puVar9;
        uVar10 = uVar11;
        if (lVar4 == 0) goto LAB_00117868;
      }
      _printk(puVar9,&DAT_00136c2a,"syna_cdev_ioctl_raw_read");
      uVar10 = 0xffffffcc;
      goto LAB_00117868;
    }
    uVar10 = (ulong)uVar3;
  }
  _printk(&DAT_0013c657,"syna_cdev_ioctl_raw_read",uVar11);
LAB_00117868:
  if (DAT_00131e18 == '\x01') {
    DAT_00131e18 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    DAT_00131e18 = DAT_00131e18 + -1;
  }
  mutex_unlock();
  mutex_unlock(*param_1 + 0x348);
  return uVar10;
}



/* 001178d8 syna_cdev_ioctl_raw_write */

ulong syna_cdev_ioctl_raw_write(long *param_1,ulong param_2,undefined8 param_3,uint param_4)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  void *pvVar3;
  uint uVar4;
  long lVar5;
  undefined1 *puVar6;
  undefined *puVar7;
  ulong uVar8;
  code *pcVar9;
  ulong uVar10;
  ulong uVar11;
  size_t __n;
  
  uVar11 = (ulong)param_4;
  if ((uint)param_3 < param_4) {
    _printk(&DAT_001395f2,"syna_cdev_ioctl_raw_write",param_3,uVar11);
    return 0xffffffea;
  }
  if (param_4 == 0) {
    _printk(&DAT_0013da82,"syna_cdev_ioctl_raw_write");
    return 0xffffffea;
  }
  mutex_lock(*param_1 + 0x348);
  if (DAT_00131e18 != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(&DAT_00131de8);
  pvVar3 = DAT_00131dd8;
  __n = DAT_00131de0 & 0xffffffff;
  DAT_00131e18 = DAT_00131e18 + '\x01';
  if ((uint)DAT_00131de0 < param_4) {
    if (DAT_00131dd8 == (void *)0x0) {
LAB_00117968:
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) goto LAB_00117970;
LAB_00117bbc:
      puVar7 = &DAT_0013ccb3;
LAB_00117bc4:
      _printk(puVar7,"syna_pal_mem_alloc");
      DAT_00131dd8 = (void *)0x0;
    }
    else {
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) {
        devm_kfree(lVar5,pvVar3);
        goto LAB_00117968;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) goto LAB_00117bbc;
LAB_00117970:
      if ((int)param_4 < 1) {
        puVar7 = &DAT_00138e98;
        goto LAB_00117bc4;
      }
      __n = (size_t)param_4;
      DAT_00131dd8 = (void *)devm_kmalloc(lVar5,__n,0xdc0);
      if (DAT_00131dd8 != (void *)0x0) {
        DAT_00131de0 = CONCAT44(DAT_00131de0._4_4_,param_4);
        goto LAB_0011799c;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar11);
    DAT_00131de0 = 0;
    _printk(&DAT_00138268,"syna_cdev_ioctl_raw_write",uVar11);
    uVar10 = 0xffffff0d;
    goto LAB_00117c14;
  }
LAB_0011799c:
  memset(DAT_00131dd8,0,__n);
  pvVar3 = DAT_00131dd8;
  DAT_00131de0 = DAT_00131de0 & 0xffffffff;
  if ((int)param_4 < 0) {
                    /* WARNING: Does not return */
    pcVar9 = (code *)SoftwareBreakpoint(0x800,0x117c84);
    (*pcVar9)();
  }
  __check_object_size(DAT_00131dd8,uVar11,0);
  puVar1 = (undefined8 *)sp_el0;
  if (((*(byte *)((long)puVar1 + 0x46) >> 5 & 1) != 0) ||
     (uVar10 = param_2, ((uint)*puVar1 >> 0x1a & 1) != 0)) {
    uVar10 = param_2 & (long)(param_2 << 8) >> 8;
  }
  uVar8 = uVar11;
  if (0x8000000000 - uVar11 < uVar10) {
LAB_001179fc:
    memset((void *)((long)pvVar3 + (uVar11 - uVar8)),0,uVar8);
    if ((int)uVar8 != 0) {
      _printk(&DAT_001352ed,"syna_cdev_ioctl_raw_write",uVar8 & 0xffffffff);
      uVar10 = 0xffffffcc;
      goto LAB_00117c14;
    }
  }
  else {
    uVar2 = daif;
    uVar10 = daif;
    daif = uVar10 | 0xc0;
    uVar8 = puVar1[1];
    uVar10 = ttbr1_el1;
    ttbr1_el1 = uVar8 & 0xffff000000000000 | uVar10 & 0xffffffffffff;
    ttbr0_el1 = uVar8;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    uVar8 = __arch_copy_from_user(uVar8,pvVar3,param_2 & 0xff7fffffffffffff,uVar11);
    uVar2 = daif;
    uVar10 = daif;
    daif = uVar10 | 0xc0;
    uVar10 = ttbr1_el1;
    ttbr0_el1 = (uVar10 & 0xffffffffffff) - 0x1000;
    ttbr1_el1 = uVar10 & 0xffffffffffff;
    InstructionSynchronizationBarrier();
    daif = uVar2;
    if (uVar8 != 0) goto LAB_001179fc;
  }
  if (*param_1 == 0) {
    uVar10 = 0xffffff0f;
    puVar6 = &DAT_00133fd6;
LAB_00117b68:
    _printk(puVar6,"syna_tcm_write");
  }
  else {
    lVar5 = *(long *)(*param_1 + 0x48);
    if (lVar5 == 0) {
      uVar10 = 0xffffff0f;
      puVar6 = &DAT_001389db;
      goto LAB_00117b68;
    }
    pcVar9 = *(code **)(lVar5 + 0x28);
    if (pcVar9 == (code *)0x0) {
      uVar10 = 0xffffff0b;
      puVar6 = &DAT_00138a0e;
      goto LAB_00117b68;
    }
    if (*(int *)(pcVar9 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x117ad8);
      (*pcVar9)();
    }
    uVar4 = (*pcVar9)(lVar5,pvVar3,uVar11);
    uVar10 = uVar11;
    if (-1 < (int)uVar4) goto LAB_00117c14;
    uVar10 = (ulong)uVar4;
  }
  _printk(&DAT_00137bd9,"syna_cdev_ioctl_raw_write",uVar11);
LAB_00117c14:
  if (DAT_00131e18 == '\x01') {
    DAT_00131e18 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    DAT_00131e18 = DAT_00131e18 + -1;
  }
  mutex_unlock();
  mutex_unlock(*param_1 + 0x348);
  return uVar10;
}



/* 00117c90 syna_cdev_process_reports */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 syna_cdev_process_reports(undefined1 param_1,void *param_2,uint param_3,long *param_4)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  undefined2 uVar5;
  bool bVar6;
  long lVar7;
  undefined1 *__src;
  void *__dest;
  undefined *puVar8;
  long *plVar9;
  long *plVar10;
  code *pcVar11;
  ulong __n;
  long lVar12;
  undefined4 uVar13;
  ulong __n_00;
  long *plVar14;
  uint uVar15;
  undefined1 *local_70;
  
  if (param_4 == (long *)0x0) {
    _printk(&DAT_00139a47,"syna_cdev_process_reports");
    return 0xffffffea;
  }
  __n = (ulong)param_3;
  if (param_2 == (void *)0x0) {
    _printk(&DAT_001365f5,"syna_cdev_update_fifo");
    uVar13 = 0xffffffea;
    goto LAB_001180b0;
  }
  lVar12 = *param_4;
  uVar1 = param_3 + 3;
  uVar3 = DAT_00131e80._4_4_ & ((int)DAT_00131e80._4_4_ >> 0x1f ^ 0xffffffffU);
  uVar2 = uVar3 + uVar1;
  __n_00 = (ulong)uVar2;
  lVar7 = syna_request_managed_device();
  if (lVar7 == 0) {
    puVar8 = &DAT_0013ccb3;
LAB_00118044:
    _printk(puVar8,"syna_pal_mem_alloc");
LAB_00118050:
    _printk(&DAT_0013604e,"syna_cdev_update_fifo",__n_00,__n);
  }
  else {
    if ((int)uVar2 < 1) {
      puVar8 = &DAT_00138e98;
      goto LAB_00118044;
    }
    __src = (undefined1 *)devm_kmalloc(lVar7,__n_00,0xdc0);
    uVar15 = DAT_00131e80._4_4_;
    if (__src == (undefined1 *)0x0) goto LAB_00118050;
    if ((int)DAT_00131e80._4_4_ < 1) {
      uVar15 = 0;
      local_70 = (undefined1 *)0x0;
LAB_00117d58:
      *__src = param_1;
      if ((uVar2 == 1) || (__src[1] = (char)param_3, uVar2 == 2)) goto LAB_001181f4;
      __src[2] = (char)(param_3 >> 8);
      if (param_3 == 0) {
LAB_00117dac:
        if ((int)DAT_00131e80._4_4_ < 2) {
LAB_00117e38:
          lVar7 = param_4[0x4e];
          mutex_lock(&DAT_00131e50);
          if (*(uint *)(param_4 + 0x9e) < 0x4b0) {
            if (0x4af < (int)syna_cdev_push_data_to_fifo_pre_remaining_frames) {
              _printk(&DAT_00138a7d,"syna_cdev_push_data_to_fifo");
              syna_cdev_push_data_to_fifo_pre_remaining_frames = *(uint *)(param_4 + 0x9e);
            }
          }
          else {
            if (*(uint *)(param_4 + 0x9e) != syna_cdev_push_data_to_fifo_pre_remaining_frames) {
              _printk(&DAT_00134b96,"syna_cdev_push_data_to_fifo");
            }
            plVar14 = (long *)param_4[0x9f];
            plVar10 = (long *)plVar14[1];
            if (((long *)*plVar10 == plVar14) &&
               (lVar12 = *plVar14, *(long **)(lVar12 + 8) == plVar14)) {
              *(long **)(lVar12 + 8) = plVar10;
              *plVar10 = lVar12;
            }
            else {
              __list_del_entry_valid_or_report(plVar14);
            }
            *plVar14 = -0x2152ffffffffff00;
            plVar14[1] = -0x2152fffffffffede;
            kfree(plVar14[2]);
            kfree(plVar14);
            syna_cdev_push_data_to_fifo_pre_remaining_frames = *(uint *)(param_4 + 0x9e);
            *(uint *)(param_4 + 0x9e) = syna_cdev_push_data_to_fifo_pre_remaining_frames - 1;
          }
          plVar10 = (long *)__kmalloc_cache_noprof(_kobject_uevent_env,0xcc0,0x30);
          if (plVar10 == (long *)0x0) {
            _printk(&DAT_0013661f,"syna_cdev_push_data_to_fifo");
            _printk(&DAT_0013bf78,"syna_cdev_push_data_to_fifo",0x30);
          }
          else {
            __dest = (void *)__kmalloc_noprof(__n_00,0xcc0);
            plVar10[2] = (long)__dest;
            if (__dest != (void *)0x0) {
              *(uint *)(plVar10 + 3) = uVar2;
              memcpy(__dest,__src,__n_00);
              ktime_get_real_ts64(plVar10 + 4);
              plVar14 = param_4 + 0x9f;
              plVar9 = (long *)param_4[0xa0];
              if (((plVar10 == plVar14) || (plVar9 == plVar10)) || ((long *)*plVar9 != plVar14)) {
                __list_add_valid_or_report(plVar10);
              }
              else {
                param_4[0xa0] = (long)plVar10;
                *plVar10 = (long)plVar14;
                plVar10[1] = (long)plVar9;
                *plVar9 = (long)plVar10;
              }
              uVar1 = (int)param_4[0x9e] + 1;
              uVar2 = DAT_00131e88 - 1;
              *(uint *)(param_4 + 0x9e) = uVar1;
              if ((uVar2 < uVar1) && (pcVar11 = *(code **)(lVar7 + 0x40), pcVar11 != (code *)0x0)) {
                if (*(int *)(pcVar11 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
                  pcVar11 = (code *)SoftwareBreakpoint(0x8228,0x117f98);
                  (*pcVar11)();
                }
                (*pcVar11)(lVar7 + 8,0);
              }
              mutex_unlock(&DAT_00131e50);
              __wake_up(param_4 + 0xa1,1,1,0);
              bVar6 = false;
              uVar13 = 0;
              goto LAB_00117fc4;
            }
            _printk(&DAT_001327bc,"syna_cdev_push_data_to_fifo",__n_00);
          }
          mutex_unlock(&DAT_00131e50);
          _printk(&DAT_00135818,"syna_cdev_update_fifo");
          uVar13 = 0xfffffff4;
          bVar6 = true;
          goto LAB_00117fc4;
        }
        if (uVar15 == 0) {
LAB_001181f4:
                    /* WARNING: Does not return */
          pcVar11 = (code *)SoftwareBreakpoint(1,0x1181f8);
          (*pcVar11)();
        }
        uVar5 = *(undefined2 *)(lVar12 + 0x382);
        *local_70 = (char)uVar5;
        if (uVar15 == 1) goto LAB_001181f4;
        local_70[1] = (char)((ushort)uVar5 >> 8);
        if ((DAT_00131e80._4_4_ + 0xfffe & 0xffff) != 0) {
          if (uVar15 == 2) goto LAB_001181f4;
          local_70[2] = *(undefined1 *)(lVar12 + 0x385);
        }
        if ((__src + (int)uVar1 != (undefined1 *)0x0) && (local_70 != (undefined1 *)0x0)) {
          if (DAT_00131e80._4_4_ <= uVar3) {
            uVar4 = 0;
            if (uVar1 <= uVar2) {
              uVar4 = __n_00 - (long)(int)uVar1;
            }
            if (uVar4 < DAT_00131e80._4_4_) {
LAB_001181f8:
                    /* WARNING: Subroutine does not return */
              __fortify_panic(0x11);
            }
            memcpy(__src + (int)uVar1,local_70,(ulong)DAT_00131e80._4_4_);
            goto LAB_00117e38;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy",DAT_00131e80._4_4_,uVar3,DAT_00131e80._4_4_);
        }
        _printk(&DAT_00138343,"syna_cdev_update_fifo");
        uVar13 = 0xffffffea;
        bVar6 = true;
        lVar7 = syna_request_managed_device();
        if (lVar7 != 0) goto LAB_00117fd0;
LAB_001181bc:
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar7 = syna_request_managed_device();
      }
      else {
        if (__src + 3 != (undefined1 *)0x0) {
          if (param_3 <= uVar3 + param_3) {
            if (__n_00 - 3 < __n) goto LAB_001181f8;
            memcpy(__src + 3,param_2,__n);
            goto LAB_00117dac;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy",__n,uVar3 + param_3,__n);
        }
        _printk(&DAT_0013468e,"syna_cdev_update_fifo",__n);
        uVar13 = 0xffffffea;
        bVar6 = true;
LAB_00117fc4:
        lVar7 = syna_request_managed_device();
        if (lVar7 == 0) goto LAB_001181bc;
LAB_00117fd0:
        if (local_70 != (undefined1 *)0x0) {
          devm_kfree(lVar7,local_70);
        }
        lVar7 = syna_request_managed_device();
      }
      if (lVar7 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else {
        devm_kfree(lVar7,__src);
      }
      if (!bVar6) {
        return 0;
      }
      goto LAB_001180b0;
    }
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) goto LAB_00117d38;
LAB_0011808c:
      devm_kfree(lVar7,__src);
    }
    else {
      local_70 = (undefined1 *)devm_kmalloc(lVar7,uVar15,0xdc0);
      if (local_70 != (undefined1 *)0x0) goto LAB_00117d58;
      lVar7 = syna_request_managed_device();
      if (lVar7 != 0) goto LAB_0011808c;
LAB_00117d38:
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    _printk(&DAT_0013daa6,"syna_cdev_update_fifo",DAT_00131e80._4_4_);
  }
  uVar13 = 0xfffffff4;
LAB_001180b0:
  _printk(&DAT_0013a68c,"syna_cdev_process_reports",param_1,__n);
  return uVar13;
}



/* 00118364 syna_request_managed_device */

undefined8 syna_request_managed_device(void)

{
  if (p_device != 0) {
    return *(undefined8 *)(p_device + 0x70);
  }
  return 0;
}



/* 00118384 syna_spi_hw_reset */

void syna_spi_hw_reset(long param_1)

{
  int iVar1;
  uint uVar2;
  undefined8 uVar3;
  
  if (*(int *)(param_1 + 0xf0) == 0) {
    return;
  }
  uVar2 = *(uint *)(param_1 + 0xf4);
  uVar3 = gpio_to_desc(*(int *)(param_1 + 0xf0));
  gpiod_set_raw_value(uVar3,uVar2 & 1);
  if (0 < *(int *)(param_1 + 0xfc)) {
    msleep();
  }
  iVar1 = *(int *)(param_1 + 0xf4);
  uVar3 = gpio_to_desc(*(undefined4 *)(param_1 + 0xf0));
  gpiod_set_raw_value(uVar3,iVar1 == 0);
  msleep(0x50);
  _printk(&DAT_00139ae0,"syna_spi_hw_reset");
  return;
}



/* 00118418 syna_hw_interface_init */

int syna_hw_interface_init(void)

{
  int iVar1;
  undefined *puVar2;
  
  _printk(&DAT_00135327,"syna_hw_interface_init");
  iVar1 = platform_device_register(&syna_spi_device);
  if (iVar1 < 0) {
    puVar2 = &DAT_0013405d;
  }
  else {
    p_device = &syna_spi_device;
    iVar1 = __spi_register_driver(&__this_module,syna_spi_driver);
    if (-1 < iVar1) {
      _printk(&DAT_0013d3d1,"syna_hw_interface_init");
      buf_size = 0;
      rx_buf = 0;
      tx_buf = 0;
      return iVar1;
    }
    puVar2 = &DAT_001332dc;
  }
  _printk(puVar2,"syna_hw_interface_init");
  return iVar1;
}



/* 001184e0 syna_hw_interface_exit */

void syna_hw_interface_exit(void)

{
  driver_unregister(0x100b68);
  platform_device_unregister(&syna_spi_device);
  return;
}



/* 00118514 syna_spi_release */

void syna_spi_release(void)

{
  _printk(&DAT_00134bc7,"syna_spi_release");
  return;
}



/* 00118544 syna_spi_probe */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void syna_spi_probe(long param_1)

{
  int iVar1;
  int iVar2;
  long lVar3;
  ulong uVar4;
  undefined4 *puVar5;
  undefined *puVar6;
  uint uVar7;
  undefined8 uVar8;
  undefined8 local_80;
  undefined8 local_78;
  undefined4 local_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  _printk(&DAT_0013ce32,"syna_spi_probe");
  uVar8 = *(undefined8 *)(param_1 + 0x2e8);
  local_70 = 0;
  local_80 = 0;
  local_78 = 0;
  DAT_00100cc8 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,irq-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100cc8 = of_get_named_gpio(uVar8,"synaptics,irq-gpio",0);
  }
  DAT_00100cd0 = 0x2008;
  lVar3 = of_find_property(uVar8,"synaptics,irq-flags",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,irq-flags",&local_80,1,0);
    DAT_00100cd0 = (long)(int)local_80;
  }
  DAT_00100ccc = 0;
  lVar3 = of_find_property(uVar8,"synaptics,irq-on-state",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,irq-on-state",&DAT_00100ccc,1,0);
  }
  DAT_00100d70 = 1;
  lVar3 = of_find_property(uVar8,"synaptics,power-on-state",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,power-on-state",&DAT_00100d70,1,0);
  }
  DAT_00100d74 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,power-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,power-delay-ms",&DAT_00100d74,1,0);
  }
  DAT_00100d20 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-control",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vdd-control",&DAT_00100d20,1,0);
  }
  DAT_00100d28 = (char *)0x0;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-name",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_string(uVar8,"synaptics,vdd-name",&DAT_00100d28);
  }
  DAT_00100d38 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100d38 = of_get_named_gpio(uVar8,"synaptics,vdd-gpio",0);
  }
  DAT_00100d40 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-power-on-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vdd-power-on-delay-ms",&DAT_00100d40,1,0);
  }
  DAT_00100d44 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vdd-power-off-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vdd-power-off-delay-ms",&DAT_00100d44,1,0);
  }
  DAT_00100d48 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vio-control",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vio-control",&DAT_00100d48,1,0);
  }
  DAT_00100d50 = (byte *)0x0;
  lVar3 = of_find_property(uVar8,"synaptics,avdd-name",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_string(uVar8,"synaptics,avdd-name",&DAT_00100d50);
  }
  DAT_00100d60 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,vio-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100d60 = of_get_named_gpio(uVar8,"synaptics,vio-gpio",0);
  }
  DAT_00100d68 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vio-power-on-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vio-power-on-delay-ms",&DAT_00100d68,1,0);
  }
  DAT_00100d6c = 0;
  lVar3 = of_find_property(uVar8,"synaptics,vio-power-off-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,vio-power-off-delay-ms",&DAT_00100d6c,1,0);
  }
  DAT_00100d14 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,reset-on-state",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,reset-on-state",&DAT_00100d14,1,0);
  }
  DAT_00100d10 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,reset-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100d10 = of_get_named_gpio(uVar8,"synaptics,reset-gpio",0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,reset-active-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,reset-active-ms",&DAT_00100d1c,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,reset-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,reset-delay-ms",&DAT_00100d18,1,0);
  }
  DAT_00100cc0 = -1;
  lVar3 = of_find_property(uVar8,"synaptics,io-switch-gpio",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    DAT_00100cc0 = of_get_named_gpio(uVar8,"synaptics,io-switch-gpio",0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,io-switch-state",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,io-switch-state",&DAT_00100cc4,1,0);
  }
  DAT_00100c84 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,spi-byte-delay-us",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,spi-byte-delay-us",&DAT_00100c84,1,0);
  }
  DAT_00100c88 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,spi-block-delay-us",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,spi-block-delay-us",&DAT_00100c88,1,0);
  }
  DAT_00100c80 = 0;
  lVar3 = of_find_property(uVar8,"synaptics,spi-mode",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,spi-mode",&DAT_00100c80,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,chunks",0);
  if (((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) &&
     (iVar1 = of_property_read_variable_u32_array(uVar8,"synaptics,chunks",&local_80,2,0),
     -1 < iVar1)) {
    DAT_00100c34 = (int)local_80;
    DAT_00100c38 = local_80._4_4_;
  }
  lVar3 = of_find_property(uVar8,"synaptics,flash-access-delay-us",0);
  if (((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) &&
     (iVar1 = of_property_read_variable_u32_array
                        (uVar8,"synaptics,flash-access-delay-usy",&local_80,3,0), -1 < iVar1)) {
    _DAT_00100d90 = local_80;
    _DAT_00100d98 = (undefined4)local_78;
  }
  lVar3 = of_find_property(uVar8,"synaptics,command-timeout-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,command-timeout-ms",&DAT_00100d78,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,command-polling-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,command-polling-ms",&DAT_00100d7c,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,command-turnaround-us",0);
  if (((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) &&
     (iVar1 = of_property_read_variable_u32_array
                        (uVar8,"synaptics,command-turnaround-us",&local_80,2,0), -1 < iVar1)) {
    _DAT_00100d80 = (int)local_80;
    _DAT_00100d84 = local_80._4_4_;
  }
  lVar3 = of_find_property(uVar8,"synaptics,command-retry-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,command-retry-ms",&DAT_00100d88,1,0);
  }
  lVar3 = of_find_property(uVar8,"synaptics,fw-switch-delay-ms",0);
  if ((lVar3 != 0) && (*(int *)(lVar3 + 8) != 0)) {
    of_property_read_variable_u32_array(uVar8,"synaptics,fw-switch-delay-ms",&DAT_00100d8c,1,0);
  }
  _printk(&DAT_00136d49,"syna_spi_parse_dt",DAT_00100c34,DAT_00100c38,DAT_00100d1c,DAT_00100d18,
          DAT_00100d40,DAT_00100d44,DAT_00100d68,DAT_00100d6c);
  _printk(&DAT_0013a1c9,"syna_spi_parse_dt",_DAT_00100d78,_DAT_00100d80,_DAT_00100d84,_DAT_00100d88)
  ;
  _printk(&DAT_0013e15e,"syna_spi_parse_dt",_DAT_00100d90 & 0xffffffff,_DAT_00100d94,_DAT_00100d98,
          _DAT_00100d8c);
  syna_ts_check_dt(param_1);
  lVar3 = p_device;
  DAT_00100c28 = &syna_spi_hw_if;
  syna_spi_hw_if = param_1;
  *(long *)(p_device + 0x70) = param_1;
  *(long **)(lVar3 + 0xa0) = &syna_spi_hw_if;
  uVar7 = DAT_00100d48;
  if (((DAT_00100d48 == 0) && (uVar7 = 0, DAT_00100d50 != (byte *)0x0)) &&
     (uVar7 = (uint)*DAT_00100d50, *DAT_00100d50 != 0)) {
    uVar7 = 1;
    DAT_00100d48 = 1;
  }
  if (((DAT_00100d20 == 0) && (DAT_00100d28 != (char *)0x0)) && (*DAT_00100d28 != '\0')) {
    DAT_00100d20 = 1;
  }
  if (uVar7 == 1) {
    if ((DAT_00100d50 != (byte *)0x0) && (*DAT_00100d50 != 0)) {
      if (*DAT_00100d50 == 0) {
        uVar4 = 0;
      }
      else {
        uVar4 = devm_regulator_get(*(undefined8 *)(lVar3 + 0x70));
        if (0xfffffffffffff000 < uVar4) {
          _printk(&DAT_0013d43c,"syna_spi_get_regulator");
          puVar6 = &DAT_00138f8b;
          DAT_00100d58 = uVar4;
          goto LAB_001192b0;
        }
      }
LAB_00118fc8:
      DAT_00100d58 = uVar4;
      if (DAT_00100d20 == 1) {
        if ((DAT_00100d28 == (char *)0x0) || (*DAT_00100d28 == '\0')) {
          puVar6 = &DAT_00139b72;
          goto LAB_001192b0;
        }
        if (*DAT_00100d28 == '\0') {
          uVar4 = 0;
        }
        else {
          uVar4 = devm_regulator_get(*(undefined8 *)(p_device + 0x70));
          if (0xfffffffffffff000 < uVar4) {
            _printk(&DAT_0013d43c,"syna_spi_get_regulator");
            puVar6 = &DAT_00134c03;
            DAT_00100d30 = uVar4;
            goto LAB_001192b0;
          }
        }
      }
      else {
        uVar4 = DAT_00100d30;
        if (((0 < DAT_00100d20) && (0 < DAT_00100d38)) &&
           (iVar1 = syna_spi_get_gpio(DAT_00100d38,1,DAT_00100d70 == 0,
                                      syna_spi_request_power_resources_str_avdd_gpio),
           uVar4 = DAT_00100d30, iVar1 < 0)) {
          puVar6 = &DAT_00135930;
          iVar2 = DAT_00100d38;
          goto LAB_00119078;
        }
      }
      DAT_00100d30 = uVar4;
      lVar3 = syna_spi_hw_if;
      if (syna_spi_hw_if == 0) {
        iVar1 = -0x16;
LAB_001195a4:
        _printk(&DAT_00137c09,"syna_spi_probe");
        if (DAT_00100d48 == 1) {
          if (DAT_00100d58 != 0) {
            devm_regulator_put();
          }
        }
        else if ((0 < (int)DAT_00100d48) && (0 < DAT_00100d60)) {
          gpio_free();
        }
        if (DAT_00100d20 == 1) {
          if (DAT_00100d30 != 0) {
            devm_regulator_put();
          }
          goto LAB_00119630;
        }
        if (DAT_00100d20 < 1) goto LAB_00119630;
        iVar2 = 0x100000;
      }
      else {
        __mutex_init(&DAT_00100c90,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
        uVar7 = DAT_00100c80;
        *(undefined1 *)(lVar3 + 0x3ac) = 8;
        if (uVar7 < 4) {
          *(uint *)(lVar3 + 0x3b0) = uVar7;
        }
        iVar1 = spi_setup(lVar3);
        if (iVar1 < 0) {
          _printk(&DAT_00137c8c,"syna_spi_request_bus_resources");
          goto LAB_001195a4;
        }
        puVar5 = (undefined4 *)__kmalloc_cache_noprof(_remove_proc_entry,0xdc0,8);
        iVar1 = DAT_00100cc0;
        if (puVar5 == (undefined4 *)0x0) {
          _printk(&DAT_001383f7,"syna_spi_request_bus_resources");
          iVar1 = -0xc;
          goto LAB_001195a4;
        }
        *puVar5 = 0x3fe;
        *(undefined4 **)(lVar3 + 0x3c0) = puVar5;
        if ((0 < iVar1) &&
           (iVar1 = syna_spi_get_gpio(iVar1,1,DAT_00100cc4,
                                      syna_spi_request_bus_resources_str_switch_gpio), iVar1 < 0)) {
          _printk(&DAT_0013597e,"syna_spi_request_bus_resources",DAT_00100cc0);
          goto LAB_001195a4;
        }
        if ((DAT_00100d10 < 1) ||
           (iVar1 = syna_spi_get_gpio(DAT_00100d10,1,DAT_00100d14,
                                      syna_spi_request_reset_resources_str_rst_gpio), -1 < iVar1)) {
          __mutex_init(&DAT_00100ce0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
          if (DAT_00100cc8 < 1) {
            iVar1 = 0;
            goto LAB_00119630;
          }
          iVar2 = syna_spi_get_gpio(DAT_00100cc8,0,0,syna_spi_request_attn_resources_str_attn_gpio);
          iVar1 = 0;
          if (-1 < iVar2) goto LAB_00119630;
          _printk(&DAT_00139bb5,"syna_spi_request_attn_resources",DAT_00100cc8);
          _printk(&DAT_0013e10b,"syna_spi_probe");
          if (0 < DAT_00100d10) {
            gpio_free();
          }
          if (0 < DAT_00100cc0) {
            gpio_free();
          }
          if (rx_buf != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            rx_buf = 0;
          }
          if (tx_buf != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            tx_buf = 0;
          }
          if (xfer != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            xfer = 0;
          }
          if (DAT_00100d48 == 1) {
            if (DAT_00100d58 != 0) {
              devm_regulator_put();
            }
          }
          else if ((0 < (int)DAT_00100d48) && (0 < DAT_00100d60)) {
            gpio_free(iVar2);
          }
          iVar1 = iVar2;
          if (DAT_00100d20 == 1) {
            if (DAT_00100d30 != 0) {
              devm_regulator_put();
            }
            goto LAB_00119630;
          }
        }
        else {
          _printk(&DAT_00133a03,"syna_spi_request_reset_resources",DAT_00100d10);
          _printk(&DAT_0013b852,"syna_spi_probe");
          if (0 < DAT_00100cc0) {
            gpio_free();
          }
          if (rx_buf != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            rx_buf = 0;
          }
          if (tx_buf != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            tx_buf = 0;
          }
          if (xfer != 0) {
            if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree();
            }
            xfer = 0;
          }
          if (DAT_00100d48 == 1) {
            if (DAT_00100d58 != 0) {
              devm_regulator_put(DAT_00100d58);
            }
          }
          else if ((0 < (int)DAT_00100d48) && (0 < DAT_00100d60)) {
            gpio_free(DAT_00100d60);
          }
          iVar2 = DAT_00100d38;
          if (DAT_00100d20 == 1) {
            if (DAT_00100d30 != 0) {
              devm_regulator_put(DAT_00100d30);
            }
            goto LAB_00119630;
          }
        }
        if (DAT_00100d20 < 1) goto LAB_00119630;
      }
      if (0 < DAT_00100d38) {
        gpio_free(iVar2,DAT_00100d38);
      }
      goto LAB_00119630;
    }
    puVar6 = &DAT_001340df;
LAB_001192b0:
    _printk(puVar6,"syna_spi_request_power_resources");
    iVar1 = -6;
  }
  else {
    uVar4 = DAT_00100d58;
    if ((((int)uVar7 < 1) || (DAT_00100d60 < 1)) ||
       (iVar1 = syna_spi_get_gpio(DAT_00100d60,1,DAT_00100d70 == 0,
                                  syna_spi_request_power_resources_str_vdd_gpio),
       uVar4 = DAT_00100d58, -1 < iVar1)) goto LAB_00118fc8;
    puVar6 = &DAT_001383c8;
    iVar2 = DAT_00100d60;
LAB_00119078:
    _printk(puVar6,"syna_spi_request_power_resources",iVar2);
  }
  _printk(&DAT_0013b81f,"syna_spi_probe");
LAB_00119630:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar1);
}



/* 00119670 syna_spi_remove */

void syna_spi_remove(void)

{
  if (0 < DAT_00100cc8) {
    gpio_free();
  }
  if (0 < DAT_00100d10) {
    gpio_free();
  }
  if (0 < DAT_00100cc0) {
    gpio_free();
  }
  if (rx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else {
      devm_kfree();
    }
    rx_buf = 0;
  }
  if (tx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else {
      devm_kfree();
    }
    tx_buf = 0;
  }
  if (xfer != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else {
      devm_kfree();
    }
    xfer = 0;
  }
  if (DAT_00100d48 == 1) {
    if (DAT_00100d58 != 0) {
      devm_regulator_put();
    }
  }
  else if ((0 < DAT_00100d48) && (0 < DAT_00100d60)) {
    gpio_free();
  }
  if (DAT_00100d20 == 1) {
    if (DAT_00100d30 != 0) {
      devm_regulator_put();
    }
  }
  else if ((0 < DAT_00100d20) && (0 < DAT_00100d38)) {
    gpio_free();
  }
  return;
}



/* 00119800 syna_spi_read */

uint syna_spi_read(undefined8 *param_1,void *param_2,uint param_3)

{
  undefined8 ****ppppuVar1;
  undefined8 *puVar2;
  void *pvVar3;
  uint uVar4;
  undefined *puVar5;
  long lVar6;
  ulong uVar7;
  ulong extraout_x9;
  ulong uVar8;
  ulong extraout_x10;
  long lVar9;
  long extraout_x11;
  long lVar10;
  long extraout_x12;
  undefined8 uVar11;
  undefined8 extraout_x13;
  undefined8 ****ppppuVar12;
  undefined8 ****extraout_x14;
  long lVar13;
  long *plVar14;
  undefined8 ***local_b8;
  undefined8 ***local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 ***local_60;
  undefined8 ***local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar13 = sp_el0;
  local_48 = *(long *)(lVar13 + 0x710);
  plVar14 = (long *)*param_1;
  local_58 = (undefined8 ****)0x0;
  uStack_50 = 0;
  local_68 = 0;
  local_60 = (undefined8 ****)0x0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = (undefined8 ****)0x0;
  local_b0 = (undefined8 ****)0x0;
  if (plVar14 == (long *)0x0) {
    puVar5 = &DAT_0013b1b1;
  }
  else {
    lVar13 = *plVar14;
    if (lVar13 != 0) {
      mutex_lock(plVar14 + 0xe);
      if (((param_3 ^ 0xffffffff) & 0xffff) == 0) {
        _printk(&DAT_00132e16,"syna_spi_read",0xffff);
LAB_00119ac8:
        uVar4 = 0xffffffea;
      }
      else {
        local_b8 = &local_b8;
        uStack_50 = 0;
        local_68 = 0;
        local_78 = 0;
        uStack_70 = 0;
        local_88 = 0;
        uStack_80 = 0;
        local_98 = 0;
        uStack_90 = 0;
        local_a8 = 0;
        uStack_a0 = 0;
        local_60 = &local_60;
        uVar4 = param_3;
        if (*(int *)((long)plVar14 + 100) == 0) {
          uVar4 = 1;
        }
        local_b0 = local_b8;
        local_58 = local_60;
        uVar4 = syna_spi_alloc_mem(uVar4,param_3);
        if ((int)uVar4 < 0) {
          _printk(&DAT_0013ce60,"syna_spi_read");
        }
        else {
          if (*(int *)((long)plVar14 + 100) == 0) {
            memset(tx_buf,0xff,(ulong)param_3);
            puVar2 = xfer;
            *xfer = tx_buf;
            pvVar3 = rx_buf;
            ppppuVar12 = (undefined8 ****)(puVar2 + 0xe);
            *(uint *)(puVar2 + 2) = param_3;
            puVar2[1] = pvVar3;
            if (((ppppuVar12 == &local_b8) || ((undefined8 ****)local_b0 == ppppuVar12)) ||
               ((undefined8 ****)*local_b0 != &local_b8)) {
              __list_add_valid_or_report(ppppuVar12,local_b0,&local_b8);
            }
            else {
              puVar2[0xe] = &local_b8;
              puVar2[0xf] = local_b0;
              *local_b0 = ppppuVar12;
              local_b0 = ppppuVar12;
            }
          }
          else {
            *(undefined1 *)tx_buf = 0xff;
            if (param_3 != 0) {
              uVar7 = 0;
              uVar8 = (ulong)param_3;
              lVar9 = 0x70;
              lVar10 = 0x131000;
              uVar11 = 1;
              ppppuVar12 = &local_b8;
              do {
                lVar6 = *(long *)(lVar10 + 0xec0);
                ppppuVar1 = (undefined8 ****)(lVar6 + lVar9);
                *(int *)(ppppuVar1 + -0xc) = (int)uVar11;
                ppppuVar1[-0xe] = tx_buf;
                ppppuVar1[-0xd] = (undefined8 ***)((long)rx_buf + uVar7);
                if (((ppppuVar1 == ppppuVar12) || (ppppuVar1 == (undefined8 ****)local_b0)) ||
                   ((undefined8 ****)*local_b0 != ppppuVar12)) {
                  __list_add_valid_or_report(ppppuVar1,local_b0,&local_b8);
                  uVar7 = extraout_x9;
                  uVar8 = extraout_x10;
                  lVar9 = extraout_x11;
                  lVar10 = extraout_x12;
                  uVar11 = extraout_x13;
                  ppppuVar12 = extraout_x14;
                }
                else {
                  puVar2 = (undefined8 *)(lVar6 + lVar9);
                  *puVar2 = ppppuVar12;
                  puVar2[1] = local_b0;
                  *local_b0 = ppppuVar1;
                  local_b0 = ppppuVar1;
                }
                uVar7 = uVar7 + 1;
                lVar9 = lVar9 + 0x88;
              } while (uVar8 != uVar7);
            }
          }
          uVar4 = spi_sync(lVar13,&local_b8);
          if (uVar4 == 0) {
            if ((param_2 == (void *)0x0) || (rx_buf == (void *)0x0)) {
              _printk(&DAT_0013b8ba,"syna_spi_read");
              goto LAB_00119ac8;
            }
            memcpy(param_2,rx_buf,(ulong)param_3);
            uVar4 = param_3;
          }
          else {
            _printk(&DAT_001360a6,"syna_spi_read",uVar4);
          }
        }
      }
      mutex_unlock(plVar14 + 0xe);
      goto LAB_001199f8;
    }
    puVar5 = &DAT_0013ab35;
  }
  _printk(puVar5,"syna_spi_read");
  uVar4 = 0xfffffffa;
LAB_001199f8:
  lVar13 = sp_el0;
  if (*(long *)(lVar13 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar4;
}



/* 00119ae4 syna_spi_write */

uint syna_spi_write(undefined8 *param_1,void *param_2,uint param_3)

{
  long ****pppplVar1;
  undefined8 *puVar2;
  uint uVar3;
  uint uVar4;
  undefined *puVar5;
  long lVar6;
  ulong uVar7;
  ulong extraout_x9;
  long lVar8;
  long extraout_x10;
  long lVar9;
  long extraout_x11;
  undefined8 uVar10;
  undefined8 extraout_x12;
  long ****pppplVar11;
  long ****extraout_x13;
  long lVar12;
  long *plVar13;
  long ***local_b8;
  long ***local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 ***local_60;
  undefined8 ***local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar12 = sp_el0;
  local_48 = *(long *)(lVar12 + 0x710);
  plVar13 = (long *)*param_1;
  local_58 = (undefined8 ****)0x0;
  uStack_50 = 0;
  local_68 = 0;
  local_60 = (undefined8 ****)0x0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = (long ***)0x0;
  local_b0 = (long ***)0x0;
  if (plVar13 == (long *)0x0) {
    puVar5 = &DAT_0013b1b1;
  }
  else {
    lVar12 = *plVar13;
    if (lVar12 != 0) {
      mutex_lock(plVar13 + 0xe);
      if (((param_3 ^ 0xffffffff) & 0xffff) == 0) {
        _printk(&DAT_00137c60,"syna_spi_write",0xffff);
        uVar3 = 0xffffffea;
      }
      else {
        local_b8 = (long ***)&local_b8;
        uStack_50 = 0;
        local_68 = 0;
        local_78 = 0;
        uStack_70 = 0;
        local_88 = 0;
        uStack_80 = 0;
        local_98 = 0;
        uStack_90 = 0;
        local_a8 = 0;
        uStack_a0 = 0;
        local_60 = &local_60;
        uVar3 = param_3;
        if (*(int *)((long)plVar13 + 100) == 0) {
          uVar3 = 1;
        }
        local_b0 = local_b8;
        local_58 = local_60;
        uVar3 = syna_spi_alloc_mem(uVar3,param_3);
        if ((int)uVar3 < 0) {
          _printk(&DAT_0013661f,"syna_spi_write");
        }
        else if ((param_2 == (void *)0x0) || (tx_buf == (void *)0x0)) {
          _printk(&DAT_00139b40,"syna_spi_write");
          uVar3 = 0xffffffea;
        }
        else {
          memcpy(tx_buf,param_2,(ulong)param_3);
          puVar2 = xfer;
          if (*(int *)((long)plVar13 + 100) == 0) {
            *xfer = tx_buf;
            pppplVar11 = (long ****)(puVar2 + 0xe);
            *(uint *)(puVar2 + 2) = param_3;
            if (((pppplVar11 == &local_b8) || ((long ****)local_b0 == pppplVar11)) ||
               ((long ****)*local_b0 != &local_b8)) {
              __list_add_valid_or_report(pppplVar11,local_b0,&local_b8);
            }
            else {
              puVar2[0xe] = &local_b8;
              puVar2[0xf] = local_b0;
              *local_b0 = (long **)pppplVar11;
              local_b0 = (long ***)pppplVar11;
            }
          }
          else if (param_3 != 0) {
            uVar7 = 0;
            lVar8 = 0x70;
            lVar9 = 0x131000;
            uVar10 = 1;
            pppplVar11 = &local_b8;
            do {
              lVar6 = *(long *)(lVar9 + 0xec0);
              pppplVar1 = (long ****)(lVar6 + lVar8);
              *(int *)(pppplVar1 + -0xc) = (int)uVar10;
              pppplVar1[-0xe] = (long ***)((long)tx_buf + uVar7);
              if (((pppplVar1 == pppplVar11) || (pppplVar1 == (long ****)local_b0)) ||
                 ((long ****)*local_b0 != pppplVar11)) {
                __list_add_valid_or_report(pppplVar1,local_b0,&local_b8);
                uVar7 = extraout_x9;
                lVar8 = extraout_x10;
                lVar9 = extraout_x11;
                uVar10 = extraout_x12;
                pppplVar11 = extraout_x13;
              }
              else {
                puVar2 = (undefined8 *)(lVar6 + lVar8);
                *puVar2 = pppplVar11;
                puVar2[1] = local_b0;
                *local_b0 = (long **)pppplVar1;
                local_b0 = (long ***)pppplVar1;
              }
              uVar7 = uVar7 + 1;
              lVar8 = lVar8 + 0x88;
            } while (param_3 != uVar7);
          }
          uVar4 = spi_sync(lVar12,&local_b8);
          uVar3 = param_3;
          if (uVar4 != 0) {
            _printk(&DAT_0013a220,"syna_spi_write",uVar4);
            uVar3 = uVar4;
          }
        }
      }
      mutex_unlock(plVar13 + 0xe);
      goto LAB_00119cb0;
    }
    puVar5 = &DAT_0013ab35;
  }
  _printk(puVar5,"syna_spi_write");
  uVar3 = 0xfffffffa;
LAB_00119cb0:
  lVar12 = sp_el0;
  if (*(long *)(lVar12 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar3;
}



/* 00119da0 syna_spi_enable_irq */

undefined4 syna_spi_enable_irq(long *param_1,ulong param_2)

{
  undefined *puVar1;
  undefined1 uVar2;
  long lVar3;
  undefined4 uVar4;
  
  lVar3 = *param_1;
  if (lVar3 == 0) {
    _printk(&DAT_0013b1b1,"syna_spi_enable_irq");
    return 0xfffffffa;
  }
  if (*(int *)(lVar3 + 0xb8) == 0) {
    return 0xfffffffa;
  }
  mutex_lock(lVar3 + 0xc0);
  if ((param_2 & 1) == 0) {
    if (*(byte *)(lVar3 + 0xbc) == 0) {
      uVar4 = 0;
      puVar1 = &DAT_00135389;
      goto LAB_00119e5c;
    }
    disable_irq_nosync(*(undefined4 *)(lVar3 + 0xb8));
    uVar2 = 0;
    puVar1 = &UNK_0013d41a;
  }
  else {
    if ((*(byte *)(lVar3 + 0xbc) & 1) != 0) {
      uVar4 = 0;
      puVar1 = &DAT_001376bc;
      goto LAB_00119e5c;
    }
    enable_irq(*(undefined4 *)(lVar3 + 0xb8));
    puVar1 = &DAT_0013b8e8;
    uVar2 = 1;
  }
  uVar4 = 1;
  *(undefined1 *)(lVar3 + 0xbc) = uVar2;
LAB_00119e5c:
  _printk(puVar1,"syna_spi_enable_irq");
  mutex_unlock(lVar3 + 0xc0);
  return uVar4;
}



/* 00119e7c syna_spi_power_on */

int syna_spi_power_on(long param_1,ulong param_2)

{
  char *pcVar1;
  undefined4 uVar2;
  int iVar3;
  undefined8 uVar4;
  undefined *puVar5;
  
  pcVar1 = "enable";
  if ((param_2 & 1) == 0) {
    pcVar1 = "disable";
  }
  _printk(&DAT_001346e5,"syna_spi_power_on",pcVar1);
  if ((param_2 & 1) == 0) {
    if (0 < *(int *)(param_1 + 0x100)) {
      if (*(int *)(param_1 + 0x100) == 1) {
        regulator_disable(*(undefined8 *)(param_1 + 0x110));
      }
      else if (0 < *(int *)(param_1 + 0x118)) {
        iVar3 = *(int *)(param_1 + 0x150);
        uVar4 = gpio_to_desc();
        gpiod_set_raw_value(uVar4,iVar3 == 0);
      }
      if (0 < *(int *)(param_1 + 0x124)) {
        msleep();
      }
    }
    if (0 < *(int *)(param_1 + 0x128)) {
      if (*(int *)(param_1 + 0x128) == 1) {
        regulator_disable(*(undefined8 *)(param_1 + 0x138));
      }
      else if (0 < *(int *)(param_1 + 0x140)) {
        iVar3 = *(int *)(param_1 + 0x150);
        uVar4 = gpio_to_desc();
        gpiod_set_raw_value(uVar4,iVar3 == 0);
      }
      if (0 < *(int *)(param_1 + 0x14c)) {
        msleep();
      }
    }
    uVar4 = gpio_to_desc(*(undefined4 *)(param_1 + 0xf0));
    gpiod_direction_output_raw(uVar4,0);
    usleep_range_state(10000,11000,2);
    _printk(&DAT_0013ab8c,"syna_spi_power_on");
    iVar3 = 0;
    puVar5 = &DAT_00139b6e;
  }
  else {
    if (*(int *)(param_1 + 0x128) < 1) {
      iVar3 = 0;
    }
    else {
      if (*(int *)(param_1 + 0x128) == 1) {
        if (0xfffffffffffff000 < *(ulong *)(param_1 + 0x138)) {
          _printk(&DAT_00138f62,"syna_spi_power_on");
          return 0;
        }
        iVar3 = regulator_enable();
        if (iVar3 < 0) {
          puVar5 = &DAT_00132e3e;
          goto LAB_0011a090;
        }
      }
      else {
        if (0 < *(int *)(param_1 + 0x140)) {
          uVar2 = *(undefined4 *)(param_1 + 0x150);
          uVar4 = gpio_to_desc();
          gpiod_set_raw_value(uVar4,uVar2);
        }
        iVar3 = 0;
      }
      if (0 < *(int *)(param_1 + 0x148)) {
        msleep();
      }
    }
    if (0 < *(int *)(param_1 + 0x100)) {
      if (*(int *)(param_1 + 0x100) == 1) {
        if (0xfffffffffffff000 < *(ulong *)(param_1 + 0x110)) {
          puVar5 = &DAT_0013b1d8;
LAB_0011a090:
          _printk(puVar5,"syna_spi_power_on");
          return iVar3;
        }
        iVar3 = regulator_enable();
        if (iVar3 < 0) {
          puVar5 = &DAT_0013a712;
          goto LAB_0011a090;
        }
      }
      else if (0 < *(int *)(param_1 + 0x118)) {
        uVar2 = *(undefined4 *)(param_1 + 0x150);
        uVar4 = gpio_to_desc();
        gpiod_set_raw_value(uVar4,uVar2);
      }
      if (0 < *(int *)(param_1 + 0x120)) {
        msleep();
      }
    }
    puVar5 = &DAT_00137c89;
  }
  _printk(&DAT_00136dbb,"syna_spi_power_on",puVar5);
  return iVar3;
}



/* 0011a0e4 syna_spi_alloc_mem */

undefined8 syna_spi_alloc_mem(uint param_1,uint param_2)

{
  uint uVar1;
  undefined *puVar2;
  
  if (syna_spi_alloc_mem_xfer_count < param_1) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      if (p_device != 0) goto LAB_0011a144;
LAB_0011a270:
      puVar2 = &DAT_0013ccb3;
    }
    else {
      if (xfer != (void *)0x0) {
        devm_kfree(*(long *)(p_device + 0x70),xfer);
      }
      if (p_device == 0) goto LAB_0011a270;
LAB_0011a144:
      if (*(long *)(p_device + 0x70) == 0) goto LAB_0011a270;
      if (0 < (int)(param_1 * 0x88)) {
        xfer = (void *)devm_kmalloc(*(long *)(p_device + 0x70),(ulong)param_1 * 0x88,0xdc0);
        uVar1 = param_1;
        if (xfer == (void *)0x0) goto LAB_0011a2f4;
        goto LAB_0011a190;
      }
      puVar2 = &DAT_00138e98;
    }
    _printk(puVar2,"syna_pal_mem_alloc");
    xfer = (void *)0x0;
LAB_0011a2f4:
    _printk(&DAT_00135359,"syna_spi_alloc_mem");
    syna_spi_alloc_mem_xfer_count = 0;
    return 0xfffffff4;
  }
  memset(xfer,0,(ulong)(param_1 * 0x88));
  uVar1 = syna_spi_alloc_mem_xfer_count;
LAB_0011a190:
  syna_spi_alloc_mem_xfer_count = uVar1;
  if (param_2 <= buf_size) {
    return 0;
  }
  if (rx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else {
      devm_kfree();
    }
    rx_buf = 0;
  }
  if (tx_buf != 0) {
    if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else {
      devm_kfree();
    }
    tx_buf = 0;
  }
  if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
    puVar2 = &DAT_0013ccb3;
LAB_0011a318:
    _printk(puVar2,"syna_pal_mem_alloc");
    rx_buf = 0;
  }
  else {
    if ((int)param_2 < 1) {
      puVar2 = &DAT_00138e98;
      goto LAB_0011a318;
    }
    rx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
    if (rx_buf != 0) {
      if ((p_device == 0) || (*(long *)(p_device + 0x70) == 0)) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
        tx_buf = 0;
      }
      else {
        tx_buf = devm_kmalloc(*(long *)(p_device + 0x70),param_2,0xdc0);
        if (tx_buf != 0) {
          buf_size = param_2;
          return 0;
        }
      }
      puVar2 = &DAT_001340ad;
      goto LAB_0011a330;
    }
  }
  puVar2 = &DAT_0013ab5a;
LAB_0011a330:
  _printk(puVar2,"syna_spi_alloc_mem");
  buf_size = 0;
  return 0xfffffff4;
}



/* 0011a35c syna_spi_get_gpio */

int syna_spi_get_gpio(undefined4 param_1,int param_2,undefined4 param_3,undefined8 param_4)

{
  int iVar1;
  undefined8 uVar2;
  undefined *puVar3;
  
  iVar1 = scnprintf(param_4,0x10,"tcm_gpio_%d\n",param_1);
  if (iVar1 < 0) {
    _printk(&DAT_0013bfbd,"syna_spi_get_gpio");
  }
  else {
    iVar1 = gpio_request(param_1,param_4);
    if (iVar1 < 0) {
      puVar3 = &DAT_0013d462;
    }
    else {
      uVar2 = gpio_to_desc(param_1);
      if (param_2 == 0) {
        iVar1 = gpiod_direction_input();
      }
      else {
        iVar1 = gpiod_direction_output_raw(uVar2,param_3);
      }
      if (-1 < iVar1) {
        return 0;
      }
      puVar3 = &DAT_00138fbe;
    }
    _printk(puVar3,"syna_spi_get_gpio",param_1);
  }
  return iVar1;
}



/* 0011a440 syna_sysfs_create_dir */

int syna_sysfs_create_dir(long param_1,long param_2)

{
  int iVar1;
  long lVar2;
  
  lVar2 = kobject_create_and_add("sysfs",param_2 + 0x10);
  *(long *)(param_1 + 0x398) = lVar2;
  if (lVar2 == 0) {
    _printk(&DAT_0013db12,"syna_sysfs_create_dir");
    iVar1 = -0x14;
  }
  else {
    iVar1 = sysfs_create_group(lVar2,&attr_group);
    if (iVar1 < 0) {
      _printk(&DAT_001353b3,"syna_sysfs_create_dir");
    }
    else {
      iVar1 = syna_testing_create_dir(param_1);
      if (-1 < iVar1) {
        return 0;
      }
      _printk(&DAT_0013bfe3,"syna_sysfs_create_dir");
      sysfs_remove_group(*(undefined8 *)(param_1 + 0x398),&attr_group);
    }
    kobject_put(*(undefined8 *)(param_1 + 0x398));
  }
  return iVar1;
}



/* 0011a518 syna_sysfs_remove_dir */

void syna_sysfs_remove_dir(long param_1)

{
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_sysfs_remove_dir");
  }
  else if (*(long *)(param_1 + 0x398) != 0) {
    syna_testing_remove_dir(param_1);
    if (*(long *)(param_1 + 0x3a0) != 0) {
      sysfs_remove_group(*(long *)(param_1 + 0x3a0),attr_debug_group);
      kobject_put(*(undefined8 *)(param_1 + 0x3a0));
    }
    sysfs_remove_group(*(undefined8 *)(param_1 + 0x398),&attr_group);
    kobject_put(*(undefined8 *)(param_1 + 0x398));
  }
  return;
}



/* 0011a5a0 syna_sysfs_info_show */

long syna_sysfs_info_show(long param_1,undefined8 param_2,long param_3)

{
  undefined8 *puVar1;
  undefined8 uVar2;
  bool bVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  long lVar8;
  char *pcVar9;
  long lVar10;
  long lVar11;
  long *plVar12;
  
  plVar12 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  lVar11 = *plVar12;
  uVar4 = scnprintf(param_3,0x1000,"Driver version:     %d.%s\n",1,&DAT_0013a013);
  uVar5 = uVar4;
  if ((int)uVar4 < 0) goto LAB_0011a944;
  param_3 = param_3 + (ulong)uVar4;
  uVar5 = scnprintf(param_3,0x1000 - (ulong)uVar4,"Core lib version:   %d.%02d\n\n",2,0xc);
  if ((int)uVar5 < 0) goto LAB_0011a944;
  param_3 = param_3 + (ulong)uVar5;
  uVar4 = uVar5 + uVar4;
  bVar3 = *(int *)((long)plVar12 + 0x57c) != 3;
  if ((*(byte *)((long)plVar12 + 0x582) & 1) == 0) {
    if (!bVar3) goto LAB_0011a6cc;
    pcVar9 = "Device is NOT connected\n";
  }
  else {
    if (bVar3) {
      uVar6 = scnprintf(param_3,0x1000 - (ulong)uVar4,
                        "Character Dev. Node: /dev/%s* (ref. count:%d)\n\n",&DAT_0013965d,
                        *(undefined4 *)((long)plVar12 + 900));
      uVar5 = uVar6;
      if (-1 < (int)uVar6) {
        uVar5 = scnprintf(param_3 + (ulong)uVar6,0x1000 - (ulong)(uVar6 + uVar4),
                          "TouchComm version:  %d\n",*(undefined1 *)(lVar11 + 0x80));
        if (-1 < (int)uVar5) {
          lVar10 = param_3 + (ulong)uVar6 + (ulong)uVar5;
          uVar4 = uVar5 + uVar6 + uVar4;
          if (*(char *)(lVar11 + 0x81) == '\v') {
            lVar8 = 0x1000 - (ulong)uVar4;
            pcVar9 = "Firmware mode:      Bootloader, 0x%02x\n";
          }
          else if (*(char *)(lVar11 + 0x81) == '\x01') {
            lVar8 = 0x1000 - (ulong)uVar4;
            pcVar9 = "Firmware mode:      Application Firmware, 0x%02x\n";
          }
          else {
            lVar8 = 0x1000 - (ulong)uVar4;
            pcVar9 = "Firmware mode:      Mode 0x%02x\n";
          }
          uVar6 = scnprintf(lVar10,lVar8,pcVar9);
          uVar5 = uVar6;
          if (-1 < (int)uVar6) {
            lVar10 = lVar10 + (ulong)uVar6;
            uVar5 = scnprintf(lVar10,0x1000 - (ulong)(uVar6 + uVar4),"Part number:        ");
            if (-1 < (int)uVar5) {
              if (((undefined8 *)(lVar11 + 0x82) != (undefined8 *)0x0) &&
                 (puVar1 = (undefined8 *)(lVar10 + (ulong)uVar5), puVar1 != (undefined8 *)0x0)) {
                iVar7 = uVar6 + uVar4 + uVar5;
                uVar4 = 0x1000 - iVar7;
                if (0xf < uVar4) {
                  uVar2 = *(undefined8 *)(lVar11 + 0x8a);
                  uVar4 = iVar7 + 0x10;
                  *puVar1 = *(undefined8 *)(lVar11 + 0x82);
                  puVar1[1] = uVar2;
                  uVar5 = scnprintf(puVar1 + 2,0x1000 - (ulong)uVar4,&DAT_00139994);
                  if (-1 < (int)uVar5) {
                    lVar10 = (long)(puVar1 + 2) + (ulong)uVar5;
                    uVar4 = uVar5 + uVar4;
                    uVar6 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Packrat number:     %d\n\n",
                                      *(undefined4 *)(lVar11 + 0xc));
                    uVar5 = uVar6;
                    if (-1 < (int)uVar6) {
                      uVar4 = uVar6 + uVar4;
                      uVar5 = uVar4;
                      if (*(char *)(lVar11 + 0x81) == '\x01') {
                        lVar10 = lVar10 + (ulong)uVar6;
                        uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"Config ID:          ");
                        if (-1 < (int)uVar5) {
                          lVar10 = lVar10 + (ulong)uVar5;
                          lVar8 = 0;
                          uVar4 = uVar5 + uVar4;
                          do {
                            uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,"0x%2x ",
                                              *(undefined1 *)(lVar11 + 0x24 + lVar8));
                            if ((int)uVar5 < 0) goto LAB_0011a944;
                            lVar8 = lVar8 + 1;
                            lVar10 = lVar10 + (ulong)uVar5;
                            uVar4 = uVar5 + uVar4;
                          } while (lVar8 != 0x10);
                          uVar6 = scnprintf(lVar10,0x1000 - (ulong)uVar4,&DAT_00139994);
                          uVar5 = uVar6;
                          if (-1 < (int)uVar6) {
                            uVar5 = scnprintf(lVar10 + (ulong)uVar6,0x1000 - (ulong)(uVar6 + uVar4),
                                              "Max X & Y:          %d, %d\n",
                                              *(undefined4 *)(lVar11 + 0x10),
                                              *(undefined4 *)(lVar11 + 0x14));
                            if (-1 < (int)uVar5) {
                              lVar10 = lVar10 + (ulong)uVar6 + (ulong)uVar5;
                              uVar4 = uVar5 + uVar6 + uVar4;
                              uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                                "Num of objects:     %d\n",
                                                *(undefined4 *)(lVar11 + 0x18));
                              if (-1 < (int)uVar5) {
                                lVar10 = lVar10 + (ulong)uVar5;
                                uVar4 = uVar5 + uVar4;
                                uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                                  "Num of cols & rows: %d, %d\n",
                                                  *(undefined4 *)(lVar11 + 0x20),
                                                  *(undefined4 *)(lVar11 + 0x1c));
                                if (-1 < (int)uVar5) {
                                  lVar10 = lVar10 + (ulong)uVar5;
                                  uVar4 = uVar5 + uVar4;
                                  uVar5 = scnprintf(lVar10,0x1000 - (ulong)uVar4,
                                                    "Max. Read Size:     %d bytes\n",
                                                    *(undefined4 *)(lVar11 + 0x3c));
                                  if (-1 < (int)uVar5) {
                                    uVar4 = uVar5 + uVar4;
                                    iVar7 = scnprintf(lVar10 + (ulong)uVar5,0x1000 - (ulong)uVar4,
                                                      "Max. Write Size:    %d bytes\n",
                                                      *(undefined4 *)(lVar11 + 0x38));
                                    uVar5 = 0;
                                    if (-1 < iVar7) {
                                      uVar5 = uVar4;
                                    }
                                    uVar5 = uVar5 + iVar7;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                  goto LAB_0011a944;
                }
                _printk(&DAT_0013a172,"syna_pal_mem_cpy",0x10,uVar4,0x10);
              }
              _printk(&DAT_0013c027,"syna_sysfs_info_show");
              uVar5 = 0xffffffea;
            }
          }
        }
      }
      goto LAB_0011a944;
    }
LAB_0011a6cc:
    pcVar9 = "Device in BARE connection\n";
  }
  iVar7 = scnprintf(param_3,0x1000 - (ulong)uVar4,pcVar9);
  uVar5 = iVar7 + uVar4;
LAB_0011a944:
  return (long)(int)uVar5;
}



/* 0011a9a0 syna_sysfs_debug_store */

undefined8
syna_sysfs_debug_store(long param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4)

{
  int iVar1;
  long lVar2;
  long lVar3;
  int local_2c;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  local_2c = 0;
  lVar3 = *(long *)(*(long *)(param_1 + 0x18) + 0x98);
  iVar1 = kstrtouint(param_3,10,&local_2c);
  if (iVar1 == 0) {
    if (local_2c == 0) {
      if (*(long *)(lVar3 + 0x3a0) != 0) {
        sysfs_remove_group(*(long *)(lVar3 + 0x3a0),attr_debug_group);
        kobject_put(*(undefined8 *)(lVar3 + 0x3a0));
        *(undefined8 *)(lVar3 + 0x3a0) = 0;
      }
      goto LAB_0011a9ec;
    }
    if ((local_2c == 1) && (*(long *)(lVar3 + 0x3a0) == 0)) {
      lVar2 = kobject_create_and_add("utility",*(undefined8 *)(lVar3 + 0x398));
      *(long *)(lVar3 + 0x3a0) = lVar2;
      if (lVar2 == 0) {
        _printk(&DAT_00133a34,"syna_sysfs_debug_store");
        param_4 = 0xffffffffffffffec;
      }
      else {
        iVar1 = sysfs_create_group(lVar2,attr_debug_group);
        if (iVar1 < 0) {
          _printk(&DAT_00134122,"syna_sysfs_debug_store");
          kobject_put(*(undefined8 *)(lVar3 + 0x3a0));
          param_4 = 0xffffffffffffffec;
        }
      }
      goto LAB_0011a9ec;
    }
    _printk(&DAT_00132e8c,"syna_sysfs_debug_store");
  }
  param_4 = 0xffffffffffffffea;
LAB_0011a9ec:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0011aadc syna_sysfs_get_delta_show */

long syna_sysfs_get_delta_show(long param_1,undefined8 param_2,undefined8 param_3)

{
  ulong uVar1;
  ulong uVar2;
  code *pcVar3;
  int iVar4;
  undefined *puVar5;
  size_t sVar6;
  size_t __n;
  undefined1 *puVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  long lVar11;
  uint uVar12;
  long lVar13;
  long *plVar14;
  ulong uVar15;
  short *psVar16;
  ulong __maxlen;
  uint uVar17;
  char *__string;
  undefined4 local_b8;
  undefined2 local_b4;
  short *local_b0;
  undefined8 local_a8;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar11 = sp_el0;
  local_68 = *(long *)(lVar11 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  plVar14 = *(long **)(*(long *)(param_1 + 0x18) + 0x98);
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar11 = *plVar14;
  iVar4 = syna_tcm_enable_report(lVar11,0x12,1,10);
  if (iVar4 < 0) {
    iVar4 = scnprintf(param_3,0x1000,"Fail to enable report %x\n",0x12);
    goto LAB_0011ae98;
  }
  if (lVar11 == 0) {
    puVar7 = &DAT_00133fd6;
LAB_0011af34:
    _printk(puVar7,"syna_tcm_enable_irq");
  }
  else {
    lVar13 = *(long *)(lVar11 + 0x48);
    if (lVar13 == 0) {
      puVar7 = &DAT_001389db;
      goto LAB_0011af34;
    }
    if (*(long *)(lVar13 + 0x38) != 0) {
      mutex_lock(lVar11 + 0x50);
      if (*(int *)(*(code **)(lVar13 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x11ab88);
        (*pcVar3)();
      }
      (**(code **)(lVar13 + 0x38))(lVar13,0);
      mutex_unlock(lVar11 + 0x50);
    }
  }
  local_70 = local_70 & 0xffffffffffffff00;
  local_b0 = (short *)0x0;
  local_a8 = 0;
  __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  uVar8 = 0;
  uVar17 = 0;
  do {
    iVar4 = syna_tcm_wait_for_report(lVar11,0x12,&local_b0,100,1000);
    if ((iVar4 < 0) || (local_a8._4_4_ == 0)) {
      uVar17 = uVar17 + 1;
    }
    else {
      uVar8 = uVar8 + 1;
      _printk(&DAT_0013e1e0,"syna_sysfs_get_delta_show",uVar8);
      if (*(int *)(lVar11 + 0x1c) != 0) {
        uVar9 = 0;
        psVar16 = local_b0;
        do {
          iVar4 = *(int *)(lVar11 + 0x20);
          lVar13 = syna_request_managed_device();
          if (lVar13 == 0) {
            puVar5 = &DAT_0013ccb3;
LAB_0011ac6c:
            _printk(puVar5,"syna_pal_mem_alloc");
            uVar15 = 0;
            __string = (char *)0x0;
            iVar4 = *(int *)(lVar11 + 0x20);
          }
          else {
            uVar10 = iVar4 * 6;
            uVar15 = (ulong)uVar10;
            if ((int)uVar10 < 1) {
              puVar5 = &DAT_00138e98;
              goto LAB_0011ac6c;
            }
            __string = (char *)devm_kmalloc(lVar13,uVar15,0xdc0);
            iVar4 = *(int *)(lVar11 + 0x20);
          }
          if (iVar4 != 0) {
            uVar10 = 0;
            do {
              local_b4 = 0;
              local_b8 = 0;
              snprintf((char *)&local_b8,6,"%4d ",(long)*psVar16);
              uVar12 = *(uint *)(lVar11 + 0x20);
              __maxlen = (ulong)(uVar12 * 6);
              sVar6 = strnlen(__string,__maxlen);
              if (sVar6 == 0xffffffffffffffff) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(2,0xffffffffffffffff,0);
              }
              __n = strnlen((char *)&local_b8,6);
              if (6 < __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(2,6,__n + 1);
              }
              if (__n == 6) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(4,6,7);
              }
              if (sVar6 < __maxlen) {
                uVar1 = __n + sVar6;
                uVar2 = uVar1;
                if (__maxlen <= uVar1) {
                  uVar2 = __maxlen - 1;
                }
                if (uVar2 == 0xffffffffffffffff) {
                    /* WARNING: Subroutine does not return */
                  __fortify_panic(9,0xffffffffffffffff,0);
                }
                if (__maxlen <= uVar1) {
                  __n = ~sVar6 + __maxlen;
                }
                memcpy(__string + sVar6,&local_b8,__n);
                if (uVar15 <= uVar2) {
                    /* WARNING: Does not return */
                  pcVar3 = (code *)SoftwareBreakpoint(1,0x11afa0);
                  (*pcVar3)();
                }
                __string[uVar2] = '\0';
                uVar12 = *(uint *)(lVar11 + 0x20);
              }
              uVar10 = uVar10 + 1;
              psVar16 = psVar16 + 1;
            } while (uVar10 < uVar12);
          }
          _printk(&DAT_00137234,"syna_sysfs_get_delta_show",__string);
          lVar13 = syna_request_managed_device();
          if (lVar13 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          else if (__string != (char *)0x0) {
            devm_kfree(lVar13,__string);
          }
          uVar9 = uVar9 + 1;
        } while (uVar9 < *(uint *)(lVar11 + 0x1c));
      }
    }
  } while ((uVar8 < 2) && (uVar17 < 5));
  syna_tcm_enable_report(*plVar14,0x12,0,10);
  if (lVar11 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_enable_irq");
  }
  else {
    lVar13 = *(long *)(lVar11 + 0x48);
    if (lVar13 == 0) {
      _printk(&DAT_001389db,"syna_tcm_enable_irq");
    }
    else if (*(long *)(lVar13 + 0x38) != 0) {
      mutex_lock(lVar11 + 0x50);
      if (*(int *)(*(code **)(lVar13 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x11ae34);
        (*pcVar3)();
      }
      (**(code **)(lVar13 + 0x38))(lVar13,1);
      mutex_unlock(lVar11 + 0x50);
    }
  }
  if ((char)local_70 != '\0') {
    _printk(&DAT_00135294,"syna_tcm_buf_release");
  }
  psVar16 = local_b0;
  lVar11 = syna_request_managed_device();
  if (lVar11 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else if (psVar16 != (short *)0x0) {
    devm_kfree(lVar11,psVar16);
  }
  local_a8 = 0;
  local_70 = local_70 & 0xffffffffffffff00;
  iVar4 = scnprintf(param_3,0x1000,"Done\n");
LAB_0011ae98:
  lVar11 = sp_el0;
  if (*(long *)(lVar11 + 0x710) == local_68) {
    return (long)iVar4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0011afa8 syna_sysfs_reset_store */

long syna_sysfs_reset_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long *plVar3;
  long lVar4;
  undefined1 local_40 [4];
  int local_3c;
  long local_38;
  
  lVar4 = sp_el0;
  local_38 = *(long *)(lVar4 + 0x710);
  local_3c = 0;
  local_40[0] = 0;
  plVar3 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  lVar4 = plVar3[0x4e];
  iVar1 = kstrtouint(param_3,10,&local_3c);
  if (iVar1 != 0) {
    param_4 = -0x16;
    goto LAB_0011b088;
  }
  if ((*(byte *)((long)plVar3 + 0x582) & 1) == 0) {
    _printk(&DAT_001366bd,"syna_sysfs_reset_store");
    goto LAB_0011b088;
  }
  if (*(int *)((long)plVar3 + 0x57c) == 3 || local_3c == 2) {
    pcVar2 = *(code **)(plVar3[0x4e] + 0x188);
    if (pcVar2 == (code *)0x0) {
      _printk(&DAT_0013b16f,"syna_sysfs_reset_store");
      iVar1 = 0;
    }
    else {
      if (*(int *)(pcVar2 + -4) != 0x2b3cba1b) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11b048);
        (*pcVar2)();
      }
      (*pcVar2)();
      if ((*(byte *)(lVar4 + 0xbc) & 1) == 0) {
        syna_tcm_get_event_data(*plVar3,local_40,0);
      }
LAB_0011b080:
      iVar1 = (int)param_4;
    }
  }
  else if (local_3c == 1) {
    iVar1 = syna_tcm_reset(*plVar3,*(undefined4 *)(*plVar3 + 0x20c));
    if (-1 < iVar1) goto LAB_0011b080;
    _printk(&DAT_0013a66c,"syna_sysfs_reset_store");
  }
  else {
    _printk(&DAT_00134152,"syna_sysfs_reset_store");
    iVar1 = -0x16;
  }
  param_4 = (long)iVar1;
LAB_0011b088:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0011b12c syna_sysfs_irq_en_store */

long syna_sysfs_irq_en_store(long param_1,undefined8 param_2,undefined8 param_3,long param_4)

{
  long lVar1;
  int iVar2;
  undefined *puVar3;
  code *pcVar4;
  long lVar5;
  long lVar6;
  int local_3c;
  long local_38;
  
  lVar5 = sp_el0;
  local_38 = *(long *)(lVar5 + 0x710);
  local_3c = 0;
  lVar5 = *(long *)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  lVar6 = *(long *)(lVar5 + 0x270);
  iVar2 = kstrtouint(param_3,10,&local_3c);
  if (iVar2 != 0) {
    param_4 = -0x16;
    goto LAB_0011b224;
  }
  lVar1 = lVar6 + 8;
  if ((lVar1 == 0) || (pcVar4 = *(code **)(lVar6 + 0x40), pcVar4 == (code *)0x0)) {
    param_4 = 0;
    goto LAB_0011b224;
  }
  if ((*(byte *)(lVar5 + 0x582) & 1) == 0) {
    _printk(&DAT_001366bd,"syna_sysfs_irq_en_store");
    goto LAB_0011b224;
  }
  if (*(int *)(lVar5 + 0x57c) == 3) {
    _printk(&DAT_00138eb9,"syna_sysfs_irq_en_store");
LAB_0011b21c:
    iVar2 = (int)param_4;
  }
  else {
    if (local_3c == 1) {
      if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x11b214);
        (*pcVar4)();
      }
      iVar2 = (*pcVar4)(lVar1,1);
      if (-1 < iVar2) goto LAB_0011b21c;
      puVar3 = &DAT_00134666;
    }
    else {
      if (local_3c != 0) {
        _printk(&DAT_00132e8c,"syna_sysfs_irq_en_store");
        iVar2 = -0x16;
        goto LAB_0011b220;
      }
      if (*(int *)(pcVar4 + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x11b1d8);
        (*pcVar4)();
      }
      iVar2 = (*pcVar4)(lVar1,0);
      if (-1 < iVar2) goto LAB_0011b21c;
      puVar3 = &DAT_0013397d;
    }
    _printk(puVar3,"syna_sysfs_irq_en_store");
  }
LAB_0011b220:
  param_4 = (long)iVar2;
LAB_0011b224:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_38) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0011b2c4 syna_sysfs_pwr_store */

long syna_sysfs_pwr_store(long param_1,undefined8 param_2,char *param_3,long param_4)

{
  int iVar1;
  code *pcVar2;
  long lVar3;
  long lVar4;
  
  lVar3 = *(long *)(*(long *)(param_1 + 0x18) + 0x18);
  lVar4 = *(long *)(lVar3 + 0x98);
  if ((*(byte *)(lVar4 + 0x582) & 1) == 0) {
    _printk(&DAT_001366bd,"syna_sysfs_pwr_store");
  }
  else {
    iVar1 = strncmp(param_3,"resume",6);
    if (iVar1 == 0) {
      pcVar2 = *(code **)(lVar4 + 0x6c0);
    }
    else {
      iVar1 = strncmp(param_3,"suspend",7);
      if (iVar1 != 0) {
        _printk(&DAT_0013331f,"syna_sysfs_pwr_store",param_3);
        return -0x16;
      }
      pcVar2 = *(code **)(lVar4 + 0x6c8);
    }
    if (pcVar2 != (code *)0x0) {
      if (*(int *)(pcVar2 + -4) != 0x2a703c0b) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11b348);
        (*pcVar2)();
      }
      (*pcVar2)(lVar3);
    }
    param_4 = (long)(int)param_4;
  }
  return param_4;
}



/* 0011b3b0 syna_sysfs_fw_update_store */

ulong syna_sysfs_fw_update_store(long param_1,undefined8 param_2,undefined8 param_3,ulong param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  ulong uVar4;
  long *plVar5;
  undefined4 local_2c;
  long local_28;
  
  lVar1 = sp_el0;
  local_28 = *(long *)(lVar1 + 0x710);
  local_2c = 0;
  plVar5 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)plVar5 + 0x582) & 1) == 0) {
    _printk(&DAT_001366bd,"syna_sysfs_fw_update_store");
  }
  else {
    iVar3 = kstrtouint(param_3,10,&local_2c);
    if (iVar3 == 0) {
      uVar4 = syna_dev_do_reflash(plVar5,1);
      if ((int)uVar4 < 0) {
        param_4 = uVar4 & 0xffffffff;
        _printk(&DAT_00132c76,"syna_sysfs_fw_update_store");
      }
      else if (*(char *)(*plVar5 + 9) == '\x01') {
        if (*(int *)((code *)plVar5[0xd7] + -4) != -0x51dfb8e4) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11b44c);
          (*pcVar2)();
        }
        (*(code *)plVar5[0xd7])(plVar5);
      }
      param_4 = (ulong)(int)param_4;
    }
    else {
      param_4 = 0xffffffffffffffea;
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_28) {
    return param_4;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0011b4c0 syna_testing_pt0a_zte */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt0a_zte(long *param_1)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  undefined4 *puVar5;
  ulong uVar6;
  long lVar7;
  undefined *puVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  local_b8 = 0;
  local_c8 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar4 = __kmalloc_cache_noprof(_platform_driver_unregister,0xdc0,0x1000);
  if (lVar4 == 0) {
    _printk(&DAT_0013ceb5,"syna_testing_pt0a_zte");
    uVar6 = 0xfffffff4;
  }
  else if ((*(byte *)((long)param_1 + 0x582) & 1) == 0) {
    uVar6 = scnprintf(lVar4,0x1000,"Device is NOT connected\n");
    uVar6 = uVar6 & 0xffffffff;
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0A00();
    if (puVar5 == (undefined4 *)0x0) {
      uVar6 = scnprintf(lVar4,0x1000,"Invalid testing item id:%d\n",0xa00);
      uVar6 = uVar6 & 0xffffffff;
    }
    else {
      local_b0 = 0;
      local_a8 = 0;
      puVar5[9] = *(undefined4 *)(*param_1 + 0x20);
      puVar5[8] = *(undefined4 *)(*param_1 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_c0 = &pt0a_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt0a_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar5 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar5 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar5 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11b5d8);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(puVar5 + 6))(*param_1,puVar5,0);
      if (iVar3 < 0) {
        _printk(&DAT_0013e202,"syna_testing_pt0a_zte",*(undefined8 *)(puVar5 + 2));
        puVar8 = &DAT_00139699;
      }
      else {
        puVar8 = &DAT_0013a780;
        if (*(char *)(puVar5 + 4) == '\0') {
          puVar8 = &DAT_00139699;
        }
      }
      uVar6 = scnprintf(lVar4,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),*puVar5
                        ,puVar8);
      lVar1 = local_b0;
      uVar6 = uVar6 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar5[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar5[9] != 0) {
            uVar10 = 0;
            do {
              iVar3 = scnprintf(lVar4 + uVar6,0x1000 - uVar6,&DAT_0013c06f,
                                (long)*(short *)(lVar1 + (ulong)(uVar10 + uVar9 * *(int *)(*param_1 
                                                  + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar6 = (ulong)(uint)(iVar3 + (int)uVar6);
            } while (uVar10 < (uint)puVar5[9]);
          }
          iVar3 = scnprintf(lVar4 + uVar6,0x1000 - uVar6,&DAT_00139994);
          uVar9 = uVar9 + 1;
          uVar6 = (ulong)(uint)(iVar3 + (int)uVar6);
        } while (uVar9 < (uint)puVar5[8]);
      }
      tpd_copy_to_tp_firmware_data(lVar4);
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_b0;
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar7,lVar1);
      }
      local_a8 = 0;
      local_70 = local_70 & 0xffffffffffffff00;
      kfree(lVar4);
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar6;
}



/* 0011b818 syna_testing_pt05_zte */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt05_zte(long *param_1)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  long lVar4;
  undefined4 *puVar5;
  ulong uVar6;
  long lVar7;
  undefined *puVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  local_b8 = 0;
  local_c8 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = 0;
  lVar4 = __kmalloc_cache_noprof(_platform_driver_unregister,0xdc0,0x1000);
  if (lVar4 == 0) {
    _printk(&DAT_0013ceb5,"syna_testing_pt05_zte");
    uVar6 = 0xfffffff4;
  }
  else if ((*(byte *)((long)param_1 + 0x582) & 1) == 0) {
    uVar6 = scnprintf(lVar4,0x1000,"Device is NOT connected\n");
    uVar6 = uVar6 & 0xffffffff;
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0500();
    if (puVar5 == (undefined4 *)0x0) {
      uVar6 = scnprintf(lVar4,0x1000,"Invalid testing item id:%d\n",0x500);
      uVar6 = uVar6 & 0xffffffff;
    }
    else {
      local_b0 = 0;
      local_a8 = 0;
      puVar5[9] = *(undefined4 *)(*param_1 + 0x20);
      puVar5[8] = *(undefined4 *)(*param_1 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_c0 = pt05_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt05_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar5 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar5 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar5 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11b930);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(puVar5 + 6))(*param_1,puVar5,0);
      if (iVar3 < 0) {
        _printk(&DAT_0013e202,"syna_testing_pt05_zte",*(undefined8 *)(puVar5 + 2));
        puVar8 = &DAT_00139699;
      }
      else {
        puVar8 = &DAT_0013a780;
        if (*(char *)(puVar5 + 4) == '\0') {
          puVar8 = &DAT_00139699;
        }
      }
      uVar6 = scnprintf(lVar4,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),*puVar5
                        ,puVar8);
      lVar1 = local_b0;
      uVar6 = uVar6 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar5[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar5[9] != 0) {
            uVar10 = 0;
            do {
              iVar3 = scnprintf(lVar4 + uVar6,0x1000 - uVar6,&DAT_0013c06f,
                                *(undefined2 *)
                                 (lVar1 + (ulong)(uVar10 + uVar9 * *(int *)(*param_1 + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar6 = (ulong)(uint)(iVar3 + (int)uVar6);
            } while (uVar10 < (uint)puVar5[9]);
          }
          iVar3 = scnprintf(lVar4 + uVar6,0x1000 - uVar6,&DAT_00139994);
          uVar9 = uVar9 + 1;
          uVar6 = (ulong)(uint)(iVar3 + (int)uVar6);
        } while (uVar9 < (uint)puVar5[8]);
      }
      tpd_copy_to_tp_firmware_data(lVar4);
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_b0;
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar7,lVar1);
      }
      local_a8 = 0;
      local_70 = local_70 & 0xffffffffffffff00;
      kfree(lVar4);
    }
  }
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar6;
}



/* 0011bb70 syna_testing_pt01_zte */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

ulong syna_testing_pt01_zte(undefined8 *param_1)

{
  uint uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  long lVar5;
  undefined4 *puVar6;
  ulong uVar7;
  long lVar8;
  undefined *puVar9;
  uint uVar10;
  undefined1 *local_a0;
  undefined8 local_98;
  long local_90;
  undefined8 local_88;
  uint uStack_84;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  ulong local_50;
  long local_48;
  
  lVar5 = sp_el0;
  local_48 = *(long *)(lVar5 + 0x710);
  local_98 = 0;
  local_58 = 0;
  local_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_80 = 0;
  lVar5 = __kmalloc_cache_noprof(_platform_driver_unregister,0xdc0,0x1000);
  if (lVar5 == 0) {
    _printk(&DAT_0013ceb5,"syna_testing_pt01_zte");
    uVar7 = 0xfffffff4;
  }
  else {
    puVar6 = (undefined4 *)syna_tcm_get_testing_0100();
    if (puVar6 == (undefined4 *)0x0) {
      uVar7 = scnprintf(lVar5,0x1000,"Invalid testing item id:%d\n",0x100);
      uVar7 = uVar7 & 0xffffffff;
    }
    else {
      local_50 = local_50 & 0xffffffffffffff00;
      local_90 = 0;
      local_88 = 0;
      __mutex_init(&local_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(long **)(puVar6 + 0x36) = &local_90;
      *(undefined1 ***)(puVar6 + 0xe) = &local_a0;
      local_a0 = pt01_limits;
      local_98 = CONCAT44(local_98._4_4_,0x10);
      if (*(int *)(*(code **)(puVar6 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x11bc48);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar6 + 6))(*param_1,puVar6,0);
      if (iVar4 < 0) {
        _printk(&DAT_0013e202,"syna_testing_pt01_zte",*(undefined8 *)(puVar6 + 2));
        puVar9 = &DAT_00139699;
      }
      else {
        puVar9 = &DAT_0013a780;
        if (*(char *)(puVar6 + 4) == '\0') {
          puVar9 = &DAT_00139699;
        }
      }
      uVar7 = scnprintf(lVar5,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar6 + 2),*puVar6
                        ,puVar9);
      uVar7 = uVar7 & 0xffffffff;
      if (uStack_84 != 0) {
        uVar10 = 0;
        do {
          iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,"x%02X ",
                            *(undefined1 *)(local_90 + (int)uVar10));
          uVar10 = uVar10 + 1;
          uVar1 = iVar4 + (int)uVar7;
          uVar7 = (ulong)uVar1;
        } while (uVar10 < uStack_84);
        iVar4 = scnprintf(lVar5 + uVar7,0x1000 - uVar7,&DAT_00139994);
        uVar7 = (ulong)(iVar4 + uVar1);
      }
      tpd_copy_to_tp_firmware_data(lVar5);
      if ((char)local_50 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar2 = local_90;
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar2 != 0) {
        devm_kfree(lVar8,lVar2);
      }
      local_88 = 0;
      local_50 = local_50 & 0xffffffffffffff00;
      kfree(lVar5);
    }
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar7;
}



/* 0011be28 syna_testing_create_dir */

int syna_testing_create_dir(long param_1)

{
  int iVar1;
  long lVar2;
  
  lVar2 = kobject_create_and_add("testing",*(undefined8 *)(param_1 + 0x398));
  *(long *)(param_1 + 0x3a8) = lVar2;
  if (lVar2 == 0) {
    _printk(&DAT_0013969e,"syna_testing_create_dir");
    iVar1 = -0x16;
  }
  else {
    iVar1 = sysfs_create_group(lVar2,&attr_testing_group);
    if (iVar1 < 0) {
      _printk(&DAT_001353b3,"syna_testing_create_dir");
      kobject_put(*(undefined8 *)(param_1 + 0x3a8));
    }
    else {
      iVar1 = 0;
    }
  }
  return iVar1;
}



/* 0011bec4 syna_testing_remove_dir */

void syna_testing_remove_dir(long param_1)

{
  if (*(long *)(param_1 + 0x3a8) != 0) {
    sysfs_remove_group(*(long *)(param_1 + 0x3a8),&attr_testing_group);
    kobject_put(*(undefined8 *)(param_1 + 0x3a8));
  }
  return;
}



/* 0011bf08 syna_testing_check_dev_id_show */

void syna_testing_check_dev_id_show(long param_1,undefined8 param_2,long param_3)

{
  code *pcVar1;
  int iVar2;
  uint uVar3;
  undefined4 *puVar4;
  long lVar5;
  long lVar6;
  undefined *puVar7;
  ulong uVar8;
  undefined8 *puVar9;
  undefined *local_f8;
  undefined8 local_f0;
  undefined4 *local_e8;
  undefined8 local_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  ulong local_a8;
  long local_a0;
  undefined8 local_98;
  int iStack_94;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  ulong local_60;
  long local_58;
  
  lVar5 = sp_el0;
  local_58 = *(long *)(lVar5 + 0x710);
  local_68 = 0;
  local_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  local_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_f0 = 0;
  puVar9 = *(undefined8 **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)puVar9 + 0x582) & 1) == 0) {
    iVar2 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar4 = (undefined4 *)syna_tcm_get_testing_0001();
    if (puVar4 != (undefined4 *)0x0) {
      local_a8 = local_a8 & 0xffffffffffffff00;
      local_e8 = (undefined4 *)0x0;
      local_e0 = 0;
      __mutex_init(&local_d8,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 ***)(puVar4 + 0x36) = &local_e8;
      local_60 = local_60 & 0xffffffffffffff00;
      local_a0 = 0;
      local_98 = 0;
      __mutex_init(&uStack_90,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(long **)(puVar4 + 0x38) = &local_a0;
      local_f8 = &DAT_0013ced9;
      local_f0 = CONCAT44(local_f0._4_4_,4);
      *(undefined8 *)(puVar4 + 0xe) = 0;
      *(undefined ***)(puVar4 + 0x10) = &local_f8;
      if (*(int *)(*(code **)(puVar4 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x11c010);
        (*pcVar1)();
      }
      iVar2 = (**(code **)(puVar4 + 6))(*puVar9,puVar4,0);
      if (iVar2 < 0) {
        _printk(&DAT_0013e202,"syna_testing_check_dev_id_show",*(undefined8 *)(puVar4 + 2));
        puVar7 = &DAT_00139699;
      }
      else {
        puVar7 = &DAT_0013a780;
        if (*(char *)(puVar4 + 4) == '\0') {
          puVar7 = &DAT_00139699;
        }
      }
      uVar3 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar4 + 2),
                        *puVar4,puVar7);
      uVar8 = (ulong)uVar3;
      if (local_e0._4_4_ != 0) {
        iVar2 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"Build ID: %d\n",*local_e8);
        uVar8 = (ulong)(iVar2 + uVar3);
      }
      if (iStack_94 != 0) {
        iVar2 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"Device ID: %s\n",local_a0);
        uVar8 = (ulong)(uint)(iVar2 + (int)uVar8);
      }
      if ((char)local_a8 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      puVar4 = local_e8;
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (puVar4 != (undefined4 *)0x0) {
        devm_kfree(lVar5,puVar4);
      }
      local_e0 = 0;
      local_a8 = local_a8 & 0xffffffffffffff00;
      if ((char)local_60 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar5 = local_a0;
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar5 != 0) {
        devm_kfree(lVar6,lVar5);
      }
      goto LAB_0011c134;
    }
    iVar2 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",1);
  }
  uVar8 = (ulong)iVar2;
LAB_0011c134:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}



/* 0011c1f4 syna_testing_check_config_id_show */

void syna_testing_check_config_id_show(long param_1,undefined8 param_2,long param_3)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  uint uVar4;
  undefined4 *puVar5;
  long lVar6;
  undefined *puVar7;
  ulong uVar8;
  undefined8 *puVar9;
  char *local_90;
  undefined8 local_88;
  long local_80;
  undefined8 uStack_78;
  int iStack_74;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  ulong local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_48 = 0;
  local_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_88 = 0;
  local_70 = 0;
  puVar9 = *(undefined8 **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)puVar9 + 0x582) & 1) == 0) {
    iVar3 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0002();
    if (puVar5 != (undefined4 *)0x0) {
      local_40 = local_40 & 0xffffffffffffff00;
      local_80 = 0;
      uStack_78 = 0;
      __mutex_init(&local_70,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_90 = "Default";
      *(long **)(puVar5 + 0x36) = &local_80;
      local_88 = CONCAT44(local_88._4_4_,0x10);
      *(char ***)(puVar5 + 0xe) = &local_90;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11c2bc);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(puVar5 + 6))(*puVar9,puVar5,0);
      if (iVar3 < 0) {
        _printk(&DAT_0013e202,"syna_testing_check_config_id_show",*(undefined8 *)(puVar5 + 2));
        puVar7 = &DAT_00139699;
      }
      else {
        puVar7 = &DAT_0013a780;
        if (*(char *)(puVar5 + 4) == '\0') {
          puVar7 = &DAT_00139699;
        }
      }
      uVar4 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),
                        *puVar5,puVar7);
      uVar8 = (ulong)uVar4;
      if (iStack_74 != 0) {
        iVar3 = scnprintf(param_3 + uVar8,0x1000 - uVar8,"\nConfig ID: %s\n",local_80);
        uVar8 = (ulong)(iVar3 + uVar4);
      }
      if ((char)local_40 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_80;
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar6,lVar1);
      }
      goto LAB_0011c388;
    }
    iVar3 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",2);
  }
  uVar8 = (ulong)iVar3;
LAB_0011c388:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar8);
  }
  return;
}



/* 0011c410 syna_testing_pt01_show */

void syna_testing_pt01_show(long param_1,undefined8 param_2,long param_3)

{
  uint uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined4 *puVar5;
  ulong uVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 *puVar9;
  uint uVar10;
  undefined1 *local_a0;
  undefined8 local_98;
  long local_90;
  undefined8 uStack_88;
  uint uStack_84;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  ulong local_50;
  long local_48;
  
  lVar2 = sp_el0;
  local_48 = *(long *)(lVar2 + 0x710);
  local_58 = 0;
  local_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_98 = 0;
  local_80 = 0;
  puVar9 = *(undefined8 **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  if ((*(byte *)((long)puVar9 + 0x582) & 1) == 0) {
    iVar4 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar5 = (undefined4 *)syna_tcm_get_testing_0100();
    if (puVar5 != (undefined4 *)0x0) {
      local_50 = local_50 & 0xffffffffffffff00;
      local_90 = 0;
      uStack_88 = 0;
      __mutex_init(&local_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_a0 = pt01_limits;
      *(long **)(puVar5 + 0x36) = &local_90;
      local_98 = CONCAT44(local_98._4_4_,0x10);
      *(undefined1 ***)(puVar5 + 0xe) = &local_a0;
      if (*(int *)(*(code **)(puVar5 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x11c4dc);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(puVar5 + 6))(*puVar9,puVar5,0);
      if (iVar4 < 0) {
        _printk(&DAT_0013e202,"syna_testing_pt01_show",*(undefined8 *)(puVar5 + 2));
        puVar8 = &DAT_00139699;
      }
      else {
        puVar8 = &DAT_0013a780;
        if (*(char *)(puVar5 + 4) == '\0') {
          puVar8 = &DAT_00139699;
        }
      }
      uVar6 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar5 + 2),
                        *puVar5,puVar8);
      uVar6 = uVar6 & 0xffffffff;
      if (uStack_84 != 0) {
        uVar10 = 0;
        do {
          iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,"x%02X ",
                            *(undefined1 *)(local_90 + (int)uVar10));
          uVar10 = uVar10 + 1;
          uVar1 = iVar4 + (int)uVar6;
          uVar6 = (ulong)uVar1;
        } while (uVar10 < uStack_84);
        iVar4 = scnprintf(param_3 + uVar6,0x1000 - uVar6,&DAT_00139994);
        uVar6 = (ulong)(iVar4 + uVar1);
      }
      if ((char)local_50 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar2 = local_90;
      lVar7 = syna_request_managed_device();
      if (lVar7 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar2 != 0) {
        devm_kfree(lVar7,lVar2);
      }
      goto LAB_0011c5e0;
    }
    iVar4 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0x100);
  }
  uVar6 = (ulong)iVar4;
LAB_0011c5e0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar6);
  }
  return;
}



/* 0011c66c syna_testing_pt05_show */

void syna_testing_pt05_show(long param_1,undefined8 param_2,long param_3)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined4 *puVar4;
  ulong uVar5;
  long lVar6;
  undefined *puVar7;
  long *plVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 uStack_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_b8 = 0;
  local_c8 = 0;
  plVar8 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  local_a0 = 0;
  if ((*(byte *)((long)plVar8 + 0x582) & 1) == 0) {
    iVar3 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar4 = (undefined4 *)syna_tcm_get_testing_0500();
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[9] = *(undefined4 *)(*plVar8 + 0x20);
      local_b0 = 0;
      uStack_a8 = 0;
      puVar4[8] = *(undefined4 *)(*plVar8 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_c0 = pt05_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt05_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar4 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar4 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar4 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar4 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11c770);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(puVar4 + 6))(*plVar8,puVar4,0);
      if (iVar3 < 0) {
        _printk(&DAT_0013e202,"syna_testing_pt05_show",*(undefined8 *)(puVar4 + 2));
        puVar7 = &DAT_00139699;
      }
      else {
        puVar7 = &DAT_0013a780;
        if (*(char *)(puVar4 + 4) == '\0') {
          puVar7 = &DAT_00139699;
        }
      }
      uVar5 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar4 + 2),
                        *puVar4,puVar7);
      lVar1 = local_b0;
      uVar5 = uVar5 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar4[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar4[9] != 0) {
            uVar10 = 0;
            do {
              iVar3 = scnprintf(param_3 + uVar5,0x1000 - uVar5,&DAT_0013c06f,
                                *(undefined2 *)
                                 (lVar1 + (ulong)(uVar10 + uVar9 * *(int *)(*plVar8 + 0x20)) * 2));
              uVar10 = uVar10 + 1;
              uVar5 = (ulong)(uint)(iVar3 + (int)uVar5);
            } while (uVar10 < (uint)puVar4[9]);
          }
          iVar3 = scnprintf(param_3 + uVar5,0x1000 - uVar5,&DAT_00139994);
          uVar9 = uVar9 + 1;
          uVar5 = (ulong)(uint)(iVar3 + (int)uVar5);
        } while (uVar9 < (uint)puVar4[8]);
      }
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_b0;
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar6,lVar1);
      }
      goto LAB_0011c8b0;
    }
    iVar3 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0x500);
  }
  uVar5 = (ulong)iVar3;
LAB_0011c8b0:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  return;
}



/* 0011c944 syna_testing_pt0a_show */

void syna_testing_pt0a_show(long param_1,undefined8 param_2,long param_3)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined4 *puVar4;
  ulong uVar5;
  long lVar6;
  undefined *puVar7;
  long *plVar8;
  uint uVar9;
  uint uVar10;
  undefined1 *local_d0;
  undefined8 local_c8;
  undefined1 *local_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 uStack_a8;
  int iStack_a4;
  undefined8 local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_b8 = 0;
  local_c8 = 0;
  plVar8 = *(long **)(*(long *)(*(long *)(param_1 + 0x18) + 0x18) + 0x98);
  local_a0 = 0;
  if ((*(byte *)((long)plVar8 + 0x582) & 1) == 0) {
    iVar3 = scnprintf(param_3,0x1000,"Device is NOT connected\n");
  }
  else {
    puVar4 = (undefined4 *)syna_tcm_get_testing_0A00();
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[9] = *(undefined4 *)(*plVar8 + 0x20);
      local_b0 = 0;
      uStack_a8 = 0;
      puVar4[8] = *(undefined4 *)(*plVar8 + 0x1c);
      local_70 = local_70 & 0xffffffffffffff00;
      __mutex_init(&local_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_c0 = &pt0a_hi_limits;
      local_b8 = CONCAT44(local_b8._4_4_,0xc80);
      local_d0 = pt0a_lo_limits;
      local_c8 = CONCAT44(local_c8._4_4_,0xc80);
      *(long **)(puVar4 + 0x36) = &local_b0;
      *(undefined1 ***)(puVar4 + 0xe) = &local_c0;
      *(undefined1 ***)(puVar4 + 0x10) = &local_d0;
      if (*(int *)(*(code **)(puVar4 + 6) + -4) != -0x7e3fb56e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x11ca48);
        (*pcVar2)();
      }
      iVar3 = (**(code **)(puVar4 + 6))(*plVar8,puVar4,0);
      if (iVar3 < 0) {
        _printk(&DAT_0013e202,"syna_testing_pt0a_show",*(undefined8 *)(puVar4 + 2));
        puVar7 = &DAT_00139699;
      }
      else {
        puVar7 = &DAT_0013a780;
        if (*(char *)(puVar4 + 4) == '\0') {
          puVar7 = &DAT_00139699;
        }
      }
      uVar5 = scnprintf(param_3,0x1000,"\n%s (version.%d): %s\n\n",*(undefined8 *)(puVar4 + 2),
                        *puVar4,puVar7);
      lVar1 = local_b0;
      uVar5 = uVar5 & 0xffffffff;
      if ((iStack_a4 != 0) && (puVar4[8] != 0)) {
        uVar9 = 0;
        do {
          if (puVar4[9] != 0) {
            uVar10 = 0;
            do {
              iVar3 = scnprintf(param_3 + uVar5,0x1000 - uVar5,&DAT_0013c06f,
                                (long)*(short *)(lVar1 + (ulong)(uVar10 + uVar9 * *(int *)(*plVar8 +
                                                                                          0x20)) * 2
                                                ));
              uVar10 = uVar10 + 1;
              uVar5 = (ulong)(uint)(iVar3 + (int)uVar5);
            } while (uVar10 < (uint)puVar4[9]);
          }
          iVar3 = scnprintf(param_3 + uVar5,0x1000 - uVar5,&DAT_00139994);
          uVar9 = uVar9 + 1;
          uVar5 = (ulong)(uint)(iVar3 + (int)uVar5);
        } while (uVar9 < (uint)puVar4[8]);
      }
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_b0;
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar6,lVar1);
      }
      goto LAB_0011cb88;
    }
    iVar3 = scnprintf(param_3,0x1000,"Invalid testing item id:%d\n",0xa00);
  }
  uVar5 = (ulong)iVar3;
LAB_0011cb88:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  return;
}



/* 0011cc1c syna_tcm_get_testing_0A00 */

undefined1 * syna_tcm_get_testing_0A00(void)

{
  return &test_0A00;
}



/* 0011cc2c syna_tcm_testing_noise */

int syna_tcm_testing_noise(long param_1,long param_2,ulong param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  long lVar3;
  byte bVar4;
  byte bVar5;
  int iVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 *puVar9;
  long local_90;
  undefined8 local_88;
  undefined4 uStack_84;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 local_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  iVar6 = -0xa1;
  if ((param_1 != 0) && (param_2 != 0)) {
    local_58 = 0;
    local_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    local_78 = 0;
    uStack_70 = 0;
    local_88 = 0;
    uStack_80 = 0;
    local_90 = 0;
    __mutex_init(&uStack_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
    uVar1 = *(undefined4 *)(param_1 + 0x1c);
    uVar2 = *(undefined4 *)(param_1 + 0x20);
    iVar6 = syna_tcm_run_production_test(param_1,10,&local_90,0);
    if (iVar6 < 0) {
      _printk(&DAT_0013c073,"syna_tcm_testing_noise",10);
      *(undefined1 *)(param_2 + 0x10) = 0;
      iVar6 = -0xa3;
      puVar8 = &DAT_00134181;
    }
    else {
      if (*(long *)(param_2 + 0xd8) != 0) {
        syna_tcm_buf_copy(*(long *)(param_2 + 0xd8),&local_90);
      }
      if ((param_3 & 1) == 0) {
        puVar9 = *(undefined8 **)(param_2 + 0x38);
        if (puVar9 == (undefined8 *)0x0) {
          bVar4 = 0;
        }
        else {
          bVar4 = syna_tcm_testing_check_frame_data
                            (local_90,uStack_84,uVar1,uVar2,syna_tcm_testing_0A00_check_upper_bound,
                             *puVar9,*(undefined4 *)(puVar9 + 1));
        }
        puVar9 = *(undefined8 **)(param_2 + 0x40);
        if (puVar9 == (undefined8 *)0x0) {
          bVar5 = 0;
        }
        else {
          bVar5 = syna_tcm_testing_check_frame_data
                            (local_90,uStack_84,uVar1,uVar2,syna_tcm_testing_0A00_check_lower_bound,
                             *puVar9,*(undefined4 *)(puVar9 + 1));
        }
        bVar4 = bVar4 & bVar5 & 1;
        *(byte *)(param_2 + 0x10) = bVar4;
        puVar8 = &DAT_001396de;
        if (bVar4 == 0) {
          iVar6 = -0xa2;
          puVar8 = &DAT_00134181;
        }
      }
      else {
        *(undefined1 *)(param_2 + 0x10) = 1;
        puVar8 = &DAT_001396de;
      }
    }
    _printk(&DAT_00133a8b,"syna_tcm_testing_noise",puVar8);
    if ((char)local_50 != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = local_90;
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar7,lVar3);
    }
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return iVar6;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0011ce6c syna_tcm_buf_copy */

void syna_tcm_buf_copy(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  char cVar5;
  uint uVar6;
  ulong uVar7;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 2);
  uVar6 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar6) {
    uVar1 = uVar6 + 1;
    uVar7 = (ulong)uVar1;
    __s = (void *)*param_1;
    if (uVar1 <= uVar2) {
LAB_0011cf30:
      memset(__s,0,__n);
      *(undefined4 *)((long)param_1 + 0xc) = 0;
      __n = (ulong)*(uint *)(param_1 + 1);
      uVar6 = *(uint *)((long)param_2 + 0xc);
      goto LAB_0011cf48;
    }
    if (__s == (void *)0x0) {
LAB_0011cefc:
      lVar3 = syna_request_managed_device();
      if (lVar3 != 0) goto LAB_0011cf04;
LAB_0011d098:
      puVar4 = &DAT_0013ccb3;
LAB_0011d0a0:
      _printk(puVar4,"syna_pal_mem_alloc");
      *param_1 = 0;
    }
    else {
      lVar3 = syna_request_managed_device();
      if (lVar3 != 0) {
        devm_kfree(lVar3,__s);
        goto LAB_0011cefc;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) goto LAB_0011d098;
LAB_0011cf04:
      if (0x7ffffffe < uVar6) {
        puVar4 = &DAT_00138e98;
        goto LAB_0011d0a0;
      }
      __s = (void *)devm_kmalloc(lVar3,uVar7,0xdc0);
      *param_1 = (long)__s;
      if (__s != (void *)0x0) {
        *(uint *)(param_1 + 1) = uVar1;
        __n = uVar7;
        goto LAB_0011cf30;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar7);
    param_1[1] = 0;
    puVar4 = &DAT_00138466;
    uVar6 = *(int *)((long)param_2 + 0xc) + 1;
  }
  else {
LAB_0011cf48:
    if (((void *)*param_1 != (void *)0x0) && ((void *)*param_2 != (void *)0x0)) {
      if ((uVar6 <= (uint)__n) && (uVar6 <= *(uint *)(param_2 + 1))) {
        memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar6);
        *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
        goto LAB_0011cf7c;
      }
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar6);
      uVar6 = *(uint *)((long)param_2 + 0xc);
    }
    puVar4 = &DAT_001359ca;
  }
  _printk(puVar4,"syna_tcm_buf_copy",uVar6);
LAB_0011cf7c:
  if (*(char *)(param_2 + 8) == '\x01') {
    cVar5 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar5 = *(char *)(param_2 + 8) + -1;
  }
  *(char *)(param_2 + 8) = cVar5;
  mutex_unlock(param_2 + 2);
  if ((char)param_1[8] == '\x01') {
    cVar5 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar5 = (char)param_1[8] + -1;
  }
  *(char *)(param_1 + 8) = cVar5;
  mutex_unlock(param_1 + 2);
  return;
}



/* 0011d0ec syna_tcm_testing_check_frame_data */

uint syna_tcm_testing_check_frame_data
               (long param_1,ulong param_2,int param_3,uint param_4,code *param_5,long param_6,
               ulong param_7)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  ulong uVar7;
  uint uVar8;
  
  if (((param_5 == (code *)0x0) || (param_1 == 0)) || (param_6 == 0)) {
    _printk(&DAT_00134186,"syna_tcm_testing_check_frame_data");
    uVar8 = 0;
  }
  else if (param_2 < param_3 * param_4 * 2) {
    _printk(&DAT_0013a299,"syna_tcm_testing_check_frame_data",param_2 & 0xffffffff);
    uVar8 = 0;
  }
  else if (param_3 < 1) {
    uVar8 = 1;
  }
  else {
    iVar5 = 0;
    iVar6 = 0;
    uVar8 = 1;
    do {
      if (0 < (int)param_4) {
        uVar7 = 0;
        iVar1 = iVar5;
        do {
          lVar2 = 0;
          if (param_2 <= param_7) {
            lVar2 = (long)iVar1;
          }
          if (*(int *)(param_5 + -4) != -0x5ccd7a0e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8236,0x11d1d4);
            (*pcVar3)();
          }
          uVar4 = (*param_5)(param_1 + iVar1,param_6 + lVar2,uVar7 & 0xffffffff,iVar6);
          uVar7 = uVar7 + 1;
          uVar8 = uVar4 & uVar8;
          iVar1 = iVar1 + 2;
        } while (param_4 != uVar7);
      }
      iVar6 = iVar6 + 1;
      iVar5 = iVar5 + param_4 * 2;
    } while (iVar6 != param_3);
  }
  return uVar8;
}



/* 0011d25c syna_tcm_testing_0A00_check_upper_bound */

bool syna_tcm_testing_0A00_check_upper_bound
               (short *param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  
  sVar1 = *param_1;
  sVar2 = *param_2;
  if (sVar2 < sVar1) {
    _printk(&DAT_0013d4b3,"syna_tcm_testing_0A00_check_upper_bound",param_4,param_3,(int)sVar1,
            (int)sVar2);
  }
  return (int)sVar1 <= (int)sVar2;
}



/* 0011d2c4 syna_tcm_testing_0A00_check_lower_bound */

bool syna_tcm_testing_0A00_check_lower_bound
               (short *param_1,short *param_2,undefined4 param_3,undefined4 param_4)

{
  short sVar1;
  short sVar2;
  
  sVar1 = *param_1;
  sVar2 = *param_2;
  if (sVar1 < sVar2) {
    _printk(&DAT_00134d2a,"syna_tcm_testing_0A00_check_lower_bound",param_4,param_3,(int)sVar1,
            (int)sVar2);
  }
  return (int)sVar2 <= (int)sVar1;
}



/* 0011d32c syna_tcm_get_testing_0001 */

undefined1 * syna_tcm_get_testing_0001(void)

{
  return &test_0001;
}



/* 0011d33c syna_tcm_testing_build_id */

int syna_tcm_testing_build_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  byte bVar2;
  int iVar3;
  int iVar4;
  undefined *puVar5;
  undefined8 *puVar6;
  byte bVar7;
  int local_7c;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar1 = sp_el0;
  local_48 = *(long *)(lVar1 + 0x710);
  iVar3 = -0xa1;
  if ((param_1 == 0) || (param_2 == 0)) goto LAB_0011d370;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_7c = 0;
  iVar3 = syna_tcm_identify(param_1,&local_78,0);
  if (iVar3 < 0) {
    _printk(&DAT_00132ec9,"syna_tcm_testing_build_id");
    *(undefined1 *)(param_2 + 0x10) = 0;
    iVar3 = -0xa3;
    puVar5 = &DAT_00134181;
  }
  else {
    local_7c = local_68._2_4_;
    if ((*(long *)(param_2 + 0xd8) != 0) &&
       (iVar4 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xd8),4), -1 < iVar4)) {
      syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xd8),
                       *(undefined4 *)(*(undefined8 **)(param_2 + 0xd8) + 1),&local_7c,4,4);
      *(undefined4 *)(*(long *)(param_2 + 0xd8) + 0xc) = 4;
    }
    if ((*(long *)(param_2 + 0xe0) != 0) &&
       (iVar4 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xe0),0x10), -1 < iVar4)) {
      syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xe0),
                       *(undefined4 *)(*(undefined8 **)(param_2 + 0xe0) + 1),(ulong)&local_78 | 2,
                       0x10,0x10);
      *(undefined4 *)(*(long *)(param_2 + 0xe0) + 0xc) = 0x10;
    }
    if ((param_3 & 1) == 0) {
      puVar6 = *(undefined8 **)(param_2 + 0x38);
      if (((puVar6 == (undefined8 *)0x0) || (*(uint *)(puVar6 + 1) < 4)) ||
         (*(int *)*puVar6 == local_7c)) {
        bVar7 = 1;
        puVar6 = *(undefined8 **)(param_2 + 0x40);
        if (puVar6 != (undefined8 *)0x0) goto LAB_0011d4fc;
LAB_0011d504:
        bVar2 = 1;
      }
      else {
        _printk(&DAT_001353dd,"syna_tcm_testing_0001_check_build_id");
        bVar7 = 0;
        puVar6 = *(undefined8 **)(param_2 + 0x40);
        if (puVar6 == (undefined8 *)0x0) goto LAB_0011d504;
LAB_0011d4fc:
        if (*(int *)(puVar6 + 1) == 0) goto LAB_0011d504;
        bVar2 = syna_tcm_testing_0001_check_device_id((ulong)&local_78 | 2,*puVar6);
      }
      *(byte *)(param_2 + 0x10) = bVar7 & bVar2;
      puVar5 = &DAT_001396de;
      if ((bVar7 & bVar2) == 0) {
        iVar3 = -0xa2;
        puVar5 = &DAT_00134181;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar5 = &DAT_001396de;
    }
  }
  _printk(&DAT_00133a8b,"syna_tcm_testing_build_id",puVar5);
LAB_0011d370:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_48) {
    return iVar3;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0011d594 syna_tcm_buf_alloc */

undefined8 syna_tcm_buf_alloc(long *param_1,uint param_2)

{
  void *__s;
  long lVar1;
  undefined8 uVar2;
  ulong __n;
  
  __n = (ulong)*(uint *)(param_1 + 1);
  __s = (void *)*param_1;
  if (*(uint *)(param_1 + 1) < param_2) {
    __n = (ulong)param_2;
    if (__s == (void *)0x0) {
LAB_0011d5d8:
      lVar1 = syna_request_managed_device();
      if (lVar1 != 0) goto LAB_0011d5e0;
LAB_0011d640:
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
      *param_1 = 0;
    }
    else {
      lVar1 = syna_request_managed_device();
      if (lVar1 != 0) {
        devm_kfree(lVar1,__s);
        goto LAB_0011d5d8;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) goto LAB_0011d640;
LAB_0011d5e0:
      __s = (void *)devm_kmalloc(lVar1,__n,0xdc0);
      *param_1 = (long)__s;
      if (__s != (void *)0x0) {
        *(uint *)(param_1 + 1) = param_2;
        goto LAB_0011d5fc;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",__n);
    *(undefined4 *)(param_1 + 1) = 0;
    uVar2 = 0xffffff0d;
  }
  else {
LAB_0011d5fc:
    memset(__s,0,__n);
    uVar2 = 0;
  }
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return uVar2;
}



/* 0011d67c syna_pal_mem_cpy */

void syna_pal_mem_cpy(void *param_1,uint param_2,void *param_3,uint param_4,uint param_5)

{
  if ((param_1 != (void *)0x0) && (param_3 != (void *)0x0)) {
    if ((param_2 < param_5) || (param_4 < param_5)) {
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",param_4,param_2);
    }
    else {
      memcpy(param_1,param_3,(ulong)param_5);
    }
  }
  return;
}



/* 0011d6e4 syna_tcm_testing_0001_check_device_id */

undefined8 syna_tcm_testing_0001_check_device_id(long param_1,char *param_2,uint param_3)

{
  char cVar1;
  int iVar2;
  int iVar3;
  
  if ((param_1 != 0) && (param_2 != (char *)0x0)) {
    if (-1 < (int)(0x10 - param_3)) {
      cVar1 = *param_2;
      iVar3 = 0;
      do {
        if ((*(char *)(param_1 + iVar3) == cVar1) &&
           (iVar2 = strncmp((char *)(param_1 + iVar3),param_2,(ulong)param_3), iVar2 == 0)) {
          return 1;
        }
        iVar3 = iVar3 + 1;
      } while (iVar3 <= (int)(0x10 - param_3));
    }
    _printk(&DAT_0013db40,"syna_tcm_testing_0001_check_device_id",param_1,param_2);
  }
  return 0;
}



/* 0011d79c syna_tcm_get_testing_0002 */

undefined1 * syna_tcm_get_testing_0002(void)

{
  return &test_0002;
}



/* 0011d7ac syna_tcm_testing_config_id */

int syna_tcm_testing_config_id(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  bool bVar2;
  byte bVar3;
  int iVar4;
  int iVar5;
  undefined *puVar6;
  undefined8 *puVar7;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  iVar4 = -0xa1;
  if ((param_1 != 0) && (param_2 != 0)) {
    local_48 = 0;
    uStack_40 = 0;
    local_58 = 0;
    uStack_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    iVar4 = syna_tcm_get_app_info(param_1,&local_68,0);
    if (iVar4 < 0) {
      _printk(&DAT_0013324a,"syna_tcm_testing_config_id");
      *(undefined1 *)(param_2 + 0x10) = 0;
      iVar4 = -0xa3;
      puVar6 = &DAT_00134181;
    }
    else {
      if (*(long *)(param_2 + 0xd8) != 0) {
        iVar5 = syna_tcm_buf_alloc(*(long *)(param_2 + 0xd8));
        if (-1 < iVar5) {
          syna_pal_mem_cpy(**(undefined8 **)(param_2 + 0xd8),
                           *(undefined4 *)(*(undefined8 **)(param_2 + 0xd8) + 1),&local_58);
          *(undefined4 *)(*(long *)(param_2 + 0xd8) + 0xc) = 0x10;
        }
      }
      if ((param_3 & 1) == 0) {
        puVar7 = *(undefined8 **)(param_2 + 0x38);
        if ((puVar7 != (undefined8 *)0x0) && (*(int *)(puVar7 + 1) != 0)) {
          bVar3 = syna_tcm_testing_0002_check_config_id(&local_58,*puVar7);
          *(byte *)(param_2 + 0x10) = bVar3 & 1;
        }
        bVar2 = *(char *)(param_2 + 0x10) == '\0';
        if (bVar2) {
          iVar4 = -0xa2;
        }
        puVar6 = &DAT_001396de;
        if (bVar2) {
          puVar6 = &DAT_00134181;
        }
      }
      else {
        *(undefined1 *)(param_2 + 0x10) = 1;
        puVar6 = &DAT_001396de;
      }
    }
    _printk(&DAT_00133a8b,"syna_tcm_testing_config_id",puVar6);
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar4;
}



/* 0011d940 syna_tcm_buf_alloc */

undefined8 syna_tcm_buf_alloc(long *param_1)

{
  void *__s;
  long lVar1;
  undefined8 uVar2;
  uint uVar3;
  
  uVar3 = *(uint *)(param_1 + 1);
  __s = (void *)*param_1;
  if (uVar3 < 0x10) {
    if (__s == (void *)0x0) {
LAB_0011d97c:
      lVar1 = syna_request_managed_device();
      if (lVar1 != 0) goto LAB_0011d984;
LAB_0011d9e0:
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
      *param_1 = 0;
    }
    else {
      lVar1 = syna_request_managed_device();
      if (lVar1 != 0) {
        devm_kfree(lVar1,__s);
        goto LAB_0011d97c;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar1 = syna_request_managed_device();
      if (lVar1 == 0) goto LAB_0011d9e0;
LAB_0011d984:
      uVar3 = 0x10;
      __s = (void *)devm_kmalloc(lVar1,0x10,0xdc0);
      *param_1 = (long)__s;
      if (__s != (void *)0x0) {
        *(undefined4 *)(param_1 + 1) = 0x10;
        goto LAB_0011d9a0;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",0x10);
    *(undefined4 *)(param_1 + 1) = 0;
    uVar2 = 0xffffff0d;
  }
  else {
LAB_0011d9a0:
    memset(__s,0,(ulong)uVar3);
    uVar2 = 0;
  }
  *(undefined4 *)((long)param_1 + 0xc) = 0;
  return uVar2;
}



/* 0011da1c syna_pal_mem_cpy */

void syna_pal_mem_cpy(undefined8 *param_1,uint param_2,undefined8 *param_3)

{
  undefined8 uVar1;
  
  if ((param_1 != (undefined8 *)0x0) && (param_3 != (undefined8 *)0x0)) {
    if (param_2 < 0x10) {
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",0x10,param_2,0x10);
      return;
    }
    uVar1 = param_3[1];
    *param_1 = *param_3;
    param_1[1] = uVar1;
  }
  return;
}



/* 0011da70 syna_tcm_testing_0002_check_config_id */

undefined8 syna_tcm_testing_0002_check_config_id(long param_1,long param_2,int param_3)

{
  int iVar1;
  
  if ((param_1 != 0) && (param_2 != 0)) {
    if (-1 < param_3) {
      iVar1 = 0;
      do {
        if (*(char *)(param_1 + iVar1) != *(char *)(param_2 + iVar1)) {
          _printk(&DAT_0013a78c,"syna_tcm_testing_0002_check_config_id",param_1);
          return 0;
        }
        iVar1 = iVar1 + 1;
      } while (iVar1 <= param_3);
    }
    return 1;
  }
  return 0;
}



/* 0011daec syna_tcm_get_testing_0100 */

undefined1 * syna_tcm_get_testing_0100(void)

{
  return &test_0100;
}



/* 0011dafc syna_tcm_testing_trx_trx_short */

int syna_tcm_testing_trx_trx_short(long param_1,long param_2,ulong param_3)

{
  long lVar1;
  bool bVar2;
  byte bVar3;
  int iVar4;
  long lVar5;
  undefined *puVar6;
  undefined8 *puVar7;
  long local_80;
  undefined8 local_78;
  undefined4 uStack_74;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  iVar4 = -0xa1;
  if ((param_1 == 0) || (param_2 == 0)) goto LAB_0011db2c;
  local_48 = 0;
  local_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_80 = 0;
  __mutex_init(&uStack_70,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  iVar4 = syna_tcm_run_production_test(param_1,1,&local_80,0);
  if (iVar4 < 0) {
    _printk(&DAT_0013c073,"syna_tcm_testing_trx_trx_short",1);
    *(undefined1 *)(param_2 + 0x10) = 0;
    iVar4 = -0xa3;
LAB_0011dbd0:
    puVar6 = &DAT_00134181;
  }
  else {
    if (*(long *)(param_2 + 0xd8) != 0) {
      syna_tcm_buf_copy(*(long *)(param_2 + 0xd8),&local_80);
    }
    if ((param_3 & 1) == 0) {
      puVar7 = *(undefined8 **)(param_2 + 0x38);
      if (puVar7 == (undefined8 *)0x0) {
        *(undefined1 *)(param_2 + 0x10) = 0;
        iVar4 = -0xa2;
        goto LAB_0011dbd0;
      }
      bVar3 = syna_tcm_testing_check_array_data
                        (local_80,uStack_74,*puVar7,*(undefined4 *)(puVar7 + 1));
      bVar2 = (bVar3 & 1) == 0;
      if (bVar2) {
        iVar4 = -0xa2;
      }
      *(byte *)(param_2 + 0x10) = bVar3 & 1;
      puVar6 = &DAT_001396de;
      if (bVar2) {
        puVar6 = &DAT_00134181;
      }
    }
    else {
      *(undefined1 *)(param_2 + 0x10) = 1;
      puVar6 = &DAT_001396de;
    }
  }
  _printk(&DAT_00133a8b,"syna_tcm_testing_trx_trx_short",puVar6);
  if ((char)local_40 != '\0') {
    _printk(&DAT_00135294,"syna_tcm_buf_release");
  }
  lVar1 = local_80;
  lVar5 = syna_request_managed_device();
  if (lVar5 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else if (lVar1 != 0) {
    devm_kfree(lVar5,lVar1);
  }
LAB_0011db2c:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar4;
}



/* 0011dce4 syna_tcm_buf_copy */

void syna_tcm_buf_copy(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  char cVar5;
  uint uVar6;
  ulong uVar7;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 2);
  uVar6 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar6) {
    uVar1 = uVar6 + 1;
    uVar7 = (ulong)uVar1;
    __s = (void *)*param_1;
    if (uVar1 <= uVar2) {
LAB_0011dda8:
      memset(__s,0,__n);
      *(undefined4 *)((long)param_1 + 0xc) = 0;
      __n = (ulong)*(uint *)(param_1 + 1);
      uVar6 = *(uint *)((long)param_2 + 0xc);
      goto LAB_0011ddc0;
    }
    if (__s == (void *)0x0) {
LAB_0011dd74:
      lVar3 = syna_request_managed_device();
      if (lVar3 != 0) goto LAB_0011dd7c;
LAB_0011df10:
      puVar4 = &DAT_0013ccb3;
LAB_0011df18:
      _printk(puVar4,"syna_pal_mem_alloc");
      *param_1 = 0;
    }
    else {
      lVar3 = syna_request_managed_device();
      if (lVar3 != 0) {
        devm_kfree(lVar3,__s);
        goto LAB_0011dd74;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) goto LAB_0011df10;
LAB_0011dd7c:
      if (0x7ffffffe < uVar6) {
        puVar4 = &DAT_00138e98;
        goto LAB_0011df18;
      }
      __s = (void *)devm_kmalloc(lVar3,uVar7,0xdc0);
      *param_1 = (long)__s;
      if (__s != (void *)0x0) {
        *(uint *)(param_1 + 1) = uVar1;
        __n = uVar7;
        goto LAB_0011dda8;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar7);
    param_1[1] = 0;
    puVar4 = &DAT_00138466;
    uVar6 = *(int *)((long)param_2 + 0xc) + 1;
  }
  else {
LAB_0011ddc0:
    if (((void *)*param_1 != (void *)0x0) && ((void *)*param_2 != (void *)0x0)) {
      if ((uVar6 <= (uint)__n) && (uVar6 <= *(uint *)(param_2 + 1))) {
        memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar6);
        *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
        goto LAB_0011ddf4;
      }
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar6);
      uVar6 = *(uint *)((long)param_2 + 0xc);
    }
    puVar4 = &DAT_001359ca;
  }
  _printk(puVar4,"syna_tcm_buf_copy",uVar6);
LAB_0011ddf4:
  if (*(char *)(param_2 + 8) == '\x01') {
    cVar5 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar5 = *(char *)(param_2 + 8) + -1;
  }
  *(char *)(param_2 + 8) = cVar5;
  mutex_unlock(param_2 + 2);
  if ((char)param_1[8] == '\x01') {
    cVar5 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar5 = (char)param_1[8] + -1;
  }
  *(char *)(param_1 + 8) = cVar5;
  mutex_unlock(param_1 + 2);
  return;
}



/* 0011df64 syna_tcm_testing_check_array_data */

uint syna_tcm_testing_check_array_data(long param_1,ulong param_2,long param_3,ulong param_4)

{
  ulong uVar1;
  uint uVar2;
  ulong uVar3;
  uint uVar4;
  
  if ((param_1 == 0) || (param_3 == 0)) {
    _printk(&DAT_00134186,"syna_tcm_testing_check_array_data");
    uVar4 = 0;
  }
  else if ((int)param_2 < 1) {
    uVar4 = 1;
  }
  else {
    uVar3 = 0;
    uVar4 = 1;
    do {
      uVar1 = 0;
      if (param_2 <= param_4) {
        uVar1 = uVar3;
      }
      uVar2 = syna_tcm_testing_0100_check_data(param_1 + uVar3,param_3 + uVar1,uVar3 & 0xffffffff);
      uVar3 = uVar3 + 1;
      uVar4 = uVar2 & uVar4;
    } while ((param_2 & 0x7fffffff) != uVar3);
  }
  return uVar4;
}



/* 0011e01c syna_tcm_testing_0100_check_data */

bool syna_tcm_testing_0100_check_data(byte *param_1,byte *param_2,int param_3)

{
  byte bVar1;
  byte bVar2;
  uint uVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  bool bVar7;
  bool bVar8;
  bool bVar9;
  bool bVar10;
  bool bVar11;
  
  bVar1 = *param_1;
  bVar2 = *param_2;
  uVar3 = param_3 << 3;
  bVar4 = (bVar1 & 1) == (bVar2 & 1);
  if (!bVar4) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3);
    bVar2 = *param_2;
  }
  bVar5 = (bVar1 >> 1 & 1) != (bVar2 >> 1 & 1);
  if (bVar5) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 1);
    bVar2 = *param_2;
  }
  bVar6 = (bVar1 >> 2 & 1) != (bVar2 >> 2 & 1);
  if (bVar6) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 2);
    bVar2 = *param_2;
  }
  bVar7 = (bVar1 >> 3 & 1) != (bVar2 >> 3 & 1);
  if (bVar7) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 3);
    bVar2 = *param_2;
  }
  bVar8 = (bVar1 >> 4 & 1) != (bVar2 >> 4 & 1);
  if (bVar8) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 4);
    bVar2 = *param_2;
  }
  bVar9 = (bVar1 >> 5 & 1) != (bVar2 >> 5 & 1);
  if (bVar9) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 5);
    bVar2 = *param_2;
  }
  bVar10 = (bVar1 >> 6 & 1) != (bVar2 >> 6 & 1);
  if (bVar10) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 6);
    bVar2 = *param_2;
  }
  bVar11 = bVar1 >> 7 != bVar2 >> 7;
  if (bVar11) {
    _printk(&DAT_0013c099,"syna_tcm_testing_0100_check_data",uVar3 | 7);
  }
  return !bVar11 && (!bVar10 && (!bVar9 && (!bVar8 && (!bVar7 && (!bVar6 && (!bVar5 && bVar4))))));
}



/* 0011e204 syna_tcm_get_testing_0500 */

undefined1 * syna_tcm_get_testing_0500(void)

{
  return &test_0500;
}



/* 0011e214 syna_tcm_testing_full_raw */

int syna_tcm_testing_full_raw(long param_1,long param_2,ulong param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  long lVar3;
  byte bVar4;
  byte bVar5;
  int iVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 *puVar9;
  long local_90;
  undefined8 local_88;
  undefined4 uStack_84;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 local_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  iVar6 = -0xa1;
  if ((param_1 != 0) && (param_2 != 0)) {
    local_58 = 0;
    local_50 = 0;
    local_68 = 0;
    uStack_60 = 0;
    local_78 = 0;
    uStack_70 = 0;
    local_88 = 0;
    uStack_80 = 0;
    local_90 = 0;
    __mutex_init(&uStack_80,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
    uVar1 = *(undefined4 *)(param_1 + 0x1c);
    uVar2 = *(undefined4 *)(param_1 + 0x20);
    iVar6 = syna_tcm_run_production_test(param_1,5,&local_90,0);
    if (iVar6 < 0) {
      _printk(&DAT_0013c073,"syna_tcm_testing_full_raw",5);
      *(undefined1 *)(param_2 + 0x10) = 0;
      iVar6 = -0xa3;
      puVar8 = &DAT_00134181;
    }
    else {
      if (*(long *)(param_2 + 0xd8) != 0) {
        syna_tcm_buf_copy(*(long *)(param_2 + 0xd8),&local_90);
      }
      if ((param_3 & 1) == 0) {
        puVar9 = *(undefined8 **)(param_2 + 0x38);
        if (puVar9 == (undefined8 *)0x0) {
          bVar4 = 0;
        }
        else {
          bVar4 = syna_tcm_testing_check_frame_data
                            (local_90,uStack_84,uVar1,uVar2,syna_tcm_testing_0500_check_upper_bound,
                             *puVar9,*(undefined4 *)(puVar9 + 1));
        }
        puVar9 = *(undefined8 **)(param_2 + 0x40);
        if (puVar9 == (undefined8 *)0x0) {
          bVar5 = 0;
        }
        else {
          bVar5 = syna_tcm_testing_check_frame_data
                            (local_90,uStack_84,uVar1,uVar2,syna_tcm_testing_0500_check_lower_bound,
                             *puVar9,*(undefined4 *)(puVar9 + 1));
        }
        bVar4 = bVar4 & bVar5 & 1;
        *(byte *)(param_2 + 0x10) = bVar4;
        puVar8 = &DAT_001396de;
        if (bVar4 == 0) {
          iVar6 = -0xa2;
          puVar8 = &DAT_00134181;
        }
      }
      else {
        *(undefined1 *)(param_2 + 0x10) = 1;
        puVar8 = &DAT_001396de;
      }
    }
    _printk(&DAT_00133a8b,"syna_tcm_testing_full_raw",puVar8);
    if ((char)local_50 != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = local_90;
    lVar7 = syna_request_managed_device();
    if (lVar7 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar7,lVar3);
    }
  }
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return iVar6;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0011e454 syna_tcm_buf_copy */

void syna_tcm_buf_copy(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  char cVar5;
  uint uVar6;
  ulong uVar7;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 2);
  uVar6 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar6) {
    uVar1 = uVar6 + 1;
    uVar7 = (ulong)uVar1;
    __s = (void *)*param_1;
    if (uVar1 <= uVar2) {
LAB_0011e518:
      memset(__s,0,__n);
      *(undefined4 *)((long)param_1 + 0xc) = 0;
      __n = (ulong)*(uint *)(param_1 + 1);
      uVar6 = *(uint *)((long)param_2 + 0xc);
      goto LAB_0011e530;
    }
    if (__s == (void *)0x0) {
LAB_0011e4e4:
      lVar3 = syna_request_managed_device();
      if (lVar3 != 0) goto LAB_0011e4ec;
LAB_0011e680:
      puVar4 = &DAT_0013ccb3;
LAB_0011e688:
      _printk(puVar4,"syna_pal_mem_alloc");
      *param_1 = 0;
    }
    else {
      lVar3 = syna_request_managed_device();
      if (lVar3 != 0) {
        devm_kfree(lVar3,__s);
        goto LAB_0011e4e4;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) goto LAB_0011e680;
LAB_0011e4ec:
      if (0x7ffffffe < uVar6) {
        puVar4 = &DAT_00138e98;
        goto LAB_0011e688;
      }
      __s = (void *)devm_kmalloc(lVar3,uVar7,0xdc0);
      *param_1 = (long)__s;
      if (__s != (void *)0x0) {
        *(uint *)(param_1 + 1) = uVar1;
        __n = uVar7;
        goto LAB_0011e518;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar7);
    param_1[1] = 0;
    puVar4 = &DAT_00138466;
    uVar6 = *(int *)((long)param_2 + 0xc) + 1;
  }
  else {
LAB_0011e530:
    if (((void *)*param_1 != (void *)0x0) && ((void *)*param_2 != (void *)0x0)) {
      if ((uVar6 <= (uint)__n) && (uVar6 <= *(uint *)(param_2 + 1))) {
        memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar6);
        *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
        goto LAB_0011e564;
      }
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar6);
      uVar6 = *(uint *)((long)param_2 + 0xc);
    }
    puVar4 = &DAT_001359ca;
  }
  _printk(puVar4,"syna_tcm_buf_copy",uVar6);
LAB_0011e564:
  if (*(char *)(param_2 + 8) == '\x01') {
    cVar5 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar5 = *(char *)(param_2 + 8) + -1;
  }
  *(char *)(param_2 + 8) = cVar5;
  mutex_unlock(param_2 + 2);
  if ((char)param_1[8] == '\x01') {
    cVar5 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar5 = (char)param_1[8] + -1;
  }
  *(char *)(param_1 + 8) = cVar5;
  mutex_unlock(param_1 + 2);
  return;
}



/* 0011e6d4 syna_tcm_testing_check_frame_data */

uint syna_tcm_testing_check_frame_data
               (long param_1,ulong param_2,int param_3,uint param_4,code *param_5,long param_6,
               ulong param_7)

{
  int iVar1;
  long lVar2;
  code *pcVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  ulong uVar7;
  uint uVar8;
  
  if (((param_5 == (code *)0x0) || (param_1 == 0)) || (param_6 == 0)) {
    _printk(&DAT_00134186,"syna_tcm_testing_check_frame_data");
    uVar8 = 0;
  }
  else if (param_2 < param_3 * param_4 * 2) {
    _printk(&DAT_0013a299,"syna_tcm_testing_check_frame_data",param_2 & 0xffffffff);
    uVar8 = 0;
  }
  else if (param_3 < 1) {
    uVar8 = 1;
  }
  else {
    iVar5 = 0;
    iVar6 = 0;
    uVar8 = 1;
    do {
      if (0 < (int)param_4) {
        uVar7 = 0;
        iVar1 = iVar5;
        do {
          lVar2 = 0;
          if (param_2 <= param_7) {
            lVar2 = (long)iVar1;
          }
          if (*(int *)(param_5 + -4) != -0x5ccd7a0e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8236,0x11e7bc);
            (*pcVar3)();
          }
          uVar4 = (*param_5)(param_1 + iVar1,param_6 + lVar2,uVar7 & 0xffffffff,iVar6);
          uVar7 = uVar7 + 1;
          uVar8 = uVar4 & uVar8;
          iVar1 = iVar1 + 2;
        } while (param_4 != uVar7);
      }
      iVar6 = iVar6 + 1;
      iVar5 = iVar5 + param_4 * 2;
    } while (iVar6 != param_3);
  }
  return uVar8;
}



/* 0011e844 syna_tcm_testing_0500_check_upper_bound */

bool syna_tcm_testing_0500_check_upper_bound
               (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  ushort uVar2;
  
  uVar1 = *param_1;
  uVar2 = *param_2;
  if (uVar2 < uVar1) {
    _printk(&DAT_0013d4b3,"syna_tcm_testing_0500_check_upper_bound",param_4,param_3,uVar1,uVar2);
  }
  return uVar1 <= uVar2;
}



/* 0011e8ac syna_tcm_testing_0500_check_lower_bound */

bool syna_tcm_testing_0500_check_lower_bound
               (ushort *param_1,ushort *param_2,undefined4 param_3,undefined4 param_4)

{
  ushort uVar1;
  ushort uVar2;
  
  uVar1 = *param_1;
  uVar2 = *param_2;
  if (uVar1 < uVar2) {
    _printk(&DAT_00134d2a,"syna_tcm_testing_0500_check_lower_bound",param_4,param_3,uVar1,uVar2);
  }
  return uVar2 <= uVar1;
}



/* 0011e914 syna_tcm_v1_detect */

void syna_tcm_v1_detect(long param_1,ulong param_2,ulong param_3)

{
  long *plVar1;
  undefined *puVar2;
  byte bVar3;
  int iVar4;
  void *__s;
  long lVar5;
  undefined *puVar6;
  char cVar7;
  undefined4 uVar8;
  code *pcVar9;
  uint uVar10;
  char *pcVar11;
  undefined1 local_3c [4];
  long local_38;
  
  lVar5 = sp_el0;
  local_38 = *(long *)(lVar5 + 0x710);
  local_3c[0] = 0;
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_v1_detect");
    iVar4 = -0xf1;
    goto LAB_0011ea90;
  }
  if ((param_2 & 1) != 0) {
LAB_0011e948:
    iVar4 = 0;
    *(code **)(param_1 + 0x390) = syna_tcm_v1_read_message;
    *(code **)(param_1 + 0x398) = syna_tcm_v1_write_message;
    *(code **)(param_1 + 0x3a8) = syna_tcm_v1_set_up_max_rw_size;
    *(code **)(param_1 + 0x3b0) = syna_tcm_v1_check_max_rw_size;
    *(code **)(param_1 + 0x3a0) = syna_tcm_v1_terminate;
    *(undefined4 *)(param_1 + 0x37c) = 0;
    *(undefined1 *)(param_1 + 8) = 1;
    goto LAB_0011ea90;
  }
  mutex_lock(param_1 + 0x348);
  if (*(char *)(param_1 + 0x280) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  plVar1 = (long *)(param_1 + 0x240);
  mutex_lock(param_1 + 0x250);
  uVar10 = *(uint *)(param_1 + 0x248);
  __s = *(void **)(param_1 + 0x240);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  if (uVar10 < 0x36) {
    if (__s == (void *)0x0) {
LAB_0011e9ec:
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) goto LAB_0011e9f4;
LAB_0011ecd0:
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
      *plVar1 = 0;
    }
    else {
      lVar5 = syna_request_managed_device();
      if (lVar5 != 0) {
        devm_kfree(lVar5,__s);
        goto LAB_0011e9ec;
      }
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) goto LAB_0011ecd0;
LAB_0011e9f4:
      uVar10 = 0x36;
      __s = (void *)devm_kmalloc(lVar5,0x36,0xdc0);
      *plVar1 = (long)__s;
      if (__s != (void *)0x0) {
        *(undefined4 *)(param_1 + 0x248) = 0x36;
        goto LAB_0011ea10;
      }
    }
    _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",0x36);
    *(undefined8 *)(param_1 + 0x248) = 0;
    _printk(&DAT_00134d71,"syna_tcm_v1_detect");
    if (*(char *)(param_1 + 0x280) == '\x01') {
      cVar7 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar7 = *(char *)(param_1 + 0x280) + -1;
    }
    *(char *)(param_1 + 0x280) = cVar7;
    mutex_unlock(param_1 + 0x250);
    mutex_unlock(param_1 + 0x348);
    iVar4 = -0xf3;
    goto LAB_0011ea90;
  }
LAB_0011ea10:
  memset(__s,0,(ulong)uVar10);
  lVar5 = *(long *)(param_1 + 0x48);
  *(undefined4 *)(param_1 + 0x24c) = 0;
  if (lVar5 == 0) {
    iVar4 = -0xf1;
    puVar6 = &DAT_001389db;
LAB_0011eb0c:
    _printk(puVar6,"syna_tcm_read");
  }
  else {
    pcVar9 = *(code **)(lVar5 + 0x20);
    if (pcVar9 == (code *)0x0) {
      iVar4 = -0xf5;
      puVar6 = &DAT_00136c67;
      goto LAB_0011eb0c;
    }
    pcVar11 = *(char **)(param_1 + 0x240);
    if (*(int *)(pcVar9 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar9 = (code *)SoftwareBreakpoint(0x8228,0x11ea54);
      (*pcVar9)();
    }
    iVar4 = (*pcVar9)(lVar5,pcVar11,0x36);
    if (-1 < iVar4) {
      if (*(char *)(param_1 + 0x280) == '\x01') {
        cVar7 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar7 = *(char *)(param_1 + 0x280) + -1;
      }
      *(char *)(param_1 + 0x280) = cVar7;
      mutex_unlock(param_1 + 0x250);
      mutex_unlock(param_1 + 0x348);
      if (*pcVar11 != -0x5b) {
        iVar4 = -0xf5;
        goto LAB_0011ea90;
      }
      if ((*(char *)(param_1 + 0x380) == '\x01') && (*(int *)(param_1 + 0x200) != 0)) {
        syna_tcm_buf_lock(plVar1);
        uVar10 = *(int *)(param_1 + 0x200) + 5;
        if (uVar10 < *(uint *)(param_1 + 0x248)) {
          *(undefined2 *)(param_1 + 0x382) =
               *(undefined2 *)(*(long *)(param_1 + 0x240) + (ulong)uVar10);
          if ((*(char *)(param_1 + 900) == '\x01') &&
             (uVar10 = *(int *)(param_1 + 0x200) + 7, uVar10 <= *(uint *)(param_1 + 0x248))) {
            *(undefined1 *)(param_1 + 0x385) =
                 *(undefined1 *)(*(long *)(param_1 + 0x240) + (ulong)uVar10);
          }
          syna_tcm_buf_unlock(plVar1);
        }
      }
      if (*(short *)(param_1 + 0x382) == 0x5a5a) {
        *(undefined1 *)(param_1 + 0x380) = 0;
      }
      if (*(char *)(param_1 + 0x385) == 'Z') {
        *(undefined1 *)(param_1 + 900) = 0;
      }
      if (pcVar11[1] == '\x10') {
LAB_0011ec4c:
        if (*(char *)(param_1 + 9) == '\0') {
          syna_tcm_buf_lock(plVar1);
          iVar4 = syna_tcm_v1_parse_idinfo(param_1,pcVar11 + 4,0x34,0x30);
          syna_tcm_buf_unlock(plVar1);
          if (iVar4 < 0) {
            puVar6 = &DAT_00139040;
            goto LAB_0011eca0;
          }
        }
        iVar4 = syna_tcm_v1_check_max_rw_size(param_1);
        if (-1 < iVar4) {
          _printk(&DAT_00132207,"syna_tcm_v1_detect");
          bVar3 = *(byte *)(param_1 + 0x380);
          if (((bVar3 & 1) != 0) || ((*(byte *)(param_1 + 900) & 1) != 0)) {
            puVar6 = &DAT_0013650e;
            if (bVar3 == 0) {
              puVar6 = &DAT_0013a5e4;
            }
            puVar2 = &DAT_0013650e;
            if (((*(byte *)(param_1 + 900) | bVar3 ^ 0xff) & 1) == 0) {
              puVar2 = &DAT_0013a5e4;
            }
            _printk(&DAT_00134742,"syna_tcm_v1_detect",puVar6,puVar2);
          }
          goto LAB_0011e948;
        }
        puVar6 = &DAT_0013d4fa;
      }
      else {
        uVar8 = 4;
        if ((param_3 & 1) == 0) {
          uVar8 = 2;
        }
        iVar4 = syna_tcm_v1_write_message
                          (param_1,uVar8,0,0,local_3c,*(undefined4 *)(param_1 + 0x1ec));
        if (-1 < iVar4) goto LAB_0011ec4c;
        puVar6 = &DAT_00138b16;
      }
LAB_0011eca0:
      _printk(puVar6,"syna_tcm_v1_detect");
      iVar4 = -0xf2;
      goto LAB_0011ea90;
    }
  }
  _printk(&DAT_00139c18,"syna_tcm_v1_detect");
  if (*(char *)(param_1 + 0x280) == '\x01') {
    cVar7 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar7 = *(char *)(param_1 + 0x280) + -1;
  }
  *(char *)(param_1 + 0x280) = cVar7;
  mutex_unlock(param_1 + 0x250);
  mutex_unlock(param_1 + 0x348);
LAB_0011ea90:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar4);
  }
  return;
}



/* 0011ede8 syna_tcm_buf_lock */

void syna_tcm_buf_lock(long param_1)

{
  if (*(char *)(param_1 + 0x40) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x10);
  *(char *)(param_1 + 0x40) = *(char *)(param_1 + 0x40) + '\x01';
  return;
}



/* 0011ee40 syna_tcm_buf_unlock */

void syna_tcm_buf_unlock(long param_1)

{
  char cVar1;
  
  if (*(char *)(param_1 + 0x40) == '\x01') {
    cVar1 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar1 = *(char *)(param_1 + 0x40) + -1;
  }
  *(char *)(param_1 + 0x40) = cVar1;
  mutex_unlock(param_1 + 0x10);
  return;
}



/* 0011eeac syna_tcm_v1_write_message */

int syna_tcm_v1_write_message
              (long param_1,byte param_2,byte *param_3,uint param_4,undefined1 *param_5,uint param_6
              )

{
  bool bVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  byte *pbVar5;
  code *pcVar6;
  bool bVar7;
  int iVar8;
  void *pvVar9;
  long lVar10;
  undefined1 *puVar11;
  undefined *puVar12;
  undefined8 uVar13;
  ulong uVar14;
  char cVar15;
  uint uVar16;
  ushort uVar17;
  int iVar18;
  long lVar19;
  uint uVar20;
  uint uVar21;
  uint uVar22;
  uint uVar23;
  uint uVar24;
  uint uVar25;
  
  if (param_1 == 0) {
    puVar11 = &DAT_00133fd6;
LAB_0011f358:
    _printk(puVar11,"syna_tcm_v1_write_message");
    return -0xf1;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar11 = &DAT_0013d534;
    goto LAB_0011f358;
  }
  if (param_5 != (undefined1 *)0x0) {
    *param_5 = 0xff;
  }
  mutex_lock(param_1 + 0x318);
  mutex_lock(param_1 + 0x348);
  *(undefined4 *)(param_1 + 500) = 1;
  *(undefined4 *)(param_1 + 0x1f8) = 1;
  *(undefined4 *)(param_1 + 0x220) = 0;
  *(byte *)(param_1 + 0x1fc) = param_2;
  if (param_6 == 0) {
    bVar1 = false;
  }
  else {
    lVar19 = *(long *)(param_1 + 0x48);
    if (lVar19 == 0) {
      _printk(&DAT_001389db,"syna_tcm_enable_irq");
      iVar8 = -0xf1;
    }
    else if (*(long *)(lVar19 + 0x38) == 0) {
      iVar8 = 0;
    }
    else {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar19 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x11ef68);
        (*pcVar6)();
      }
      iVar8 = (**(code **)(lVar19 + 0x38))(lVar19,0);
      mutex_unlock(param_1 + 0x50);
    }
    bVar1 = 0 < iVar8;
  }
  if (*(char *)(param_1 + 0x380) == '\x01') {
    uVar17 = *(ushort *)
              (&syna_tcm_crc16_crc16_table +
              (ulong)((param_4 ^ (uint)*(ushort *)
                                        (&syna_tcm_crc16_crc16_table + (ulong)(byte)~param_2 * 2) <<
                                 8 ^
                      (uint)*(ushort *)
                             (&syna_tcm_crc16_crc16_table +
                             (ulong)(param_4 & 0xff ^
                                    ((*(ushort *)
                                       (&syna_tcm_crc16_crc16_table + (ulong)(byte)~param_2 * 2) ^
                                     0xffffffff) & 0xff00) >> 8) * 2)) >> 8 & 0xff) * 2);
    uVar21 = (uint)uVar17 ^
             (uint)*(ushort *)
                    (&syna_tcm_crc16_crc16_table +
                    (ulong)(param_4 & 0xff ^
                           ((*(ushort *)(&syna_tcm_crc16_crc16_table + (ulong)(byte)~param_2 * 2) ^
                            0xffffffff) & 0xff00) >> 8) * 2) << 8;
    pbVar5 = param_3;
    for (uVar20 = param_4; uVar20 != 0; uVar20 = uVar20 - 1) {
      uVar17 = *(ushort *)
                (&syna_tcm_crc16_crc16_table + (ulong)((uint)*pbVar5 ^ (uVar21 & 0xff00) >> 8) * 2);
      uVar21 = (uint)uVar17 ^ uVar21 << 8;
      pbVar5 = pbVar5 + 1;
    }
    uVar20 = uVar21 >> 8 & 0xff;
    uVar21 = param_4 + 5;
  }
  else {
    uVar20 = 0;
    uVar17 = 0;
    uVar21 = param_4 + 3;
  }
  uVar22 = uVar21;
  if (*(uint *)(param_1 + 0x38) != 0) {
    uVar22 = *(uint *)(param_1 + 0x38);
  }
  uVar23 = uVar22;
  if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
    uVar23 = 0;
    if (uVar22 == 0) {
      uVar16 = 0;
      goto LAB_0011f07c;
    }
    uVar24 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
    uVar16 = 0;
    if (uVar24 == 0) goto LAB_0011f07c;
    uVar23 = 0;
    if (uVar24 != 0) {
      uVar23 = uVar22 / uVar24;
    }
    uVar23 = uVar23 * uVar24;
  }
  if (uVar23 == 0) {
    uVar16 = 0;
  }
  else {
    uVar16 = 0;
    if (uVar23 != 0) {
      uVar16 = ((uVar21 + uVar23) - 1) / uVar23;
    }
  }
LAB_0011f07c:
  if (uVar16 < 2) {
    uVar16 = 1;
  }
  if (*(char *)(param_1 + 0x2c8) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x298);
  uVar21 = 0;
  *(char *)(param_1 + 0x2c8) = *(char *)(param_1 + 0x2c8) + '\x01';
  uVar24 = 0;
  uVar22 = param_4;
  do {
    uVar2 = uVar24 + 1;
    iVar8 = -3;
    if (uVar24 != 0) {
      iVar8 = -1;
    }
    uVar25 = iVar8 + uVar23;
    if (uVar22 <= uVar23) {
      uVar25 = uVar22;
    }
    bVar7 = uVar2 == uVar16;
    if ((bVar7) && (lVar19 = *(long *)(param_1 + 0x48), (*(byte *)(lVar19 + 0x15) & 1) != 0)) {
      if (*(uint *)(lVar19 + 0x1c) < uVar25) {
        uVar3 = *(uint *)(lVar19 + 0x18);
        iVar8 = 0;
        if (uVar3 != 0) {
          uVar4 = 0;
          if (uVar3 != 0) {
            uVar4 = uVar25 / uVar3;
          }
          iVar8 = uVar4 * uVar3;
        }
        uVar25 = iVar8 - 1;
        bVar7 = uVar25 == uVar22;
        if (!bVar7) {
          uVar16 = uVar16 + 1;
        }
      }
      else {
        bVar7 = true;
      }
    }
    uVar14 = (ulong)*(uint *)(param_1 + 0x290);
    pvVar9 = *(void **)(param_1 + 0x288);
    if (*(uint *)(param_1 + 0x290) < uVar23) {
      if (pvVar9 != (void *)0x0) {
        lVar19 = syna_request_managed_device();
        if (lVar19 == 0) {
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        }
        else {
          devm_kfree(lVar19,pvVar9);
        }
      }
      lVar19 = syna_request_managed_device();
      if (((int)uVar23 < 1) || (lVar19 == 0)) {
        puVar12 = &DAT_0013ccb3;
        if (lVar19 != 0) {
          puVar12 = &DAT_00138e98;
        }
        _printk(puVar12,"syna_pal_mem_alloc");
        *(undefined8 *)(param_1 + 0x288) = 0;
      }
      else {
        pvVar9 = (void *)devm_kmalloc(lVar19,(ulong)uVar23,0xdc0);
        *(void **)(param_1 + 0x288) = pvVar9;
        if (pvVar9 != (void *)0x0) {
          *(uint *)(param_1 + 0x290) = uVar23;
          uVar14 = (ulong)uVar23;
          goto LAB_0011f1c4;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar23);
      *(undefined8 *)(param_1 + 0x290) = 0;
      _printk(&DAT_00133352,"syna_tcm_v1_write");
      iVar8 = -0xf3;
      break;
    }
LAB_0011f1c4:
    memset(pvVar9,0,uVar14);
    *(undefined4 *)(param_1 + 0x294) = 0;
    if (uVar24 != 0) {
      **(byte **)(param_1 + 0x288) = 1;
      if ((param_3 + uVar21 != (byte *)0x0) &&
         (pvVar9 = (void *)(*(long *)(param_1 + 0x288) + 1), pvVar9 != (void *)0x0)) {
        uVar3 = param_4 - uVar21;
        uVar24 = *(int *)(param_1 + 0x290) - 1;
        if ((uVar25 <= uVar3) && (uVar25 <= uVar24)) {
          memcpy(pvVar9,param_3 + uVar21,(ulong)uVar25);
          iVar18 = 1;
          goto LAB_0011f280;
        }
LAB_0011f494:
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",uVar3,uVar24,uVar25);
      }
LAB_0011f49c:
      puVar12 = &DAT_0013e236;
LAB_0011f4a4:
      _printk(puVar12,"syna_tcm_v1_write");
      iVar8 = -0x16;
      break;
    }
    **(byte **)(param_1 + 0x288) = param_2;
    *(char *)(*(long *)(param_1 + 0x288) + 1) = (char)param_4;
    *(char *)(*(long *)(param_1 + 0x288) + 2) = (char)(param_4 >> 8);
    if (param_4 != 0) {
      if ((param_3 == (byte *)0x0) ||
         (pvVar9 = (void *)(*(long *)(param_1 + 0x288) + 3), pvVar9 == (void *)0x0))
      goto LAB_0011f49c;
      uVar24 = *(int *)(param_1 + 0x290) - 3;
      uVar3 = param_4;
      if ((param_4 < uVar25) || (uVar24 < uVar25)) goto LAB_0011f494;
      memcpy(pvVar9,param_3,(ulong)uVar25);
    }
    iVar18 = 3;
LAB_0011f280:
    lVar19 = *(long *)(param_1 + 0x288);
    iVar18 = iVar18 + uVar25;
    if ((bVar7 & *(byte *)(param_1 + 0x380)) == 1) {
      uVar14 = (ulong)uVar21;
      if ((ushort *)(lVar19 + uVar14) != (ushort *)0x0) {
        uVar24 = *(int *)(param_1 + 0x290) - uVar21;
        if (1 < uVar24) {
          uVar21 = uVar21 + 2;
          iVar18 = iVar18 + 2;
          *(ushort *)(lVar19 + uVar14) = uVar17 & 0xff | (ushort)(uVar20 << 8);
          lVar19 = *(long *)(param_1 + 0x288);
          goto LAB_0011f2c4;
        }
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",2,uVar24,2);
      }
      puVar12 = &DAT_0013e273;
      goto LAB_0011f4a4;
    }
LAB_0011f2c4:
    lVar10 = *(long *)(param_1 + 0x48);
    if (lVar10 == 0) {
      iVar8 = -0xf1;
      puVar12 = &DAT_001389db;
LAB_0011f3a0:
      _printk(puVar12,"syna_tcm_write");
LAB_0011f3ac:
      _printk(&DAT_00135a11,"syna_tcm_v1_write",iVar18);
      break;
    }
    pcVar6 = *(code **)(lVar10 + 0x28);
    if (pcVar6 == (code *)0x0) {
      iVar8 = -0xf5;
      puVar12 = &DAT_00138a0e;
      goto LAB_0011f3a0;
    }
    if (*(int *)(pcVar6 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x11f2f0);
      (*pcVar6)();
    }
    iVar8 = (*pcVar6)(lVar10,lVar19,iVar18);
    if (iVar8 < 0) goto LAB_0011f3ac;
    if (((bVar7 == false) && (uVar24 = *(uint *)(param_1 + 0x210), 0 < (int)uVar24)) &&
       (uVar3 = *(uint *)(param_1 + 0x214), 0 < (int)uVar3)) {
      if (uVar3 <= uVar24) {
        uVar3 = uVar24;
      }
      usleep_range_state(uVar24,uVar3,2);
    }
    uVar21 = uVar21 + uVar25;
    uVar22 = uVar22 - uVar25;
    uVar24 = uVar2;
  } while (uVar2 < uVar16);
  if (*(char *)(param_1 + 0x2c8) == '\x01') {
    cVar15 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar15 = *(char *)(param_1 + 0x2c8) + -1;
  }
  *(char *)(param_1 + 0x2c8) = cVar15;
  mutex_unlock(param_1 + 0x298);
  mutex_unlock(param_1 + 0x348);
  if (-1 < iVar8) {
    uVar21 = 0;
    do {
      if (param_6 == 0) {
        pcVar6 = *(code **)(*(long *)(param_1 + 0x48) + 0x30);
        uVar20 = *(uint *)(param_1 + 0x208) >> 2;
        if (pcVar6 == (code *)0x0) {
          uVar13 = __msecs_to_jiffies(*(uint *)(param_1 + 0x208));
          wait_for_completion_timeout(param_1 + 0x220,uVar13);
        }
        else {
          if (*(int *)(pcVar6 + -4) != 0xf989a7b) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x11f554);
            (*pcVar6)();
          }
          (*pcVar6)();
        }
      }
      else {
        uVar20 = param_6;
        if (0 < (int)param_6) {
          msleep(param_6);
        }
      }
      if (*(int *)(param_1 + 0x1f8) == 2) goto LAB_0011f5a8;
      uVar21 = uVar20 + uVar21;
    } while ((((*(int *)(param_1 + 0x1f8) == 1) &&
              (iVar8 = syna_tcm_v1_read_message(param_1,0), iVar8 < 0)) ||
             (*(int *)(param_1 + 0x1f8) == 1)) && (uVar21 < *(uint *)(param_1 + 0x208)));
    if (*(int *)(param_1 + 0x1f8) == 0) {
LAB_0011f5a8:
      iVar8 = 0;
    }
    else if (uVar21 < *(uint *)(param_1 + 0x208)) {
      _printk(&DAT_001376e5,"syna_tcm_v1_write_message",*(undefined1 *)(param_1 + 0x1fd),param_2);
      iVar8 = -0xf2;
    }
    else {
      _printk(&DAT_00137281,"syna_tcm_v1_write_message",param_2);
      iVar8 = -0xf4;
    }
  }
  if (param_5 != (undefined1 *)0x0) {
    *param_5 = *(undefined1 *)(param_1 + 0x1fe);
  }
  *(undefined1 *)(param_1 + 0x1fc) = 0;
  if (bVar1) {
    lVar19 = *(long *)(param_1 + 0x48);
    if (lVar19 == 0) {
      _printk(&DAT_001389db,"syna_tcm_enable_irq");
    }
    else if (*(long *)(lVar19 + 0x38) != 0) {
      mutex_lock(param_1 + 0x50);
      if (*(int *)(*(code **)(lVar19 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x11f5fc);
        (*pcVar6)();
      }
      (**(code **)(lVar19 + 0x38))(lVar19,1);
      mutex_unlock(param_1 + 0x50);
    }
  }
  *(undefined4 *)(param_1 + 0x1f8) = 0;
  *(undefined4 *)(param_1 + 500) = 0;
  mutex_unlock(param_1 + 0x318);
  return iVar8;
}



/* 0011f6d0 syna_tcm_v1_parse_idinfo */

undefined8 syna_tcm_v1_parse_idinfo(long param_1,void *param_2,undefined8 param_3,uint param_4)

{
  undefined8 uVar1;
  
  if ((param_2 == (void *)0x0) || (param_4 == 0)) {
    _printk(&DAT_0013c0cd,"syna_tcm_v1_parse_idinfo");
    uVar1 = 0xffffff0f;
  }
  else {
    if (0x2f < param_4) {
      param_4 = 0x30;
    }
    if ((uint)param_3 < param_4) {
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",param_3,0x30);
      _printk(&DAT_001328ec,"syna_tcm_v1_parse_idinfo");
      uVar1 = 0xffffffea;
    }
    else {
      memcpy((void *)(param_1 + 0x80),param_2,(ulong)param_4);
      if (*(int *)(param_1 + 0xc) != *(int *)(param_1 + 0x92)) {
        *(int *)(param_1 + 0xc) = *(int *)(param_1 + 0x92);
      }
      uVar1 = 0;
      *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
    }
  }
  return uVar1;
}



/* 0011f790 syna_tcm_v1_check_max_rw_size */

undefined8 syna_tcm_v1_check_max_rw_size(long param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  ushort uVar4;
  undefined1 *puVar5;
  
  if (param_1 == 0) {
    puVar5 = &DAT_00133fd6;
  }
  else if (*(char *)(param_1 + 0x80) == '\x01') {
    uVar4 = *(ushort *)(param_1 + 0x96);
    if (uVar4 != 0) {
      uVar3 = *(uint *)(param_1 + 0x40);
      uVar1 = (uint)uVar4;
      if (uVar3 <= uVar4) {
        uVar1 = uVar3;
      }
      uVar2 = (uint)uVar4;
      if (uVar3 != 0) {
        uVar2 = uVar1;
      }
      if (*(uint *)(param_1 + 0x38) != uVar2) {
        *(uint *)(param_1 + 0x38) = uVar2;
      }
      if ((uVar3 != 0) && (*(uint *)(param_1 + 0x44) < *(uint *)(param_1 + 0x3c))) {
        *(uint *)(param_1 + 0x3c) = *(uint *)(param_1 + 0x44);
      }
      return 0;
    }
    puVar5 = &DAT_00137d35;
  }
  else {
    puVar5 = &DAT_0013773a;
  }
  _printk(puVar5,"syna_tcm_v1_check_max_rw_size");
  return 0xffffff0f;
}



/* 0011f838 syna_tcm_v1_read_message */

/* WARNING: Type propagation algorithm not settling */

int syna_tcm_v1_read_message(long param_1,undefined1 *param_2)

{
  uint *puVar1;
  undefined8 *puVar2;
  long *plVar3;
  undefined8 uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  byte bVar8;
  uint uVar9;
  uint uVar10;
  bool bVar11;
  bool bVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  long lVar16;
  void *pvVar17;
  void *__dest;
  undefined *puVar18;
  char *pcVar19;
  char cVar20;
  long lVar21;
  code *pcVar22;
  ulong uVar23;
  uint uVar24;
  uint uVar25;
  uint uVar26;
  ulong uVar27;
  ulong uVar28;
  uint uVar29;
  undefined1 *puVar30;
  uint uVar31;
  uint uVar32;
  
  if (param_1 == 0) {
    puVar30 = &DAT_00133fd6;
LAB_0011fc2c:
    _printk(puVar30,"syna_tcm_v1_read_message");
    return -0xf1;
  }
  if (*(long *)(param_1 + 0x48) == 0) {
    puVar30 = &DAT_0013d534;
    goto LAB_0011fc2c;
  }
  if (*(char *)(param_1 + 0x37a) == '\x01') {
    bVar12 = *(int *)(param_1 + 0x1f8) == 0;
  }
  else {
    bVar12 = false;
  }
  if (param_2 != (undefined1 *)0x0) {
    *param_2 = 0xff;
  }
  *(undefined1 *)(param_1 + 0x1fd) = 0;
  mutex_lock(param_1 + 0x348);
  if (*(char *)(param_1 + 0x280) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x250);
  *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
  if (bVar12) {
    uVar25 = 4;
    if (*(int *)(param_1 + 0x37c) != 0) {
      iVar13 = 6;
      if (*(char *)(param_1 + 0x380) == '\0') {
        iVar13 = 4;
      }
      uVar25 = *(int *)(param_1 + 0x37c) + (uint)*(byte *)(param_1 + 900) + iVar13 + 1;
    }
  }
  else {
    uVar25 = 4;
  }
  lVar21 = *(long *)(param_1 + 0x48);
  plVar3 = (long *)(param_1 + 0x240);
  if ((*(char *)(lVar21 + 0x15) == '\x01') && (*(uint *)(lVar21 + 0x1c) < uVar25)) {
    uVar31 = *(uint *)(lVar21 + 0x18);
    if (uVar31 != 0) {
      uVar9 = 0;
      if (uVar31 != 0) {
        uVar9 = uVar25 / uVar31;
      }
      uVar25 = uVar9 * uVar31;
      goto LAB_0011f934;
    }
    uVar25 = 0;
  }
  else {
LAB_0011f934:
    if (*(uint *)(param_1 + 0x248) < uVar25) {
      lVar21 = *plVar3;
      if (lVar21 == 0) {
LAB_0011f960:
        lVar21 = syna_request_managed_device();
        if (lVar21 != 0) goto LAB_0011f968;
LAB_0012055c:
        puVar18 = &DAT_0013ccb3;
LAB_00120564:
        _printk(puVar18,"syna_pal_mem_alloc");
        *plVar3 = 0;
      }
      else {
        lVar16 = syna_request_managed_device();
        if (lVar16 != 0) {
          devm_kfree(lVar16,lVar21);
          goto LAB_0011f960;
        }
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar21 = syna_request_managed_device();
        if (lVar21 == 0) goto LAB_0012055c;
LAB_0011f968:
        if ((int)uVar25 < 1) {
          puVar18 = &DAT_00138e98;
          goto LAB_00120564;
        }
        pvVar17 = (void *)devm_kmalloc(lVar21,(ulong)uVar25,0xdc0);
        *plVar3 = (long)pvVar17;
        if (pvVar17 != (void *)0x0) {
          *(uint *)(param_1 + 0x248) = uVar25;
          memset(pvVar17,0,(ulong)uVar25);
          *(undefined4 *)(param_1 + 0x24c) = 0;
          goto LAB_0011f9a0;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar25);
      *(undefined8 *)(param_1 + 0x248) = 0;
      _printk(&DAT_00134d71,"syna_tcm_v1_read_message");
      if (*(char *)(param_1 + 0x280) == '\x01') {
        cVar20 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar20 = *(char *)(param_1 + 0x280) + -1;
      }
      *(char *)(param_1 + 0x280) = cVar20;
      mutex_unlock(param_1 + 0x250);
      *(undefined4 *)(param_1 + 0x200) = 0;
      iVar13 = -0xf3;
      *(undefined1 *)(param_1 + 0x1fd) = 0xff;
      goto LAB_00120cc0;
    }
  }
LAB_0011f9a0:
  puVar1 = (uint *)(param_1 + 0x248);
  iVar13 = syna_tcm_v1_read(param_1,uVar25,*(undefined8 *)(param_1 + 0x240),*puVar1);
  if (iVar13 < 0) {
    _printk(&DAT_00139078,"syna_tcm_v1_read_message",uVar25);
    if (*(char *)(param_1 + 0x280) == '\x01') {
      cVar20 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar20 = *(char *)(param_1 + 0x280) + -1;
    }
    *(char *)(param_1 + 0x280) = cVar20;
    mutex_unlock(param_1 + 0x250);
    *(undefined4 *)(param_1 + 0x200) = 0;
    *(undefined1 *)(param_1 + 0x1fd) = 0xff;
    goto LAB_00120cc0;
  }
  puVar30 = *(undefined1 **)(param_1 + 0x240);
  *(uint *)(param_1 + 0x200) = (uint)*(ushort *)(puVar30 + 2);
  if (puVar30[1] != '\0') {
    *(undefined1 *)(param_1 + 0x1fd) = puVar30[1];
  }
  if (*(char *)(param_1 + 0x280) == '\x01') {
    cVar20 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar20 = *(char *)(param_1 + 0x280) + -1;
  }
  *(char *)(param_1 + 0x280) = cVar20;
  mutex_unlock(param_1 + 0x250);
  uVar31 = *(uint *)(param_1 + 0x200);
  if (uVar31 == 0) {
LAB_0011ff88:
    if (*(char *)(param_1 + 0x280) != '\0') {
      _printk(&DAT_00138e56,"syna_tcm_buf_lock");
    }
    mutex_lock(param_1 + 0x250);
    *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
    **(undefined1 **)(param_1 + 0x240) = 0xa5;
    *(undefined1 *)(*(long *)(param_1 + 0x240) + 1) = *(undefined1 *)(param_1 + 0x1fd);
    *(char *)(*(long *)(param_1 + 0x240) + 2) = (char)*(undefined4 *)(param_1 + 0x200);
    *(char *)(*(long *)(param_1 + 0x240) + 3) = (char)((uint)*(undefined4 *)(param_1 + 0x200) >> 8);
    if (*(char *)(param_1 + 0x280) == '\x01') {
      cVar20 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar20 = *(char *)(param_1 + 0x280) + -1;
    }
    *(char *)(param_1 + 0x280) = cVar20;
    mutex_unlock(param_1 + 0x250);
    if ((*(char *)(param_1 + 0x380) == '\x01') && (*(int *)(param_1 + 0x200) != 0)) {
      if (*(char *)(param_1 + 0x280) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x250);
      cVar20 = *(char *)(param_1 + 0x280);
      uVar25 = *(int *)(param_1 + 0x200) + 5;
      *(char *)(param_1 + 0x280) = cVar20 + '\x01';
      if (uVar25 < *(uint *)(param_1 + 0x248)) {
        *(undefined2 *)(param_1 + 0x382) =
             *(undefined2 *)(*(long *)(param_1 + 0x240) + (ulong)uVar25);
        if ((*(char *)(param_1 + 900) == '\x01') &&
           (uVar25 = *(int *)(param_1 + 0x200) + 7, uVar25 <= *(uint *)(param_1 + 0x248))) {
          *(undefined1 *)(param_1 + 0x385) =
               *(undefined1 *)(*(long *)(param_1 + 0x240) + (ulong)uVar25);
        }
        if (cVar20 == '\0') {
          cVar20 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock",cVar20 + '\x01');
          cVar20 = *(char *)(param_1 + 0x280) + -1;
        }
        *(char *)(param_1 + 0x280) = cVar20;
        mutex_unlock(param_1 + 0x250);
      }
    }
    uVar27 = (ulong)*(byte *)(param_1 + 0x1fd);
    if (*(long *)(param_1 + 0x13d8 + uVar27 * 0x10 + 8) != 0) {
      if (*(char *)(param_1 + 0x280) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x250);
      puVar2 = (undefined8 *)(param_1 + 0x13d8 + (ulong)*(byte *)(param_1 + 0x1fd) * 0x10);
      *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
      pcVar22 = (code *)puVar2[1];
      if (*(int *)(pcVar22 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
        pcVar22 = (code *)SoftwareBreakpoint(0x822b,0x1200dc);
        (*pcVar22)();
      }
      (*pcVar22)(*(byte *)(param_1 + 0x1fd),*(long *)(param_1 + 0x240) + 4,
                 *(undefined4 *)(param_1 + 0x200),*puVar2);
      if (*(char *)(param_1 + 0x280) == '\x01') {
        cVar20 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar20 = *(char *)(param_1 + 0x280) + -1;
      }
      *(char *)(param_1 + 0x280) = cVar20;
      mutex_unlock(param_1 + 0x250);
      uVar27 = (ulong)*(byte *)(param_1 + 0x1fd);
    }
    if ((uint)uVar27 < 0x10) {
      if (*(int *)(param_1 + 0x1f8) != 1) goto joined_r0x00120900;
      *(char *)(param_1 + 0x1fe) = (char)uVar27;
      if (*(int *)(param_1 + 0x200) == 0) {
        *(undefined4 *)(param_1 + 0x154) = 0;
        cVar20 = *(char *)(param_1 + 0x1fe);
      }
      else {
        if (*(char *)(param_1 + 0x188) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x158);
        uVar25 = *(uint *)(param_1 + 0x200);
        uVar23 = (ulong)uVar25;
        uVar27 = (ulong)*(uint *)(param_1 + 0x150);
        pvVar17 = *(void **)(param_1 + 0x148);
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(uint *)(param_1 + 0x150) < uVar25) {
          if (pvVar17 == (void *)0x0) {
LAB_001201e4:
            lVar21 = syna_request_managed_device();
            if (lVar21 != 0) goto LAB_001201ec;
LAB_00120c08:
            puVar18 = &DAT_0013ccb3;
LAB_00120c10:
            _printk(puVar18,"syna_pal_mem_alloc");
            *(undefined8 *)(param_1 + 0x148) = 0;
          }
          else {
            lVar21 = syna_request_managed_device();
            if (lVar21 != 0) {
              devm_kfree(lVar21,pvVar17);
              goto LAB_001201e4;
            }
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            lVar21 = syna_request_managed_device();
            if (lVar21 == 0) goto LAB_00120c08;
LAB_001201ec:
            if ((int)uVar25 < 1) {
              puVar18 = &DAT_00138e98;
              goto LAB_00120c10;
            }
            pvVar17 = (void *)devm_kmalloc(lVar21,uVar23,0xdc0);
            *(void **)(param_1 + 0x148) = pvVar17;
            if (pvVar17 != (void *)0x0) {
              *(uint *)(param_1 + 0x150) = uVar25;
              uVar27 = uVar23;
              goto LAB_00120368;
            }
          }
          _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar23);
          *(undefined8 *)(param_1 + 0x150) = 0;
          puVar18 = &DAT_00135a41;
LAB_00120c44:
          _printk(puVar18,"syna_tcm_v1_dispatch_response");
        }
        else {
LAB_00120368:
          memset(pvVar17,0,uVar27);
          *(undefined4 *)(param_1 + 0x154) = 0;
          if (*(char *)(param_1 + 0x280) != '\0') {
            _printk(&DAT_00138e56,"syna_tcm_buf_lock");
          }
          mutex_lock(param_1 + 0x250);
          *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
          if ((*(void **)(param_1 + 0x148) != (void *)0x0) &&
             (pvVar17 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar17 != (void *)0x0)) {
            uVar25 = *(uint *)(param_1 + 0x200);
            if ((uVar25 <= *(uint *)(param_1 + 0x150)) && (uVar25 <= *(int *)(param_1 + 0x248) - 4U)
               ) {
              memcpy(*(void **)(param_1 + 0x148),pvVar17,(ulong)uVar25);
              *(undefined4 *)(param_1 + 0x154) = *(undefined4 *)(param_1 + 0x200);
              if (*(char *)(param_1 + 0x280) == '\x01') {
                cVar20 = '\0';
              }
              else {
                _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                cVar20 = *(char *)(param_1 + 0x280) + -1;
              }
              *(char *)(param_1 + 0x280) = cVar20;
              mutex_unlock(param_1 + 0x250);
              if ((*(char *)(param_1 + 0x1fc) != '\x02') ||
                 (iVar13 = syna_tcm_v1_parse_idinfo
                                     (param_1,*(undefined8 *)(param_1 + 0x148),
                                      *(undefined4 *)(param_1 + 0x150),
                                      *(undefined4 *)(param_1 + 0x154)), -1 < iVar13)) {
                if (*(char *)(param_1 + 0x188) == '\x01') {
                  cVar20 = '\0';
                }
                else {
                  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                  cVar20 = *(char *)(param_1 + 0x188) + -1;
                }
                *(char *)(param_1 + 0x188) = cVar20;
                mutex_unlock(param_1 + 0x158);
                cVar20 = *(char *)(param_1 + 0x1fe);
                goto joined_r0x0012035c;
              }
              puVar18 = &DAT_00138532;
              goto LAB_00120c44;
            }
            _printk(&DAT_0013a172,"syna_pal_mem_cpy");
          }
          _printk(&DAT_0013b9b5,"syna_tcm_v1_dispatch_response");
          syna_tcm_buf_unlock(plVar3);
        }
        syna_tcm_buf_unlock(param_1 + 0x148);
        cVar20 = *(char *)(param_1 + 0x1fe);
      }
joined_r0x0012035c:
      if (cVar20 == '\0') goto joined_r0x00120900;
      if (cVar20 == '\x01') goto LAB_00120c68;
      if (cVar20 == '\x03') {
        _printk(&DAT_0013ac01,"syna_tcm_v1_dispatch_response");
        goto joined_r0x00120900;
      }
      _printk(&DAT_0013291c,"syna_tcm_v1_dispatch_response",cVar20,*(undefined1 *)(param_1 + 0x1fc))
      ;
      *(undefined4 *)(param_1 + 0x1f8) = 0xffffffff;
LAB_00120c6c:
      uVar27 = completion_done(param_1 + 0x220);
      if ((uVar27 & 1) == 0) {
        complete(param_1 + 0x220);
      }
    }
    else if (*(int *)(param_1 + 0x200) == 0) {
      *(undefined4 *)(param_1 + 0x10c) = 0;
    }
    else {
      if (*(char *)(param_1 + 0x140) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x110);
      uVar25 = *(uint *)(param_1 + 0x200);
      uVar28 = (ulong)uVar25;
      uVar23 = (ulong)*(uint *)(param_1 + 0x108);
      pvVar17 = *(void **)(param_1 + 0x100);
      *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
      if (*(uint *)(param_1 + 0x108) < uVar25) {
        if (pvVar17 == (void *)0x0) {
LAB_00120158:
          lVar21 = syna_request_managed_device();
          if (lVar21 != 0) goto LAB_00120160;
LAB_00120a48:
          puVar18 = &DAT_0013ccb3;
LAB_00120a50:
          _printk(puVar18,"syna_pal_mem_alloc");
          *(undefined8 *)(param_1 + 0x100) = 0;
        }
        else {
          lVar21 = syna_request_managed_device();
          if (lVar21 != 0) {
            devm_kfree(lVar21,pvVar17);
            goto LAB_00120158;
          }
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          lVar21 = syna_request_managed_device();
          if (lVar21 == 0) goto LAB_00120a48;
LAB_00120160:
          if ((int)uVar25 < 1) {
            puVar18 = &DAT_00138e98;
            goto LAB_00120a50;
          }
          pvVar17 = (void *)devm_kmalloc(lVar21,uVar28,0xdc0);
          *(void **)(param_1 + 0x100) = pvVar17;
          if (pvVar17 != (void *)0x0) {
            *(uint *)(param_1 + 0x108) = uVar25;
            uVar23 = uVar28;
            goto LAB_00120220;
          }
        }
        _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar28);
        *(undefined8 *)(param_1 + 0x108) = 0;
        _printk(&DAT_001384f3,"syna_tcm_v1_dispatch_report");
      }
      else {
LAB_00120220:
        memset(pvVar17,0,uVar23);
        *(undefined4 *)(param_1 + 0x10c) = 0;
        if (*(char *)(param_1 + 0x280) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x250);
        *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
        if ((*(void **)(param_1 + 0x100) != (void *)0x0) &&
           (pvVar17 = (void *)(*(long *)(param_1 + 0x240) + 4), pvVar17 != (void *)0x0)) {
          uVar25 = *(uint *)(param_1 + 0x200);
          if ((uVar25 <= *(uint *)(param_1 + 0x108)) && (uVar25 <= *(int *)(param_1 + 0x248) - 4U))
          {
            memcpy(*(void **)(param_1 + 0x100),pvVar17,(ulong)uVar25);
            *(undefined4 *)(param_1 + 0x10c) = *(undefined4 *)(param_1 + 0x200);
            if (*(char *)(param_1 + 0x280) == '\x01') {
              cVar20 = '\0';
            }
            else {
              _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
              cVar20 = *(char *)(param_1 + 0x280) + -1;
            }
            *(char *)(param_1 + 0x280) = cVar20;
            mutex_unlock(param_1 + 0x250);
            if (*(char *)(param_1 + 0x140) == '\x01') {
              cVar20 = '\0';
            }
            else {
              _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
              cVar20 = *(char *)(param_1 + 0x140) + -1;
            }
            *(char *)(param_1 + 0x140) = cVar20;
            mutex_unlock(param_1 + 0x110);
            if ((uint)uVar27 == 0x10) {
              if (*(char *)(param_1 + 0x280) != '\0') {
                _printk(&DAT_00138e56,"syna_tcm_buf_lock");
              }
              mutex_lock(param_1 + 0x250);
              *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
              iVar13 = syna_tcm_v1_parse_idinfo
                                 (param_1,*(long *)(param_1 + 0x240) + 4,
                                  *(int *)(param_1 + 0x248) + -4,*(undefined4 *)(param_1 + 0x200));
              if (iVar13 < 0) {
                _printk(&DAT_0013abd0,"syna_tcm_v1_dispatch_report");
                syna_tcm_buf_unlock(plVar3);
                goto joined_r0x00120900;
              }
              if (*(char *)(param_1 + 0x280) == '\x01') {
                cVar20 = '\0';
              }
              else {
                _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                cVar20 = *(char *)(param_1 + 0x280) + -1;
              }
              *(char *)(param_1 + 0x280) = cVar20;
              mutex_unlock(param_1 + 0x250);
              if (*(int *)(param_1 + 0x1f8) == 1) {
                bVar8 = *(byte *)(param_1 + 0x1fc);
                if (bVar8 < 0x1f) {
                  if ((bVar8 == 4) || (bVar8 == 0x14)) {
LAB_00120c68:
                    *(undefined4 *)(param_1 + 0x1f8) = 0;
                    goto LAB_00120c6c;
                  }
                }
                else if ((bVar8 == 0x1f) || (bVar8 == 0x31)) goto LAB_00120c68;
                if (*(char *)(param_1 + 0x1f0) == '\x01') {
                  *(undefined4 *)(param_1 + 0x1f8) = 0;
                }
                else {
                  _printk(&DAT_0013c768,"syna_tcm_v1_dispatch_report",0x10);
                  *(undefined4 *)(param_1 + 0x1f8) = 0xffffffff;
                }
                uVar23 = completion_done(param_1 + 0x220);
                if ((uVar23 & 1) == 0) {
                  complete(param_1 + 0x220);
                }
              }
            }
            lVar21 = param_1 + uVar27 * 0x10;
            if (*(long *)(lVar21 + 0x3e0) == 0) goto joined_r0x00120900;
            if (*(char *)(param_1 + 0x140) != '\0') {
              _printk(&DAT_00138e56,"syna_tcm_buf_lock");
            }
            mutex_lock(param_1 + 0x110);
            uVar4 = *(undefined8 *)(lVar21 + 0x3d8);
            pcVar22 = *(code **)(lVar21 + 0x3e0);
            *(char *)(param_1 + 0x140) = *(char *)(param_1 + 0x140) + '\x01';
            if (*(int *)(pcVar22 + -4) != -0x606c3bf6) {
                    /* WARNING: Does not return */
              pcVar22 = (code *)SoftwareBreakpoint(0x8229,0x120538);
              (*pcVar22)();
            }
            (*pcVar22)(uVar27,*(undefined8 *)(param_1 + 0x100),*(undefined4 *)(param_1 + 0x10c),
                       uVar4);
            goto LAB_00120a90;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy");
        }
        _printk(&DAT_001333ac,"syna_tcm_v1_dispatch_report");
        if (*(char *)(param_1 + 0x280) == '\x01') {
          cVar20 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar20 = *(char *)(param_1 + 0x280) + -1;
        }
        *(char *)(param_1 + 0x280) = cVar20;
        mutex_unlock(param_1 + 0x250);
      }
LAB_00120a90:
      if (*(char *)(param_1 + 0x140) == '\x01') {
        cVar20 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar20 = *(char *)(param_1 + 0x140) + -1;
      }
      *(char *)(param_1 + 0x140) = cVar20;
      mutex_unlock(param_1 + 0x110);
    }
joined_r0x00120900:
    if (param_2 != (undefined1 *)0x0) {
      *param_2 = *(undefined1 *)(param_1 + 0x1fd);
    }
    iVar13 = 0;
    if (bVar12) {
      uVar31 = *(uint *)(param_1 + 0x200);
      uVar9 = *(int *)(param_1 + 0x3c) - 5;
      uVar25 = uVar31;
      if (uVar9 <= uVar31) {
        uVar25 = uVar9;
      }
      if (*(int *)(param_1 + 0x3c) != 0) {
        uVar31 = uVar25;
      }
      uVar25 = 0;
      if (0xf < *(byte *)(param_1 + 0x1fd)) {
        uVar25 = uVar31;
      }
      *(uint *)(param_1 + 0x37c) = uVar25;
    }
    goto LAB_00120cc0;
  }
  if (puVar30[1] != '\x03') {
    uVar9 = 0;
    if (uVar25 - 4 <= uVar31) {
      uVar9 = uVar31 - (uVar25 - 4);
    }
    if (uVar25 < 5) {
      uVar9 = uVar31;
    }
    if (uVar9 == 0) goto LAB_0011ff88;
    if (((uVar9 ^ 0xffffffff) & 0xffff) == 0) {
      iVar13 = -0xf1;
    }
    else {
      iVar13 = uVar9 + 3;
      iVar14 = *(byte *)(param_1 + 900) + 1;
      uVar25 = uVar31 + 7;
      if (*(byte *)(param_1 + 0x380) == 0) {
        iVar13 = uVar9 + 1;
        uVar25 = uVar31 + 5;
      }
      uVar32 = iVar13 + iVar14;
      uVar25 = uVar25 + iVar14;
      if (((*(byte *)(param_1 + 0x380) | *(byte *)(param_1 + 900)) & 1) == 0) {
        uVar32 = uVar9 + 1;
        uVar25 = uVar31 + 5;
      }
      if (*(char *)(param_1 + 0x280) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x250);
      uVar26 = *(uint *)(param_1 + 0x248);
      uVar31 = uVar25 + 1;
      *(char *)(param_1 + 0x280) = *(char *)(param_1 + 0x280) + '\x01';
      if (uVar26 < uVar31) {
        pvVar17 = (void *)*plVar3;
        lVar21 = syna_request_managed_device();
        if (lVar21 == 0) {
          puVar18 = &DAT_0013ccb3;
LAB_0012086c:
          _printk(puVar18,"syna_pal_mem_alloc");
          *plVar3 = 0;
LAB_00120880:
          _printk(&DAT_00137ba6,"syna_tcm_buf_realloc",uVar31);
          lVar21 = syna_request_managed_device();
          if (lVar21 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          else if (pvVar17 != (void *)0x0) {
LAB_00120b94:
            devm_kfree(lVar21,pvVar17);
          }
        }
        else {
          if (0x7ffffffe < uVar25) {
            puVar18 = &DAT_00138e98;
            goto LAB_0012086c;
          }
          __dest = (void *)devm_kmalloc(lVar21,uVar31,0xdc0);
          *plVar3 = (long)__dest;
          if (__dest == (void *)0x0) goto LAB_00120880;
          if (pvVar17 != (void *)0x0) {
            memcpy(__dest,pvVar17,(ulong)uVar26);
            lVar21 = syna_request_managed_device();
            if (lVar21 == 0) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else {
              devm_kfree(lVar21,pvVar17);
            }
            *puVar1 = uVar31;
            goto LAB_0011fba8;
          }
          _printk(&DAT_0013225a,"syna_tcm_buf_realloc");
          lVar21 = syna_request_managed_device();
          if (lVar21 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          pvVar17 = (void *)*plVar3;
          lVar21 = syna_request_managed_device();
          if (lVar21 != 0) {
            if (pvVar17 == (void *)0x0) goto LAB_00120b98;
            goto LAB_00120b94;
          }
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        }
LAB_00120b98:
        *puVar1 = 0;
        _printk(&DAT_0013b97a,"syna_tcm_v1_continued_read");
        syna_tcm_buf_unlock(plVar3);
        iVar13 = -0xf3;
      }
      else {
LAB_0011fba8:
        uVar31 = uVar25;
        if (*(uint *)(param_1 + 0x3c) != 0) {
          uVar31 = *(uint *)(param_1 + 0x3c);
        }
        if (*(char *)(*(long *)(param_1 + 0x48) + 0x15) == '\x01') {
          uVar26 = 0;
          if (uVar31 == 0) {
            uVar24 = 0;
          }
          else {
            uVar5 = *(uint *)(*(long *)(param_1 + 0x48) + 0x18);
            uVar24 = 0;
            if (uVar5 != 0) {
              uVar26 = 0;
              if (uVar5 != 0) {
                uVar26 = uVar31 / uVar5;
              }
              uVar26 = uVar26 * uVar5;
              if (uVar26 != 0) goto LAB_0011fc08;
              goto LAB_0011fbe8;
            }
          }
        }
        else {
          uVar26 = uVar31;
          if (uVar31 == 0) {
LAB_0011fbe8:
            uVar24 = 0;
          }
          else {
LAB_0011fc08:
            uVar24 = 0;
            if (uVar26 != 0) {
              uVar24 = ((uVar25 + uVar26) - 1) / uVar26;
            }
          }
        }
        if (uVar24 < 2) {
          uVar24 = 1;
        }
        uVar25 = (*(int *)(param_1 + 0x200) - uVar9) + 4;
        if (*(char *)(param_1 + 0x310) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x2e0);
        iVar13 = 0;
        cVar20 = -1;
        *(char *)(param_1 + 0x310) = *(char *)(param_1 + 0x310) + '\x01';
        uVar31 = 0;
        do {
          uVar5 = uVar31 + 1;
          uVar29 = uVar26 - 2;
          if (uVar32 <= uVar26) {
            uVar29 = uVar32;
          }
          if (uVar29 != 1) {
            if (((uVar5 == uVar24) &&
                (lVar21 = *(long *)(param_1 + 0x48), (*(byte *)(lVar21 + 0x15) & 1) != 0)) &&
               (*(uint *)(lVar21 + 0x1c) < uVar29)) {
              uVar6 = *(uint *)(lVar21 + 0x18);
              iVar14 = 0;
              if (uVar6 != 0) {
                uVar10 = 0;
                if (uVar6 != 0) {
                  uVar10 = uVar29 / uVar6;
                }
                iVar14 = uVar10 * uVar6;
              }
              uVar29 = iVar14 - 2;
              if (uVar29 != uVar32) {
                uVar24 = uVar24 + 1;
              }
            }
            uVar6 = uVar29 + 2;
            pvVar17 = *(void **)(param_1 + 0x2d0);
            uVar27 = (ulong)*(uint *)(param_1 + 0x2d8);
            if (*(uint *)(param_1 + 0x2d8) < uVar6) {
              if (pvVar17 == (void *)0x0) {
LAB_0011fdc0:
                lVar21 = syna_request_managed_device();
                if (lVar21 != 0) goto LAB_0011fdc8;
LAB_0011ff28:
                puVar18 = &DAT_0013ccb3;
LAB_00120b40:
                _printk(puVar18,"syna_pal_mem_alloc");
                *(undefined8 *)(param_1 + 0x2d0) = 0;
              }
              else {
                lVar21 = syna_request_managed_device();
                if (lVar21 != 0) {
                  devm_kfree(lVar21,pvVar17);
                  goto LAB_0011fdc0;
                }
                _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                lVar21 = syna_request_managed_device();
                if (lVar21 == 0) goto LAB_0011ff28;
LAB_0011fdc8:
                if ((int)uVar6 < 1) {
                  puVar18 = &DAT_00138e98;
                  goto LAB_00120b40;
                }
                pvVar17 = (void *)devm_kmalloc(lVar21,(ulong)uVar6,0xdc0);
                *(void **)(param_1 + 0x2d0) = pvVar17;
                if (pvVar17 != (void *)0x0) {
                  *(uint *)(param_1 + 0x2d8) = uVar6;
                  uVar27 = (ulong)uVar6;
                  goto LAB_0011fdf0;
                }
              }
              _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar6);
              *(undefined8 *)(param_1 + 0x2d8) = 0;
              _printk(&DAT_0013e297,"syna_tcm_v1_continued_read");
              iVar13 = -0xf3;
              bVar11 = true;
            }
            else {
LAB_0011fdf0:
              memset(pvVar17,0,uVar27);
              *(undefined4 *)(param_1 + 0x2dc) = 0;
              iVar14 = 5;
              if (5 < iVar13 + 1) {
                iVar14 = iVar13 + 1;
              }
              do {
                uVar10 = *(uint *)(param_1 + 0x210);
                if ((0 < (int)uVar10) && (uVar7 = *(uint *)(param_1 + 0x214), 0 < (int)uVar7)) {
                  if (uVar7 <= uVar10) {
                    uVar7 = uVar10;
                  }
                  usleep_range_state(uVar10,uVar7,2);
                }
                iVar15 = syna_tcm_v1_read(param_1,uVar6,*(undefined8 *)(param_1 + 0x2d0),
                                          *(undefined4 *)(param_1 + 0x2d8));
                if (iVar15 < 0) {
                  _printk(&DAT_00137d70,"syna_tcm_v1_continued_read",uVar6);
                }
                else {
                  lVar21 = *(long *)(param_1 + 0x2d0);
                  *(uint *)(param_1 + 0x2dc) = uVar6;
                  cVar20 = *(char *)(lVar21 + 1);
                  if (cVar20 == '\x03') goto joined_r0x0011feb8;
                }
                iVar13 = iVar13 + 1;
              } while (iVar13 < 5);
              if (cVar20 == '\x03') {
                lVar21 = *(long *)(param_1 + 0x2d0);
                iVar13 = iVar14;
joined_r0x0011feb8:
                if (((void *)(lVar21 + 2) != (void *)0x0) &&
                   ((void *)(*plVar3 + (ulong)uVar25) != (void *)0x0)) {
                  uVar31 = *(int *)(param_1 + 0x2d8) - 2;
                  uVar6 = *(int *)(param_1 + 0x248) - uVar25;
                  if ((uVar29 <= uVar31) && (uVar29 <= uVar6)) {
                    memcpy((void *)(*plVar3 + (ulong)uVar25),(void *)(lVar21 + 2),(ulong)uVar29);
                    uVar25 = uVar29 + uVar25;
                    uVar32 = uVar32 - uVar29;
                    cVar20 = '\x03';
                    goto LAB_0011fd38;
                  }
                  _printk(&DAT_0013a172,"syna_pal_mem_cpy",uVar31,uVar6,uVar29);
                }
                _printk(&DAT_0013cf04,"syna_tcm_v1_continued_read");
                iVar13 = -0x16;
                bVar11 = true;
              }
              else {
                _printk(&DAT_001360f8,"syna_tcm_v1_continued_read",cVar20,uVar31,uVar24);
                iVar13 = -0xf2;
                bVar11 = true;
              }
            }
            goto LAB_0011ff40;
          }
          uVar32 = uVar32 - 1;
          *(undefined1 *)(*plVar3 + (ulong)uVar25) = 0x5a;
          uVar25 = uVar25 + 1;
LAB_0011fd38:
          uVar31 = uVar5;
        } while (uVar5 < uVar24);
        bVar11 = false;
        iVar13 = 0;
        *(uint *)(param_1 + 0x24c) = uVar25;
LAB_0011ff40:
        if (*(char *)(param_1 + 0x310) == '\x01') {
          cVar20 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar20 = *(char *)(param_1 + 0x310) + -1;
        }
        *(char *)(param_1 + 0x310) = cVar20;
        mutex_unlock(param_1 + 0x2e0);
        if (*(char *)(param_1 + 0x280) == '\x01') {
          cVar20 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar20 = *(char *)(param_1 + 0x280) + -1;
        }
        *(char *)(param_1 + 0x280) = cVar20;
        mutex_unlock(param_1 + 0x250);
        if (!bVar11) goto LAB_0011ff88;
      }
    }
    _printk(&DAT_0013b92f,"syna_tcm_v1_read_message",uVar9,*puVar30,puVar30[1],puVar30[2],puVar30[3]
           );
    goto LAB_00120cc0;
  }
  uVar25 = 0x40;
  if (*(uint *)(param_1 + 0x3c) != 0) {
    uVar25 = *(uint *)(param_1 + 0x3c);
  }
  lVar21 = syna_request_managed_device();
  if (lVar21 == 0) {
    puVar18 = &DAT_0013ccb3;
LAB_001205ec:
    _printk(puVar18,"syna_pal_mem_alloc");
LAB_001205f8:
    puVar18 = &DAT_00138b41;
    pcVar19 = "syna_tcm_v1_discard_message";
  }
  else {
    if (0x7ffffffe < uVar25) {
      puVar18 = &DAT_00138e98;
      goto LAB_001205ec;
    }
    lVar21 = devm_kmalloc(lVar21,uVar25 + 1,0xdc0);
    if (lVar21 == 0) goto LAB_001205f8;
    iVar13 = 100;
    do {
      lVar16 = *(long *)(param_1 + 0x48);
      puVar18 = &DAT_001389db;
      if ((lVar16 == 0) ||
         (pcVar22 = *(code **)(lVar16 + 0x20), puVar18 = &DAT_00136c67, pcVar22 == (code *)0x0)) {
        _printk(puVar18,"syna_tcm_read");
LAB_00120768:
        _printk(&DAT_0013222b,"syna_tcm_v1_discard_message",uVar25);
        lVar16 = syna_request_managed_device();
        goto joined_r0x00120784;
      }
      if (*(int *)(pcVar22 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
        pcVar22 = (code *)SoftwareBreakpoint(0x8228,0x11fa7c);
        (*pcVar22)();
      }
      iVar14 = (*pcVar22)(lVar16,lVar21,uVar25);
      if (iVar14 < 0) goto LAB_00120768;
      if (*(char *)(lVar21 + 1) == '\0') break;
      usleep_range_state(1000,2000,2);
      iVar13 = iVar13 + -1;
    } while (iVar13 != 0);
    lVar16 = syna_request_managed_device();
joined_r0x00120784:
    if (lVar16 != 0) {
      devm_kfree(lVar16,lVar21);
      iVar13 = -0xf2;
      goto LAB_00120cc0;
    }
    puVar18 = &DAT_0013ccb3;
    pcVar19 = "syna_pal_mem_free";
  }
  _printk(puVar18,pcVar19);
  iVar13 = -0xf2;
LAB_00120cc0:
  uVar25 = *(uint *)(param_1 + 0x210);
  if ((0 < (int)uVar25) && (uVar31 = *(uint *)(param_1 + 0x214), 0 < (int)uVar31)) {
    if (uVar31 <= uVar25) {
      uVar31 = uVar25;
    }
    usleep_range_state(uVar25,uVar31,2);
  }
  mutex_unlock(param_1 + 0x348);
  return iVar13;
}



/* 00120da8 syna_tcm_v1_set_up_max_rw_size */

undefined4 syna_tcm_v1_set_up_max_rw_size(long param_1,uint param_2,uint param_3)

{
  uint uVar1;
  ushort uVar2;
  undefined1 *puVar3;
  uint uVar4;
  
  if (param_1 == 0) {
    puVar3 = &DAT_00133fd6;
  }
  else {
    if (*(char *)(param_1 + 0x80) == '\x01') {
      uVar2 = *(ushort *)(param_1 + 0x96);
      uVar1 = *(uint *)(param_1 + 0x40);
      if (param_2 <= uVar2) {
        uVar4 = (uint)uVar2;
        if (uVar1 <= uVar2) {
          uVar4 = uVar1;
        }
        if (param_2 <= uVar4) {
          uVar4 = param_2;
        }
        if (uVar1 != 0) {
          param_2 = uVar4;
        }
        if (*(uint *)(param_1 + 0x38) != param_2) {
          *(uint *)(param_1 + 0x38) = param_2;
        }
      }
      uVar4 = param_3;
      if ((uVar1 != 0) && (uVar4 = *(uint *)(param_1 + 0x44), param_3 <= *(uint *)(param_1 + 0x44)))
      {
        uVar4 = param_3;
      }
      if (*(uint *)(param_1 + 0x3c) == uVar4) {
        return 0;
      }
      *(uint *)(param_1 + 0x3c) = uVar4;
      return 0;
    }
    puVar3 = &DAT_0013773a;
  }
  _printk(puVar3,"syna_tcm_v1_set_up_max_rw_size");
  return 0xffffff0f;
}



/* 00120e64 syna_tcm_v1_terminate */

void syna_tcm_v1_terminate(long param_1)

{
  ulong uVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_v1_terminate");
  }
  else if (*(int *)(param_1 + 0x1f8) == 1) {
    _printk(&DAT_0013c0f6,"syna_tcm_v1_terminate",*(undefined1 *)(param_1 + 0x1fc));
    *(undefined4 *)(param_1 + 0x1f8) = 2;
    uVar1 = completion_done(param_1 + 0x220);
    if ((uVar1 & 1) == 0) {
      complete(param_1 + 0x220);
    }
  }
  return;
}



/* 00120eec syna_tcm_v1_read */

int syna_tcm_v1_read(long param_1,uint param_2,char *param_3,uint param_4)

{
  int iVar1;
  long lVar2;
  undefined *puVar3;
  code *pcVar4;
  
  if (param_3 == (char *)0x0) {
    _printk(&DAT_0013477d,"syna_tcm_v1_read");
    return -0xf1;
  }
  if (param_2 == 0) {
    return 0;
  }
  if (param_4 < param_2) {
    puVar3 = &DAT_0013c72e;
LAB_00120fac:
    _printk(puVar3,"syna_tcm_v1_read",param_2);
    return -0xf1;
  }
  if ((*(uint *)(param_1 + 0x3c) != 0) && (*(uint *)(param_1 + 0x3c) < param_2)) {
    puVar3 = &DAT_001341e1;
    goto LAB_00120fac;
  }
  lVar2 = *(long *)(param_1 + 0x48);
  if (lVar2 == 0) {
    iVar1 = -0xf1;
    puVar3 = &DAT_001389db;
  }
  else {
    pcVar4 = *(code **)(lVar2 + 0x20);
    if (pcVar4 != (code *)0x0) {
      if (*(int *)(pcVar4 + -4) != 0x28a4201f) {
                    /* WARNING: Does not return */
        pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x120f54);
        (*pcVar4)();
      }
      iVar1 = (*pcVar4)(lVar2,param_3,param_2);
      if (-1 < iVar1) {
        if (*param_3 == -0x5b) {
          return 0;
        }
        _printk(&DAT_001390b1,"syna_tcm_v1_read");
        return -0xf2;
      }
      goto LAB_00120ff4;
    }
    iVar1 = -0xf5;
    puVar3 = &DAT_00136c67;
  }
  _printk(puVar3,"syna_tcm_read");
LAB_00120ff4:
  _printk(&DAT_0013222b,"syna_tcm_v1_read",param_2);
  return iVar1;
}



/* 00121034 syna_tcm_config_timings */

undefined8 syna_tcm_config_timings(long param_1,int *param_2,int param_3,uint param_4)

{
  if ((param_2 == (int *)0x0) && (param_4 == 0xffff)) {
    _printk(&DAT_0013cf28,"syna_tcm_config_timings");
    return 0xffffff0f;
  }
  if ((param_2 != (int *)0x0) && ((param_4 >> 2 & 1) != 0)) {
    if (param_2[2] != 0) {
      *(int *)(param_1 + 0x210) = param_2[2];
    }
    param_3 = param_2[3];
    if (param_3 != 0) {
      *(int *)(param_1 + 0x214) = param_3;
    }
  }
  if ((param_4 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      param_3 = *param_2;
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x208) = param_3;
    }
  }
  if ((param_4 >> 1 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (param_2[1] != 0)) {
      param_3 = param_2[1];
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x20c) = param_3;
    }
  }
  if (((param_2 != (int *)0x0) && ((param_4 >> 3 & 1) != 0)) && (param_3 = param_2[4], param_3 != 0)
     ) {
    *(int *)(param_1 + 0x218) = param_3;
  }
  if ((param_4 >> 8 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (param_2[8] != 0)) {
      param_3 = param_2[8];
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x1e8) = param_3;
    }
  }
  if ((param_4 >> 9 & 1) != 0) {
    if ((param_2 != (int *)0x0) && (param_2[9] != 0)) {
      param_3 = param_2[9];
    }
    if (param_3 != 0) {
      *(int *)(param_1 + 0x1ec) = param_3;
    }
  }
  return 0;
}



/* 00121124 syna_tcm_allocate_device */

undefined8 syna_tcm_allocate_device(long *param_1,long param_2,undefined8 param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined *puVar3;
  long lVar4;
  undefined8 *puVar5;
  void *__s;
  char *pcVar6;
  char cVar7;
  long lVar8;
  uint uVar9;
  
  if (param_2 == 0) {
    puVar3 = &DAT_0013b9ee;
LAB_00121170:
    _printk(puVar3,"syna_tcm_allocate_device");
    return 0xffffff0f;
  }
  if (*(long *)(param_2 + 0x20) == 0) {
    puVar3 = &DAT_001390e0;
    goto LAB_00121170;
  }
  if (*(long *)(param_2 + 0x28) == 0) {
    puVar3 = &DAT_00134da3;
    goto LAB_00121170;
  }
  _printk(&DAT_001372de,"syna_tcm_allocate_device");
  *param_1 = 0;
  lVar4 = syna_request_managed_device();
  if (lVar4 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
  }
  else {
    puVar5 = (undefined8 *)devm_kmalloc(lVar4,0x23e8,0xdc0);
    if (puVar5 != (undefined8 *)0x0) {
      uVar1 = *(undefined4 *)(param_2 + 0xc);
      uVar2 = *(undefined4 *)(param_2 + 0x10);
      *puVar5 = param_3;
      puVar5[9] = param_2;
      puVar5[0x72] = 0;
      puVar5[0x73] = 0;
      puVar5[0x74] = 0;
      puVar5[0x75] = 0;
      *(undefined4 *)(puVar5 + 8) = uVar2;
      *(undefined4 *)((long)puVar5 + 0x44) = uVar1;
      *(undefined4 *)(puVar5 + 7) = uVar2;
      *(undefined4 *)((long)puVar5 + 0x3c) = uVar1;
      __mutex_init(puVar5 + 10,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x28) = 0;
      puVar5[0x20] = 0;
      puVar5[0x21] = 0;
      __mutex_init(puVar5 + 0x22,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x31) = 0;
      puVar5[0x29] = 0;
      puVar5[0x2a] = 0;
      __mutex_init(puVar5 + 0x2b,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x3a) = 0;
      puVar5[0x32] = 0;
      puVar5[0x33] = 0;
      __mutex_init(puVar5 + 0x34,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x50) = 0;
      puVar5[0x48] = 0;
      puVar5[0x49] = 0;
      __mutex_init(puVar5 + 0x4a,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x59) = 0;
      puVar5[0x51] = 0;
      puVar5[0x52] = 0;
      __mutex_init(puVar5 + 0x53,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined1 *)(puVar5 + 0x62) = 0;
      puVar5[0x5a] = 0;
      puVar5[0x5b] = 0;
      __mutex_init(puVar5 + 0x5c,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 *)(puVar5 + 0x44) = 0;
      __init_swait_queue_head(puVar5 + 0x45,"&x->wait",&init_completion___key);
      __mutex_init(puVar5 + 99,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      __mutex_init(puVar5 + 0x69,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 *)(puVar5 + 0x3f) = 0;
      *(undefined2 *)((long)puVar5 + 0x1fc) = 0;
      *(undefined4 *)(puVar5 + 0x40) = 0;
      *(undefined1 *)((long)puVar5 + 0x204) = 0;
      if (*(char *)(puVar5 + 0x50) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(puVar5 + 0x4a);
      uVar9 = *(uint *)(puVar5 + 0x49);
      __s = (void *)puVar5[0x48];
      *(char *)(puVar5 + 0x50) = *(char *)(puVar5 + 0x50) + '\x01';
      if (3 < uVar9) {
LAB_0012150c:
        memset(__s,0,(ulong)uVar9);
        cVar7 = '\0';
        puVar5[0x49] = 4;
        if (*(char *)(puVar5 + 0x50) != '\x01') {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar7 = *(char *)(puVar5 + 0x50) + -1;
        }
        *(char *)(puVar5 + 0x50) = cVar7;
        mutex_unlock(puVar5 + 0x4a);
        *(undefined1 *)((long)puVar5 + 0x37a) = 0;
        *(undefined4 *)((long)puVar5 + 0x382) = 0;
        *(undefined4 *)((long)puVar5 + 0x37c) = 0;
        puVar5[0x41] = 0x1400000bb8;
        *(undefined1 *)(puVar5 + 0x70) = 0;
        puVar5[0x42] = 0x6400000032;
        *(undefined4 *)(puVar5 + 0x43) = 10;
        *(undefined1 *)((long)puVar5 + 9) = 0;
        puVar5[0x3d] = 0x6400000064;
        *param_1 = (long)puVar5;
        _printk(&DAT_0013c7af,"syna_tcm_allocate_device",2,0xc,0);
        puVar3 = &DAT_0013650e;
        if (*(char *)(param_2 + 0x14) == '\0') {
          puVar3 = &DAT_0013a5e4;
        }
        _printk(&DAT_00137768,"syna_tcm_allocate_device",puVar3);
        if (*(char *)(param_2 + 0x15) == '\x01') {
          puVar3 = &DAT_0013a5e4;
          if (*(int *)(param_2 + 0x18) != 0) {
            puVar3 = &DAT_0013650e;
          }
          _printk(&DAT_0013db91,"syna_tcm_allocate_device",puVar3,*(int *)(param_2 + 0x18),
                  *(undefined4 *)(param_2 + 0x1c));
          return 0;
        }
        return 0;
      }
      if (__s != (void *)0x0) {
        lVar4 = syna_request_managed_device();
        if (lVar4 == 0) {
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        }
        else {
          devm_kfree(lVar4,__s);
        }
      }
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
        puVar5[0x48] = 0;
      }
      else {
        uVar9 = 4;
        __s = (void *)devm_kmalloc(lVar4,4,0xdc0);
        puVar5[0x48] = __s;
        if (__s != (void *)0x0) {
          *(undefined4 *)(puVar5 + 0x49) = 4;
          goto LAB_0012150c;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",4);
      puVar5[0x49] = 0;
      _printk(&DAT_00136783,"syna_tcm_init_message_handler",4);
      puVar5[0x49] = 0;
      if (*(char *)(puVar5 + 0x50) == '\x01') {
        cVar7 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar7 = *(char *)(puVar5 + 0x50) + -1;
      }
      *(char *)(puVar5 + 0x50) = cVar7;
      mutex_unlock(puVar5 + 0x4a);
      _printk(&DAT_0013c12f,"syna_tcm_allocate_device");
      if (*(char *)(puVar5 + 0x3a) != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar8 = puVar5[0x32];
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar8 != 0) {
        devm_kfree(lVar4,lVar8);
      }
      puVar5[0x33] = 0;
      *(undefined1 *)(puVar5 + 0x3a) = 0;
      if (*(char *)(puVar5 + 0x28) != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar8 = puVar5[0x20];
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar8 != 0) {
        devm_kfree(lVar4,lVar8);
      }
      puVar5[0x21] = 0;
      *(undefined1 *)(puVar5 + 0x28) = 0;
      if (*(char *)(puVar5 + 0x31) != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar8 = puVar5[0x29];
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar8 != 0) {
        devm_kfree(lVar4,lVar8);
      }
      puVar5[0x2a] = 0;
      *(undefined1 *)(puVar5 + 0x31) = 0;
      puVar5[9] = 0;
      lVar4 = syna_request_managed_device();
      if (lVar4 != 0) {
        devm_kfree(lVar4,puVar5);
        return 0xffffff0d;
      }
      puVar3 = &DAT_0013ccb3;
      pcVar6 = "syna_pal_mem_free";
      goto LAB_00121204;
    }
  }
  puVar3 = &DAT_00136753;
  pcVar6 = "syna_tcm_allocate_device";
LAB_00121204:
  _printk(puVar3,pcVar6);
  return 0xffffff0d;
}



/* 001216d0 syna_tcm_remove_device */

void syna_tcm_remove_device(undefined8 *param_1)

{
  long lVar1;
  undefined1 *puVar2;
  long lVar3;
  
  if (param_1 == (undefined8 *)0x0) {
    puVar2 = &DAT_00133fd6;
  }
  else {
    if (*(char *)(param_1 + 0x62) != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x5a];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x5b] = 0;
    *(undefined1 *)(param_1 + 0x62) = 0;
    if (*(char *)(param_1 + 0x59) != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x51];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x52] = 0;
    *(undefined1 *)(param_1 + 0x59) = 0;
    if (*(char *)(param_1 + 0x50) != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x48];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x49] = 0;
    *(undefined1 *)(param_1 + 0x50) = 0;
    if (*(char *)(param_1 + 0x3a) != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x32];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x33] = 0;
    *(undefined1 *)(param_1 + 0x3a) = 0;
    if (*(char *)(param_1 + 0x28) != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x20];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x21] = 0;
    *(undefined1 *)(param_1 + 0x28) = 0;
    if (*(char *)(param_1 + 0x31) != '\0') {
      _printk(&DAT_00135294,"syna_tcm_buf_release");
    }
    lVar3 = param_1[0x29];
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else if (lVar3 != 0) {
      devm_kfree(lVar1,lVar3);
    }
    param_1[0x2a] = 0;
    *(undefined1 *)(param_1 + 0x31) = 0;
    *param_1 = 0;
    param_1[9] = 0;
    lVar1 = syna_request_managed_device();
    if (lVar1 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    }
    else {
      devm_kfree(lVar1,param_1);
    }
    puVar2 = &DAT_0013ba18;
  }
  _printk(puVar2,"syna_tcm_remove_device");
  return;
}



/* 00121944 syna_tcm_detect_device */

ulong syna_tcm_detect_device(long param_1,uint param_2,uint param_3)

{
  int iVar1;
  undefined1 *puVar2;
  
  if (param_1 == 0) {
    puVar2 = &DAT_00133fd6;
  }
  else {
    *(undefined2 *)(param_1 + 8) = 0;
    if ((param_2 & 0xf) == 1) {
      iVar1 = syna_tcm_v1_detect(param_1,param_2 >> 7 & 1,param_3 & 1);
      if (iVar1 < 0) {
        if (*(int *)(param_1 + 0x248) != 0) {
          puVar2 = *(undefined1 **)(param_1 + 0x240);
          _printk(&DAT_00133ace,"syna_tcm_detect_device",*puVar2,puVar2[1],puVar2[2],puVar2[3]);
          return 0xffffff0b;
        }
        return 0xffffff0b;
      }
      if ((*(long *)(param_1 + 0x398) != 0) && (*(long *)(param_1 + 0x390) != 0)) {
        if ((param_2 >> 7 & 1) == 0) {
          if (*(char *)(param_1 + 9) == '\v') {
            _printk(&DAT_0013d55f,"syna_tcm_detect_device");
          }
          else if (*(char *)(param_1 + 9) == '\x01') {
            _printk(&DAT_0013295b,"syna_tcm_detect_device",*(undefined4 *)(param_1 + 0xc),
                    param_1 + 0x82);
          }
          else {
            _printk(&DAT_0013a350,"syna_tcm_detect_device");
          }
          return (ulong)*(byte *)(param_1 + 9);
        }
        return 1;
      }
      _printk(&DAT_0013c7f0,"syna_tcm_detect_device");
      _printk(&DAT_0013779d,"syna_tcm_detect_device");
      return 0xffffff0b;
    }
    if ((param_2 & 0xf) == 2) {
      _printk(&DAT_001333de,"syna_tcm_detect_device",2);
      return 0xffffff0f;
    }
    puVar2 = &DAT_0013542a;
  }
  _printk(puVar2,"syna_tcm_detect_device");
  return 0xffffff0f;
}



/* 00121ad4 syna_tcm_get_event_data */

ulong syna_tcm_get_event_data(long param_1,byte *param_2,long param_3)

{
  byte bVar1;
  code *pcVar2;
  ulong uVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
LAB_00121b98:
    _printk(puVar4,"syna_tcm_get_event_data");
    return 0xffffff0f;
  }
  if (param_2 == (byte *)0x0) {
    puVar4 = &DAT_00138e98;
    goto LAB_00121b98;
  }
  if (*(int *)(*(code **)(param_1 + 0x390) + -4) != -0x1ef225df) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x121b1c);
    (*pcVar2)();
  }
  uVar3 = (**(code **)(param_1 + 0x390))(param_1,param_2);
  if ((int)uVar3 < 0) {
    _printk(&DAT_0013ba45,"syna_tcm_get_event_data");
    goto LAB_00121bf8;
  }
  if (param_3 == 0) {
    return uVar3;
  }
  bVar1 = *param_2;
  if (bVar1 - 0xff < 0xffffff11) {
LAB_00121b58:
    if (0xe < bVar1 - 1) {
      return uVar3;
    }
    if (*(int *)(param_1 + 0x154) == 0) {
      return uVar3;
    }
    uVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
    if (-1 < (int)uVar3) {
      return 0;
    }
    bVar1 = *param_2;
    puVar5 = &DAT_0013dbf7;
  }
  else {
    if (*(int *)(param_1 + 0x10c) == 0) {
      return uVar3;
    }
    uVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x100);
    bVar1 = *param_2;
    if (-1 < (int)uVar3) {
      uVar3 = 0;
      goto LAB_00121b58;
    }
    puVar5 = &DAT_0013c81f;
  }
  _printk(puVar5,"syna_tcm_get_event_data",bVar1);
LAB_00121bf8:
  return uVar3 & 0xffffffff;
}



/* 00121c10 syna_tcm_buf_copy */

undefined4 syna_tcm_buf_copy(long *param_1,undefined8 *param_2)

{
  uint uVar1;
  uint uVar2;
  void *__s;
  long lVar3;
  undefined *puVar4;
  ulong __n;
  char cVar5;
  undefined4 uVar6;
  uint uVar7;
  ulong uVar8;
  
  if ((char)param_1[8] != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 2);
  *(char *)(param_1 + 8) = (char)param_1[8] + '\x01';
  if (*(char *)(param_2 + 8) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 2);
  uVar7 = *(uint *)((long)param_2 + 0xc);
  *(char *)(param_2 + 8) = *(char *)(param_2 + 8) + '\x01';
  uVar2 = *(uint *)(param_1 + 1);
  __n = (ulong)uVar2;
  if (uVar2 < uVar7) {
    if (param_1 == (long *)0x0) {
      _printk(&DAT_0013c894,"syna_tcm_buf_alloc");
    }
    else {
      uVar1 = uVar7 + 1;
      uVar8 = (ulong)uVar1;
      __s = (void *)*param_1;
      if (uVar1 <= uVar2) {
LAB_00121cd8:
        memset(__s,0,__n);
        *(undefined4 *)((long)param_1 + 0xc) = 0;
        __n = (ulong)*(uint *)(param_1 + 1);
        uVar7 = *(uint *)((long)param_2 + 0xc);
        goto LAB_00121cf0;
      }
      if (__s == (void *)0x0) {
LAB_00121ca4:
        lVar3 = syna_request_managed_device();
        if (lVar3 != 0) goto LAB_00121cac;
LAB_00121e74:
        puVar4 = &DAT_0013ccb3;
LAB_00121e7c:
        _printk(puVar4,"syna_pal_mem_alloc");
        *param_1 = 0;
      }
      else {
        lVar3 = syna_request_managed_device();
        if (lVar3 != 0) {
          devm_kfree(lVar3,__s);
          goto LAB_00121ca4;
        }
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
        lVar3 = syna_request_managed_device();
        if (lVar3 == 0) goto LAB_00121e74;
LAB_00121cac:
        if (0x7ffffffe < uVar7) {
          puVar4 = &DAT_00138e98;
          goto LAB_00121e7c;
        }
        __s = (void *)devm_kmalloc(lVar3,uVar8,0xdc0);
        *param_1 = (long)__s;
        if (__s != (void *)0x0) {
          *(uint *)(param_1 + 1) = uVar1;
          __n = uVar8;
          goto LAB_00121cd8;
        }
      }
      _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar8);
      param_1[1] = 0;
    }
    _printk(&DAT_00138466,"syna_tcm_buf_copy",*(int *)((long)param_2 + 0xc) + 1);
    if (*(char *)(param_2 + 8) == '\x01') {
      cVar5 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar5 = *(char *)(param_2 + 8) + -1;
    }
    *(char *)(param_2 + 8) = cVar5;
    mutex_unlock(param_2 + 2);
    cVar5 = (char)param_1[8];
    uVar6 = 0xffffff0d;
joined_r0x00121eec:
    if (cVar5 == '\x01') {
      cVar5 = '\0';
      goto LAB_00121d54;
    }
  }
  else {
LAB_00121cf0:
    if (((void *)*param_1 == (void *)0x0) || ((void *)*param_2 == (void *)0x0)) {
LAB_00121dc8:
      _printk(&DAT_001359ca,"syna_tcm_buf_copy",uVar7);
      if (*(char *)(param_2 + 8) == '\x01') {
        cVar5 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar5 = *(char *)(param_2 + 8) + -1;
      }
      *(char *)(param_2 + 8) = cVar5;
      mutex_unlock(param_2 + 2);
      cVar5 = (char)param_1[8];
      uVar6 = 0xffffffea;
      goto joined_r0x00121eec;
    }
    if (((uint)__n < uVar7) || (*(uint *)(param_2 + 1) < uVar7)) {
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_2 + 1),__n,uVar7);
      uVar7 = *(uint *)((long)param_2 + 0xc);
      goto LAB_00121dc8;
    }
    memcpy((void *)*param_1,(void *)*param_2,(ulong)uVar7);
    *(undefined4 *)((long)param_1 + 0xc) = *(undefined4 *)((long)param_2 + 0xc);
    if (*(char *)(param_2 + 8) == '\x01') {
      cVar5 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar5 = *(char *)(param_2 + 8) + -1;
    }
    *(char *)(param_2 + 8) = cVar5;
    mutex_unlock(param_2 + 2);
    uVar6 = 0;
    if ((char)param_1[8] == '\x01') {
      cVar5 = '\0';
      goto LAB_00121d54;
    }
  }
  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
  cVar5 = (char)param_1[8] + -1;
LAB_00121d54:
  *(char *)(param_1 + 8) = cVar5;
  mutex_unlock(param_1 + 2);
  return uVar6;
}



/* 00121f54 syna_tcm_identify */

int syna_tcm_identify(long param_1,void *param_2,int param_3)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  char cVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_identify");
    iVar3 = -0xf1;
  }
  else {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_3 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_identify");
      }
      else {
        param_3 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x121ff8);
      (*pcVar2)();
    }
    iVar3 = (**(code **)(param_1 + 0x398))(param_1,2,0,0,0,param_3);
    if (iVar3 < 0) {
      _printk(&DAT_0013a7db,"syna_tcm_identify",2);
    }
    else {
      *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
      _printk(&DAT_0013cf5a,"syna_tcm_identify",*(undefined1 *)(param_1 + 0x81),
              *(undefined1 *)(param_1 + 0x80));
      if (param_2 != (void *)0x0) {
        if (*(char *)(param_1 + 0x188) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x158);
        uVar1 = *(uint *)(param_1 + 0x154);
        if (0x2f < uVar1) {
          uVar1 = 0x30;
        }
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(void **)(param_1 + 0x148) != (void *)0x0) {
          if (uVar1 <= *(uint *)(param_1 + 0x150)) {
            memcpy(param_2,*(void **)(param_1 + 0x148),(ulong)uVar1);
            if (*(char *)(param_1 + 0x188) == '\x01') {
              cVar4 = '\0';
            }
            else {
              _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
              cVar4 = *(char *)(param_1 + 0x188) + -1;
            }
            *(char *)(param_1 + 0x188) = cVar4;
            mutex_unlock(param_1 + 0x158);
            return 0;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x30);
        }
        _printk(&DAT_0013ba6a,"syna_tcm_identify");
        syna_tcm_buf_unlock(param_1 + 0x148);
        iVar3 = -0x16;
      }
    }
  }
  return iVar3;
}



/* 00122140 syna_tcm_buf_unlock */

void syna_tcm_buf_unlock(long param_1)

{
  char cVar1;
  
  if (*(char *)(param_1 + 0x40) == '\x01') {
    cVar1 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar1 = *(char *)(param_1 + 0x40) + -1;
  }
  *(char *)(param_1 + 0x40) = cVar1;
  mutex_unlock(param_1 + 0x10);
  return;
}



/* 001221ac syna_tcm_reset */

int syna_tcm_reset(long param_1,uint param_2)

{
  code *pcVar1;
  int iVar2;
  uint uVar3;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_reset");
    return -0xf1;
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      param_2 = *(uint *)(param_1 + 0x1ec);
      _printk(&DAT_0013c851,"syna_tcm_reset");
      if (param_2 != 0) goto LAB_001221c8;
    }
    uVar3 = 0;
  }
  else {
LAB_001221c8:
    uVar3 = *(uint *)(param_1 + 0x1ec);
    if (*(uint *)(param_1 + 0x1ec) <= param_2) {
      uVar3 = param_2;
    }
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122218);
    (*pcVar1)();
  }
  iVar2 = (**(code **)(param_1 + 0x398))(param_1,4,0,0,0,uVar3);
  if (iVar2 < 0) {
    _printk(&DAT_0013a7db,"syna_tcm_reset",4);
  }
  else {
    pcVar1 = *(code **)(param_1 + 0x3b0);
    *(undefined1 *)(param_1 + 9) = *(undefined1 *)(param_1 + 0x81);
    if (pcVar1 != (code *)0x0) {
      if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12224c);
        (*pcVar1)();
      }
      (*pcVar1)(param_1);
    }
    pcVar1 = *(code **)(param_1 + 0x23e0);
    if (pcVar1 != (code *)0x0) {
      if (*(int *)(pcVar1 + -4) != -0x3f961b9c) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122274);
        (*pcVar1)();
      }
      iVar2 = (*pcVar1)(*(undefined8 *)(param_1 + 0x23d8));
      if (iVar2 < 0) {
        _printk(&DAT_0013341e,"syna_tcm_reset");
        return iVar2;
      }
    }
    iVar2 = 0;
  }
  return iVar2;
}



/* 0012231c syna_tcm_enable_report */

void syna_tcm_enable_report(long param_1,undefined1 param_2,ulong param_3,int param_4)

{
  char *pcVar1;
  long lVar2;
  code *pcVar3;
  ulong uVar4;
  undefined4 uVar5;
  undefined1 local_3c [4];
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_3c[0] = param_2;
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_enable_report");
    uVar4 = 0xffffff0f;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_enable_report");
      }
      else {
        param_4 = 0;
      }
    }
    uVar5 = 5;
    if ((param_3 & 1) == 0) {
      uVar5 = 6;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x1223ac);
      (*pcVar3)();
    }
    uVar4 = (**(code **)(param_1 + 0x398))(param_1,uVar5,local_3c,1,0,param_4);
    if ((int)uVar4 < 0) {
      pcVar1 = "enable";
      if ((param_3 & 1) == 0) {
        pcVar1 = "disable";
      }
      uVar4 = uVar4 & 0xffffffff;
      _printk(&DAT_0013ac2b,"syna_tcm_enable_report",uVar5,pcVar1,local_3c[0]);
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_enable_report");
    uVar4 = 0xffffff0f;
  }
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar4);
}



/* 0012248c syna_tcm_wait_for_report */

void syna_tcm_wait_for_report(long param_1,char param_2,long param_3,uint param_4,uint param_5)

{
  uint uVar1;
  code *pcVar2;
  int iVar3;
  undefined1 *puVar4;
  ulong uVar5;
  long lVar6;
  bool bVar7;
  char local_5c [4];
  long local_58;
  
  lVar6 = sp_el0;
  local_58 = *(long *)(lVar6 + 0x710);
  local_5c[0] = '\0';
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
LAB_00122560:
    _printk(puVar4,"syna_tcm_wait_for_report");
  }
  else {
    if (param_3 == 0) {
      puVar4 = &DAT_0013b218;
      goto LAB_00122560;
    }
    if (*(char *)(param_1 + 9) == '\x01') {
      lVar6 = *(long *)(param_1 + 0x48);
      uVar1 = param_4;
      if (*(char *)(lVar6 + 0x14) == '\x01') {
        if (lVar6 == 0) {
          _printk(&DAT_001389db,"syna_tcm_enable_irq");
          goto LAB_001225ac;
        }
        if (*(long *)(lVar6 + 0x38) == 0) goto LAB_001225ac;
        mutex_lock(param_1 + 0x50);
        if (*(int *)(*(code **)(lVar6 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
          pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x12252c);
          (*pcVar2)();
        }
        iVar3 = (**(code **)(lVar6 + 0x38))(lVar6,0);
        mutex_unlock(param_1 + 0x50);
        bVar7 = iVar3 < 1;
      }
      else {
LAB_001225ac:
        bVar7 = true;
      }
      while( true ) {
        if (0 < (int)param_4) {
          msleep(param_4);
        }
        uVar5 = syna_tcm_get_event_data(param_1,local_5c,param_3);
        if ((((-1 < (int)uVar5) && (local_5c[0] == param_2)) && (*(int *)(param_3 + 0xc) != 0)) ||
           (param_5 <= uVar1)) break;
        uVar1 = uVar1 + param_4;
      }
      lVar6 = *(long *)(param_1 + 0x48);
      if (!bVar7 && ((*(byte *)(lVar6 + 0x14) ^ 0xff) & 1) == 0) {
        if (lVar6 == 0) {
          uVar5 = uVar5 & 0xffffffff;
          _printk(&DAT_001389db,"syna_tcm_enable_irq");
        }
        else if (*(long *)(lVar6 + 0x38) != 0) {
          uVar5 = uVar5 & 0xffffffff;
          mutex_lock(param_1 + 0x50);
          if (*(int *)(*(code **)(lVar6 + 0x38) + -4) != 0x342e61b1) {
                    /* WARNING: Does not return */
            pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x122654);
            (*pcVar2)();
          }
          (**(code **)(lVar6 + 0x38))(lVar6,1);
          mutex_unlock(param_1 + 0x50);
        }
      }
      if ((param_5 <= uVar1) && ((local_5c[0] != param_2 || (*(int *)(param_3 + 0xc) == 0)))) {
        uVar5 = 0xffffff0c;
      }
      goto LAB_00122684;
    }
    _printk(&DAT_001347b2,"syna_tcm_wait_for_report");
  }
  uVar5 = 0xffffff0f;
LAB_00122684:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar5);
  }
  return;
}



/* 001226ec syna_tcm_switch_fw_mode */

int syna_tcm_switch_fw_mode(long param_1,char param_2,uint param_3)

{
  code *pcVar1;
  int iVar2;
  undefined1 *puVar3;
  undefined *puVar4;
  char *pcVar5;
  uint uVar6;
  
  if (param_1 == 0) {
    puVar3 = &DAT_00133fd6;
LAB_001227bc:
    _printk(puVar3,"syna_tcm_switch_fw_mode");
    iVar2 = -0xf1;
  }
  else {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        uVar6 = *(uint *)(param_1 + 0x1e8);
        _printk(&DAT_0013ba9e,"syna_tcm_switch_fw_mode");
      }
      else {
        uVar6 = 0;
      }
    }
    else {
      uVar6 = *(uint *)(param_1 + 0x1e8);
      if (*(uint *)(param_1 + 0x1e8) <= param_3) {
        uVar6 = param_3;
      }
    }
    if (param_2 == '\v') {
      if (*(char *)(param_1 + 9) == '\v') {
LAB_0012276c:
        pcVar1 = *(code **)(param_1 + 0x3b0);
joined_r0x00122770:
        if (pcVar1 != (code *)0x0) {
          if (*(int *)(pcVar1 + -4) != -0x2a859af7) {
                    /* WARNING: Does not return */
            pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12278c);
            (*pcVar1)();
          }
          (*pcVar1)();
        }
        return 0;
      }
      if (uVar6 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
          uVar6 = *(uint *)(param_1 + 0x1e8);
          _printk(&DAT_0013c851,"syna_tcm_run_bootloader_fw");
        }
        else {
          uVar6 = 0;
        }
      }
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122938);
        (*pcVar1)();
      }
      iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x1f,0,0,0,uVar6);
      if (iVar2 < 0) {
        _printk(&DAT_0013a7db,"syna_tcm_run_bootloader_fw",0x1f);
      }
      else {
        if (*(char *)(param_1 + 9) == '\v') {
          puVar4 = &DAT_0013d5f7;
          pcVar5 = "syna_tcm_run_bootloader_fw";
LAB_0012297c:
          _printk(puVar4,pcVar5);
          pcVar1 = *(code **)(param_1 + 0x3b0);
          goto joined_r0x00122770;
        }
        _printk(&DAT_00139120,"syna_tcm_run_bootloader_fw");
        iVar2 = -0xf2;
      }
      puVar4 = &DAT_00136e18;
    }
    else {
      if (param_2 != '\x01') {
        puVar3 = &DAT_001377de;
        goto LAB_001227bc;
      }
      if (*(char *)(param_1 + 9) == '\x01') goto LAB_0012276c;
      if (uVar6 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
          uVar6 = *(uint *)(param_1 + 0x1e8);
          _printk(&DAT_0013c851,"syna_tcm_run_application_fw");
        }
        else {
          uVar6 = 0;
        }
      }
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122874);
        (*pcVar1)();
      }
      iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x14,0,0,0,uVar6);
      if (iVar2 < 0) {
        _printk(&DAT_0013a7db,"syna_tcm_run_application_fw",0x14);
      }
      else {
        if (*(char *)(param_1 + 9) == '\x01') {
          puVar4 = &DAT_0013baf8;
          pcVar5 = "syna_tcm_run_application_fw";
          goto LAB_0012297c;
        }
        _printk(&DAT_00135af7,"syna_tcm_run_application_fw");
        iVar2 = -0xf2;
      }
      puVar4 = &DAT_0013c163;
    }
    _printk(puVar4,"syna_tcm_switch_fw_mode");
  }
  return iVar2;
}



/* 001229c8 syna_tcm_get_boot_info */

int syna_tcm_get_boot_info(long param_1,void *param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  char cVar3;
  uint uVar4;
  ulong __n;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_get_boot_info");
    iVar2 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\v') {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_3 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_get_boot_info");
      }
      else {
        param_3 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122a40);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x10,0,0,0,param_3);
    if (iVar2 < 0) {
      _printk(&DAT_0013a7db,"syna_tcm_get_boot_info",0x10);
    }
    else {
      uVar4 = *(uint *)(param_1 + 0x154);
      if (0x1f < uVar4) {
        uVar4 = 0x20;
      }
      __n = (ulong)uVar4;
      if (*(char *)(param_1 + 0x188) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x158);
      *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
      if (*(void **)(param_1 + 0x148) != (void *)0x0) {
        if (uVar4 <= *(uint *)(param_1 + 0x150)) {
          memcpy((void *)(param_1 + 0xe0),*(void **)(param_1 + 0x148),__n);
          if (*(char *)(param_1 + 0x188) == '\x01') {
            cVar3 = '\0';
          }
          else {
            _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
            cVar3 = *(char *)(param_1 + 0x188) + -1;
          }
          *(char *)(param_1 + 0x188) = cVar3;
          mutex_unlock(param_1 + 0x158);
          if (param_2 != (void *)0x0) {
            memcpy(param_2,(void *)(param_1 + 0xe0),__n);
          }
          return 0;
        }
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x20,__n);
      }
      _printk(&DAT_0013a397,"syna_tcm_get_boot_info");
      if (*(char *)(param_1 + 0x188) == '\x01') {
        cVar3 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar3 = *(char *)(param_1 + 0x188) + -1;
      }
      *(char *)(param_1 + 0x188) = cVar3;
      mutex_unlock(param_1 + 0x158);
      iVar2 = -0x16;
    }
  }
  else {
    _printk(&DAT_0013c195,"syna_tcm_get_boot_info");
    iVar2 = -0xf1;
  }
  return iVar2;
}



/* 00122c08 syna_tcm_get_app_info */

int syna_tcm_get_app_info(long param_1,void *param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  undefined *puVar3;
  char cVar4;
  uint uVar5;
  ulong __n;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_get_app_info");
    iVar2 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_3 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_get_app_info");
      }
      else {
        param_3 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x122c80);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x20,0,0,0,param_3);
    if (iVar2 < 0) {
      _printk(&DAT_0013a7db,"syna_tcm_get_app_info",0x20);
    }
    else {
      uVar5 = *(uint *)(param_1 + 0x154);
      if (0x2f < uVar5) {
        uVar5 = 0x30;
      }
      __n = (ulong)uVar5;
      if (*(char *)(param_1 + 0x188) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x158);
      *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
      if (*(void **)(param_1 + 0x148) != (void *)0x0) {
        if (uVar5 <= *(uint *)(param_1 + 0x150)) {
          memcpy((void *)(param_1 + 0xb0),*(void **)(param_1 + 0x148),__n);
          if (*(char *)(param_1 + 0x188) == '\x01') {
            cVar4 = '\0';
          }
          else {
            _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
            cVar4 = *(char *)(param_1 + 0x188) + -1;
          }
          *(char *)(param_1 + 0x188) = cVar4;
          mutex_unlock(param_1 + 0x158);
          if (param_2 != (void *)0x0) {
            memcpy(param_2,(void *)(param_1 + 0xb0),__n);
          }
          if (*(short *)(param_1 + 0xb2) == 0) {
            *(uint *)(param_1 + 0x10) = (uint)*(ushort *)(param_1 + 0xd0);
            *(uint *)(param_1 + 0x14) = (uint)*(ushort *)(param_1 + 0xd2);
            *(uint *)(param_1 + 0x18) = (uint)*(ushort *)(param_1 + 0xd4);
            *(uint *)(param_1 + 0x1c) = (uint)*(ushort *)(param_1 + 0xd8);
            *(uint *)(param_1 + 0x20) = (uint)*(ushort *)(param_1 + 0xda);
            *(undefined8 *)(param_1 + 0x2c) = *(undefined8 *)(param_1 + 200);
            *(undefined8 *)(param_1 + 0x24) = *(undefined8 *)(param_1 + 0xc0);
            return 0;
          }
          if (*(short *)(param_1 + 0xb2) == 0xff) {
            puVar3 = &DAT_0013b25f;
          }
          else {
            puVar3 = &DAT_00136133;
          }
          _printk(puVar3,"syna_tcm_get_app_info");
          return -0xf2;
        }
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x30,__n);
      }
      _printk(&DAT_0013856d,"syna_tcm_get_app_info");
      if (*(char *)(param_1 + 0x188) == '\x01') {
        cVar4 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar4 = *(char *)(param_1 + 0x188) + -1;
      }
      *(char *)(param_1 + 0x188) = cVar4;
      mutex_unlock(param_1 + 0x158);
      iVar2 = -0x16;
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_get_app_info");
    iVar2 = -0xf1;
  }
  return iVar2;
}



/* 00122eac syna_tcm_get_static_config */

ulong syna_tcm_get_static_config(long param_1,void *param_2,uint param_3,int param_4)

{
  uint uVar1;
  code *pcVar2;
  ulong uVar3;
  char cVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_get_static_config");
    uVar3 = 0xffffff0f;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_get_static_config");
      }
      else {
        param_4 = 0;
      }
    }
    if (param_3 < *(ushort *)(param_1 + 0xb4)) {
      _printk(&DAT_0013228a,"syna_tcm_get_static_config",param_3);
      uVar3 = 0xffffff0f;
    }
    else {
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x122f34);
        (*pcVar2)();
      }
      uVar3 = (**(code **)(param_1 + 0x398))(param_1,0x21,0,0,0,param_4);
      if ((int)uVar3 < 0) {
        uVar3 = uVar3 & 0xffffffff;
        _printk(&DAT_0013a7db,"syna_tcm_get_static_config",0x21);
      }
      else if ((param_2 != (void *)0x0) && (*(uint *)(param_1 + 0x154) <= param_3)) {
        if (*(char *)(param_1 + 0x188) != '\0') {
          _printk(&DAT_00138e56,"syna_tcm_buf_lock");
        }
        mutex_lock(param_1 + 0x158);
        *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
        if (*(void **)(param_1 + 0x148) != (void *)0x0) {
          uVar1 = *(uint *)(param_1 + 0x154);
          if ((uVar1 <= param_3) && (uVar1 <= *(uint *)(param_1 + 0x150))) {
            memcpy(param_2,*(void **)(param_1 + 0x148),(ulong)uVar1);
            if (*(char *)(param_1 + 0x188) == '\x01') {
              cVar4 = '\0';
            }
            else {
              _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
              cVar4 = *(char *)(param_1 + 0x188) + -1;
            }
            *(char *)(param_1 + 0x188) = cVar4;
            mutex_unlock(param_1 + 0x158);
            return 0;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),param_3);
        }
        _printk(&DAT_0013ac6a,"syna_tcm_get_static_config");
        syna_tcm_buf_unlock(param_1 + 0x148);
        uVar3 = 0xffffffea;
      }
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_get_static_config");
    uVar3 = 0xffffff0f;
  }
  return uVar3;
}



/* 001230dc syna_tcm_set_static_config */

int syna_tcm_set_static_config(long param_1,undefined8 param_2,uint param_3,int param_4)

{
  code *pcVar1;
  int iVar2;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_set_static_config");
    iVar2 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_set_static_config");
      }
      else {
        param_4 = 0;
      }
    }
    if (*(ushort *)(param_1 + 0xb4) == param_3) {
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12315c);
        (*pcVar1)();
      }
      iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x22,param_2,param_3,0,param_4);
      if (iVar2 < 0) {
        _printk(&DAT_0013a7db,"syna_tcm_set_static_config",0x22);
      }
      else {
        iVar2 = 0;
      }
    }
    else {
      _printk(&DAT_00135ab5,"syna_tcm_set_static_config",param_3);
      iVar2 = -0xf1;
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_set_static_config");
    iVar2 = -0xf1;
  }
  return iVar2;
}



/* 00123228 syna_tcm_get_dynamic_config */

void syna_tcm_get_dynamic_config(long param_1,undefined1 param_2,undefined2 *param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_get_dynamic_config");
    iVar3 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_get_dynamic_config");
      }
      else {
        param_4 = 0;
      }
    }
    local_3c[0] = param_2;
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x1232b8);
      (*pcVar2)();
    }
    iVar3 = (**(code **)(param_1 + 0x398))(param_1,0x23,local_3c,1,0,param_4);
    if (iVar3 < 0) {
      _printk(&DAT_001322cb,"syna_tcm_get_dynamic_config",0x23,param_2);
    }
    else if (*(uint *)(param_1 + 0x154) < 2) {
      _printk(&DAT_00137da1,"syna_tcm_get_dynamic_config");
    }
    else {
      iVar3 = 0;
      *param_3 = **(undefined2 **)(param_1 + 0x148);
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_get_dynamic_config");
    iVar3 = -0xf1;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar3);
}



/* 001233b4 syna_tcm_set_dynamic_config */

void syna_tcm_set_dynamic_config(long param_1,undefined1 param_2,uint param_3,int param_4)

{
  long lVar1;
  undefined1 uVar2;
  code *pcVar3;
  int iVar4;
  undefined1 local_3c;
  undefined1 local_3b;
  undefined1 local_3a;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_set_dynamic_config");
    iVar4 = -0xf1;
  }
  else {
    uVar2 = (undefined1)(param_3 >> 8);
    if (*(char *)(param_1 + 9) == '\x01') {
      if (param_4 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
          param_4 = *(int *)(param_1 + 0x20c);
          _printk(&DAT_0013c851,"syna_tcm_set_dynamic_config");
        }
        else {
          param_4 = 0;
        }
      }
      local_3b = (undefined1)param_3;
      local_3c = param_2;
      local_3a = uVar2;
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8229,0x123448);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(param_1 + 0x398))(param_1,0x24,&local_3c,3,0,param_4);
      if (iVar4 < 0) {
        _printk(&DAT_0013dc40,"syna_tcm_set_dynamic_config",0x24,param_3 & 0xffff,param_2);
      }
      else {
        iVar4 = 0;
      }
    }
    else {
      _printk(&DAT_001347b2,"syna_tcm_set_dynamic_config");
      iVar4 = -0xf1;
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}



/* 00123518 syna_tcm_set_game_partition_config */

int syna_tcm_set_game_partition_config
              (long param_1,undefined1 param_2,int param_3,long param_4,int param_5)

{
  code *pcVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined1 *puVar5;
  char *__s;
  ulong uVar6;
  long lVar7;
  ulong uVar8;
  
  uVar8 = (ulong)(param_3 + 1);
  puVar5 = (undefined1 *)__kmalloc_noprof(uVar8,0xcc0);
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_set_game_partition_config");
    iVar4 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_5 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_5 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013a806,"syna_tcm_set_game_partition_config");
      }
      else {
        param_5 = 0;
      }
    }
    iVar4 = param_3 * 6 + 0x20;
    __s = (char *)__kmalloc_noprof((long)iVar4,0xcc0);
    if (__s == (char *)0x0) {
      iVar2 = 0;
    }
    else {
      iVar2 = snprintf(__s,(long)iVar4,"out values: ");
    }
    if (uVar8 == 0) {
LAB_001237e4:
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(1,0x1237e8);
      (*pcVar1)();
    }
    uVar6 = (ulong)(param_3 + 1U);
    *puVar5 = param_2;
    if (1 < (int)(param_3 + 1U)) {
      lVar7 = 0;
      do {
        if (uVar8 <= lVar7 + 1U) goto LAB_001237e4;
        puVar5[lVar7 + 1] = *(undefined1 *)(param_4 + lVar7);
        if ((__s != (char *)0x0) && (iVar2 < param_3 * 6 + 0x18)) {
          iVar3 = snprintf(__s + iVar2,(long)(iVar4 - iVar2),"%02x ");
          iVar2 = iVar3 + iVar2;
        }
        lVar7 = lVar7 + 1;
      } while (uVar6 - 1 != lVar7);
    }
    if (__s != (char *)0x0) {
      _printk(&DAT_0013dc83,"syna_tcm_set_game_partition_config",__s);
      kfree(__s);
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12375c);
      (*pcVar1)();
    }
    iVar4 = (**(code **)(param_1 + 0x398))(param_1,199,puVar5,uVar6,0,param_5);
    if (iVar4 < 0) {
      _printk(&DAT_0013dc40,"syna_tcm_set_game_partition_config",199,uVar6,param_2);
    }
    else {
      iVar4 = 0;
    }
  }
  else {
    _printk(&DAT_0013cfa3,"syna_tcm_set_game_partition_config");
    iVar4 = -0xf1;
  }
  return iVar4;
}



/* 001237ec syna_tcm_rezero */

int syna_tcm_rezero(long param_1,int param_2)

{
  code *pcVar1;
  int iVar2;
  int iVar3;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_rezero");
    iVar3 = -0xf1;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_2 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_2 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_rezero");
      }
      else {
        param_2 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x123854);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,0x27,0,0,0,param_2);
    iVar3 = 0;
    if (iVar2 < 0) {
      _printk(&DAT_0013a7db,"syna_tcm_rezero",0x27);
      iVar3 = iVar2;
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_rezero");
    iVar3 = -0xf1;
  }
  return iVar3;
}



/* 001238fc syna_tcm_sleep */

int syna_tcm_sleep(long param_1,ulong param_2,int param_3)

{
  code *pcVar1;
  int iVar2;
  undefined4 uVar3;
  int iVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_sleep");
    iVar4 = -0xf1;
  }
  else {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_3 = *(int *)(param_1 + 0x20c);
        param_2 = param_2 & 0xffffffff;
        _printk(&DAT_0013c851,"syna_tcm_sleep");
      }
      else {
        param_3 = 0;
      }
    }
    uVar3 = 0x2c;
    if ((param_2 & 1) == 0) {
      uVar3 = 0x2d;
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8229,0x123968);
      (*pcVar1)();
    }
    iVar2 = (**(code **)(param_1 + 0x398))(param_1,uVar3,0,0,0,param_3);
    iVar4 = 0;
    if (iVar2 < 0) {
      _printk(&DAT_0013cfe1,"syna_tcm_sleep",uVar3);
      iVar4 = iVar2;
    }
  }
  return iVar4;
}



/* 00123a08 syna_tcm_get_features */

ulong syna_tcm_get_features(long param_1,void *param_2,int param_3)

{
  uint uVar1;
  code *pcVar2;
  ulong uVar3;
  char cVar4;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_get_features");
    uVar3 = 0xffffff0f;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_3 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_3 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_get_features");
      }
      else {
        param_3 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x123a80);
      (*pcVar2)();
    }
    uVar3 = (**(code **)(param_1 + 0x398))(param_1,0x32,0,0,0,param_3);
    if ((int)uVar3 < 0) {
      uVar3 = uVar3 & 0xffffffff;
      _printk(&DAT_0013a7db,"syna_tcm_get_features",0x32);
    }
    else if (param_2 != (void *)0x0) {
      if (*(char *)(param_1 + 0x188) != '\0') {
        _printk(&DAT_00138e56,"syna_tcm_buf_lock");
      }
      mutex_lock(param_1 + 0x158);
      uVar1 = *(uint *)(param_1 + 0x154);
      if (0xf < uVar1) {
        uVar1 = 0x10;
      }
      *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
      if (*(void **)(param_1 + 0x148) != (void *)0x0) {
        if (uVar1 <= *(uint *)(param_1 + 0x150)) {
          memcpy(param_2,*(void **)(param_1 + 0x148),(ulong)uVar1);
          if (*(char *)(param_1 + 0x188) == '\x01') {
            cVar4 = '\0';
          }
          else {
            _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
            cVar4 = *(char *)(param_1 + 0x188) + -1;
          }
          *(char *)(param_1 + 0x188) = cVar4;
          mutex_unlock(param_1 + 0x158);
          return 0;
        }
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),0x10);
      }
      _printk(&DAT_0013dc94,"syna_tcm_get_features");
      if (*(char *)(param_1 + 0x188) == '\x01') {
        cVar4 = '\0';
      }
      else {
        _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
        cVar4 = *(char *)(param_1 + 0x188) + -1;
      }
      *(char *)(param_1 + 0x188) = cVar4;
      mutex_unlock(param_1 + 0x158);
      uVar3 = 0xffffffea;
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_get_features");
    uVar3 = 0xffffff0f;
  }
  return uVar3;
}



/* 00123c34 syna_tcm_run_production_test */

void syna_tcm_run_production_test(long param_1,undefined1 param_2,long param_3,int param_4)

{
  long lVar1;
  code *pcVar2;
  uint uVar3;
  ulong uVar4;
  undefined1 local_3c [4];
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_run_production_test");
    uVar4 = 0xffffff0f;
  }
  else if (*(char *)(param_1 + 9) == '\x01') {
    if (param_4 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_4 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_0013c851,"syna_tcm_run_production_test");
      }
      else {
        param_4 = 0;
      }
    }
    local_3c[0] = param_2;
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x123cc0);
      (*pcVar2)();
    }
    uVar4 = (**(code **)(param_1 + 0x398))(param_1,0x2a,local_3c,1,0,param_4);
    if ((int)uVar4 < 0) {
      uVar4 = uVar4 & 0xffffffff;
      _printk(&DAT_0013aca3,"syna_tcm_run_production_test",local_3c[0],0x2a);
    }
    else if (param_3 != 0) {
      uVar3 = syna_tcm_buf_copy(param_3,param_1 + 0x148);
      if ((int)uVar3 < 0) {
        uVar4 = (ulong)uVar3;
        _printk(&DAT_00137dcb,"syna_tcm_run_production_test");
      }
      else {
        uVar4 = 0;
      }
    }
  }
  else {
    _printk(&DAT_001347b2,"syna_tcm_run_production_test");
    uVar4 = 0xffffff0f;
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_38) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}



/* 00123dc0 syna_tcm_send_command */

void syna_tcm_send_command
               (long param_1,uint param_2,undefined8 param_3,ulong param_4,byte *param_5,
               long param_6,int param_7)

{
  long lVar1;
  code *pcVar2;
  int iVar3;
  ulong uVar4;
  undefined *puVar5;
  byte local_5c [4];
  long local_58;
  
  lVar1 = sp_el0;
  local_58 = *(long *)(lVar1 + 0x710);
  local_5c[0] = 0;
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_send_command");
    uVar4 = 0xffffff0f;
  }
  else {
    if (param_7 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        param_7 = *(int *)(param_1 + 0x20c);
        param_4 = param_4 & 0xffffffff;
        _printk(&DAT_0013c851,"syna_tcm_send_command");
      }
      else {
        param_7 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x123e44);
      (*pcVar2)();
    }
    uVar4 = (**(code **)(param_1 + 0x398))(param_1,param_2,param_3,param_4,local_5c,param_7);
    if ((int)uVar4 < 0) {
      uVar4 = uVar4 & 0xffffffff;
      _printk(&DAT_0013780d,"syna_tcm_send_command",param_2 & 0xff);
    }
    if (param_5 != (byte *)0x0) {
      *param_5 = local_5c[0];
    }
    if (param_6 != 0) {
      if (local_5c[0] - 0x10 < 0xef) {
        if (*(int *)(param_1 + 0x10c) == 0) goto LAB_00123f08;
        uVar4 = uVar4 & 0xffffffff;
        iVar3 = syna_tcm_buf_copy(param_6,param_1 + 0x100);
        if (-1 < iVar3) goto LAB_00123f08;
        puVar5 = &DAT_0013c81f;
      }
      else {
        if ((0xe < local_5c[0] - 1) || (*(int *)(param_1 + 0x154) == 0)) goto LAB_00123f08;
        uVar4 = uVar4 & 0xffffffff;
        iVar3 = syna_tcm_buf_copy(param_6,param_1 + 0x148);
        if (-1 < iVar3) goto LAB_00123f08;
        puVar5 = &DAT_0013d583;
      }
      _printk(puVar5,"syna_tcm_send_command",local_5c[0]);
      uVar4 = 0xffffff0d;
    }
  }
LAB_00123f08:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar4);
  }
  return;
}



/* 00123fa0 syna_tcm_enable_predict_reading */

undefined8 syna_tcm_enable_predict_reading(long param_1,byte param_2)

{
  char *pcVar1;
  undefined8 uVar2;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_enable_predict_reading");
    uVar2 = 0xffffff0f;
  }
  else {
    *(byte *)(param_1 + 0x37a) = param_2 & 1;
    *(undefined4 *)(param_1 + 0x37c) = 0;
    pcVar1 = "enabled";
    if ((param_2 & 1) == 0) {
      pcVar1 = "disabled";
    }
    _printk(&DAT_00136165,"syna_tcm_enable_predict_reading",pcVar1);
    uVar2 = 0;
  }
  return uVar2;
}



/* 00124014 syna_tcm_set_report_dispatcher */

undefined8
syna_tcm_set_report_dispatcher(long param_1,byte param_2,undefined8 param_3,undefined8 param_4)

{
  undefined8 uVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_set_report_dispatcher");
    uVar1 = 0xffffff0f;
  }
  else {
    if (param_2 < 0x10) {
      _printk(&DAT_0013d5ba,"syna_tcm_set_report_dispatcher",param_2);
    }
    param_1 = param_1 + (ulong)param_2 * 0x10;
    *(undefined8 *)(param_1 + 0x3e0) = param_3;
    *(undefined8 *)(param_1 + 0x3d8) = param_4;
    _printk(&DAT_00134239,"syna_tcm_set_report_dispatcher",param_2);
    uVar1 = 0;
  }
  return uVar1;
}



/* 001240d4 syna_tcm_set_data_duplicator */

undefined8
syna_tcm_set_data_duplicator(long param_1,byte param_2,undefined8 param_3,undefined8 param_4)

{
  if (param_1 != 0) {
    param_1 = param_1 + (ulong)param_2 * 0x10;
    *(undefined8 *)(param_1 + 0x13e0) = param_3;
    *(undefined8 *)(param_1 + 0x13d8) = param_4;
    return 0;
  }
  _printk(&DAT_00133fd6,"syna_tcm_set_data_duplicator");
  return 0xffffff0f;
}



/* 00124124 syna_tcm_clear_data_duplicator */

undefined8 syna_tcm_clear_data_duplicator(long param_1)

{
  undefined8 uVar1;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_clear_data_duplicator");
    uVar1 = 0xffffff0f;
  }
  else {
    memset((void *)(param_1 + 0x13d8),0,0x1000);
    uVar1 = 0;
  }
  return uVar1;
}



/* 00124178 syna_tcm_clear_command_processing */

void syna_tcm_clear_command_processing(long param_1)

{
  code *pcVar1;
  
  if ((param_1 != 0) && (pcVar1 = *(code **)(param_1 + 0x3a0), pcVar1 != (code *)0x0)) {
    if (*(int *)(pcVar1 + -4) != -0x6481d8a0) {
                    /* WARNING: Does not return */
      pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x1241a8);
      (*pcVar1)();
    }
    (*pcVar1)();
  }
  return;
}



/* 001241bc syna_tcm_set_post_reset_callback */

undefined8 syna_tcm_set_post_reset_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x23e0) = param_2;
    *(undefined8 *)(param_1 + 0x23d8) = param_3;
    return 0;
  }
  _printk(&DAT_00133fd6,"syna_tcm_set_post_reset_callback");
  return 0xffffff0f;
}



/* 00124208 syna_tcm_read_flash_address */

int syna_tcm_read_flash_address
              (long param_1,undefined4 param_2,uint param_3,long *param_4,int param_5)

{
  char cVar1;
  int iVar2;
  void *__s;
  long lVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  undefined4 uVar7;
  size_t __n;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  ulong local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar3 = sp_el0;
  local_58 = *(long *)(lVar3 + 0x710);
  local_68 = 0;
  uStack_60 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  local_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f0 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00133fd6;
  }
  else {
    if (param_4 != (long *)0x0) {
      if (param_5 == 0) {
        uVar7 = 0;
      }
      else {
        uVar7 = *(undefined4 *)(param_1 + 0x1e8);
      }
      cVar1 = *(char *)(param_1 + 9);
      if (cVar1 == '\v') {
        iVar2 = 0;
      }
      else {
        iVar2 = syna_tcm_set_up_flash_access(param_1,&local_f0,param_5,uVar7);
        if (iVar2 < 0) {
          _printk(&DAT_00133487,"syna_tcm_read_flash_address");
          goto LAB_0012439c;
        }
      }
      local_70 = local_70 & 0xffffffffffffff00;
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      if (param_3 != 0) {
        __n = (size_t)*(uint *)(param_4 + 1);
        __s = (void *)*param_4;
        if (*(uint *)(param_4 + 1) < param_3) {
          if (__s == (void *)0x0) {
LAB_00124304:
            lVar3 = syna_request_managed_device();
            if (lVar3 != 0) goto LAB_0012430c;
LAB_00124490:
            puVar6 = &DAT_0013ccb3;
LAB_00124498:
            _printk(puVar6,"syna_pal_mem_alloc");
            *param_4 = 0;
          }
          else {
            lVar3 = syna_request_managed_device();
            if (lVar3 != 0) {
              devm_kfree(lVar3,__s);
              goto LAB_00124304;
            }
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            lVar3 = syna_request_managed_device();
            if (lVar3 == 0) goto LAB_00124490;
LAB_0012430c:
            if ((int)param_3 < 1) {
              puVar6 = &DAT_00138e98;
              goto LAB_00124498;
            }
            __n = (size_t)param_3;
            __s = (void *)devm_kmalloc(lVar3,__n,0xdc0);
            *param_4 = (long)__s;
            if (__s != (void *)0x0) {
              *(uint *)(param_4 + 1) = param_3;
              goto LAB_00124330;
            }
          }
          _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",param_3);
          param_4[1] = 0;
          _printk(&DAT_001347f0,"syna_tcm_read_flash_address");
          iVar2 = -0xf3;
        }
        else {
LAB_00124330:
          memset(__s,0,__n);
          *(undefined4 *)((long)param_4 + 0xc) = 0;
          iVar2 = syna_tcm_read_flash(param_1,param_2,*param_4,param_3,param_5);
          if (iVar2 < 0) {
            _printk(&DAT_0013a849,"syna_tcm_read_flash_address",param_3,param_2);
          }
          else {
            iVar2 = 0;
            *(uint *)((long)param_4 + 0xc) = param_3;
          }
        }
      }
      if (cVar1 == '\x01') {
        syna_tcm_switch_fw_mode(param_1,1,param_5);
      }
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar3 = local_b0;
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar3 != 0) {
        devm_kfree(lVar4,lVar3);
      }
      goto LAB_0012439c;
    }
    puVar5 = &DAT_0013bb32;
  }
  _printk(puVar5,"syna_tcm_read_flash_address");
  iVar2 = -0xf1;
LAB_0012439c:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_58) {
    return iVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 001244e4 syna_tcm_set_up_flash_access */

void syna_tcm_set_up_flash_access(long param_1,long param_2,undefined4 param_3,undefined4 param_4)

{
  uint uVar1;
  long lVar2;
  code *pcVar3;
  int iVar4;
  undefined *puVar5;
  ulong uVar6;
  undefined8 local_68;
  undefined8 uStack_60;
  undefined8 local_58;
  undefined8 uStack_50;
  undefined8 local_48;
  undefined8 uStack_40;
  long local_38;
  
  lVar2 = sp_el0;
  local_38 = *(long *)(lVar2 + 0x710);
  local_48 = 0;
  uStack_40 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_68 = 0;
  uStack_60 = 0;
  if (param_2 == 0) {
    _printk(&DAT_00134898,"syna_tcm_set_up_flash_access");
    iVar4 = -0xf1;
    goto LAB_00124720;
  }
  _printk(&DAT_0013975d,"syna_tcm_set_up_flash_access");
  iVar4 = syna_tcm_identify(param_1,&local_68,param_3);
  if (iVar4 < 0) {
    puVar5 = &DAT_0013c91e;
LAB_00124574:
    _printk(puVar5,"syna_tcm_set_up_flash_access");
    goto LAB_00124720;
  }
  if (local_68._1_1_ == '\x01') {
    _printk(&DAT_00137e3c,"syna_tcm_set_up_flash_access");
    iVar4 = syna_tcm_switch_fw_mode(param_1,0xb,param_4);
    if (iVar4 < 0) {
      puVar5 = &DAT_0013c239;
      goto LAB_00124574;
    }
  }
  if (*(char *)(param_1 + 9) != '\v') {
    _printk(&DAT_001361ba,"syna_tcm_set_up_flash_access");
    goto LAB_00124720;
  }
  uVar6 = 0;
  do {
    if (*(char *)(param_1 + uVar6 + 0x82) == ':') {
      if (0xc < uVar6) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x5512,0x1247c4);
        (*pcVar3)();
      }
      if ((*(byte *)(param_1 + uVar6 + 0x85) >> 5 & 1) != 0) {
        *(undefined1 *)(param_2 + 0x88) = 1;
      }
    }
    uVar6 = uVar6 + 1;
  } while (uVar6 != 0x10);
  *(long *)(param_2 + 0x20) = param_1 + 0xe0;
  iVar4 = syna_tcm_get_boot_info(param_1,param_1 + 0xe0,param_3);
  if (iVar4 < 0) {
    puVar5 = &DAT_00136eb6;
    goto LAB_00124574;
  }
  _printk(&DAT_001361f7,"syna_tcm_set_up_flash_access",**(undefined1 **)(param_2 + 0x20));
  uVar1 = *(uint *)(param_1 + 0x38);
  *(uint *)(param_2 + 0x2c) = (uint)*(byte *)(*(long *)(param_2 + 0x20) + 4) << 1;
  _printk(&DAT_0013d012,"syna_tcm_set_up_flash_access");
  *(uint *)(param_2 + 0x28) = (uint)*(ushort *)(*(long *)(param_2 + 0x20) + 5) << 1;
  _printk(&DAT_001334e5,"syna_tcm_set_up_flash_access");
  *(uint *)(param_2 + 0x30) = (uint)*(ushort *)(*(long *)(param_2 + 0x20) + 7);
  _printk(&DAT_0013859a,"syna_tcm_set_up_flash_access");
  if ((uVar1 == 0) || (*(uint *)(param_2 + 0x2c) <= uVar1)) {
    if (*(uint *)(param_2 + 0x2c) != 0) goto LAB_00124704;
    puVar5 = &DAT_0013bb74;
  }
  else {
    *(uint *)(param_2 + 0x2c) = uVar1;
LAB_00124704:
    if (*(int *)(param_2 + 0x28) != 0) {
      if (**(char **)(param_2 + 0x20) == '\x03') {
        iVar4 = *(int *)(param_2 + 0x28) * (uint)(byte)(*(char **)(param_2 + 0x20))[0x14];
        *(int *)(param_2 + 0x3c) = iVar4;
        _printk(&DAT_00135b2d,"syna_tcm_set_up_flash_access",iVar4,iVar4);
        _printk(&DAT_0013c947,"syna_tcm_set_up_flash_access",
                *(undefined1 *)(*(long *)(param_2 + 0x20) + 0x14),
                *(undefined1 *)(*(long *)(param_2 + 0x20) + 0x15));
      }
      iVar4 = 0;
      goto LAB_00124720;
    }
    puVar5 = &DAT_0013c266;
  }
  _printk(puVar5,"syna_tcm_set_up_flash_access",0);
  iVar4 = -0xf1;
LAB_00124720:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar4);
}



/* 001247c8 syna_tcm_read_flash */

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
    puVar5 = &DAT_001385c7;
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
        do {
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
            _printk(&DAT_001385ed,"syna_tcm_reflash_send_command");
          }
          if ((int)uVar9 == 0) {
            if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
              uVar9 = (ulong)*(uint *)(param_1 + 0x20c);
              _printk(&DAT_00137337,"syna_tcm_reflash_send_command",uVar9);
            }
            else {
              uVar9 = 0;
            }
          }
          if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x12490c);
            (*pcVar3)();
          }
          iVar4 = (**(code **)(param_1 + 0x398))(param_1,0x13,&local_70,6,0,uVar9);
          if (iVar4 < 0) {
            _printk(&DAT_0013a7db,"syna_tcm_reflash_send_command",0x13);
            _printk(&DAT_00139780,"syna_tcm_read_flash",param_2,__n);
            goto LAB_001249a0;
          }
          if (*(uint *)(param_1 + 0x154) != uVar1) {
            _printk(&DAT_00132358,"syna_tcm_read_flash",__n);
            iVar4 = -0xf1;
            goto LAB_001249a0;
          }
          if (((void *)(param_3 + (ulong)uVar8) == (void *)0x0) ||
             (*(void **)(param_1 + 0x148) == (void *)0x0)) {
LAB_00124a8c:
            _printk(&DAT_00135b5e,"syna_tcm_read_flash",__n);
            iVar4 = -0x16;
            goto LAB_001249a0;
          }
          if ((uVar6 < uVar1) || (*(uint *)(param_1 + 0x150) < uVar1)) {
            _printk(&DAT_0013a172,"syna_pal_mem_cpy",*(uint *)(param_1 + 0x150),param_4 & 0xffffffff
                    ,__n);
            __n = (ulong)*(uint *)(param_1 + 0x154);
            goto LAB_00124a8c;
          }
          memcpy((void *)(param_3 + (ulong)uVar8),*(void **)(param_1 + 0x148),__n);
          uVar7 = uVar7 - 1;
          uVar8 = *(int *)(param_1 + 0x154) + uVar8;
        } while (uVar7 != 0);
        iVar4 = 0;
        goto LAB_001249a0;
      }
    }
    puVar5 = &DAT_0013b2d2;
  }
  _printk(puVar5,"syna_tcm_read_flash");
  iVar4 = -0xf1;
LAB_001249a0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar4);
  }
  return;
}



/* 00124ab4 syna_tcm_read_flash_area */

void syna_tcm_read_flash_area(long param_1,int param_2,long *param_3,int param_4)

{
  char cVar1;
  ushort uVar2;
  int iVar3;
  undefined1 *puVar4;
  void *pvVar5;
  long lVar6;
  undefined *puVar7;
  long lVar8;
  undefined8 uVar9;
  undefined4 uVar10;
  ulong __n;
  int iVar11;
  uint uVar12;
  ulong uVar13;
  undefined8 local_148;
  undefined8 local_140;
  undefined8 uStack_138;
  undefined8 local_130;
  undefined8 uStack_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_110;
  long local_108;
  undefined8 local_100;
  undefined8 uStack_f8;
  undefined8 local_f0;
  undefined8 uStack_e8;
  undefined8 local_e0;
  undefined8 uStack_d8;
  undefined8 local_d0;
  ulong local_c8;
  undefined8 local_c0;
  undefined8 uStack_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 local_70;
  long local_68;
  
  lVar6 = sp_el0;
  local_68 = *(long *)(lVar6 + 0x710);
  local_c0 = 0;
  uStack_b8 = 0;
  local_d0 = 0;
  local_c8 = 0;
  local_e0 = 0;
  uStack_d8 = 0;
  local_f0 = 0;
  uStack_e8 = 0;
  local_100 = 0;
  uStack_f8 = 0;
  local_110 = 0;
  local_108 = 0;
  local_120 = 0;
  uStack_118 = 0;
  local_130 = 0;
  uStack_128 = 0;
  local_140 = 0;
  uStack_138 = 0;
  local_148 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
  }
  else {
    if (param_3 != (long *)0x0) {
      if (param_4 == 0) {
        uVar10 = 0;
      }
      else {
        uVar10 = *(undefined4 *)(param_1 + 0x1e8);
      }
      cVar1 = *(char *)(param_1 + 9);
      if ((cVar1 != '\v') &&
         (iVar3 = syna_tcm_set_up_flash_access(param_1,&local_148,param_4,uVar10), iVar3 < 0)) {
        _printk(&DAT_00133487,"syna_tcm_read_flash_area");
        goto LAB_00124b38;
      }
      local_c8 = local_c8 & 0xffffffffffffff00;
      local_108 = 0;
      local_100 = 0;
      __mutex_init(&uStack_f8,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      if (param_2 < 0x15) {
        if (param_2 == 3) {
          if (*(char *)(param_1 + 9) == '\x01') {
            _printk(&DAT_00136804,"syna_tcm_read_flash_app_config",1);
            iVar3 = -0xf1;
          }
          else {
            iVar11 = (uint)*(ushort *)(param_1 + 0xb8) * local_120._4_4_;
            if (iVar11 != 0) {
              uVar2 = *(ushort *)(param_1 + 0xba);
              uVar13 = (ulong)uVar2;
              if (uVar2 != 0) {
                pvVar5 = (void *)*param_3;
                __n = (ulong)*(uint *)(param_3 + 1);
                if (*(uint *)(param_3 + 1) < (uint)uVar2) {
                  if (pvVar5 != (void *)0x0) {
                    lVar6 = syna_request_managed_device();
                    if (lVar6 == 0) {
                      _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                    }
                    else {
                      devm_kfree(lVar6,pvVar5);
                    }
                  }
                  lVar6 = syna_request_managed_device();
                  if (lVar6 == 0) {
                    _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
                    *param_3 = 0;
                  }
                  else {
                    pvVar5 = (void *)devm_kmalloc(lVar6,uVar13,0xdc0);
                    *param_3 = (long)pvVar5;
                    if (pvVar5 != (void *)0x0) {
                      *(uint *)(param_3 + 1) = (uint)uVar2;
                      __n = uVar13;
                      goto LAB_0012503c;
                    }
                  }
                  _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",(uint)uVar2);
                  param_3[1] = 0;
                  _printk(&DAT_001347f0,"syna_tcm_read_flash_app_config");
                  iVar3 = -0xf3;
                }
                else {
LAB_0012503c:
                  memset(pvVar5,0,__n);
                  *(undefined4 *)((long)param_3 + 0xc) = 0;
                  iVar3 = syna_tcm_read_flash(param_1,iVar11,*param_3,uVar13,param_4);
                  if (-1 < iVar3) {
                    *(uint *)((long)param_3 + 0xc) = (uint)uVar2;
                    goto LAB_00125230;
                  }
                  _printk(&DAT_0013b302,"syna_tcm_read_flash_app_config",iVar11,(uint)uVar2);
                }
                goto LAB_00125088;
              }
            }
            _printk(&DAT_0013c290,"syna_tcm_read_flash_app_config");
            iVar3 = -0xf1;
          }
LAB_00125088:
          puVar7 = &DAT_00139701;
          goto LAB_001251e4;
        }
        if (param_2 == 6) {
          iVar3 = syna_tcm_read_flash_boot_config(param_1,&local_148,param_3,param_4);
          if (iVar3 < 0) {
            puVar7 = &DAT_0013232c;
            goto LAB_001251e4;
          }
          goto LAB_00125230;
        }
LAB_00124d08:
        _printk(&DAT_0013482a,"syna_tcm_read_flash_area");
        iVar3 = -0xf1;
      }
      else {
        if (param_2 == 0x15) {
          iVar3 = syna_tcm_read_flash_boot_cs_config(param_1,&local_148,param_3,0,0,param_4);
joined_r0x00124c90:
          if (-1 < iVar3) {
LAB_00125230:
            uVar9 = syna_tcm_get_partition_id_string(param_2);
            _printk(&DAT_00139152,"syna_tcm_read_flash_area",uVar9);
            iVar3 = 0;
            goto joined_r0x001251f4;
          }
        }
        else {
          if (param_2 != 0x16) {
            if (param_2 != 0x17) goto LAB_00124d08;
            iVar3 = syna_tcm_read_flash_mtp_config(param_1,&local_148,param_3,0,0,param_4);
            goto joined_r0x00124c90;
          }
          local_78 = 0;
          local_70 = 0;
          local_88 = 0;
          uStack_80 = 0;
          local_98 = 0;
          uStack_90 = 0;
          local_a8 = 0;
          uStack_a0 = 0;
          local_b0 = 0;
          if (*(char *)(param_1 + 9) != '\x01') {
            local_b0 = 0;
            local_a8 = 0;
            __mutex_init(&uStack_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
            iVar3 = syna_tcm_read_flash_boot_config(param_1,&local_148,&local_b0,param_4);
            if (iVar3 < 0) {
              _printk(&DAT_00137df4,"syna_tcm_read_flash_boot_lockdown_config");
            }
            else {
              uVar12 = *(uint *)(param_3 + 1);
              pvVar5 = (void *)*param_3;
              if (uVar12 < 8) {
                if (pvVar5 != (void *)0x0) {
                  lVar6 = syna_request_managed_device();
                  if (lVar6 == 0) {
                    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                  }
                  else {
                    devm_kfree(lVar6,pvVar5);
                  }
                }
                lVar6 = syna_request_managed_device();
                if (lVar6 == 0) {
                  _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
                  *param_3 = 0;
                }
                else {
                  uVar12 = 8;
                  pvVar5 = (void *)devm_kmalloc(lVar6,8,0xdc0);
                  *param_3 = (long)pvVar5;
                  if (pvVar5 != (void *)0x0) {
                    *(undefined4 *)(param_3 + 1) = 8;
                    goto LAB_00124eb0;
                  }
                }
                _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",8);
                param_3[1] = 0;
                _printk(&DAT_001347f0,"syna_tcm_read_flash_boot_lockdown_config");
                iVar3 = -0xf3;
              }
              else {
LAB_00124eb0:
                memset(pvVar5,0,(ulong)uVar12);
                *(undefined4 *)((long)param_3 + 0xc) = 0;
                if (*(char *)(local_b0 + (local_a8._4_4_ + -7)) < '\0') {
                  iVar11 = local_a8._4_4_ + -8;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0xf)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x10;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x17)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x18;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x1f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x20;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x27)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x28;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x2f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x30;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x37)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x38;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x3f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x40;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x47)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x48;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x4f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x50;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x57)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x58;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x5f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x60;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x67)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x68;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x6f)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x70;
                }
                else if (*(char *)(local_b0 + (local_a8._4_4_ + -0x77)) < '\0') {
                  iVar11 = local_a8._4_4_ + -0x78;
                }
                else {
                  iVar11 = -0x80;
                  if (-1 < *(char *)(local_b0 + (local_a8._4_4_ + -0x7f))) {
                    iVar11 = -0x88;
                  }
                  iVar11 = iVar11 + local_a8._4_4_;
                }
                if (((undefined8 *)*param_3 != (undefined8 *)0x0) &&
                   ((undefined8 *)(local_b0 + iVar11) != (undefined8 *)0x0)) {
                  if (7 < *(uint *)(param_3 + 1)) {
                    iVar3 = 0;
                    *(undefined8 *)*param_3 = *(undefined8 *)(local_b0 + iVar11);
                    *(undefined4 *)((long)param_3 + 0xc) = 8;
                    *(uint *)(param_1 + 0x34) =
                         (uint)(*(byte *)(local_b0 + (local_a8._4_4_ + -7)) >> 7);
                    goto LAB_00125188;
                  }
                  _printk(&DAT_0013a172,"syna_pal_mem_cpy",8,*(uint *)(param_3 + 1),8);
                }
                _printk(&DAT_00139169,"syna_tcm_read_flash_boot_lockdown_config");
                iVar3 = -0x16;
              }
            }
LAB_00125188:
            if ((char)local_70 != '\0') {
              _printk(&DAT_00135294,"syna_tcm_buf_release");
            }
            lVar6 = local_b0;
            lVar8 = syna_request_managed_device();
            if (lVar8 == 0) {
              _printk(&DAT_0013ccb3,"syna_pal_mem_free");
            }
            else if (lVar6 != 0) {
              devm_kfree(lVar8,lVar6);
            }
            goto joined_r0x00124c90;
          }
          _printk(&DAT_00139d24,"syna_tcm_read_flash_boot_lockdown_config",1);
          iVar3 = -0xf1;
        }
        puVar7 = &DAT_001367c1;
LAB_001251e4:
        _printk(puVar7,"syna_tcm_read_flash_area");
      }
joined_r0x001251f4:
      if (cVar1 == '\x01') {
        syna_tcm_switch_fw_mode(param_1,1,param_4);
      }
      if ((char)local_c8 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar6 = local_108;
      lVar8 = syna_request_managed_device();
      if (lVar8 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar6 != 0) {
        devm_kfree(lVar8,lVar6);
      }
      goto LAB_00124b38;
    }
    puVar4 = &DAT_0013bb32;
  }
  _printk(puVar4,"syna_tcm_read_flash_area");
  iVar3 = -0xf1;
LAB_00124b38:
  lVar6 = sp_el0;
  if (*(long *)(lVar6 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar3);
}



/* 00125290 syna_tcm_read_flash_boot_config */

ulong syna_tcm_read_flash_boot_config(long param_1,long param_2,long *param_3,undefined4 param_4)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  void *__s;
  ulong uVar4;
  undefined *puVar5;
  char cVar6;
  long lVar7;
  char *pcVar8;
  long lVar9;
  long lVar10;
  long lVar11;
  
  if (param_2 == 0) {
    puVar5 = &DAT_00134898;
  }
  else if (param_3 == (long *)0x0) {
    puVar5 = &DAT_00135b8d;
  }
  else {
    if (*(char *)(param_1 + 9) == '\x01') {
      puVar5 = &DAT_00132f49;
      cVar6 = '\x01';
LAB_0012544c:
      _printk(puVar5,"syna_tcm_read_flash_boot_config",cVar6);
      return 0xffffff0f;
    }
    pcVar8 = *(char **)(param_2 + 0x20);
    cVar6 = *pcVar8;
    if (cVar6 == '\x01') {
      lVar7 = 0xf;
      lVar9 = 0xe;
      lVar10 = 0xd;
      lVar11 = 0xc;
    }
    else {
      if (cVar6 != '\x03') {
        puVar5 = &DAT_0013d047;
        goto LAB_0012544c;
      }
      lVar7 = 0x13;
      lVar9 = 0x12;
      lVar10 = 0x11;
      lVar11 = 0x10;
    }
    iVar1 = *(int *)(param_2 + 0x2c) * (uint)CONCAT11(pcVar8[lVar10],pcVar8[lVar11]);
    if (iVar1 != 0) {
      uVar3 = (uint)CONCAT11(pcVar8[lVar7],pcVar8[lVar9]);
      uVar2 = *(int *)(param_2 + 0x2c) * uVar3;
      if (uVar2 != 0) {
        if (*(int *)(param_2 + 0x38) != iVar1) {
          *(int *)(param_2 + 0x38) = iVar1;
        }
        if (*(uint *)(param_2 + 0x34) != uVar3) {
          *(uint *)(param_2 + 0x34) = uVar3;
        }
        _printk(&DAT_001348c1,"syna_tcm_read_flash_boot_config",iVar1,iVar1,uVar3,uVar2);
        __s = (void *)*param_3;
        uVar3 = *(uint *)(param_3 + 1);
        if (*(uint *)(param_3 + 1) < uVar2) {
          if (__s != (void *)0x0) {
            syna_pal_mem_free();
          }
          __s = (void *)syna_pal_mem_alloc(uVar2);
          *param_3 = (long)__s;
          if (__s == (void *)0x0) {
            _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar2);
            param_3[1] = 0;
            _printk(&DAT_001347f0,"syna_tcm_read_flash_boot_config");
            return 0xffffff0d;
          }
          *(uint *)(param_3 + 1) = uVar2;
          uVar3 = uVar2;
        }
        memset(__s,0,(ulong)uVar3);
        *(undefined4 *)((long)param_3 + 0xc) = 0;
        uVar4 = syna_tcm_read_flash(param_1,iVar1,*param_3,uVar2,param_4);
        if ((int)uVar4 < 0) {
          _printk(&DAT_00132f84,"syna_tcm_read_flash_boot_config",iVar1,uVar2);
          return uVar4 & 0xffffffff;
        }
        *(uint *)((long)param_3 + 0xc) = uVar2;
        return uVar4;
      }
    }
    puVar5 = &DAT_00133b81;
  }
  _printk(puVar5,"syna_tcm_read_flash_boot_config");
  return 0xffffff0f;
}



/* 001254bc syna_tcm_read_flash_boot_cs_config */

int syna_tcm_read_flash_boot_cs_config
              (long param_1,long param_2,long *param_3,ulong param_4,int param_5,undefined4 param_6)

{
  int iVar1;
  void *pvVar2;
  undefined *puVar3;
  byte bVar4;
  long lVar5;
  long lVar6;
  uint uVar7;
  ulong uVar9;
  int iVar10;
  byte *pbVar11;
  void *local_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  undefined8 local_68;
  undefined8 local_60;
  long local_58;
  ulong uVar8;
  
  lVar5 = sp_el0;
  local_58 = *(long *)(lVar5 + 0x710);
  local_68 = 0;
  local_60 = 0;
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a0 = (void *)0x0;
  if (param_2 == 0) {
    puVar3 = &DAT_00134898;
  }
  else {
    if (param_3 != (long *)0x0) {
      if (*(char *)(param_1 + 9) == '\x01') {
        puVar3 = &DAT_00139ceb;
        bVar4 = 1;
      }
      else {
        pbVar11 = *(byte **)(param_2 + 0x20);
        bVar4 = *pbVar11;
        if ((bVar4 | 2) == 3) {
          uVar8 = param_4 & 0xffffffff;
          uVar7 = (uint)param_4;
          local_a0 = (void *)0x0;
          local_98 = 0;
          __mutex_init(&uStack_90,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
          pvVar2 = local_a0;
          if (uVar7 == 0) {
            iVar1 = syna_tcm_read_flash_boot_config(param_1,param_2,&local_a0,param_6);
            if (iVar1 < 0) {
              _printk(&DAT_00137df4,"syna_tcm_read_flash_boot_cs_config");
            }
            else {
              uVar7 = local_98._4_4_;
              param_4 = (ulong)local_98._4_4_;
              uVar8 = (ulong)*(uint *)(param_3 + 1);
              pvVar2 = (void *)*param_3;
              if (*(uint *)(param_3 + 1) < local_98._4_4_) {
                if (pvVar2 == (void *)0x0) {
LAB_001255c4:
                  lVar5 = syna_request_managed_device();
                  if (lVar5 != 0) goto LAB_001255cc;
LAB_001259c4:
                  puVar3 = &DAT_0013ccb3;
LAB_001259cc:
                  _printk(puVar3,"syna_pal_mem_alloc");
                  *param_3 = 0;
                }
                else {
                  lVar5 = syna_request_managed_device();
                  if (lVar5 != 0) {
                    devm_kfree(lVar5,pvVar2);
                    goto LAB_001255c4;
                  }
                  _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                  lVar5 = syna_request_managed_device();
                  if (lVar5 == 0) goto LAB_001259c4;
LAB_001255cc:
                  if ((int)uVar7 < 1) {
                    puVar3 = &DAT_00138e98;
                    goto LAB_001259cc;
                  }
                  pvVar2 = (void *)devm_kmalloc(lVar5,param_4,0xdc0);
                  *param_3 = (long)pvVar2;
                  if (pvVar2 != (void *)0x0) {
                    *(uint *)(param_3 + 1) = uVar7;
                    uVar8 = param_4;
                    goto LAB_0012578c;
                  }
                }
                goto LAB_001259f0;
              }
LAB_0012578c:
              memset(pvVar2,0,uVar8);
              iVar1 = 0x80;
              *(undefined4 *)((long)param_3 + 0xc) = 0;
              uVar7 = local_98._4_4_ - 0x88;
              do {
                if ((*(char *)((long)local_a0 + (long)(int)(local_98._4_4_ + iVar1 + -0x87)) < '\0')
                   && (-1 < *(char *)((long)local_a0 + (long)(int)(local_98._4_4_ + iVar1 + -0x8f)))
                   ) {
                  uVar7 = (local_98._4_4_ + iVar1) - 0x88;
                  break;
                }
                iVar1 = iVar1 + -8;
              } while (iVar1 != 0);
LAB_001256fc:
              if (((void *)*param_3 != (void *)0x0) && (local_a0 != (void *)0x0)) {
                if ((uVar7 <= *(uint *)(param_3 + 1)) && (uVar7 <= (uint)local_98)) {
                  memcpy((void *)*param_3,local_a0,(ulong)uVar7);
                  iVar1 = 0;
                  *(uint *)((long)param_3 + 0xc) = uVar7;
                  goto LAB_00125730;
                }
                _printk(&DAT_0013a172,"syna_pal_mem_cpy",local_98 & 0xffffffff,
                        *(uint *)(param_3 + 1),uVar7);
              }
              _printk(&DAT_00139169,"syna_tcm_read_flash_boot_cs_config");
              iVar1 = -0x16;
            }
          }
          else {
            if (*pbVar11 == 1) {
              lVar5 = 0xd;
              lVar6 = 0xc;
LAB_001255f8:
              iVar10 = (uint)CONCAT11(pbVar11[lVar5],pbVar11[lVar6]) * *(int *)(param_2 + 0x2c);
            }
            else {
              if (*pbVar11 == 3) {
                lVar5 = 0x11;
                lVar6 = 0x10;
                goto LAB_001255f8;
              }
              iVar10 = 0;
            }
            uVar9 = local_98 & 0xffffffff;
            if ((uint)local_98 < uVar7) {
              if (local_a0 == (void *)0x0) {
LAB_0012563c:
                lVar5 = syna_request_managed_device();
                if (lVar5 != 0) goto LAB_00125644;
LAB_00125910:
                puVar3 = &DAT_0013ccb3;
LAB_00125918:
                _printk(puVar3,"syna_pal_mem_alloc");
                local_a0 = (void *)0x0;
              }
              else {
                lVar5 = syna_request_managed_device();
                if (lVar5 != 0) {
                  devm_kfree(lVar5,pvVar2);
                  goto LAB_0012563c;
                }
                _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                lVar5 = syna_request_managed_device();
                if (lVar5 == 0) goto LAB_00125910;
LAB_00125644:
                if ((int)uVar7 < 1) {
                  puVar3 = &DAT_00138e98;
                  goto LAB_00125918;
                }
                local_a0 = (void *)devm_kmalloc(lVar5,uVar8,0xdc0);
                if (local_a0 != (void *)0x0) {
                  local_98 = CONCAT44(local_98._4_4_,uVar7);
                  uVar9 = uVar8;
                  goto LAB_00125668;
                }
              }
              _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",param_4 & 0xffffffff);
              local_98 = 0;
              puVar3 = &DAT_0013683e;
            }
            else {
LAB_00125668:
              memset(local_a0,0,uVar9);
              pvVar2 = (void *)*param_3;
              local_98 = local_98 & 0xffffffff;
              uVar9 = (ulong)*(uint *)(param_3 + 1);
              if (uVar7 <= *(uint *)(param_3 + 1)) {
LAB_001256cc:
                memset(pvVar2,0,uVar9);
                *(undefined4 *)((long)param_3 + 0xc) = 0;
                iVar1 = syna_tcm_read_flash(param_1,iVar10 + param_5,local_a0,param_4 & 0xffffffff,
                                            param_6);
                if (-1 < iVar1) goto LAB_001256fc;
                _printk(&DAT_0013621c,"syna_tcm_read_flash_boot_cs_config",iVar10 + param_5);
                goto LAB_00125730;
              }
              if (pvVar2 == (void *)0x0) {
LAB_001256a0:
                lVar5 = syna_request_managed_device();
                if (lVar5 != 0) goto LAB_001256a8;
LAB_0012596c:
                puVar3 = &DAT_0013ccb3;
LAB_00125974:
                _printk(puVar3,"syna_pal_mem_alloc");
                *param_3 = 0;
              }
              else {
                lVar5 = syna_request_managed_device();
                if (lVar5 != 0) {
                  devm_kfree(lVar5,pvVar2);
                  goto LAB_001256a0;
                }
                _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                lVar5 = syna_request_managed_device();
                if (lVar5 == 0) goto LAB_0012596c;
LAB_001256a8:
                if ((int)uVar7 < 1) {
                  puVar3 = &DAT_00138e98;
                  goto LAB_00125974;
                }
                pvVar2 = (void *)devm_kmalloc(lVar5,uVar8,0xdc0);
                *param_3 = (long)pvVar2;
                if (pvVar2 != (void *)0x0) {
                  *(uint *)(param_3 + 1) = uVar7;
                  uVar9 = uVar8;
                  goto LAB_001256cc;
                }
              }
              param_4 = param_4 & 0xffffffff;
LAB_001259f0:
              _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",param_4);
              puVar3 = &DAT_001347f0;
              param_3[1] = 0;
            }
            _printk(puVar3,"syna_tcm_read_flash_boot_cs_config");
            iVar1 = -0xf3;
          }
LAB_00125730:
          if ((char)local_60 != '\0') {
            _printk(&DAT_00135294,"syna_tcm_buf_release");
          }
          pvVar2 = local_a0;
          lVar5 = syna_request_managed_device();
          if (lVar5 == 0) {
            _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          }
          else if (pvVar2 != (void *)0x0) {
            devm_kfree(lVar5,pvVar2);
          }
          goto LAB_00125750;
        }
        puVar3 = &DAT_0013d047;
      }
      _printk(puVar3,"syna_tcm_read_flash_boot_cs_config",bVar4);
      iVar1 = -0xf1;
      goto LAB_00125750;
    }
    puVar3 = &DAT_00135b8d;
  }
  _printk(puVar3,"syna_tcm_read_flash_boot_cs_config");
  iVar1 = -0xf1;
LAB_00125750:
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar1;
}



/* 00125a18 syna_tcm_read_flash_mtp_config */

ulong syna_tcm_read_flash_mtp_config
                (long param_1,long param_2,long *param_3,uint param_4,int param_5,undefined4 param_6
                )

{
  int iVar1;
  void *__s;
  long lVar2;
  ulong uVar3;
  undefined *puVar4;
  char cVar5;
  size_t __n;
  
  if (param_2 == 0) {
    puVar4 = &DAT_00134898;
LAB_00125b2c:
    _printk(puVar4,"syna_tcm_read_flash_mtp_config");
    return 0xffffff0f;
  }
  if (param_3 == (long *)0x0) {
    puVar4 = &DAT_00135b8d;
    goto LAB_00125b2c;
  }
  if (*(char *)(param_1 + 9) == '\x01') {
    puVar4 = &DAT_00139ceb;
    cVar5 = '\x01';
LAB_00125b68:
    _printk(puVar4,"syna_tcm_read_flash_mtp_config",cVar5);
    return 0xffffff0f;
  }
  if (param_4 == 0) {
    param_4 = *(uint *)(param_2 + 0x28);
  }
  cVar5 = **(char **)(param_2 + 0x20);
  if (cVar5 != '\x03') {
    puVar4 = &DAT_0013d047;
    goto LAB_00125b68;
  }
  __n = (size_t)*(uint *)(param_3 + 1);
  iVar1 = *(int *)(param_2 + 0x3c);
  __s = (void *)*param_3;
  if (param_4 <= *(uint *)(param_3 + 1)) goto LAB_00125acc;
  if (__s == (void *)0x0) {
LAB_00125aa0:
    lVar2 = syna_request_managed_device();
    if (lVar2 != 0) goto LAB_00125aa8;
LAB_00125bc4:
    puVar4 = &DAT_0013ccb3;
  }
  else {
    lVar2 = syna_request_managed_device();
    if (lVar2 != 0) {
      devm_kfree(lVar2,__s);
      goto LAB_00125aa0;
    }
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    lVar2 = syna_request_managed_device();
    if (lVar2 == 0) goto LAB_00125bc4;
LAB_00125aa8:
    if (0 < (int)param_4) {
      __n = (size_t)param_4;
      __s = (void *)devm_kmalloc(lVar2,__n,0xdc0);
      *param_3 = (long)__s;
      if (__s != (void *)0x0) {
        *(uint *)(param_3 + 1) = param_4;
LAB_00125acc:
        memset(__s,0,__n);
        *(undefined4 *)((long)param_3 + 0xc) = 0;
        uVar3 = syna_tcm_read_flash(param_1,iVar1 + param_5,*param_3,param_4,param_6);
        if (-1 < (int)uVar3) {
          *(uint *)((long)param_3 + 0xc) = param_4;
          return uVar3;
        }
        _printk(&DAT_0013621c,"syna_tcm_read_flash_mtp_config",iVar1 + param_5);
        return uVar3 & 0xffffffff;
      }
      goto LAB_00125bdc;
    }
    puVar4 = &DAT_00138e98;
  }
  _printk(puVar4,"syna_pal_mem_alloc");
  *param_3 = 0;
LAB_00125bdc:
  _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",param_4);
  param_3[1] = 0;
  _printk(&DAT_001347f0,"syna_tcm_read_flash_mtp_config");
  return 0xffffff0d;
}



/* 00125c18 syna_tcm_do_fw_update_ex */

void syna_tcm_do_fw_update_ex
               (long param_1,int *param_2,uint param_3,undefined4 param_4,undefined4 param_5,
               int param_6,byte param_7)

{
  uint uVar1;
  long lVar2;
  int iVar3;
  undefined1 *puVar4;
  long lVar5;
  undefined *puVar6;
  ulong uVar7;
  undefined4 uVar8;
  ulong local_f0 [2];
  undefined8 local_e0;
  int *local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar2 = sp_el0;
  local_58 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      local_68 = 0;
      uStack_60 = 0;
      local_78 = 0;
      local_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      uStack_a0 = 0;
      local_b8 = 0;
      local_c8 = 0;
      uStack_c0 = 0;
      local_d8 = (int *)0x0;
      uStack_d0 = 0;
      local_f0[1] = 0;
      local_e0 = 0;
      local_f0[0] = (ulong)param_3;
      if (param_6 == 0) {
        uVar8 = 0;
      }
      else {
        uVar8 = *(undefined4 *)(param_1 + 0x20c);
      }
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_e0 = CONCAT44(local_e0._4_4_,*param_2);
      local_d8 = param_2;
      _printk(&DAT_0013484b,"syna_tcm_do_fw_update_ex");
      *(undefined4 *)(param_1 + 0x388) = 1;
      if (*(char *)(param_1 + 9) == '\v') {
        uVar1 = (uint)local_f0[0] | 9;
        uVar7 = (ulong)uVar1;
        local_f0[0] = local_f0[0] | 9;
      }
      else {
        uVar7 = local_f0[0] & 0xffffffff;
        uVar1 = (uint)local_f0[0];
        if (*(char *)(param_1 + 9) == '\x01') {
          if (*(short *)(param_1 + 0xb2) != 0) {
            uVar7 = (ulong)((uint)local_f0[0] | 9);
            local_f0[0] = local_f0[0] | 9;
          }
          uVar1 = (uint)uVar7;
        }
      }
      if ((uVar1 >> 3 & 1) != 0) {
        local_68 = CONCAT44(local_68._4_4_ + local_d8[0x10],(undefined4)local_68);
      }
      if ((uVar7 & 1) != 0) {
        local_68 = CONCAT44(local_68._4_4_ + local_d8[0x20],(undefined4)local_68);
      }
      iVar3 = syna_tcm_set_up_flash_access(param_1,local_f0,uVar8,param_6);
      if (iVar3 < 0) {
        puVar6 = &DAT_00133487;
LAB_00125de4:
        _printk(puVar6,"syna_tcm_do_fw_update_ex");
      }
      else {
        if (*(char *)(param_1 + 9) == '\v') {
          if (((uint)local_f0[0] >> 3 & 1) != 0) {
            iVar3 = syna_tcm_update_flash_block
                              (param_1,local_f0,local_d8 + 0xc,param_4,param_5,
                               (byte)local_68 & param_7 & 1);
            if (iVar3 < 0) {
              puVar6 = &DAT_001334b2;
              goto LAB_00125de4;
            }
          }
          if ((((uint)local_f0[0] & 1) != 0) &&
             (iVar3 = syna_tcm_update_flash_block
                                (param_1,local_f0,local_d8 + 0x1c,param_4,param_5,0), iVar3 < 0)) {
            puVar6 = &DAT_0013972c;
            goto LAB_00125de4;
          }
          _printk(&DAT_00136e7e,"syna_tcm_do_fw_update_ex");
        }
        else {
          _printk(&DAT_00132995,"syna_tcm_do_fw_update_ex");
        }
        iVar3 = syna_tcm_reset(param_1,param_6);
        if (iVar3 < 0) {
          puVar6 = &DAT_0013a66c;
          goto LAB_00125de4;
        }
      }
      *(undefined4 *)(param_1 + 0x388) = 0;
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar2 = local_b0;
      lVar5 = syna_request_managed_device();
      if (lVar5 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar2 != 0) {
        devm_kfree(lVar5,lVar2);
      }
      goto LAB_00125c78;
    }
    puVar4 = &DAT_00138b6e;
  }
  _printk(puVar4,"syna_tcm_do_fw_update_ex");
  iVar3 = -0xf1;
LAB_00125c78:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_58) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar3);
}



/* 00125f38 syna_tcm_update_flash_block */

int syna_tcm_update_flash_block
              (long param_1,long param_2,long param_3,int param_4,int param_5,ulong param_6)

{
  uint uVar1;
  void *__dest;
  uint uVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  undefined2 uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  code *pcVar12;
  int iVar13;
  undefined *puVar14;
  undefined8 uVar15;
  void *pvVar16;
  long lVar17;
  long lVar18;
  char cVar19;
  uint uVar20;
  ulong uVar21;
  uint uVar22;
  uint uVar23;
  ulong __n;
  undefined4 local_6c;
  long local_68;
  
  lVar18 = sp_el0;
  local_68 = *(long *)(lVar18 + 0x710);
  if (param_2 == 0) {
    puVar14 = &DAT_00134898;
  }
  else {
    if (param_3 != 0) {
      iVar13 = syna_tcm_check_flash_block(param_1,param_2,param_3);
      if (iVar13 < 0) {
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        puVar14 = &DAT_0013bb55;
      }
      else {
        if (iVar13 == 0) goto LAB_00125f9c;
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        _printk(&DAT_001323bf,"syna_tcm_update_flash_block",uVar15);
        if ((param_6 & 1) == 0) {
          iVar3 = *(int *)(param_3 + 0x10);
          if (iVar3 != 0) {
            uVar4 = *(uint *)(param_3 + 0x14);
            uVar5 = *(uint *)(param_2 + 0x28);
            uVar6 = 0;
            if (uVar5 != 0) {
              uVar6 = uVar4 / uVar5;
            }
            if (uVar4 == uVar6 * uVar5) {
              local_6c._2_2_ = 0;
              uVar9 = 0;
              if (uVar5 != 0) {
                uVar9 = ((iVar3 + uVar5) - 1) / uVar5;
              }
              if ((uVar9 | uVar6) < 0x100) {
                uVar15 = 2;
                uVar5 = uVar9;
              }
              else {
                uVar5 = uVar6 >> 8;
                uVar15 = 4;
                local_6c._2_2_ = (undefined2)uVar9;
              }
              param_4 = uVar9 * param_4;
              local_6c._0_2_ = CONCAT11((char)uVar5,(char)uVar6);
              if (*(char *)(param_1 + 9) != '\v') {
                _printk(&DAT_001385ed,"syna_tcm_reflash_send_command");
              }
              if (param_4 == 0) {
                if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                  param_4 = *(int *)(param_1 + 0x20c);
                  _printk(&DAT_00137337,"syna_tcm_reflash_send_command",param_4);
                }
                else {
                  param_4 = 0;
                }
              }
              if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
                pcVar12 = (code *)SoftwareBreakpoint(0x8228,0x126518);
                (*pcVar12)();
              }
              iVar13 = (**(code **)(param_1 + 0x398))(param_1,0x11,&local_6c,uVar15,0,param_4);
              if (-1 < iVar13) goto LAB_00126068;
              _printk(&DAT_0013a7db,"syna_tcm_reflash_send_command",0x11);
              _printk(&DAT_00136f22,"syna_tcm_erase_flash",uVar6,uVar9);
              uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
              _printk(&DAT_0013c309,"syna_tcm_erase_flash_block",uVar15,uVar4,iVar3);
            }
            else {
              _printk(&DAT_0013c2c0,"syna_tcm_erase_flash_block",uVar4);
              iVar13 = -0xf1;
            }
            uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
            puVar14 = &DAT_0013e355;
            goto LAB_0012676c;
          }
          _printk(&DAT_001323e7,"syna_tcm_erase_flash_block",0);
LAB_00126068:
          puVar14 = &UNK_00132412;
        }
        else {
          puVar14 = &DAT_0013d675;
        }
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        _printk(puVar14,"syna_tcm_erase_flash_block",uVar15);
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        _printk(&DAT_00132fca,"syna_tcm_update_flash_block",uVar15);
        uVar4 = *(uint *)(param_3 + 0x10);
        if (uVar4 == 0) {
          _printk(&DAT_00137878,"syna_tcm_write_flash_block",0);
          goto LAB_001260cc;
        }
        uVar5 = *(uint *)(param_3 + 0x14);
        uVar6 = *(uint *)(param_2 + 0x2c);
        uVar9 = 0;
        if (uVar6 != 0) {
          uVar9 = uVar5 / uVar6;
        }
        if (uVar5 == uVar9 * uVar6) {
          lVar18 = *(long *)(param_3 + 8);
          if ((param_6 & 1) == 0) {
            iVar13 = syna_tcm_write_flash(param_1,param_2,uVar5,lVar18,uVar4,param_5);
            if (iVar13 < 0) goto LAB_00126730;
          }
          else {
            if ((*(byte *)(param_2 + 0x88) & 1) == 0) {
              _printk(&DAT_0013861b,"syna_tcm_write_flash_opt");
              iVar13 = -0xf1;
LAB_00126730:
              uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
              _printk(&DAT_00137e6c,"syna_tcm_write_flash_block",uVar15,uVar5,uVar4);
              goto LAB_00126758;
            }
            uVar10 = 0;
            if (uVar6 != 0) {
              uVar10 = ((uVar4 + uVar6) - 1) / uVar6;
            }
            uVar11 = 0;
            if (uVar6 != 0) {
              uVar11 = *(uint *)(param_2 + 0x30) / uVar6;
            }
            if (*(char *)(param_2 + 0x80) != '\0') {
              _printk(&DAT_00138e56,"syna_tcm_buf_lock");
            }
            mutex_lock(param_2 + 0x50);
            uVar22 = 0;
            *(char *)(param_2 + 0x80) = *(char *)(param_2 + 0x80) + '\x01';
            uVar23 = uVar4;
            do {
              pvVar16 = *(void **)(param_2 + 0x40);
              uVar2 = uVar23;
              if (uVar11 * uVar6 <= uVar23) {
                uVar2 = uVar11 * uVar6;
              }
              __n = (ulong)uVar2;
              uVar1 = uVar2 + 6;
              uVar21 = (ulong)*(uint *)(param_2 + 0x48);
              if (*(uint *)(param_2 + 0x48) < uVar1) {
                if (pvVar16 == (void *)0x0) {
LAB_001261c4:
                  lVar17 = syna_request_managed_device();
                  if (lVar17 != 0) goto LAB_001261cc;
LAB_001263a4:
                  puVar14 = &DAT_0013ccb3;
LAB_0012667c:
                  _printk(puVar14,"syna_pal_mem_alloc");
                  *(undefined8 *)(param_2 + 0x40) = 0;
                }
                else {
                  lVar17 = syna_request_managed_device();
                  if (lVar17 != 0) {
                    devm_kfree(lVar17,pvVar16);
                    goto LAB_001261c4;
                  }
                  _printk(&DAT_0013ccb3,"syna_pal_mem_free");
                  lVar17 = syna_request_managed_device();
                  if (lVar17 == 0) goto LAB_001263a4;
LAB_001261cc:
                  if ((int)uVar1 < 1) {
                    puVar14 = &DAT_00138e98;
                    goto LAB_0012667c;
                  }
                  pvVar16 = (void *)devm_kmalloc(lVar17,(ulong)uVar1,0xdc0);
                  *(void **)(param_2 + 0x40) = pvVar16;
                  if (pvVar16 != (void *)0x0) {
                    *(uint *)(param_2 + 0x48) = uVar1;
                    uVar21 = (ulong)uVar1;
                    goto LAB_001261f0;
                  }
                }
                _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar1);
                *(undefined8 *)(param_2 + 0x48) = 0;
                _printk(&DAT_00136eda,"syna_tcm_write_flash_opt");
                if (*(char *)(param_2 + 0x80) == '\x01') {
                  cVar19 = '\0';
                }
                else {
                  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                  cVar19 = *(char *)(param_2 + 0x80) + -1;
                }
                *(char *)(param_2 + 0x80) = cVar19;
                mutex_unlock(param_2 + 0x50);
                iVar13 = -0xf3;
                goto LAB_00126730;
              }
LAB_001261f0:
              memset(pvVar16,0,uVar21);
              *(undefined4 *)(param_2 + 0x4c) = 0;
              uVar8 = 0;
              if (*(uint *)(param_2 + 0x2c) != 0) {
                uVar8 = (undefined2)((uVar22 + uVar5) / *(uint *)(param_2 + 0x2c));
              }
              *(bool *)*(undefined8 *)(param_2 + 0x40) = uVar23 == uVar4;
              *(char *)(*(long *)(param_2 + 0x40) + 2) = (char)uVar8;
              *(char *)(*(long *)(param_2 + 0x40) + 3) = (char)((ushort)uVar8 >> 8);
              *(char *)(*(long *)(param_2 + 0x40) + 4) = (char)(uVar10 + uVar9);
              *(char *)(*(long *)(param_2 + 0x40) + 5) = (char)(uVar10 + uVar9 >> 8);
              uVar7 = *(uint *)(param_2 + 0x2c);
              uVar20 = 0;
              if (uVar7 != 0) {
                uVar20 = 0;
                if (uVar7 != 0) {
                  uVar20 = ((uVar2 + uVar7) - 1) / uVar7;
                }
              }
              if (param_5 == 0) {
                uVar21 = 0;
                pvVar16 = (void *)(lVar18 + (ulong)uVar22);
                if (pvVar16 != (void *)0x0) goto LAB_00126294;
LAB_001265b0:
                _printk(&DAT_00138b90,"syna_tcm_write_flash_opt",__n);
                if (*(char *)(param_2 + 0x80) == '\x01') {
                  cVar19 = '\0';
                }
                else {
                  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                  cVar19 = *(char *)(param_2 + 0x80) + -1;
                }
                *(char *)(param_2 + 0x80) = cVar19;
                mutex_unlock(param_2 + 0x50);
                iVar13 = -0x16;
                goto LAB_00126730;
              }
              uVar21 = (ulong)(uVar20 * param_5) / 1000;
              pvVar16 = (void *)(lVar18 + (ulong)uVar22);
              if (pvVar16 == (void *)0x0) goto LAB_001265b0;
LAB_00126294:
              __dest = (void *)(*(long *)(param_2 + 0x40) + 6);
              if (__dest == (void *)0x0) goto LAB_001265b0;
              uVar7 = *(int *)(param_2 + 0x48) - 6;
              if ((uVar4 - uVar22 < uVar2) || (uVar7 < uVar2)) {
                _printk(&DAT_0013a172,"syna_pal_mem_cpy",uVar4 - uVar22,uVar7,__n);
                goto LAB_001265b0;
              }
              memcpy(__dest,pvVar16,__n);
              uVar15 = *(undefined8 *)(param_2 + 0x40);
              if (*(char *)(param_1 + 9) != '\v') {
                _printk(&DAT_001385ed,"syna_tcm_reflash_send_command");
              }
              if ((int)uVar21 == 0) {
                if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
                  uVar21 = (ulong)*(uint *)(param_1 + 0x20c);
                  _printk(&DAT_00137337,"syna_tcm_reflash_send_command",uVar21);
                }
                else {
                  uVar21 = 0;
                }
              }
              if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
                pcVar12 = (code *)SoftwareBreakpoint(0x8228,0x126324);
                (*pcVar12)();
              }
              iVar13 = (**(code **)(param_1 + 0x398))(param_1,0xfe,uVar15,uVar1,0,uVar21);
              if (iVar13 < 0) {
                _printk(&DAT_0013a7db,"syna_tcm_reflash_send_command",0xfe);
                _printk(&DAT_00139d63,"syna_tcm_write_flash_opt",uVar22 + uVar5,uVar1);
                if (*(char *)(param_2 + 0x80) == '\x01') {
                  cVar19 = '\0';
                }
                else {
                  _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
                  cVar19 = *(char *)(param_2 + 0x80) + -1;
                }
                *(char *)(param_2 + 0x80) = cVar19;
                mutex_unlock(param_2 + 0x50);
                goto LAB_00126730;
              }
              uVar23 = uVar23 - uVar2;
              uVar22 = uVar2 + uVar22;
              *(uint *)(param_2 + 0x90) = *(int *)(param_2 + 0x90) + uVar2;
            } while (uVar23 != 0);
            if (*(char *)(param_2 + 0x80) == '\x01') {
              cVar19 = '\0';
            }
            else {
              _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
              cVar19 = *(char *)(param_2 + 0x80) + -1;
            }
            *(char *)(param_2 + 0x80) = cVar19;
            mutex_unlock(param_2 + 0x50);
          }
LAB_001260cc:
          uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
          _printk(&DAT_00137eac,"syna_tcm_write_flash_block",uVar15);
          iVar13 = 0;
          goto LAB_00125f9c;
        }
        _printk(&DAT_0013a885,"syna_tcm_write_flash_block",uVar5);
        iVar13 = -0xf1;
LAB_00126758:
        uVar15 = syna_tcm_get_partition_id_string(*(undefined1 *)(param_3 + 0x18));
        puVar14 = &DAT_00137387;
      }
LAB_0012676c:
      _printk(puVar14,"syna_tcm_update_flash_block",uVar15);
      goto LAB_00125f9c;
    }
    puVar14 = &DAT_0013239d;
  }
  _printk(puVar14,"syna_tcm_update_flash_block");
  iVar13 = -0xf1;
LAB_00125f9c:
  lVar18 = sp_el0;
  if (*(long *)(lVar18 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return iVar13;
}



/* 001267b0 syna_tcm_do_fw_update */

void syna_tcm_do_fw_update(long param_1,long param_2,int param_3,uint param_4,ulong param_5)

{
  char *pcVar1;
  long lVar2;
  int iVar3;
  int iVar4;
  char cVar5;
  uint uVar6;
  undefined1 *puVar7;
  ulong uVar8;
  undefined *puVar9;
  undefined *puVar10;
  undefined8 uVar11;
  uint uVar12;
  undefined4 uVar13;
  undefined1 auStack_378 [120];
  long local_300;
  uint local_2f8;
  long local_68;
  
  lVar2 = sp_el0;
  local_68 = *(long *)(lVar2 + 0x710);
  if (param_1 == 0) {
    puVar7 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != 0) && (param_3 != 0)) {
      if (param_4 == 0) {
        param_4 = 0;
        uVar13 = 0;
        uVar12 = 0;
      }
      else {
        uVar12 = param_4 >> 0x10;
        uVar13 = *(undefined4 *)(param_1 + 0x1e8);
        param_4 = param_4 & 0xffff;
      }
      memset(auStack_378,0,0x310);
      _printk(&DAT_00134e08,"syna_tcm_do_fw_update");
      uVar6 = syna_tcm_parse_fw_image(param_2,param_3,auStack_378);
      if ((int)uVar6 < 0) {
        uVar8 = (ulong)uVar6;
        _printk(&DAT_00133b3c,"syna_tcm_do_fw_update");
        goto LAB_001268a4;
      }
      if ((param_5 & 1) == 0) {
        if (local_2f8 < 0x22) {
          puVar9 = &DAT_0013919c;
LAB_00126914:
          _printk(puVar9,"syna_tcm_compare_image_id_info");
          uVar8 = 0;
          goto LAB_001268a4;
        }
        cVar5 = *(char *)(param_1 + 8);
        iVar3 = *(int *)(param_1 + 0xc);
        lVar2 = 0x10;
        if (cVar5 != '\x02') {
          lVar2 = 0xe;
        }
        iVar4 = *(int *)(local_300 + lVar2);
        _printk(&DAT_0013c982,"syna_tcm_compare_image_id_info",iVar3,iVar4);
        if (iVar4 == iVar3) {
          lVar2 = 0x14;
          if (cVar5 != '\x02') {
            lVar2 = 0x12;
          }
          pcVar1 = (char *)(local_300 + lVar2);
          if (((((*pcVar1 == *(char *)(param_1 + 0xc0)) && (pcVar1[1] == *(char *)(param_1 + 0xc1)))
               && (pcVar1[2] == *(char *)(param_1 + 0xc2))) &&
              (((pcVar1[3] == *(char *)(param_1 + 0xc3) && (pcVar1[4] == *(char *)(param_1 + 0xc4)))
               && ((pcVar1[5] == *(char *)(param_1 + 0xc5) &&
                   ((pcVar1[6] == *(char *)(param_1 + 0xc6) &&
                    (pcVar1[7] == *(char *)(param_1 + 199))))))))) &&
             ((pcVar1[8] == *(char *)(param_1 + 200) &&
              (((((pcVar1[9] == *(char *)(param_1 + 0xc9) &&
                  (pcVar1[10] == *(char *)(param_1 + 0xca))) &&
                 (pcVar1[0xb] == *(char *)(param_1 + 0xcb))) &&
                ((pcVar1[0xc] == *(char *)(param_1 + 0xcc) &&
                 (pcVar1[0xd] == *(char *)(param_1 + 0xcd))))) &&
               ((pcVar1[0xe] == *(char *)(param_1 + 0xce) &&
                (pcVar1[0xf] == *(char *)(param_1 + 0xcf))))))))) {
            puVar9 = &DAT_001329c6;
            goto LAB_00126914;
          }
          puVar9 = &DAT_001373ac;
          uVar11 = 1;
          puVar10 = &DAT_001391d4;
        }
        else {
          puVar9 = &UNK_0013d6ae;
          uVar11 = 9;
          puVar10 = &DAT_0013c9bc;
        }
        _printk(puVar10,"syna_tcm_compare_image_id_info");
        _printk(puVar9,"syna_tcm_compare_image_id_info");
      }
      else {
        uVar11 = 9;
      }
      uVar8 = syna_tcm_do_fw_update_ex(param_1,auStack_378,uVar11,uVar12,param_4,uVar13,1);
      goto LAB_001268a4;
    }
    puVar7 = &DAT_00138b6e;
  }
  _printk(puVar7,"syna_tcm_do_fw_update");
  uVar8 = 0xffffff0f;
LAB_001268a4:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar8);
}



/* 00126aec syna_tcm_update_lockdown_config */

void syna_tcm_update_lockdown_config(long param_1,int *param_2,int param_3)

{
  long lVar1;
  int iVar2;
  long lVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  undefined8 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  long local_138;
  undefined8 local_130;
  int iStack_12c;
  undefined8 local_128;
  undefined8 local_120;
  undefined8 uStack_118;
  undefined8 local_110;
  undefined8 uStack_108;
  undefined8 local_100;
  ulong local_f8;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 local_70;
  undefined8 local_68;
  undefined8 uStack_60;
  long local_58;
  
  lVar1 = sp_el0;
  local_58 = *(long *)(lVar1 + 0x710);
  local_100 = 0;
  local_f8 = 0;
  local_110 = 0;
  uStack_108 = 0;
  local_120 = 0;
  uStack_118 = 0;
  local_128 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != (int *)0x0) && (*param_2 != 0)) {
      if (((char)param_2[0x9c] != '\x01') || (*(long *)(param_2 + 0x9e) == 0)) {
        uVar6 = syna_tcm_get_partition_id_string((char)param_2[0xa2]);
        _printk(&DAT_0013d630,"syna_tcm_update_lockdown_config",uVar6);
        iVar2 = -0xf1;
        goto LAB_00126cf8;
      }
      if ((uint)param_2[0xa0] < 8) {
        _printk(&DAT_00134294,"syna_tcm_update_lockdown_config",param_2[0xa0],8);
        iVar2 = -0xf1;
        goto LAB_00126cf8;
      }
      uStack_60 = 0;
      local_78 = 0;
      local_70 = 0;
      local_88 = 0;
      uStack_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      uStack_a0 = 0;
      local_b8 = 0;
      local_c8 = 0;
      uStack_c0 = 0;
      local_d8 = 0;
      uStack_d0 = 0;
      local_e8 = 0;
      uStack_e0 = 0;
      local_f0 = 0;
      local_68 = 0x800000000;
      if (param_3 == 0) {
        uVar7 = 0;
        uVar8 = 0;
      }
      else {
        uVar8 = *(undefined4 *)(param_1 + 0x20c);
        uVar7 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_f8 = local_f8 & 0xffffffffffffff00;
      local_138 = 0;
      local_130 = 0;
      __mutex_init(&local_128,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 *)(param_1 + 0x388) = 1;
      iVar2 = syna_tcm_set_up_flash_access(param_1,&local_f0,uVar8,uVar7);
      if (iVar2 < 0) {
        puVar5 = &DAT_00133487;
LAB_00126e18:
        _printk(puVar5,"syna_tcm_update_lockdown_config");
      }
      else {
        iVar2 = syna_tcm_read_flash_boot_config(param_1,&local_f0,&local_138,uVar8);
        if (iVar2 < 0) {
          puVar5 = &DAT_00137df4;
          goto LAB_00126e18;
        }
        if (*(char *)(local_138 + (ulong)(iStack_12c - 7)) < '\0') {
          _printk(&DAT_0013618c,"syna_tcm_update_lockdown_config");
          iVar2 = 0;
        }
        else {
          iVar2 = syna_tcm_check_flash_block(param_1,&local_f0,param_2 + 0x9c);
          if (iVar2 < 1) {
            uVar6 = syna_tcm_get_partition_id_string((char)param_2[0xa2]);
            _printk(&DAT_0013bb55,"syna_tcm_update_lockdown_config",uVar6);
          }
          else {
            iVar2 = syna_tcm_write_flash
                              (param_1,&local_f0,(int)local_b8 + (param_2[0xa0] - 8U),
                               *(long *)(param_2 + 0x9e) + (ulong)(param_2[0xa0] - 8U),8,param_3);
            if (-1 < iVar2) {
              iVar2 = 8;
            }
          }
        }
      }
      if (*(char *)(param_1 + 9) == '\v') {
        syna_tcm_switch_fw_mode(param_1,1,uVar7);
      }
      *(undefined4 *)(param_1 + 0x388) = 0;
      if ((char)local_f8 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_138;
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar3,lVar1);
      }
      local_130 = 0;
      local_f8 = local_f8 & 0xffffffffffffff00;
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_b0;
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar3,lVar1);
      }
      goto LAB_00126cf8;
    }
    puVar4 = &DAT_00138b6e;
  }
  _printk(puVar4,"syna_tcm_update_lockdown_config");
  iVar2 = -0xf1;
LAB_00126cf8:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar2);
  }
  return;
}



/* 00126e70 syna_tcm_check_flash_block */

uint syna_tcm_check_flash_block(long param_1,long param_2,long param_3)

{
  int iVar1;
  byte bVar2;
  int iVar3;
  undefined *puVar4;
  char *pcVar5;
  uint uVar6;
  uint uVar7;
  long lVar8;
  byte *pbVar9;
  long lVar10;
  
  if (param_2 == 0) {
    puVar4 = &DAT_00134898;
LAB_00126f90:
    _printk(puVar4,"syna_tcm_check_flash_block");
    return 0xffffff0f;
  }
  if (param_3 == 0) {
    puVar4 = &DAT_0013239d;
    goto LAB_00126f90;
  }
  uVar6 = *(byte *)(param_3 + 0x18) - 1;
  uVar6 = uVar6 >> 1 | uVar6 * -0x80000000;
  if ((int)uVar6 < 3) {
    if (uVar6 == 0) {
      if (*(uint *)(param_3 + 0x10) == 0) {
        return 0xffffff0f;
      }
      return *(uint *)(param_3 + 0x10);
    }
    if (uVar6 != 1) {
      return 0;
    }
    uVar6 = *(uint *)(param_3 + 0x10);
    if (uVar6 == 0) {
      return 0;
    }
    iVar3 = (uint)*(ushort *)(param_1 + 0xb8) * *(int *)(param_2 + 0x2c);
    if (iVar3 == 0 && *(ushort *)(param_1 + 0xba) == 0) {
      return uVar6;
    }
    iVar1 = *(int *)(param_3 + 0x14);
    if (iVar1 == iVar3) {
      if (uVar6 == *(ushort *)(param_1 + 0xba)) {
        return uVar6;
      }
      _printk(&DAT_0013244b,"syna_tcm_check_flash_app_config",uVar6);
      return uVar6;
    }
    puVar4 = &DAT_001373ce;
    pcVar5 = "syna_tcm_check_flash_app_config";
    goto LAB_00127040;
  }
  if (uVar6 == 3) {
    return *(uint *)(param_3 + 0x10);
  }
  if (uVar6 != 9) {
    return 0;
  }
  uVar6 = *(uint *)(param_3 + 0x10);
  if (uVar6 < 8) {
    puVar4 = &DAT_0013a8cf;
LAB_00127020:
    _printk(puVar4,"syna_tcm_check_flash_tool_boot_config",uVar6);
    return 0xffffff0f;
  }
  pbVar9 = *(byte **)(param_2 + 0x20);
  bVar2 = *pbVar9;
  if ((bVar2 | 2) != 3) {
    puVar4 = &DAT_0013d047;
    uVar6 = (uint)bVar2;
    goto LAB_00127020;
  }
  iVar3 = *(int *)(param_3 + 0x14);
  if (bVar2 == 1) {
    lVar8 = 0xd;
    lVar10 = 0xc;
LAB_00126fac:
    uVar7 = (uint)CONCAT11(pbVar9[lVar8],pbVar9[lVar10]);
  }
  else {
    if (bVar2 == 3) {
      lVar8 = 0x11;
      lVar10 = 0x10;
      goto LAB_00126fac;
    }
    uVar7 = 0;
  }
  iVar1 = uVar7 * *(int *)(param_2 + 0x2c);
  if (iVar3 == iVar1) {
    return uVar6;
  }
  puVar4 = &DAT_00132ff3;
  pcVar5 = "syna_tcm_check_flash_tool_boot_config";
LAB_00127040:
  _printk(puVar4,pcVar5,iVar1,iVar3);
  return 0xffffff0f;
}



/* 0012704c syna_tcm_write_flash */

int syna_tcm_write_flash
              (long param_1,long param_2,int param_3,long param_4,uint param_5,ulong param_6)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  undefined2 uVar5;
  uint uVar6;
  code *pcVar7;
  int iVar8;
  void *pvVar9;
  long lVar10;
  undefined *puVar11;
  ulong __n;
  char cVar12;
  uint uVar13;
  char cVar14;
  uint uVar15;
  undefined8 uVar16;
  uint uVar17;
  ulong __n_00;
  ulong uVar18;
  
  uVar3 = *(uint *)(param_2 + 0x2c);
  uVar17 = *(uint *)(param_2 + 0x30);
  if (*(char *)(param_2 + 0x80) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_2 + 0x50);
  cVar12 = *(char *)(param_2 + 0x80) + '\x01';
  *(char *)(param_2 + 0x80) = cVar12;
  if (param_5 != 0) {
    uVar6 = 0;
    if (uVar3 != 0) {
      uVar6 = uVar17 / uVar3;
    }
    uVar17 = 0;
    uVar15 = param_5;
    do {
      uVar18 = param_6 & 0xffffffff;
      pvVar9 = *(void **)(param_2 + 0x40);
      uVar2 = uVar15;
      if (uVar6 * uVar3 <= uVar15) {
        uVar2 = uVar6 * uVar3;
      }
      __n_00 = (ulong)uVar2;
      uVar1 = uVar2 + 2;
      __n = (ulong)*(uint *)(param_2 + 0x48);
      if (*(uint *)(param_2 + 0x48) < uVar1) {
        if (pvVar9 == (void *)0x0) {
LAB_001270f4:
          lVar10 = syna_request_managed_device();
          if (lVar10 != 0) goto LAB_001270fc;
LAB_00127294:
          puVar11 = &DAT_0013ccb3;
LAB_0012739c:
          _printk(puVar11,"syna_pal_mem_alloc");
          *(undefined8 *)(param_2 + 0x40) = 0;
        }
        else {
          lVar10 = syna_request_managed_device();
          if (lVar10 != 0) {
            devm_kfree(lVar10,pvVar9);
            goto LAB_001270f4;
          }
          _printk(&DAT_0013ccb3,"syna_pal_mem_free");
          lVar10 = syna_request_managed_device();
          if (lVar10 == 0) goto LAB_00127294;
LAB_001270fc:
          if ((int)uVar1 < 1) {
            puVar11 = &DAT_00138e98;
            goto LAB_0012739c;
          }
          pvVar9 = (void *)devm_kmalloc(lVar10,(ulong)uVar1,0xdc0);
          *(void **)(param_2 + 0x40) = pvVar9;
          if (pvVar9 != (void *)0x0) {
            *(uint *)(param_2 + 0x48) = uVar1;
            __n = (ulong)uVar1;
            goto LAB_00127120;
          }
        }
        _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar1);
        *(undefined8 *)(param_2 + 0x48) = 0;
        _printk(&DAT_00136eda,"syna_tcm_write_flash");
        cVar12 = *(char *)(param_2 + 0x80);
        iVar8 = -0xf3;
        if (cVar12 != '\x01') goto LAB_001273ec;
LAB_00127344:
        cVar14 = '\0';
        goto LAB_001272b8;
      }
LAB_00127120:
      memset(pvVar9,0,__n);
      *(undefined4 *)(param_2 + 0x4c) = 0;
      uVar5 = 0;
      if (*(uint *)(param_2 + 0x2c) != 0) {
        uVar5 = (undefined2)((uVar17 + param_3) / *(uint *)(param_2 + 0x2c));
      }
      **(undefined1 **)(param_2 + 0x40) = (char)uVar5;
      *(char *)(*(long *)(param_2 + 0x40) + 1) = (char)((ushort)uVar5 >> 8);
      uVar4 = *(uint *)(param_2 + 0x2c);
      uVar13 = 0;
      if (uVar4 != 0) {
        uVar13 = 0;
        if (uVar4 != 0) {
          uVar13 = ((uVar2 + uVar4) - 1) / uVar4;
        }
      }
      if ((int)param_6 != 0) {
        uVar18 = (ulong)(uVar13 * (int)param_6) / 1000;
      }
      if (((void *)(param_4 + (ulong)uVar17) == (void *)0x0) ||
         (pvVar9 = (void *)(*(long *)(param_2 + 0x40) + 2), pvVar9 == (void *)0x0)) {
LAB_0012731c:
        _printk(&DAT_00138b90,"syna_tcm_write_flash",__n_00);
        cVar12 = *(char *)(param_2 + 0x80);
        iVar8 = -0x16;
joined_r0x00127340:
        if (cVar12 == '\x01') goto LAB_00127344;
        goto LAB_001273ec;
      }
      uVar4 = *(int *)(param_2 + 0x48) - 2;
      if ((param_5 - uVar17 < uVar2) || (uVar4 < uVar2)) {
        _printk(&DAT_0013a172,"syna_pal_mem_cpy",param_5 - uVar17,uVar4,__n_00);
        goto LAB_0012731c;
      }
      memcpy(pvVar9,(void *)(param_4 + (ulong)uVar17),__n_00);
      uVar16 = *(undefined8 *)(param_2 + 0x40);
      if (*(char *)(param_1 + 9) != '\v') {
        _printk(&DAT_001385ed,"syna_tcm_reflash_send_command");
      }
      if ((int)uVar18 == 0) {
        if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
          uVar18 = (ulong)*(uint *)(param_1 + 0x20c);
          _printk(&DAT_00137337,"syna_tcm_reflash_send_command",uVar18);
        }
        else {
          uVar18 = 0;
        }
      }
      if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar7 = (code *)SoftwareBreakpoint(0x8228,0x127214);
        (*pcVar7)();
      }
      iVar8 = (**(code **)(param_1 + 0x398))(param_1,0x12,uVar16,uVar1,0,uVar18);
      if (iVar8 < 0) {
        _printk(&DAT_0013a7db,"syna_tcm_reflash_send_command",0x12);
        _printk(&DAT_00139d63,"syna_tcm_write_flash",uVar17 + param_3,uVar1);
        cVar12 = *(char *)(param_2 + 0x80);
        goto joined_r0x00127340;
      }
      uVar15 = uVar15 - uVar2;
      uVar17 = uVar17 + uVar2;
      *(uint *)(param_2 + 0x90) = *(int *)(param_2 + 0x90) + uVar2;
    } while (uVar15 != 0);
    cVar12 = *(char *)(param_2 + 0x80);
  }
  iVar8 = 0;
  cVar14 = '\0';
  if (cVar12 != '\x01') {
LAB_001273ec:
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock",cVar12);
    cVar14 = *(char *)(param_2 + 0x80) + -1;
  }
LAB_001272b8:
  *(char *)(param_2 + 0x80) = cVar14;
  mutex_unlock(param_2 + 0x50);
  return iVar8;
}



/* 00127414 syna_tcm_update_cs_config */

void syna_tcm_update_cs_config
               (long param_1,undefined1 *param_2,uint param_3,int param_4,int param_5)

{
  long lVar1;
  int iVar2;
  int iVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  long lVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  ulong uVar11;
  undefined4 uVar12;
  ulong uVar13;
  undefined4 uVar14;
  long local_148;
  undefined8 local_140;
  int iStack_13c;
  undefined8 local_138;
  undefined8 uStack_130;
  undefined8 local_128;
  undefined8 uStack_120;
  undefined8 local_118;
  undefined8 uStack_110;
  ulong local_108;
  undefined8 local_100;
  undefined8 local_f8;
  undefined8 uStack_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  long local_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 local_80;
  undefined4 local_78;
  int iStack_74;
  undefined8 uStack_70;
  long local_68;
  
  lVar1 = sp_el0;
  local_68 = *(long *)(lVar1 + 0x710);
  local_78 = 0;
  iStack_74 = 0;
  uStack_70 = 0;
  local_88 = 0;
  local_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  local_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f8 = 0;
  uStack_f0 = 0;
  local_108 = 0;
  local_100 = 0;
  local_118 = 0;
  uStack_110 = 0;
  local_128 = 0;
  uStack_120 = 0;
  local_138 = 0;
  uStack_130 = 0;
  local_148 = 0;
  local_140 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != (undefined1 *)0x0) && (uVar13 = (ulong)param_3, param_3 != 0)) {
      local_78 = 0;
      iStack_74 = 0;
      uStack_70 = 0;
      local_88 = 0;
      local_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      local_a8 = 0;
      uStack_a0 = 0;
      uStack_b0 = 0;
      local_c8 = 0;
      local_d8 = 0;
      uStack_d0 = 0;
      local_e8 = 0;
      uStack_e0 = 0;
      local_f8 = 0;
      uStack_f0 = 0;
      local_100 = 0;
      if (param_5 == 0) {
        uVar12 = 0;
        uVar14 = 0;
      }
      else {
        uVar14 = *(undefined4 *)(param_1 + 0x20c);
        uVar12 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_c0 = 0;
      local_b8 = 0;
      __mutex_init(&uStack_b0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_108 = local_108 & 0xffffffffffffff00;
      local_148 = 0;
      local_140 = 0;
      __mutex_init(&local_138,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 *)(param_1 + 0x388) = 1;
      iVar3 = syna_tcm_set_up_flash_access(param_1,&local_100,uVar14,uVar12);
      if (iVar3 < 0) {
        puVar5 = &DAT_00133487;
LAB_001276e4:
        _printk(puVar5,"syna_tcm_update_cs_config");
      }
      else {
        iVar3 = syna_tcm_read_flash_boot_config(param_1,&local_100,&local_148,uVar14);
        if (iVar3 < 0) {
          puVar5 = &DAT_00137df4;
          goto LAB_001276e4;
        }
        iVar9 = 0x80;
        do {
          if ((*(char *)(local_148 + (ulong)((iStack_13c + iVar9) - 0x87)) < '\0') &&
             (-1 < *(char *)(local_148 + (ulong)((iStack_13c + iVar9) - 0x8f)))) {
            iVar2 = iStack_13c + iVar9;
            break;
          }
          iVar9 = iVar9 + -8;
          iVar2 = iStack_13c;
        } while (iVar9 != 0);
        uVar7 = iVar2 - 0x88;
        if (uVar7 < param_3) {
          puVar5 = &DAT_0013c8d2;
          goto LAB_001276e4;
        }
        if (local_d8._4_4_ == 0) {
          puVar5 = &DAT_00135501;
          goto LAB_001276e4;
        }
        if (param_4 == 0) {
          uVar8 = 0;
        }
        else {
          uVar8 = 0;
          if (local_d8._4_4_ != 0) {
            uVar8 = ((param_4 + local_d8._4_4_) - 1) / local_d8._4_4_;
          }
          uVar8 = uVar8 * local_d8._4_4_;
        }
        do {
          if (*(char *)(local_148 + (ulong)uVar8) == '\0') {
            uVar10 = 0;
            uVar11 = (ulong)local_d8._4_4_;
            while (*(char *)(local_148 + (ulong)(uVar8 + uVar10)) == '\0') {
              uVar11 = uVar11 - 1;
              uVar10 = uVar10 + 1;
              if (uVar11 == 0) goto LAB_00127600;
            }
            if (local_d8._4_4_ <= uVar10) break;
          }
          uVar8 = uVar8 + local_d8._4_4_;
        } while (uVar8 < uVar7);
LAB_00127600:
        if (uVar7 < uVar8) {
          puVar5 = &DAT_00137850;
          goto LAB_001276e4;
        }
        uVar7 = 0;
        if (local_d8._4_4_ != 0) {
          uVar7 = ((param_3 + local_d8._4_4_) - 1) / local_d8._4_4_;
        }
        iStack_74 = uVar7 * local_d8._4_4_;
        uVar7 = uVar8;
        do {
          uVar13 = uVar13 - 1;
          *(undefined1 *)(local_148 + (ulong)uVar7) = *param_2;
          uVar7 = uVar7 + 1;
          param_2 = param_2 + 1;
        } while (uVar13 != 0);
        iVar3 = syna_tcm_write_flash
                          (param_1,&local_100,(int)local_c8 + uVar8,local_148 + (ulong)uVar8,
                           iStack_74,param_5);
        if (-1 < iVar3) {
          iVar3 = iStack_74;
        }
      }
      if (*(char *)(param_1 + 9) == '\v') {
        syna_tcm_switch_fw_mode(param_1,1,uVar12);
      }
      *(undefined4 *)(param_1 + 0x388) = 0;
      if ((char)local_108 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_148;
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar6,lVar1);
      }
      local_140 = 0;
      local_108 = local_108 & 0xffffffffffffff00;
      if ((char)local_80 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar1 = local_c0;
      lVar6 = syna_request_managed_device();
      if (lVar6 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar1 != 0) {
        devm_kfree(lVar6,lVar1);
      }
      goto LAB_0012775c;
    }
    puVar4 = &DAT_001354e2;
  }
  _printk(puVar4,"syna_tcm_update_cs_config");
  iVar3 = -0xf1;
LAB_0012775c:
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar3);
  }
  return;
}



/* 001277fc syna_tcm_read_cs_data */

void syna_tcm_read_cs_data(long param_1,void *param_2,uint param_3,undefined4 param_4,int param_5)

{
  void *pvVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  uint uVar7;
  ulong __n;
  undefined4 uVar8;
  undefined4 uVar9;
  void *local_148;
  ulong local_140;
  undefined8 local_138;
  undefined8 uStack_130;
  undefined8 local_128;
  undefined8 uStack_120;
  undefined8 local_118;
  undefined8 uStack_110;
  ulong local_108;
  undefined8 local_100;
  undefined8 local_f8;
  undefined8 uStack_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  long local_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  local_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  local_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f8 = 0;
  uStack_f0 = 0;
  local_108 = 0;
  local_100 = 0;
  local_118 = 0;
  uStack_110 = 0;
  local_128 = 0;
  uStack_120 = 0;
  local_138 = 0;
  uStack_130 = 0;
  local_148 = (void *)0x0;
  local_140 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != (void *)0x0) && (__n = (ulong)param_3, param_3 != 0)) {
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      local_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      local_a8 = 0;
      uStack_a0 = 0;
      uStack_b0 = 0;
      local_c8 = 0;
      local_d8 = 0;
      uStack_d0 = 0;
      local_e8 = 0;
      uStack_e0 = 0;
      local_f8 = 0;
      uStack_f0 = 0;
      local_100 = 0;
      if (param_5 == 0) {
        uVar8 = 0;
        uVar9 = 0;
      }
      else {
        uVar9 = *(undefined4 *)(param_1 + 0x20c);
        uVar8 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_c0 = 0;
      local_b8 = 0;
      __mutex_init(&uStack_b0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_108 = local_108 & 0xffffffffffffff00;
      local_148 = (void *)0x0;
      local_140 = 0;
      __mutex_init(&local_138,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      iVar2 = syna_tcm_set_up_flash_access(param_1,&local_100,uVar9,uVar8);
      if (iVar2 < 0) {
        puVar6 = &DAT_00133487;
LAB_00127ac4:
        _printk(puVar6,"syna_tcm_read_cs_data");
      }
      else {
        if (local_d8._4_4_ == 0) {
          uVar7 = 0;
        }
        else {
          uVar7 = 0;
          if (local_d8._4_4_ != 0) {
            uVar7 = ((param_3 + local_d8._4_4_) - 1) / local_d8._4_4_;
          }
        }
        iVar2 = syna_tcm_read_flash_boot_cs_config
                          (param_1,&local_100,&local_148,uVar7 * local_d8._4_4_,param_4,param_5);
        if (iVar2 < 0) {
          puVar6 = &DAT_001342cf;
          goto LAB_00127ac4;
        }
        if (local_148 == (void *)0x0) {
LAB_00127af0:
          _printk(&DAT_0013e323,"syna_tcm_read_cs_data");
          iVar2 = -0x16;
        }
        else {
          if ((uint)local_140 < param_3) {
            _printk(&DAT_0013a172,"syna_pal_mem_cpy",local_140 & 0xffffffff,__n,__n);
            goto LAB_00127af0;
          }
          memcpy(param_2,local_148,__n);
          iVar2 = 0;
        }
      }
      if (*(char *)(param_1 + 9) == '\v') {
        syna_tcm_switch_fw_mode(param_1,1,uVar8);
      }
      if ((char)local_108 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      pvVar1 = local_148;
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (pvVar1 != (void *)0x0) {
        devm_kfree(lVar3,pvVar1);
      }
      local_140 = 0;
      local_108 = local_108 & 0xffffffffffffff00;
      if ((char)local_80 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar3 = local_c0;
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar3 != 0) {
        devm_kfree(lVar4,lVar3);
      }
      goto LAB_001279e8;
    }
    puVar5 = &DAT_001354e2;
  }
  _printk(puVar5,"syna_tcm_read_cs_data");
  iVar2 = -0xf1;
LAB_001279e8:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar2);
  }
  return;
}



/* 00127b14 syna_tcm_update_mtp_data */

uint syna_tcm_update_mtp_data(long param_1,void *param_2,uint param_3,int param_4,int param_5)

{
  uint uVar1;
  long lVar2;
  void *__dest;
  long lVar3;
  undefined1 *puVar4;
  undefined *puVar5;
  undefined4 uVar6;
  ulong __n;
  undefined4 uVar7;
  int iVar8;
  undefined8 local_f0;
  undefined8 local_e8;
  undefined8 uStack_e0;
  undefined8 local_d8;
  byte *local_d0;
  undefined8 local_c8;
  undefined8 uStack_c0;
  undefined8 local_b8;
  long local_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 local_70;
  undefined4 local_68;
  uint uStack_64;
  undefined8 uStack_60;
  long local_58;
  
  lVar2 = sp_el0;
  local_58 = *(long *)(lVar2 + 0x710);
  local_68 = 0;
  uStack_64 = 0;
  uStack_60 = 0;
  local_78 = 0;
  local_70 = 0;
  local_88 = 0;
  uStack_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  local_b0 = 0;
  local_c8 = 0;
  uStack_c0 = 0;
  local_d8 = 0;
  local_d0 = (byte *)0x0;
  local_e8 = 0;
  uStack_e0 = 0;
  local_f0 = 0;
  if (param_1 == 0) {
    puVar4 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != (void *)0x0) && (__n = (ulong)param_3, param_3 != 0)) {
      if (param_5 == 0) {
        uVar6 = 0;
        uVar7 = 0;
      }
      else {
        uVar7 = *(undefined4 *)(param_1 + 0x20c);
        uVar6 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_b0 = 0;
      local_a8 = 0;
      __mutex_init(&uStack_a0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      *(undefined4 *)(param_1 + 0x388) = 1;
      uVar1 = syna_tcm_set_up_flash_access(param_1,&local_f0,uVar7,uVar6);
      if ((int)uVar1 < 0) {
        puVar5 = &DAT_00133487;
LAB_00127d9c:
        _printk(puVar5,"syna_tcm_update_mtp_data");
      }
      else if (*local_d0 < 3) {
        _printk(&DAT_00134e2d,"syna_tcm_update_mtp_data");
      }
      else {
        if (local_c8._4_4_ == 0) {
          puVar5 = &DAT_00135501;
          goto LAB_00127d9c;
        }
        if (param_4 == 0) {
          iVar8 = 0;
        }
        else {
          uVar1 = 0;
          if (local_c8._4_4_ != 0) {
            uVar1 = ((param_4 + local_c8._4_4_) - 1) / local_c8._4_4_;
          }
          iVar8 = uVar1 * local_c8._4_4_;
        }
        uVar1 = 0;
        if (local_c8._4_4_ != 0) {
          uVar1 = ((param_3 + local_c8._4_4_) - 1) / local_c8._4_4_;
        }
        uVar1 = uVar1 * local_c8._4_4_;
        uStack_64 = uVar1;
        lVar2 = syna_request_managed_device();
        if (lVar2 == 0) {
          puVar5 = &DAT_0013ccb3;
LAB_00127dc0:
          _printk(puVar5,"syna_pal_mem_alloc");
        }
        else {
          if ((int)uVar1 < 1) {
            puVar5 = &DAT_00138e98;
            goto LAB_00127dc0;
          }
          __dest = (void *)devm_kmalloc(lVar2,uVar1,0xdc0);
          if (__dest != (void *)0x0) {
            if (uStack_64 < param_3) {
              _printk(&DAT_0013a172,"syna_pal_mem_cpy",__n,uStack_64,__n);
            }
            else {
              if (uVar1 < param_3) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(0x11,uVar1);
              }
              memcpy(__dest,param_2,__n);
            }
            uVar1 = syna_tcm_write_flash
                              (param_1,&local_f0,local_b8._4_4_ + iVar8,__dest,uStack_64,param_5);
            if (-1 < (int)uVar1) {
              uVar1 = uStack_64;
            }
            goto LAB_00127ca0;
          }
        }
        _printk(&DAT_00133487,"syna_tcm_update_mtp_data");
        uVar1 = 0xffffff0d;
      }
LAB_00127ca0:
      if (*(char *)(param_1 + 9) == '\v') {
        syna_tcm_switch_fw_mode(param_1,1,uVar6);
      }
      *(undefined4 *)(param_1 + 0x388) = 0;
      if ((char)local_70 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar2 = local_b0;
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar2 != 0) {
        devm_kfree(lVar3,lVar2);
      }
      goto LAB_00127ce0;
    }
    puVar4 = &DAT_00137e1c;
  }
  _printk(puVar4,"syna_tcm_update_mtp_data");
  uVar1 = 0xffffff0f;
LAB_00127ce0:
  lVar2 = sp_el0;
  if (*(long *)(lVar2 + 0x710) != local_58) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar1;
}



/* 00127e18 syna_pal_mem_alloc */

undefined8 syna_pal_mem_alloc(int param_1)

{
  long lVar1;
  undefined8 uVar2;
  undefined *puVar3;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 == 0) {
    puVar3 = &DAT_0013ccb3;
  }
  else {
    if (0 < param_1) {
      uVar2 = devm_kmalloc(lVar1,param_1,0xdc0);
      return uVar2;
    }
    puVar3 = &DAT_00138e98;
  }
  _printk(puVar3,"syna_pal_mem_alloc");
  return 0;
}



/* 00127e84 syna_tcm_read_mtp_data */

void syna_tcm_read_mtp_data(long param_1,void *param_2,uint param_3,undefined4 param_4,int param_5)

{
  void *pvVar1;
  int iVar2;
  long lVar3;
  long lVar4;
  undefined1 *puVar5;
  undefined *puVar6;
  uint uVar7;
  ulong __n;
  undefined4 uVar8;
  undefined4 uVar9;
  void *local_148;
  ulong local_140;
  undefined8 local_138;
  undefined8 uStack_130;
  undefined8 local_128;
  undefined8 uStack_120;
  undefined8 local_118;
  undefined8 uStack_110;
  ulong local_108;
  undefined8 local_100;
  undefined8 local_f8;
  undefined8 uStack_f0;
  undefined8 local_e8;
  byte *local_e0;
  undefined8 local_d8;
  undefined8 uStack_d0;
  undefined8 local_c8;
  long local_c0;
  undefined8 local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 local_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar3 = sp_el0;
  local_68 = *(long *)(lVar3 + 0x710);
  local_78 = 0;
  uStack_70 = 0;
  local_88 = 0;
  local_80 = 0;
  local_98 = 0;
  uStack_90 = 0;
  local_a8 = 0;
  uStack_a0 = 0;
  local_b8 = 0;
  uStack_b0 = 0;
  local_c8 = 0;
  local_c0 = 0;
  local_d8 = 0;
  uStack_d0 = 0;
  local_e8 = 0;
  local_e0 = (byte *)0x0;
  local_f8 = 0;
  uStack_f0 = 0;
  local_108 = 0;
  local_100 = 0;
  local_118 = 0;
  uStack_110 = 0;
  local_128 = 0;
  uStack_120 = 0;
  local_138 = 0;
  uStack_130 = 0;
  local_148 = (void *)0x0;
  local_140 = 0;
  if (param_1 == 0) {
    puVar5 = &DAT_00133fd6;
  }
  else {
    if ((param_2 != (void *)0x0) && (__n = (ulong)param_3, param_3 != 0)) {
      local_78 = 0;
      uStack_70 = 0;
      local_88 = 0;
      local_80 = 0;
      local_98 = 0;
      uStack_90 = 0;
      local_a8 = 0;
      uStack_a0 = 0;
      uStack_b0 = 0;
      local_c8 = 0;
      local_d8 = 0;
      uStack_d0 = 0;
      local_e8 = 0;
      local_e0 = (byte *)0x0;
      local_f8 = 0;
      uStack_f0 = 0;
      local_100 = 0;
      if (param_5 == 0) {
        uVar8 = 0;
        uVar9 = 0;
      }
      else {
        uVar9 = *(undefined4 *)(param_1 + 0x20c);
        uVar8 = *(undefined4 *)(param_1 + 0x1e8);
      }
      local_c0 = 0;
      local_b8 = 0;
      __mutex_init(&uStack_b0,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      local_108 = local_108 & 0xffffffffffffff00;
      local_148 = (void *)0x0;
      local_140 = 0;
      __mutex_init(&local_138,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
      iVar2 = syna_tcm_set_up_flash_access(param_1,&local_100,uVar9,uVar8);
      if (iVar2 < 0) {
        puVar6 = &DAT_00133487;
LAB_00128178:
        _printk(puVar6,"syna_tcm_read_mtp_data");
      }
      else if (*local_e0 < 3) {
        _printk(&DAT_00134e2d,"syna_tcm_read_mtp_data");
      }
      else {
        if (local_d8._4_4_ == 0) {
          uVar7 = 0;
        }
        else {
          uVar7 = 0;
          if (local_d8._4_4_ != 0) {
            uVar7 = ((param_3 + local_d8._4_4_) - 1) / local_d8._4_4_;
          }
        }
        iVar2 = syna_tcm_read_flash_mtp_config
                          (param_1,&local_100,&local_148,uVar7 * local_d8._4_4_,param_4,param_5);
        if (iVar2 < 0) {
          puVar6 = &DAT_00139c99;
          goto LAB_00128178;
        }
        if (local_148 != (void *)0x0) {
          if (param_3 <= (uint)local_140) {
            memcpy(param_2,local_148,__n);
            iVar2 = 0;
            goto LAB_00128018;
          }
          _printk(&DAT_0013a172,"syna_pal_mem_cpy",local_140 & 0xffffffff,__n,__n);
        }
        _printk(&DAT_0013e323,"syna_tcm_read_mtp_data");
        iVar2 = -0x16;
      }
LAB_00128018:
      if (*(char *)(param_1 + 9) == '\v') {
        syna_tcm_switch_fw_mode(param_1,1,uVar8);
      }
      if ((char)local_108 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      pvVar1 = local_148;
      lVar3 = syna_request_managed_device();
      if (lVar3 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (pvVar1 != (void *)0x0) {
        devm_kfree(lVar3,pvVar1);
      }
      local_140 = 0;
      local_108 = local_108 & 0xffffffffffffff00;
      if ((char)local_80 != '\0') {
        _printk(&DAT_00135294,"syna_tcm_buf_release");
      }
      lVar3 = local_c0;
      lVar4 = syna_request_managed_device();
      if (lVar4 == 0) {
        _printk(&DAT_0013ccb3,"syna_pal_mem_free");
      }
      else if (lVar3 != 0) {
        devm_kfree(lVar4,lVar3);
      }
      goto LAB_00128080;
    }
    puVar5 = &DAT_00137e1c;
  }
  _printk(puVar5,"syna_tcm_read_mtp_data");
  iVar2 = -0xf1;
LAB_00128080:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar2);
  }
  return;
}



/* 001281c8 syna_tcm_erase_mtp_data */

void syna_tcm_erase_mtp_data(long param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  long lVar4;
  code *pcVar5;
  int iVar6;
  long lVar7;
  undefined *puVar8;
  undefined8 uVar9;
  undefined4 uVar10;
  int iVar11;
  undefined4 local_e4;
  undefined8 local_e0;
  undefined8 uStack_d8;
  undefined8 local_d0;
  undefined8 uStack_c8;
  byte *local_c0;
  undefined8 local_b8;
  undefined8 local_b0;
  undefined8 uStack_a8;
  long local_a0;
  undefined8 uStack_98;
  undefined8 local_90;
  undefined8 uStack_88;
  undefined8 local_80;
  undefined8 uStack_78;
  undefined8 local_70;
  undefined8 uStack_68;
  undefined8 local_60;
  undefined8 local_58;
  undefined8 uStack_50;
  long local_48;
  
  lVar4 = sp_el0;
  local_48 = *(long *)(lVar4 + 0x710);
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_erase_mtp_data");
    iVar6 = -0xf1;
    goto LAB_0012836c;
  }
  local_70 = 0;
  uStack_68 = 0;
  local_58 = 0;
  uStack_50 = 0;
  local_60 = 0;
  local_80 = 0;
  uStack_78 = 0;
  local_90 = 0;
  uStack_88 = 0;
  local_b0 = 0;
  uStack_a8 = 0;
  local_c0 = (byte *)0x0;
  local_b8 = 0;
  local_d0 = 0;
  uStack_c8 = 0;
  local_e0 = 0;
  uStack_d8 = 0;
  if (param_2 == 0) {
    uVar10 = 0;
    iVar11 = 0;
  }
  else {
    iVar11 = *(int *)(param_1 + 0x20c);
    uVar10 = *(undefined4 *)(param_1 + 0x1e8);
  }
  local_a0 = 0;
  uStack_98 = 0;
  __mutex_init(&local_90,"(struct mutex *)ptr",&syna_pal_mutex_alloc___key);
  iVar6 = syna_tcm_set_up_flash_access(param_1,&local_e0,iVar11,uVar10);
  if (iVar6 < 0) {
    puVar8 = &DAT_00133487;
LAB_00128480:
    _printk(puVar8,"syna_tcm_erase_mtp_data");
  }
  else if (*local_c0 < 3) {
    _printk(&DAT_00134e2d,"syna_tcm_erase_mtp_data");
  }
  else {
    local_e4._2_2_ = 0;
    uVar2 = 0;
    if ((uint)local_b8 != 0) {
      uVar2 = uStack_a8._4_4_ / (uint)local_b8;
    }
    uVar3 = 0;
    if ((uint)local_b8 != 0) {
      uVar3 = (((uint)local_b8 + (uint)local_b8 * local_c0[0x15]) - 1) / (uint)local_b8;
    }
    if ((uVar3 | uVar2) < 0x100) {
      uVar9 = 2;
      uVar1 = uVar3;
    }
    else {
      uVar1 = uVar2 >> 8;
      uVar9 = 4;
      local_e4._2_2_ = (undefined2)uVar3;
    }
    iVar11 = uVar3 * iVar11;
    local_e4._0_2_ = CONCAT11((char)uVar1,(char)uVar2);
    if (*(char *)(param_1 + 9) != '\v') {
      _printk(&DAT_001385ed,"syna_tcm_reflash_send_command",*(char *)(param_1 + 9),uVar9);
    }
    if (iVar11 == 0) {
      if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
        iVar11 = *(int *)(param_1 + 0x20c);
        _printk(&DAT_00137337,"syna_tcm_reflash_send_command",iVar11,uVar9);
      }
      else {
        iVar11 = 0;
      }
    }
    if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x128320);
      (*pcVar5)();
    }
    iVar6 = (**(code **)(param_1 + 0x398))(param_1,0x11,&local_e4,uVar9,0,iVar11);
    if (iVar6 < 0) {
      _printk(&DAT_0013a7db,"syna_tcm_reflash_send_command",0x11);
      _printk(&DAT_00136f22,"syna_tcm_erase_flash",uVar2,uVar3);
      puVar8 = &DAT_00139cc5;
      goto LAB_00128480;
    }
    iVar6 = 0;
  }
  if (*(char *)(param_1 + 9) == '\v') {
    syna_tcm_switch_fw_mode(param_1,1,uVar10);
  }
  if ((char)local_60 != '\0') {
    _printk(&DAT_00135294,"syna_tcm_buf_release");
  }
  lVar4 = local_a0;
  lVar7 = syna_request_managed_device();
  if (lVar7 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else if (lVar4 != 0) {
    devm_kfree(lVar7,lVar4);
  }
LAB_0012836c:
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(iVar6);
  }
  return;
}



/* 001284c0 syna_pal_mem_free */

void syna_pal_mem_free(long param_1)

{
  long lVar1;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else if (param_1 != 0) {
    devm_kfree(lVar1,param_1);
  }
  return;
}



/* 00128514 syna_tcm_get_touch_data */

undefined8 syna_tcm_get_touch_data(long param_1,int param_2,uint param_3,uint param_4,uint *param_5)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  undefined8 uVar4;
  uint uVar5;
  
  if (param_4 - 0x21 < 0xffffffe0) {
    _printk(&DAT_00134319,"syna_tcm_get_touch_data",param_4);
    uVar4 = 0xffffff0f;
  }
  else if (param_1 == 0) {
    _printk(&DAT_00137ecb,"syna_tcm_get_touch_data");
    uVar4 = 0xffffff0f;
  }
  else if ((uint)(param_2 * 8) < param_4 + param_3) {
    uVar4 = 0;
    *param_5 = 0;
  }
  else {
    uVar5 = param_3 >> 3;
    uVar3 = 8 - (param_3 & 7);
    if (param_4 <= uVar3) {
      uVar3 = param_4;
    }
    uVar1 = (uint)(*(byte *)(param_1 + (ulong)uVar5) >> (ulong)(param_3 & 7)) &
            0xffU >> (ulong)(8 - uVar3 & 0x1f);
    for (uVar3 = param_4 - uVar3; uVar3 != 0; uVar3 = uVar3 - uVar2) {
      uVar5 = uVar5 + 1;
      uVar2 = uVar3;
      if (7 < uVar3) {
        uVar2 = 8;
      }
      uVar1 = (0xffU >> (ulong)(8 - uVar2 & 0x1f) & (uint)*(byte *)(param_1 + (ulong)uVar5)) <<
              (ulong)(param_4 - uVar3 & 0x1f) | uVar1;
    }
    uVar4 = 0;
    *param_5 = uVar1;
  }
  return uVar4;
}



/* 0012860c syna_tcm_parse_touch_report */

void syna_tcm_parse_touch_report(long param_1,long param_2,uint param_3,uint *param_4)

{
  uint *__s;
  uint uVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  char cVar5;
  byte bVar6;
  uint uVar7;
  uint uVar8;
  long lVar9;
  bool bVar10;
  ulong uVar11;
  bool bVar12;
  int iVar13;
  ulong uVar14;
  undefined *puVar15;
  uint uVar16;
  ulong uVar17;
  ulong uVar18;
  uint uVar19;
  uint uVar20;
  ulong uVar21;
  code *pcVar22;
  uint uVar23;
  uint uVar24;
  uint uVar25;
  undefined2 uVar26;
  uint uVar27;
  uint uVar28;
  undefined1 *puVar29;
  uint uVar30;
  ulong uVar31;
  uint uVar32;
  undefined8 local_98;
  undefined8 local_70;
  long local_68;
  
  lVar9 = sp_el0;
  local_68 = *(long *)(lVar9 + 0x710);
  if (param_1 == 0) {
    puVar15 = &DAT_00133fd6;
  }
  else if (param_2 == 0) {
    puVar15 = &DAT_00137ecb;
  }
  else if (param_4 == (uint *)0x0) {
    puVar15 = &DAT_00139da1;
  }
  else {
    if (*(int *)(param_1 + 0x18) != 0) {
      if (*(int *)(param_1 + 0x38c) != 1) {
        puVar29 = *(undefined1 **)(param_1 + 400);
        __s = param_4 + 2;
        if ((puVar29 == (undefined1 *)0x0) || (uVar32 = *(uint *)(param_1 + 0x19c), uVar32 == 0)) {
          _printk(&DAT_00138652,"syna_tcm_parse_touch_report");
          uVar32 = 0x15;
          puVar29 = &default_custom_touch_format;
        }
        memset(__s,0,0x208);
        uVar2 = *(undefined4 *)(param_1 + 0x1d8);
        iVar3 = *(int *)(param_1 + 0x1e4);
        uVar30 = 0;
        iVar4 = *(int *)(param_1 + 0x1e0);
        uVar16 = 0;
        local_98 = 0;
        uVar7 = param_3 << 3;
        local_70 = 0;
        uVar18 = 0;
        uVar24 = 0;
        bVar12 = false;
LAB_001286f8:
        bVar10 = bVar12;
        uVar20 = uVar24;
        uVar17 = uVar18;
        uVar11 = local_98;
        uVar31 = uVar17 & 0xffffffff;
LAB_00128704:
        uVar14 = local_70;
        uVar25 = local_70._4_4_;
        uVar21 = (ulong)local_70._4_4_;
        if (uVar32 <= local_70._4_4_) {
switchD_001287bc_caseD_0:
          uVar14 = local_70 & 0xffffffff;
          goto LAB_00129eb4;
        }
        uVar18 = uVar21 + 1;
        local_70 = CONCAT44((int)uVar18,(uint)local_70);
        cVar5 = puVar29[uVar21];
        uVar24 = uVar20;
        bVar12 = bVar10;
        switch(cVar5) {
        case '\0':
          goto switchD_001287bc_caseD_0;
        case '\x01':
          bVar12 = true;
          goto joined_r0x001289ec;
        case '\x02':
          bVar12 = false;
joined_r0x001289ec:
          uVar24 = 0;
          if (uVar7 <= (uint)(iVar4 + iVar3)) {
LAB_001286e4:
            local_70 = CONCAT44(uVar2,(uint)local_70);
            uVar18 = uVar31;
            uVar24 = uVar20;
            bVar12 = bVar10;
          }
          goto LAB_001286f8;
        case '\x03':
          uVar14 = uVar14 & 0xffffffff;
          uVar25 = (uint)local_70 + iVar3;
          if (uVar7 <= uVar25 && uVar25 != uVar7) goto LAB_00129eb4;
          if (uVar25 == uVar7) goto LAB_001286e4;
          if (bVar10) {
            if ((local_98 & 0x100000000) != 0) {
              uVar16 = uVar16 + 1;
              local_98 = CONCAT44(1,(uint)local_98);
              uVar18 = uVar31;
              uVar24 = uVar20 + 1;
              bVar12 = true;
              if (uVar16 < (uint)local_98) {
                local_70 = CONCAT44((int)uVar17,(uint)local_70);
                local_98 = CONCAT44(1,(uint)local_98);
                uVar18 = uVar17 & 0xffffffff;
              }
              goto LAB_001286f8;
            }
            bVar12 = true;
            local_98 = local_98 & 0xffffffff;
            uVar18 = uVar31;
            if (uVar7 <= (uint)local_70) goto LAB_001286f8;
            local_98 = uVar11 & 0xffffffff;
          }
          else {
            uVar18 = uVar31;
            uVar24 = uVar20 + 1;
            bVar12 = false;
            if (*(uint *)(param_1 + 0x18) <= uVar20 + 1) goto LAB_001286f8;
            bVar12 = false;
          }
          local_70 = CONCAT44((int)uVar17,(uint)local_70);
          uVar18 = uVar31;
          uVar24 = uVar20 + 1;
          goto LAB_001286f8;
        case '\x04':
          uVar20 = (uint)local_70 + 7 & 0xfffffff8;
          goto LAB_001288f8;
        case '\x05':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00135bea;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x87] = uVar30;
          break;
        case '\x06':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00134e9e;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar25 = (uint)local_70 >> 3;
            uVar20 = 8 - ((uint)local_70 & 7);
            uVar19 = (uint)bVar6;
            if (uVar19 <= uVar20) {
              uVar20 = uVar19;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar20 & 0x1f);
            for (uVar20 = uVar19 - uVar20; uVar20 != 0; uVar20 = uVar20 - uVar28) {
              uVar25 = uVar25 + 1;
              uVar28 = uVar20;
              if (7 < uVar20) {
                uVar28 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar28 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar25)) << (ulong)(uVar19 - uVar20 & 0x1f)
                       | uVar30;
            }
          }
          *param_4 = uVar30;
          uVar20 = uVar30;
          break;
        case '\a':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013b363;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          *(char *)(__s + (ulong)uVar20 * 0xd) = (char)uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\b':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013d096;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 1] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\t':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00135529;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 2] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\n':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00135556;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 5] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\v':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133532;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 3] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\f':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013d6d8;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 4] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\r':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133bb2;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 6] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\x0e':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013355c;
            goto LAB_00129ea4;
          }
          uVar19 = (uint)local_70 + bVar6;
          if (uVar7 < uVar19) {
            uVar30 = 0;
          }
          else {
            uVar23 = (uint)local_70 >> 3;
            uVar28 = 8 - ((uint)local_70 & 7);
            uVar27 = (uint)bVar6;
            if (uVar27 <= uVar28) {
              uVar28 = uVar27;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar23) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar28 & 0x1f);
            for (uVar28 = uVar27 - uVar28; uVar28 != 0; uVar28 = uVar28 - uVar1) {
              uVar23 = uVar23 + 1;
              uVar1 = uVar28;
              if (7 < uVar28) {
                uVar1 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar23)) << (ulong)(uVar27 - uVar28 & 0x1f)
                       | uVar30;
            }
          }
          local_70 = CONCAT44(uVar25 + 2,uVar19);
          __s[(ulong)uVar20 * 0xd + 7] = uVar30;
          uVar18 = uVar31;
          goto LAB_001286f8;
        case '\x0f':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133be0;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x88] = uVar30;
          break;
        case '\x10':
          pcVar22 = *(code **)(param_1 + 0x3d0);
          if (pcVar22 == (code *)0x0) {
            local_70._4_4_ = uVar25 + 2;
            bVar6 = puVar29[uVar18];
            if (bVar6 - 0x21 < 0xffffffe0) {
              _printk(&DAT_00134319,"syna_tcm_get_touch_data",(uint)bVar6);
              uVar14 = 0xffffff0f;
              uVar20 = (uint)local_70 + bVar6;
            }
            else {
              uVar20 = (uint)local_70 + bVar6;
              if (uVar7 < uVar20) {
                uVar30 = 0;
              }
              else {
                uVar19 = (uint)local_70 >> 3;
                uVar25 = 8 - ((uint)local_70 & 7);
                uVar28 = (uint)bVar6;
                if (uVar28 <= uVar25) {
                  uVar25 = uVar28;
                }
                uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                         0xffU >> (ulong)(8 - uVar25 & 0x1f);
                for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
                  uVar19 = uVar19 + 1;
                  uVar23 = uVar25;
                  if (7 < uVar25) {
                    uVar23 = 8;
                  }
                  uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                           (uint)*(byte *)(param_2 + (ulong)uVar19)) <<
                           (ulong)(uVar28 - uVar25 & 0x1f) | uVar30;
                }
              }
              uVar14 = 0;
            }
            local_70 = CONCAT44(local_70._4_4_,uVar20);
            param_4[0x84] = uVar30;
          }
          else {
            if (*(int *)(pcVar22 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
              pcVar22 = (code *)SoftwareBreakpoint(0x822a,0x128878);
              (*pcVar22)();
            }
            uVar14 = (*pcVar22)(0x10,puVar29,(long)&local_70 + 4,param_2,&local_70,param_3,
                                *(undefined8 *)(param_1 + 0x3c8));
          }
          uVar18 = uVar31;
          if ((int)uVar14 < 0) {
            puVar15 = &DAT_0013bbdb;
LAB_0012a240:
            uVar14 = uVar14 & 0xffffffff;
            _printk(puVar15,"syna_tcm_parse_touch_report");
            goto LAB_00129eb4;
          }
          goto LAB_001286f8;
        case '\x11':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_001378a4;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x89] = uVar30;
          break;
        case '\x12':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013358a;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8a] = uVar30;
          break;
        case '\x13':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00135c10;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8b] = uVar30;
          break;
        case '\x14':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00138688;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8c] = uVar30;
          break;
        case '\x15':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133c0c;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8d] = uVar30;
          break;
        case '\x16':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00133c37;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8e] = uVar30;
          break;
        case '\x17':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_001378ca;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x8f] = uVar30;
          break;
        case '\x18':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013248d;
            goto LAB_00129ea4;
          }
          uVar20 = (uint)local_70 + bVar6;
          if (uVar7 < uVar20) {
            local_70 = (ulong)uVar20;
            param_4[1] = 0;
            goto LAB_00129144;
          }
          uVar28 = (uint)local_70 >> 3;
          uVar19 = 8 - ((uint)local_70 & 7);
          uVar23 = (uint)bVar6;
          if (uVar23 <= uVar19) {
            uVar19 = uVar23;
          }
          uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar28) >> (ulong)((uint)local_70 & 7)) &
                   0xffU >> (ulong)(8 - uVar19 & 0x1f);
          for (uVar19 = uVar23 - uVar19; uVar19 != 0; uVar19 = uVar19 - uVar27) {
            uVar28 = uVar28 + 1;
            uVar27 = uVar19;
            if (7 < uVar19) {
              uVar27 = 8;
            }
            uVar30 = (0xffU >> (ulong)(8 - uVar27 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar28)
                     ) << (ulong)(uVar23 - uVar19 & 0x1f) | uVar30;
          }
          local_70 = CONCAT44(uVar25 + 2,uVar20);
          param_4[1] = uVar30;
          local_98 = CONCAT44(1,uVar30);
          uVar18 = uVar31;
          if (uVar30 == 0) {
LAB_00129144:
            uVar30 = 0;
            local_70 = CONCAT44(uVar2,(uint)local_70);
            local_98 = 0x100000000;
            uVar18 = uVar31;
          }
          goto LAB_001286f8;
        case '\x19':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013d0c3;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x90] = uVar30;
          break;
        case '\x1a':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_001378ef;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x91] = uVar30;
          break;
        case '\x1b':
          goto switchD_001287bc_caseD_1b;
        case '\x1c':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_00134342;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x92] = uVar30;
          break;
        case '\x1d':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013c345;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x93] = uVar30;
          break;
        case '\x1e':
          local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
          bVar6 = puVar29[uVar18];
          if (bVar6 - 0x21 < 0xffffffe0) {
            _printk(&DAT_00134319,"syna_tcm_get_touch_data");
            puVar15 = &DAT_0013ca11;
            goto LAB_00129ea4;
          }
          uVar24 = (uint)local_70 + bVar6;
          if (uVar7 < uVar24) {
            uVar30 = 0;
          }
          else {
            uVar19 = (uint)local_70 >> 3;
            uVar25 = 8 - ((uint)local_70 & 7);
            uVar28 = (uint)bVar6;
            if (uVar28 <= uVar25) {
              uVar25 = uVar28;
            }
            uVar30 = (uint)(*(byte *)(param_2 + (ulong)uVar19) >> (ulong)((uint)local_70 & 7)) &
                     0xffU >> (ulong)(8 - uVar25 & 0x1f);
            for (uVar25 = uVar28 - uVar25; uVar25 != 0; uVar25 = uVar25 - uVar23) {
              uVar19 = uVar19 + 1;
              uVar23 = uVar25;
              if (7 < uVar25) {
                uVar23 = 8;
              }
              uVar30 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar19)) << (ulong)(uVar28 - uVar25 & 0x1f)
                       | uVar30;
            }
          }
          param_4[0x94] = uVar30;
          break;
        default:
          pcVar22 = *(code **)(param_1 + 0x3c0);
          if (pcVar22 != (code *)0x0) goto code_r0x00128730;
          goto LAB_00128774;
        }
        local_70 = CONCAT44(local_70._4_4_,uVar24);
        uVar18 = uVar31;
        uVar24 = uVar20;
        goto LAB_001286f8;
      }
      _printk(&DAT_00137eee,"syna_tcm_parse_touch_report");
      uVar14 = 0;
      goto LAB_00129eb4;
    }
    puVar15 = &DAT_00134e71;
  }
LAB_00129ea4:
  _printk(puVar15,"syna_tcm_parse_touch_report");
  uVar14 = 0xffffff0f;
LAB_00129eb4:
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) == local_68) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(uVar14);
code_r0x00128730:
  if (*(int *)(pcVar22 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
    pcVar22 = (code *)SoftwareBreakpoint(0x8229,0x128764);
    (*pcVar22)();
  }
  iVar13 = (*pcVar22)(cVar5,puVar29,(long)&local_70 + 4,param_2,&local_70,param_3,
                      *(undefined8 *)(param_1 + 0x3b8));
  if (iVar13 < 0) goto code_r0x00128770;
  goto LAB_00128704;
code_r0x00128770:
  uVar18 = local_70 >> 0x20;
LAB_00128774:
  if (cVar5 != -0x36) {
    _printk(&DAT_00135c32,"syna_tcm_parse_touch_report",cVar5,puVar29[uVar18 & 0xffffffff]);
    uVar18 = local_70 >> 0x20;
  }
  local_70 = CONCAT44((int)uVar18 + 1,(uint)local_70 + (byte)puVar29[uVar18 & 0xffffffff]);
  uVar18 = uVar31;
  goto LAB_001286f8;
switchD_001287bc_caseD_1b:
  pcVar22 = *(code **)(param_1 + 0x3d0);
  if (pcVar22 != (code *)0x0) {
    if (*(int *)(pcVar22 + -4) != 0x5464818f) {
                    /* WARNING: Does not return */
      pcVar22 = (code *)SoftwareBreakpoint(0x822a,0x12881c);
      (*pcVar22)();
    }
    uVar14 = (*pcVar22)(0x1b,puVar29,(long)&local_70 + 4,param_2,&local_70,param_3,
                        *(undefined8 *)(param_1 + 0x3c8));
    uVar18 = uVar31;
    if (-1 < (int)uVar14) goto LAB_001286f8;
    puVar15 = &DAT_0013624f;
    goto LAB_0012a240;
  }
  local_70 = CONCAT44(uVar25 + 2,(uint)local_70);
  bVar6 = puVar29[uVar18];
  uVar20 = (uint)local_70 + bVar6;
  if (uVar20 >> 3 <= param_3) {
    if ((uint)local_70 < uVar20) {
      uVar25 = (uint)local_70 + 0x10;
      uVar19 = (uint)local_70 & 7;
      if (uVar7 < uVar25) {
        uVar26 = 0;
      }
      else {
        uVar27 = (uint)local_70 >> 3;
        uVar28 = ((uint)local_70 | 0xfffffff8) + 0x10;
        uVar23 = (uint)(*(byte *)(param_2 + (ulong)uVar27) >> (ulong)uVar19);
        do {
          uVar27 = uVar27 + 1;
          uVar1 = uVar28;
          if (7 < uVar28) {
            uVar1 = 8;
          }
          uVar8 = 0x10 - uVar28;
          uVar28 = uVar28 - uVar1;
          uVar23 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar27))
                   << (ulong)(uVar8 & 0x1f) | uVar23;
          uVar26 = (undefined2)uVar23;
        } while (uVar28 != 0);
      }
      *(undefined2 *)(param_4 + 0x85) = uVar26;
      if (uVar25 < uVar20) {
        uVar28 = (uint)local_70 + 0x20;
        if (uVar7 < uVar28) {
          uVar26 = 0;
        }
        else {
          uVar25 = uVar25 >> 3;
          uVar23 = ((uint)local_70 | 0xfffffff8) + 0x10;
          uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)uVar19);
          do {
            uVar25 = uVar25 + 1;
            uVar1 = uVar23;
            if (7 < uVar23) {
              uVar1 = 8;
            }
            uVar8 = 0x10 - uVar23;
            uVar23 = uVar23 - uVar1;
            uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) & (uint)*(byte *)(param_2 + (ulong)uVar25))
                     << (ulong)(uVar8 & 0x1f) | uVar27;
            uVar26 = (undefined2)uVar27;
          } while (uVar23 != 0);
        }
        *(undefined2 *)((long)param_4 + 0x216) = uVar26;
        if (uVar28 < uVar20) {
          uVar25 = (uint)local_70 + 0x30;
          if (uVar7 < uVar25) {
            uVar26 = 0;
          }
          else {
            uVar28 = uVar28 >> 3;
            uVar23 = ((uint)local_70 | 0xfffffff8) + 0x10;
            uVar27 = (uint)(*(byte *)(param_2 + (ulong)uVar28) >> (ulong)uVar19);
            do {
              uVar28 = uVar28 + 1;
              uVar1 = uVar23;
              if (7 < uVar23) {
                uVar1 = 8;
              }
              uVar8 = 0x10 - uVar23;
              uVar23 = uVar23 - uVar1;
              uVar27 = (0xffU >> (ulong)(8 - uVar1 & 0x1f) &
                       (uint)*(byte *)(param_2 + (ulong)uVar28)) << (ulong)(uVar8 & 0x1f) | uVar27;
              uVar26 = (undefined2)uVar27;
            } while (uVar23 != 0);
          }
          *(undefined2 *)(param_4 + 0x86) = uVar26;
          if (uVar25 < uVar20) {
            if (uVar7 < (uint)local_70 + 0x40) {
              uVar26 = 0;
            }
            else {
              uVar25 = uVar25 >> 3;
              uVar28 = (uint)(*(byte *)(param_2 + (ulong)uVar25) >> (ulong)uVar19);
              uVar19 = ((uint)local_70 | 0xfffffff8) + 0x10;
              do {
                uVar25 = uVar25 + 1;
                uVar23 = uVar19;
                if (7 < uVar19) {
                  uVar23 = 8;
                }
                uVar27 = 0x10 - uVar19;
                uVar19 = uVar19 - uVar23;
                uVar28 = (0xffU >> (ulong)(8 - uVar23 & 0x1f) &
                         (uint)*(byte *)(param_2 + (ulong)uVar25)) << (ulong)(uVar27 & 0x1f) |
                         uVar28;
                uVar26 = (undefined2)uVar28;
              } while (uVar19 != 0);
            }
            *(undefined2 *)((long)param_4 + 0x21a) = uVar26;
          }
        }
      }
    }
    if ((7 < param_4[0x84]) || ((1 << (ulong)(param_4[0x84] & 0x1f) & 199U) == 0)) {
      _printk(&DAT_0013a90b,"syna_tcm_get_gesture_data");
      uVar20 = (uint)local_70 + bVar6;
    }
  }
LAB_001288f8:
  local_70 = CONCAT44(local_70._4_4_,uVar20);
  uVar18 = uVar31;
  goto LAB_001286f8;
}



/* 0012a264 syna_tcm_set_touch_report_config */

int syna_tcm_set_touch_report_config(long param_1,long param_2,ulong param_3,int param_4)

{
  short sVar1;
  ushort uVar2;
  code *pcVar3;
  int iVar4;
  undefined1 *puVar5;
  long lVar6;
  undefined *puVar7;
  
  if (param_1 == 0) {
    puVar5 = &DAT_00133fd6;
    goto LAB_0012a2d0;
  }
  if ((param_2 == 0) || ((int)param_3 == 0)) {
    puVar5 = &DAT_0013557a;
    goto LAB_0012a2d0;
  }
  if (*(char *)(param_1 + 9) != '\x01') {
    _printk(&DAT_00137912,"syna_tcm_set_touch_report_config",*(char *)(param_1 + 9));
    return -0xf1;
  }
  if (param_4 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) != 0) {
      param_4 = 0;
      goto LAB_0012a2b4;
    }
    param_4 = *(int *)(param_1 + 0x20c);
    param_3 = param_3 & 0xffffffff;
    _printk(&DAT_0013c851,"syna_tcm_set_touch_report_config");
    sVar1 = *(short *)(param_1 + 0xb0);
  }
  else {
LAB_0012a2b4:
    sVar1 = *(short *)(param_1 + 0xb0);
  }
  if (sVar1 != 0) {
    uVar2 = *(ushort *)(param_1 + 0xbc);
    if ((uint)uVar2 < (uint)param_3) {
      _printk(&DAT_00133c60,"syna_tcm_set_touch_report_config",param_3,uVar2);
      return -0xf1;
    }
    lVar6 = syna_request_managed_device();
    if (lVar6 == 0) {
      _printk(&DAT_0013ccb3,"syna_pal_mem_alloc");
    }
    else {
      lVar6 = devm_kmalloc(lVar6,uVar2,0xdc0);
      if (lVar6 != 0) {
        iVar4 = syna_pal_mem_cpy(lVar6,(uint)uVar2,param_2,param_3 & 0xffffffff,param_3 & 0xffffffff
                                );
        if (iVar4 < 0) {
          puVar7 = &DAT_00138be7;
        }
        else {
          if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
            pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x12a43c);
            (*pcVar3)();
          }
          iVar4 = (**(code **)(param_1 + 0x398))(param_1,0x26,lVar6,uVar2,0,param_4);
          puVar7 = &DAT_00137f23;
          if (-1 < iVar4) {
            puVar7 = &DAT_0013b394;
          }
        }
        _printk(puVar7,"syna_tcm_set_touch_report_config");
        syna_pal_mem_free(lVar6);
        return iVar4;
      }
    }
    _printk(&DAT_00135c6f,"syna_tcm_set_touch_report_config");
    return -0xf3;
  }
  puVar5 = &DAT_0013d0ee;
LAB_0012a2d0:
  _printk(puVar5,"syna_tcm_set_touch_report_config");
  return -0xf1;
}



/* 0012a478 syna_pal_mem_cpy */

undefined8 syna_pal_mem_cpy(void *param_1,uint param_2,void *param_3,uint param_4,uint param_5)

{
  undefined8 uVar1;
  
  if (param_1 != (void *)0x0) {
    if ((param_2 < param_5) || (param_4 < param_5)) {
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",param_4,param_2);
      uVar1 = 0xffffffea;
    }
    else {
      memcpy(param_1,param_3,(ulong)param_5);
      uVar1 = 0;
    }
    return uVar1;
  }
  return 0xffffffea;
}



/* 0012a4ec syna_pal_mem_free */

void syna_pal_mem_free(undefined8 param_1)

{
  long lVar1;
  
  lVar1 = syna_request_managed_device();
  if (lVar1 == 0) {
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
  }
  else {
    devm_kfree(lVar1,param_1);
  }
  return;
}



/* 0012a53c syna_tcm_preserve_touch_report_config */

int syna_tcm_preserve_touch_report_config(long param_1,int param_2)

{
  uint uVar1;
  undefined4 uVar2;
  byte bVar3;
  bool bVar4;
  bool bVar5;
  code *pcVar6;
  int iVar7;
  void *__s;
  long lVar8;
  undefined *puVar9;
  uint uVar10;
  char cVar11;
  int iVar12;
  uint uVar13;
  uint uVar14;
  ulong uVar15;
  uint uVar16;
  ulong __n;
  
  if (param_1 == 0) {
    _printk(&DAT_00133fd6,"syna_tcm_preserve_touch_report_config");
    return -0xf1;
  }
  uVar10 = (uint)*(byte *)(param_1 + 9);
  if (*(byte *)(param_1 + 9) != 1) {
    puVar9 = &DAT_00137912;
    goto LAB_0012a8d4;
  }
  if (param_2 == 0) {
    if ((*(byte *)(*(long *)(param_1 + 0x48) + 0x14) & 1) == 0) {
      param_2 = *(int *)(param_1 + 0x20c);
      _printk(&DAT_0013c851,"syna_tcm_preserve_touch_report_config");
    }
    else {
      param_2 = 0;
    }
  }
  if (*(int *)(*(code **)(param_1 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
    pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x12a5b0);
    (*pcVar6)();
  }
  iVar7 = (**(code **)(param_1 + 0x398))(param_1,0x25,0,0,0,param_2);
  if (iVar7 < 0) {
    _printk(&DAT_00134374,"syna_tcm_preserve_touch_report_config");
    goto LAB_0012a7f4;
  }
  uVar10 = *(uint *)(param_1 + 0x150);
  if (*(long *)(param_1 + 0x148) == 0) {
    uVar2 = *(undefined4 *)(param_1 + 0x154);
    puVar9 = &DAT_0013ca39;
    goto LAB_0012a8b4;
  }
  if (uVar10 == 0) {
    uVar10 = *(uint *)(param_1 + 0x154);
    puVar9 = &DAT_001355c9;
    goto LAB_0012a8d4;
  }
  if (*(char *)(param_1 + 0x188) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x158);
  *(char *)(param_1 + 0x188) = *(char *)(param_1 + 0x188) + '\x01';
  if (*(char *)(param_1 + 0x1d0) != '\0') {
    _printk(&DAT_00138e56,"syna_tcm_buf_lock");
  }
  mutex_lock(param_1 + 0x1a0);
  *(char *)(param_1 + 0x1d0) = *(char *)(param_1 + 0x1d0) + '\x01';
  *(undefined4 *)(param_1 + 0x38c) = 1;
  uVar1 = *(uint *)(param_1 + 0x154);
  __n = (ulong)uVar1;
  __s = *(void **)(param_1 + 400);
  uVar15 = (ulong)*(uint *)(param_1 + 0x198);
  if (uVar1 <= *(uint *)(param_1 + 0x198)) {
LAB_0012a660:
    memset(__s,0,uVar15);
    uVar10 = *(uint *)(param_1 + 0x150);
    *(undefined4 *)(param_1 + 0x19c) = 0;
    if (*(void **)(param_1 + 0x148) == (void *)0x0) {
      uVar2 = *(undefined4 *)(param_1 + 0x154);
      puVar9 = &DAT_0013d11d;
LAB_0012a8b4:
      _printk(puVar9,"syna_tcm_preserve_touch_report_config",uVar10,uVar2);
      return -0xf1;
    }
    if (uVar10 == 0) {
      uVar10 = *(uint *)(param_1 + 0x154);
      puVar9 = &DAT_0013bc01;
LAB_0012a8d4:
      _printk(puVar9,"syna_tcm_preserve_touch_report_config",uVar10);
      return -0xf1;
    }
    if (*(void **)(param_1 + 400) != (void *)0x0) {
      if ((uVar1 <= uVar10) && (uVar1 <= *(uint *)(param_1 + 0x198))) {
        memcpy(*(void **)(param_1 + 400),*(void **)(param_1 + 0x148),__n);
        *(uint *)(param_1 + 0x19c) = uVar1;
        if (*(char *)(param_1 + 0x1d0) == '\x01') {
          cVar11 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar11 = *(char *)(param_1 + 0x1d0) + -1;
        }
        *(char *)(param_1 + 0x1d0) = cVar11;
        mutex_unlock(param_1 + 0x1a0);
        if (*(char *)(param_1 + 0x188) == '\x01') {
          cVar11 = '\0';
        }
        else {
          _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
          cVar11 = *(char *)(param_1 + 0x188) + -1;
        }
        *(char *)(param_1 + 0x188) = cVar11;
        mutex_unlock(param_1 + 0x158);
        if (uVar1 == 0) {
          iVar12 = 0;
          uVar13 = 0;
          uVar10 = 0;
        }
        else {
          uVar14 = 0;
          uVar10 = 0;
          uVar13 = 0;
          iVar12 = 0;
          bVar5 = false;
          bVar4 = false;
          do {
            bVar3 = *(byte *)(*(long *)(param_1 + 400) + (ulong)uVar14);
            uVar15 = (ulong)uVar14 + 1;
            uVar16 = (uint)bVar3;
            if (bVar3 < 3) {
              if (uVar16 - 1 < 2) {
                bVar4 = true;
              }
              else if (uVar16 == 0) {
                bVar4 = false;
                bVar5 = false;
              }
              else {
LAB_0012a784:
                bVar3 = *(byte *)(*(long *)(param_1 + 400) + uVar15);
                uVar15 = (ulong)(uVar14 + 2);
                uVar14 = uVar13 + bVar3;
                uVar16 = uVar14;
                if (!bVar4) {
                  uVar16 = uVar13;
                }
                if (bVar5) {
                  uVar10 = uVar10 + bVar3;
                  bVar5 = true;
                  uVar13 = uVar16;
                }
                else if (bVar4) {
                  bVar5 = false;
                  bVar4 = true;
                  uVar13 = uVar14;
                }
                else {
                  bVar4 = false;
                  bVar5 = false;
                  iVar12 = iVar12 + (uint)bVar3;
                }
              }
            }
            else if (uVar16 == 3) {
              bVar4 = false;
              *(int *)(param_1 + 0x1d8) = (int)uVar15;
              bVar5 = true;
            }
            else {
              if (uVar16 != 4) goto LAB_0012a784;
              uVar14 = uVar13 + 7 & 0xfffffff8;
              if (!bVar4) {
                uVar14 = uVar13;
              }
              uVar13 = uVar14;
              if (bVar5) {
                bVar5 = true;
                uVar10 = uVar10 + 7 & 0xfffffff8;
              }
              else {
                bVar5 = false;
              }
            }
            uVar14 = (uint)uVar15;
          } while (uVar14 < uVar1);
        }
        iVar7 = 0;
        *(int *)(param_1 + 0x1e0) = iVar12;
        *(uint *)(param_1 + 0x1dc) = uVar13;
        *(uint *)(param_1 + 0x1e4) = uVar10;
        goto LAB_0012a7f4;
      }
      _printk(&DAT_0013a172,"syna_pal_mem_cpy",uVar10,*(uint *)(param_1 + 0x198),uVar1);
    }
    _printk(&DAT_0013687a,"syna_tcm_preserve_touch_report_config");
    if (*(char *)(param_1 + 0x1d0) == '\x01') {
      cVar11 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar11 = *(char *)(param_1 + 0x1d0) + -1;
    }
    *(char *)(param_1 + 0x1d0) = cVar11;
    mutex_unlock(param_1 + 0x1a0);
    if (*(char *)(param_1 + 0x188) == '\x01') {
      cVar11 = '\0';
    }
    else {
      _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
      cVar11 = *(char *)(param_1 + 0x188) + -1;
    }
    *(char *)(param_1 + 0x188) = cVar11;
    mutex_unlock(param_1 + 0x158);
    iVar7 = -0x16;
    goto LAB_0012a7f4;
  }
  if (__s == (void *)0x0) {
LAB_0012a634:
    lVar8 = syna_request_managed_device();
    if (lVar8 != 0) goto LAB_0012a63c;
LAB_0012a9d8:
    puVar9 = &DAT_0013ccb3;
LAB_0012a9e0:
    _printk(puVar9,"syna_pal_mem_alloc");
    *(undefined8 *)(param_1 + 400) = 0;
  }
  else {
    lVar8 = syna_request_managed_device();
    if (lVar8 != 0) {
      devm_kfree(lVar8,__s);
      goto LAB_0012a634;
    }
    _printk(&DAT_0013ccb3,"syna_pal_mem_free");
    lVar8 = syna_request_managed_device();
    if (lVar8 == 0) goto LAB_0012a9d8;
LAB_0012a63c:
    if ((int)uVar1 < 1) {
      puVar9 = &DAT_00138e98;
      goto LAB_0012a9e0;
    }
    __s = (void *)devm_kmalloc(lVar8,__n,0xdc0);
    *(void **)(param_1 + 400) = __s;
    if (__s != (void *)0x0) {
      *(uint *)(param_1 + 0x198) = uVar1;
      uVar15 = __n;
      goto LAB_0012a660;
    }
  }
  _printk(&DAT_00137ba6,"syna_tcm_buf_alloc",uVar1);
  *(undefined8 *)(param_1 + 0x198) = 0;
  _printk(&DAT_00136277,"syna_tcm_preserve_touch_report_config");
  if (*(char *)(param_1 + 0x188) == '\x01') {
    cVar11 = '\0';
  }
  else {
    _printk(&DAT_00138e56,"syna_tcm_buf_unlock");
    cVar11 = *(char *)(param_1 + 0x188) + -1;
  }
  *(char *)(param_1 + 0x188) = cVar11;
  mutex_unlock(param_1 + 0x158);
  iVar7 = -0xf3;
LAB_0012a7f4:
  *(undefined4 *)(param_1 + 0x38c) = 0;
  return iVar7;
}



/* 0012aaa8 syna_tcm_set_custom_touch_entity_callback */

undefined8
syna_tcm_set_custom_touch_entity_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x3c0) = param_2;
    *(undefined8 *)(param_1 + 0x3b8) = param_3;
    return 0;
  }
  _printk(&DAT_00133fd6,"syna_tcm_set_custom_touch_entity_callback");
  return 0xffffff0f;
}



/* 0012aaf4 syna_tcm_set_custom_gesture_callback */

undefined8 syna_tcm_set_custom_gesture_callback(long param_1,undefined8 param_2,undefined8 param_3)

{
  if (param_1 != 0) {
    *(undefined8 *)(param_1 + 0x3d0) = param_2;
    *(undefined8 *)(param_1 + 0x3c8) = param_3;
    return 0;
  }
  _printk(&DAT_00133fd6,"syna_tcm_set_custom_gesture_callback");
  return 0xffffff0f;
}



/* 0012ab40 syna_tcm_get_partition_id_string */

undefined * syna_tcm_get_partition_id_string(int param_1)

{
  if (param_1 - 1U < 0x17) {
    return (&PTR_s_APP_CODE_00131428)[param_1 - 1U];
  }
  return &DAT_0013306f;
}



/* 0012ab6c syna_tcm_parse_fw_image */

undefined8 syna_tcm_parse_fw_image(int *param_1,int param_2,int *param_3)

{
  char *pcVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  size_t __n;
  undefined *puVar9;
  char *pcVar10;
  long lVar11;
  long lVar12;
  uint uVar13;
  int iVar14;
  uint uVar15;
  ulong __maxlen;
  
  if (param_1 == (int *)0x0) {
    puVar9 = &DAT_0013a949;
  }
  else if (param_3 == (int *)0x0) {
    puVar9 = &DAT_0013ad37;
  }
  else if (param_2 == 0) {
    puVar9 = &DAT_00138b6e;
  }
  else {
    memset(param_3 + 1,0,0x30c);
    *(int **)(param_3 + 2) = param_1;
    *param_3 = param_2;
    if (*param_1 == 0x4818472b) {
      iVar4 = param_1[1];
      if (iVar4 != 0) {
        iVar14 = 0;
        pcVar1 = " ";
        uVar15 = 8;
        do {
          piVar2 = (int *)((long)param_1 + (ulong)*(uint *)((long)param_1 + (ulong)uVar15));
          if (*piVar2 == 0x7c05e516) {
            uVar13 = 0x16;
            do {
              if (uVar13 < 0x17) {
                __maxlen = *(ulong *)(&UNK_00131370 + (ulong)uVar13 * 8);
                pcVar10 = (&PTR_s_APP_CODE_00131428)[uVar13];
              }
              else {
                __maxlen = 2;
                pcVar10 = pcVar1;
              }
              __n = strnlen(pcVar10,__maxlen);
              if (__maxlen < __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(2,__maxlen,__n + 1);
              }
              if (__maxlen <= __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(4,__maxlen,__n + 1);
              }
              iVar7 = strncmp((char *)(piVar2 + 1),pcVar10,__n);
              if (iVar7 == 0) {
                if (0x16 < uVar13) goto LAB_0012ac1c;
                uVar13 = uVar13 + 1;
                lVar12 = 0x1c;
                lVar11 = 0x24;
                goto LAB_0012ace4;
              }
              uVar13 = uVar13 - 1;
            } while (uVar13 != 0xfffffffe);
            _printk(&DAT_00138c17,"syna_tcm_get_partition_id",piVar2 + 1);
          }
          else if (*piVar2 == -0x3e04be28) {
            uVar13 = 0x14;
            lVar12 = 4;
            lVar11 = 8;
LAB_0012ace4:
            piVar3 = param_3 + (ulong)uVar13 * 8 + 4;
            if (piVar3 == (int *)0x0) {
              puVar9 = &DAT_00133c91;
            }
            else {
              if (piVar2 != (int *)0x0) {
                iVar7 = *(int *)((long)piVar2 + lVar12);
                lVar11 = (long)piVar2 + lVar11;
                if (uVar13 == 0x14) {
                  *(long *)(piVar3 + 2) = lVar11;
                  *(undefined1 *)(piVar3 + 6) = 0x14;
                  piVar3[4] = iVar7;
                  piVar3[5] = 0;
                  *(undefined1 *)piVar3 = 1;
                  _printk(&DAT_0013ad72,"syna_tcm_save_flash_partition_data",iVar7);
                }
                else {
                  uVar5 = piVar2[8];
                  uVar8 = crc32_le(0xffffffff,lVar11,iVar7);
                  if (uVar5 != ~uVar8) {
                    pcVar10 = pcVar1;
                    if (uVar13 - 1 < 0x17) {
                      pcVar10 = (&PTR_s_APP_CODE_001314e0)[uVar13 - 1];
                    }
                    _printk(&DAT_0013d165,"syna_tcm_save_flash_partition_data",pcVar10,uVar5);
                    goto LAB_0012ac1c;
                  }
                  iVar6 = piVar2[6];
                  *(char *)(piVar3 + 6) = (char)uVar13;
                  iVar6 = iVar6 << 1;
                  *(long *)(piVar3 + 2) = lVar11;
                  piVar3[7] = uVar5;
                  *(undefined1 *)piVar3 = 1;
                  piVar3[4] = iVar7;
                  piVar3[5] = iVar6;
                  pcVar10 = pcVar1;
                  if (uVar13 - 1 < 0x17) {
                    pcVar10 = (&PTR_s_APP_CODE_001314e0)[uVar13 - 1];
                  }
                  _printk(&DAT_00134936,"syna_tcm_save_flash_partition_data",pcVar10,iVar6,iVar6,
                          iVar7);
                }
                _printk(&DAT_0013981b,"syna_tcm_parse_fw_image",uVar13,piVar3,piVar3[4]);
                goto LAB_0012ac1c;
              }
              puVar9 = &DAT_0013e37a;
            }
            _printk(puVar9,"syna_tcm_save_flash_partition_data");
          }
LAB_0012ac1c:
          iVar14 = iVar14 + 1;
          uVar15 = uVar15 + 4;
        } while (iVar14 != iVar4);
      }
      return 0;
    }
    puVar9 = &DAT_001335b7;
  }
  _printk(puVar9,"syna_tcm_parse_fw_image");
  return 0xffffff0f;
}



/* 0012aecc string_change */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined1 * string_change(long param_1,char *param_2,int *param_3)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  bool bVar4;
  ulong uVar5;
  bool bVar6;
  bool bVar7;
  code *pcVar8;
  undefined1 uVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  int iVar13;
  size_t sVar14;
  char *__s;
  undefined1 *puVar15;
  char *pcVar16;
  char *pcVar17;
  long lVar18;
  undefined8 uVar19;
  undefined8 uVar20;
  undefined8 uVar21;
  undefined8 uVar22;
  undefined1 uVar23;
  ulong uVar24;
  undefined1 uVar25;
  undefined1 uVar26;
  undefined1 uVar27;
  undefined1 uVar28;
  byte bVar29;
  undefined1 uVar30;
  int iVar31;
  undefined1 uVar32;
  char *local_80;
  char *local_78;
  char *local_70;
  long local_68;
  
  lVar18 = sp_el0;
  local_68 = *(long *)(lVar18 + 0x710);
  if ((param_2 == (char *)0x0) || (*param_2 == '\0')) {
    puVar15 = (undefined1 *)__kmalloc_cache_noprof(_remove_proc_entry,0xcc0,1);
    if (puVar15 != (undefined1 *)0x0) {
      *puVar15 = 0;
    }
  }
  else {
    sVar14 = strlen(param_2);
    __s = (char *)__kmalloc_noprof(sVar14 + 1,0xcc0);
    if (__s == (char *)0x0) {
      puVar15 = (undefined1 *)0x0;
    }
    else {
      memcpy(__s,param_2,sVar14 + 1);
      sVar14 = strlen(param_2);
      uVar5 = sVar14 * 3;
      puVar15 = (undefined1 *)__kmalloc_noprof(uVar5,0xcc0);
      if (puVar15 != (undefined1 *)0x0) {
        pcVar16 = strchr(__s,0x3a);
        pcVar17 = (char *)0x0;
        local_70 = __s;
        if (pcVar16 == (char *)0x0) {
LAB_0012af98:
          local_78 = pcVar17;
          if ((*__s == '\0') || (pcVar16 = strsep(&local_70,","), pcVar16 == (char *)0x0))
          goto joined_r0x0012b088;
          bVar7 = false;
          uVar32 = 0;
          iVar31 = 0;
          bVar4 = true;
          do {
            pcVar17 = (char *)trim();
            if (*pcVar17 != '\0') {
              uVar9 = simple_strtoul(pcVar17,0,0x10);
              if ((iVar31 < 0) || (uVar24 = (ulong)iVar31, uVar5 <= uVar24)) goto LAB_0012b3f4;
              iVar31 = iVar31 + 1;
              if (bVar4) {
                bVar7 = true;
                uVar32 = uVar9;
              }
              puVar15[uVar24] = uVar9;
              bVar4 = false;
            }
            pcVar16 = strsep(&local_70,",");
            pcVar17 = local_78;
          } while (pcVar16 != (char *)0x0);
        }
        else {
          pcVar17 = pcVar16 + 1;
          *pcVar16 = '\0';
          if (__s != (char *)0x0) goto LAB_0012af98;
          local_78 = pcVar17;
          pcVar17 = pcVar16 + 1;
joined_r0x0012b088:
          bVar7 = false;
          uVar32 = 0;
          iVar31 = 0;
        }
        if (((pcVar17 != (char *)0x0) && (*pcVar17 != '\0')) &&
           (pcVar17 = strsep(&local_78,"."), pcVar17 != (char *)0x0)) {
          bVar4 = true;
          do {
            pcVar17 = (char *)trim();
            if (*pcVar17 != '\0') {
              bVar6 = false;
              if (!bVar4) {
                bVar6 = bVar7;
              }
              if (bVar6) {
                if ((iVar31 < 0) || (uVar24 = (ulong)iVar31, uVar5 <= uVar24)) goto LAB_0012b3f4;
                iVar31 = iVar31 + 1;
                puVar15[uVar24] = uVar32;
              }
              pcVar16 = strchr(pcVar17,0x3a);
              if (pcVar16 != (char *)0x0) {
                *pcVar16 = '\0';
                lVar18 = trim(pcVar17);
                pcVar17 = (char *)trim(pcVar16 + 1);
                if (lVar18 != 0) {
                  uVar9 = simple_strtoul(lVar18,0,0x10);
                  if ((iVar31 < 0) || (uVar24 = (ulong)iVar31, uVar5 <= uVar24)) goto LAB_0012b3f4;
                  iVar31 = iVar31 + 1;
                  puVar15[uVar24] = uVar9;
                }
              }
              local_80 = pcVar17;
              pcVar17 = strsep(&local_80,",");
              if (pcVar17 != (char *)0x0) {
                uVar19 = trim();
                pcVar17 = strsep(&local_80,",");
                if (pcVar17 != (char *)0x0) {
                  uVar20 = trim();
                  pcVar17 = strsep(&local_80,",");
                  if (pcVar17 != (char *)0x0) {
                    uVar21 = trim();
                    pcVar17 = strsep(&local_80,",");
                    if (pcVar17 != (char *)0x0) {
                      uVar22 = trim();
                      iVar10 = simple_strtoul(uVar19,0,10);
                      iVar11 = simple_strtoul(uVar20,0,10);
                      iVar12 = simple_strtoul(uVar21,0,10);
                      iVar13 = simple_strtoul(uVar22,0,10);
                      _printk(&DAT_0013496c,"change_coordinate",*(undefined4 *)(param_1 + 0x608));
                      if (*(int *)(param_1 + 0x608) == 3) {
                        iVar3 = iVar13 * 10 + -1;
                        uVar1 = (0xa80 - iVar12) * 10 - 1;
                        uVar2 = (0xa80 - iVar10) * 10 | 1;
                        uVar26 = (undefined1)((uint)iVar3 >> 8);
                        uVar9 = (undefined1)(((0xa80 - iVar10) * 5 & 0x7fffffffU) >> 7);
                        uVar28 = (undefined1)(uVar1 >> 8);
LAB_0012b2ec:
                        uVar23 = (undefined1)uVar2;
                        uVar25 = (undefined1)iVar3;
                        uVar27 = (undefined1)uVar1;
                        bVar29 = (char)iVar11 * '\n' | 1;
                        uVar30 = (undefined1)((uint)(iVar11 * 10) >> 8);
                      }
                      else {
                        if (*(int *)(param_1 + 0x608) == 1) {
                          uVar2 = iVar12 * 10 - 1;
                          iVar3 = (0x4c0 - iVar11) * 10 + -1;
                          uVar9 = (undefined1)(uVar2 >> 8);
                          uVar1 = iVar10 * 10 | 1;
                          uVar26 = (undefined1)((uint)iVar3 >> 8);
                          uVar28 = (undefined1)((iVar10 * 5 & 0x7fffffffU) >> 7);
                          iVar11 = 0x4c0 - iVar13;
                          goto LAB_0012b2ec;
                        }
                        uVar23 = 0;
                        uVar9 = 0;
                        uVar25 = 0;
                        uVar26 = 0;
                        uVar27 = 0;
                        uVar28 = 0;
                        bVar29 = 0;
                        uVar30 = 0;
                      }
                      if ((iVar31 < 0) || (uVar5 <= (ulong)(long)iVar31)) {
LAB_0012b3f4:
                    /* WARNING: Does not return */
                        pcVar8 = (code *)SoftwareBreakpoint(1,0x12b3f8);
                        (*pcVar8)();
                      }
                      iVar11 = iVar31 + 1;
                      puVar15[iVar31] = bVar29;
                      if ((iVar11 < 0) || (uVar5 <= (ulong)(long)iVar11)) goto LAB_0012b3f4;
                      iVar10 = iVar31 + 2;
                      puVar15[iVar11] = uVar30;
                      if ((iVar10 < 0) || (uVar5 <= (ulong)(long)iVar10)) goto LAB_0012b3f4;
                      iVar11 = iVar31 + 3;
                      puVar15[iVar10] = uVar27;
                      if ((iVar11 < 0) || (uVar5 <= (ulong)(long)iVar11)) goto LAB_0012b3f4;
                      iVar10 = iVar31 + 4;
                      puVar15[iVar11] = uVar28;
                      if ((iVar10 < 0) || (uVar5 <= (ulong)(long)iVar10)) goto LAB_0012b3f4;
                      iVar11 = iVar31 + 5;
                      puVar15[iVar10] = uVar25;
                      if ((iVar11 < 0) || (uVar5 <= (ulong)(long)iVar11)) goto LAB_0012b3f4;
                      iVar10 = iVar31 + 6;
                      puVar15[iVar11] = uVar26;
                      if ((iVar10 < 0) || (uVar5 <= (ulong)(long)iVar10)) goto LAB_0012b3f4;
                      iVar11 = iVar31 + 7;
                      puVar15[iVar10] = uVar23;
                      if ((iVar11 < 0) || (uVar5 <= (ulong)(long)iVar11)) goto LAB_0012b3f4;
                      iVar31 = iVar31 + 8;
                      puVar15[iVar11] = uVar9;
                    }
                  }
                }
              }
              bVar4 = false;
            }
            pcVar17 = strsep(&local_78,".");
          } while (pcVar17 != (char *)0x0);
        }
        kfree(__s);
        *param_3 = iVar31;
        goto LAB_0012b49c;
      }
      kfree();
    }
  }
  *param_3 = 0;
LAB_0012b49c:
  lVar18 = sp_el0;
  if (*(long *)(lVar18 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return puVar15;
}



/* 0012b4dc trim */

byte * trim(long param_1)

{
  byte *pbVar1;
  size_t sVar2;
  byte *pbVar3;
  byte *__s;
  
  if (param_1 == 0) {
    __s = (byte *)0x0;
  }
  else {
    __s = (byte *)(param_1 + -1);
    do {
      __s = __s + 1;
    } while (((byte)(&_ctype)[*__s] >> 5 & 1) != 0);
    if (*__s != 0) {
      sVar2 = strlen((char *)__s);
      pbVar3 = __s + sVar2;
      do {
        pbVar1 = pbVar3;
        pbVar3 = pbVar1 + -1;
        if (pbVar3 <= __s) break;
      } while (((byte)(&_ctype)[*pbVar3] >> 5 & 1) != 0);
      *pbVar1 = 0;
    }
  }
  return __s;
}



/* 0012b55c syna_tpd_register_fw_class */

void syna_tpd_register_fw_class(long param_1)

{
  code *pcVar1;
  bool bVar2;
  long lVar3;
  int iVar4;
  undefined8 local_30;
  long local_28;
  
  lVar3 = sp_el0;
  local_28 = *(long *)(lVar3 + 0x710);
  _printk(&DAT_00139de3,"syna_tpd_register_fw_class");
  lVar3 = alloc_workqueue(&DAT_00136fcb,0x6000a,1,"syna_charger_detect");
  *(long *)(param_1 + 0x688) = lVar3;
  if (lVar3 == 0) {
    _printk(&DAT_0013e3be,"syna_tpd_register_fw_class");
  }
  else {
    local_30 = 0;
    if ((syna_get_charger_status_batt_psy == (long *)0x0) &&
       (syna_get_charger_status_batt_psy = (long *)power_supply_get_by_name("battery"),
       syna_get_charger_status_batt_psy == (long *)0x0)) {
      iVar4 = 0;
    }
    else {
      if (*(int *)(*(code **)(*syna_get_charger_status_batt_psy + 0x28) + -4) != -0x1766f32d) {
                    /* WARNING: Does not return */
        pcVar1 = (code *)SoftwareBreakpoint(0x8228,0x12b628);
        (*pcVar1)();
      }
      (**(code **)(*syna_get_charger_status_batt_psy + 0x28))
                (syna_get_charger_status_batt_psy,0,&local_30);
      iVar4 = (int)local_30;
    }
    bVar2 = iVar4 == 4 || iVar4 == 1;
    _printk(&DAT_0013b3ce,"syna_get_charger_status",bVar2);
    syna_usb_detect_flag = bVar2;
    *(undefined8 *)(param_1 + 0x620) = 0xfffffffe00000;
    *(long *)(param_1 + 0x628) = param_1 + 0x628;
    *(long *)(param_1 + 0x630) = param_1 + 0x628;
    *(code **)(param_1 + 0x638) = syna_work_charger_detect_work;
    init_timer_key(param_1 + 0x640,&delayed_work_timer_fn,0x200000,0,0);
    _printk(&DAT_00137f73,"syna_init_charger_notifier");
    *(code **)(param_1 + 0x690) = syna_charger_notify_call;
    power_supply_reg_notifier(param_1 + 0x690);
  }
  lVar3 = tpd_cdev;
  *(code **)(tpd_cdev + 0xe20) = tpd_init_tpinfo;
  *(code **)(lVar3 + 0xe28) = tpd_get_wakegesture;
  *(code **)(lVar3 + 0xe30) = tpd_enable_wakegesture;
  *(code **)(lVar3 + 0xed8) = tpd_get_singlegamegesture;
  *(code **)(lVar3 + 0xee0) = tpd_set_singlegamegesture;
  *(code **)(lVar3 + 0xec8) = tpd_get_singleaodgesture;
  *(code **)(lVar3 + 0xed0) = tpd_set_singleaodgesture;
  *(code **)(lVar3 + 0xeb8) = tpd_get_singlefpgesture;
  *(code **)(lVar3 + 0xec0) = tpd_set_singlefpgesture;
  *(code **)(lVar3 + 0xef8) = tpd_set_one_key;
  *(code **)(lVar3 + 0xef0) = tpd_get_one_key;
  *(code **)(lVar3 + 4000) = tpd_test_cmd_store;
  *(code **)(lVar3 + 0xf98) = tpd_test_cmd_show;
  *(code **)(lVar3 + 0xf18) = tpd_get_tp_report_rate;
  *(code **)(lVar3 + 0xf10) = tpd_set_tp_report_rate;
  *(code **)(lVar3 + 0xf60) = tpd_get_sensibility_level;
  *(code **)(lVar3 + 0xf68) = tpd_set_sensibility_level;
  *(code **)(lVar3 + 0xf28) = tpd_get_follow_hand_level;
  *(code **)(lVar3 + 0xf20) = tpd_set_follow_hand_level;
  *(code **)(lVar3 + 0xf38) = tpd_get_stability_level;
  *(code **)(lVar3 + 0xf30) = tpd_set_stability_level;
  *(code **)(lVar3 + 0xe88) = tpd_get_rotation_limit_level;
  *(code **)(lVar3 + 0xe80) = tpd_set_rotation_limit_level;
  *(code **)(lVar3 + 0xe90) = tpd_set_display_rotation;
  *(code **)(lVar3 + 0xf00) = tpd_get_play_game;
  *(code **)(lVar3 + 0xf08) = tpd_set_play_game;
  *(code **)(lVar3 + 0xf50) = tpd_set_game_partition;
  *(code **)(lVar3 + 0x1000) = tpd_get_frame_data;
  *(code **)(lVar3 + 0xff8) = tpd_set_frame_data;
  *(code **)(lVar3 + 0xfa8) = tpd_get_palm_mode;
  *(code **)(lVar3 + 0xfb0) = tpd_set_palm_mode;
  *(code **)(lVar3 + 0xff0) = syna_ghost_check_reset;
  *(code **)(lVar3 + 0xfd0) = tpd_set_fake_sleep;
  *(code **)(lVar3 + 0xfc8) = tpd_get_fake_sleep;
  *(code **)(lVar3 + 0xfe0) = tpd_set_screen_off_awake;
  *(long *)(lVar3 + 0xdb8) = param_1;
  *(code **)(lVar3 + 0xfd8) = tpd_get_screen_off_awake;
  *(short *)(lVar3 + 0x442) = (short)*(undefined4 *)(param_1 + 0x3b8);
  *(short *)(lVar3 + 0x444) = (short)*(undefined4 *)(param_1 + 0x3bc);
  _printk(&DAT_0013bc56,"syna_tpd_register_fw_class");
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0012b8d0 syna_work_charger_detect_work */

void syna_work_charger_detect_work(long param_1)

{
  bool bVar1;
  long *plVar2;
  long lVar3;
  int iVar4;
  code *pcVar5;
  undefined4 uVar6;
  byte bVar7;
  undefined8 local_50;
  long local_48;
  
  lVar3 = sp_el0;
  local_48 = *(long *)(lVar3 + 0x710);
  plVar2 = (long *)(param_1 + -0x620);
  if (plVar2 == (long *)0x0) goto LAB_0012b900;
  if ((*(int *)(*(long *)(param_1 + -0x3b0) + 0xb8) == 0) ||
     ((*(byte *)(*(long *)(param_1 + -0x3b0) + 0xbc) & 1) == 0)) {
    uVar6 = *(undefined4 *)(*plVar2 + 0x20c);
  }
  else {
    uVar6 = 0;
  }
  _printk(&DAT_00135caf,"syna_work_charger_detect_work");
  local_50 = 0;
  if ((syna_get_charger_status_batt_psy == (long *)0x0) &&
     (syna_get_charger_status_batt_psy = (long *)power_supply_get_by_name("battery"),
     syna_get_charger_status_batt_psy == (long *)0x0)) {
    _printk(&DAT_0013b3ce,"syna_get_charger_status",0);
    syna_usb_detect_flag = false;
LAB_0012ba4c:
    if ((*(int *)(param_1 + -0xa4) != 1) || ((syna_work_charger_detect_work_status & 1) == 0)) {
      bVar7 = 0;
      if (*(int *)(param_1 + -0xa4) != 1) {
        bVar7 = syna_work_charger_detect_work_status;
      }
      if ((bVar7 & 1) != 0) {
        syna_work_charger_detect_work_status = 0;
      }
      goto LAB_0012b900;
    }
    bVar7 = 0;
  }
  else {
    if (*(int *)(*(code **)(*syna_get_charger_status_batt_psy + 0x28) + -4) != -0x1766f32d) {
                    /* WARNING: Does not return */
      pcVar5 = (code *)SoftwareBreakpoint(0x8228,0x12b9e8);
      (*pcVar5)();
    }
    (**(code **)(*syna_get_charger_status_batt_psy + 0x28))
              (syna_get_charger_status_batt_psy,0,&local_50);
    iVar4 = (int)local_50;
    bVar1 = (int)local_50 == 1 || (int)local_50 == 4;
    _printk(&DAT_0013b3ce,"syna_get_charger_status",bVar1);
    syna_usb_detect_flag = bVar1;
    if ((iVar4 != 4) && (iVar4 != 1)) goto LAB_0012ba4c;
    if ((*(int *)(param_1 + -0xa4) != 1) || ((syna_work_charger_detect_work_status & 1) != 0)) {
      bVar7 = syna_work_charger_detect_work_status;
      if (*(int *)(param_1 + -0xa4) == 1) {
        bVar7 = 1;
      }
      if ((bVar7 & 1) == 0) {
        syna_work_charger_detect_work_status = 1;
      }
      goto LAB_0012b900;
    }
    bVar7 = 1;
  }
  syna_dev_set_charger_mode(plVar2,bVar7,uVar6);
  syna_work_charger_detect_work_status = bVar7;
LAB_0012b900:
  lVar3 = sp_el0;
  if (*(long *)(lVar3 + 0x710) == local_48) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0012baac tpd_init_tpinfo */

undefined8 tpd_init_tpinfo(long param_1)

{
  undefined4 uVar1;
  ushort uVar2;
  long *plVar3;
  
  plVar3 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_init_tpinfo");
  *(undefined4 *)(param_1 + 0xcf0) = 1;
  builtin_strncpy((char *)(param_1 + 0xd18),"synaptic",8);
  builtin_strncpy((char *)(param_1 + 0xd20),"s_3910V",8);
  uVar1 = *(undefined4 *)(*plVar3 + 0xc);
  *(undefined4 *)(param_1 + 0xd14) = 4;
  *(undefined4 *)(param_1 + 0xd00) = uVar1;
  uVar2 = *(ushort *)(*plVar3 + 0xc6);
  *(uint *)(param_1 + 0xd04) = (uint)(uVar2 >> 8) | (uVar2 & 0xff00ff) << 8;
  return 0;
}



/* 0012bb30 tpd_get_wakegesture */

undefined8 tpd_get_wakegesture(undefined4 *param_1)

{
  *param_1 = *(undefined4 *)(*(long *)(param_1 + 0x36e) + 0x5c4);
  return 0;
}



/* 0012bb4c tpd_enable_wakegesture */

undefined8 tpd_enable_wakegesture(long param_1,undefined4 param_2)

{
  if (*(int *)(*(long *)(param_1 + 0xdb8) + 0x57c) == 1) {
    *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5c4) = param_2;
    return 0;
  }
  _printk(&DAT_0013c39a,"tpd_enable_wakegesture");
  return 0;
}



/* 0012bb9c tpd_get_singlegamegesture */

undefined8 tpd_get_singlegamegesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x454) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b8);
  _printk(&DAT_001335e5,"tpd_get_singlegamegesture",
          *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5bc));
  _printk(&DAT_0013dceb,"tpd_get_singlegamegesture",*(undefined4 *)(param_1 + 0x454));
  return 0;
}



/* 0012bc04 tpd_set_singlegamegesture */

undefined8 tpd_set_singlegamegesture(long param_1,int param_2)

{
  uint uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar2 + 0x57c) == 1) {
    uVar1 = *(uint *)(lVar2 + 0x5b8);
    *(uint *)(lVar2 + 0x5bc) = (uint)(0 < param_2);
    *(uint *)(lVar2 + 0x5b0) = *(uint *)(lVar2 + 0x5b4) | uVar1 | (uint)(0 < param_2);
  }
  else {
    _printk(&DAT_0013c39a,"tpd_set_singlegamegesture");
    uVar1 = *(uint *)(lVar2 + 0x5b8);
  }
  _printk(&DAT_00135d03,"tpd_set_singlegamegesture",uVar1);
  _printk(&DAT_00133ce1,"tpd_set_singlegamegesture",*(undefined4 *)(lVar2 + 0x5b4));
  _printk(&DAT_0013d1a9,"tpd_set_singlegamegesture",*(undefined4 *)(lVar2 + 0x5bc));
  _printk(&DAT_001362ed,"tpd_set_singlegamegesture",*(undefined4 *)(lVar2 + 0x5b0));
  return 0;
}



/* 0012bccc tpd_get_singleaodgesture */

undefined8 tpd_get_singleaodgesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x450) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b4);
  _printk(&DAT_0013308d,"tpd_get_singleaodgesture");
  _printk(&DAT_0013adaf,"tpd_get_singleaodgesture",*(undefined4 *)(param_1 + 0x450));
  return 0;
}



/* 0012bd30 tpd_set_singleaodgesture */

undefined8 tpd_set_singleaodgesture(long param_1,int param_2)

{
  uint uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar2 + 0x57c) == 1) {
    uVar1 = *(uint *)(lVar2 + 0x5b8);
    *(uint *)(lVar2 + 0x5b4) = (uint)(0 < param_2);
    *(uint *)(lVar2 + 0x5b0) = uVar1 | *(uint *)(lVar2 + 0x5bc) | (uint)(0 < param_2);
  }
  else {
    _printk(&DAT_0013c39a,"tpd_set_singleaodgesture");
    uVar1 = *(uint *)(lVar2 + 0x5b8);
  }
  _printk(&DAT_00135d03,"tpd_set_singleaodgesture",uVar1);
  _printk(&DAT_00133ce1,"tpd_set_singleaodgesture",*(undefined4 *)(lVar2 + 0x5b4));
  _printk(&DAT_001362ed,"tpd_set_singleaodgesture",*(undefined4 *)(lVar2 + 0x5b0));
  return 0;
}



/* 0012bde4 tpd_get_singlefpgesture */

undefined8 tpd_get_singlefpgesture(long param_1)

{
  *(undefined4 *)(param_1 + 0x44c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5b8);
  _printk(&DAT_0013b3ee,"tpd_get_singlefpgesture");
  _printk(&DAT_0013a975,"tpd_get_singlefpgesture",*(undefined4 *)(param_1 + 0x44c));
  return 0;
}



/* 0012be48 tpd_set_singlefpgesture */

undefined8 tpd_set_singlefpgesture(long param_1,int param_2)

{
  uint uVar1;
  uint uVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar3 + 0x57c) == 1) {
    uVar1 = (uint)(0 < param_2);
    uVar2 = (uint)(0 < param_2);
    *(uint *)(lVar3 + 0x5b8) = uVar2;
    *(uint *)(lVar3 + 0x5b0) = *(uint *)(lVar3 + 0x5b4) | *(uint *)(lVar3 + 0x5bc) | uVar2;
  }
  else {
    _printk(&DAT_0013c39a,"tpd_set_singlefpgesture");
    uVar1 = *(uint *)(lVar3 + 0x5b8);
  }
  _printk(&DAT_00135d03,"tpd_set_singlefpgesture",uVar1);
  _printk(&DAT_00133ce1,"tpd_set_singlefpgesture",*(undefined4 *)(lVar3 + 0x5b4));
  _printk(&DAT_001362ed,"tpd_set_singlefpgesture",*(undefined4 *)(lVar3 + 0x5b0));
  return 0;
}



/* 0012befc tpd_set_one_key */

undefined8 tpd_set_one_key(long param_1,undefined4 param_2)

{
  undefined8 uVar1;
  long lVar2;
  
  lVar2 = *(long *)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_one_key");
  if (lVar2 == 0) {
    uVar1 = 0xffffffea;
  }
  else {
    uVar1 = 0;
    *(undefined4 *)(lVar2 + 0x5d4) = param_2;
    *(undefined4 *)(param_1 + 0x458) = param_2;
  }
  return uVar1;
}



/* 0012bf60 tpd_get_one_key */

undefined8 tpd_get_one_key(long param_1)

{
  *(undefined4 *)(param_1 + 0x458) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5d4);
  return 0;
}



/* 0012bf7c tpd_test_cmd_store */

int tpd_test_cmd_store(long param_1)

{
  int iVar1;
  undefined *puVar2;
  long lVar3;
  
  lVar3 = *(long *)(param_1 + 0xdb8);
  if (*(int *)(lVar3 + 0x57c) == 1) {
    _printk(&DAT_001352c7,"tpd_test_cmd_store");
    iVar1 = syna_testing_pt01_zte(lVar3);
    if (iVar1 < 0) {
      puVar2 = &DAT_00134f46;
    }
    else {
      iVar1 = syna_testing_pt05_zte(lVar3);
      if (iVar1 < 0) {
        puVar2 = &DAT_0013d70a;
      }
      else {
        iVar1 = syna_testing_pt0a_zte(lVar3);
        if (-1 < iVar1) goto LAB_0012bfe4;
        puVar2 = &DAT_0013b41e;
      }
    }
  }
  else {
    iVar1 = 0;
    puVar2 = &DAT_0013c39a;
  }
  _printk(puVar2,"tpd_test_cmd_store");
LAB_0012bfe4:
  syna_spi_hw_reset(*(undefined8 *)(lVar3 + 0x270));
  _printk(&DAT_0013984b,"tpd_test_cmd_store");
  return iVar1;
}



/* 0012c050 tpd_test_cmd_show */

int tpd_test_cmd_show(undefined8 param_1,char *param_2)

{
  int iVar1;
  
  _printk(&DAT_001352c7,"tpd_test_cmd_show");
  iVar1 = snprintf(param_2,0x1000,"%d,%d,%d,%d",0,0x10,0x25,0);
  return iVar1;
}



/* 0012c0b0 tpd_get_tp_report_rate */

undefined8 tpd_get_tp_report_rate(long param_1)

{
  *(undefined4 *)(param_1 + 0x464) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5f8);
  return 0;
}



/* 0012c0cc tpd_set_tp_report_rate */

undefined8 tpd_set_tp_report_rate(long param_1,int param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long *plVar4;
  
  plVar4 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_tp_report_rate");
  if (plVar4 == (long *)0x0) {
    return 0xffffffea;
  }
  if ((*(int *)(plVar4[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar4[0x4e] + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*plVar4 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  if (3 < param_2) {
    param_2 = 4;
  }
  *(int *)(plVar4 + 0xbf) = param_2;
  if (*(int *)((long)plVar4 + 0x57c) == 1) {
    iVar1 = syna_dev_set_tp_report_rate(plVar4,param_2,uVar3);
    if (-1 < iVar1) {
      return 0;
    }
    puVar2 = &DAT_001386ab;
  }
  else {
    puVar2 = &DAT_0013c39a;
  }
  _printk(puVar2,"tpd_set_tp_report_rate");
  return 0;
}



/* 0012c18c tpd_get_sensibility_level */

undefined8 tpd_get_sensibility_level(long param_1)

{
  *(char *)(param_1 + 0x40) = (char)*(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5fc);
  return 0;
}



/* 0012c1a8 tpd_set_sensibility_level */

undefined8 tpd_set_sensibility_level(long param_1,uint param_2)

{
  uint uVar1;
  int iVar2;
  undefined *puVar3;
  undefined4 uVar4;
  long *plVar5;
  
  plVar5 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_sensibility_level");
  if (plVar5 == (long *)0x0) {
    return 0xffffffea;
  }
  if ((*(int *)(plVar5[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar5[0x4e] + 0xbc) & 1) == 0)) {
    uVar4 = *(undefined4 *)(*plVar5 + 0x20c);
  }
  else {
    uVar4 = 0;
  }
  uVar1 = param_2 & 0xff;
  if ((param_2 & 0xfc) != 0) {
    uVar1 = 4;
  }
  *(uint *)((long)plVar5 + 0x5fc) = uVar1;
  if (*(int *)((long)plVar5 + 0x57c) == 1) {
    iVar2 = syna_dev_set_sensibility_level(plVar5,uVar1,uVar4);
    if (-1 < iVar2) {
      return 0;
    }
    puVar3 = &DAT_00137424;
  }
  else {
    puVar3 = &DAT_0013c39a;
  }
  _printk(puVar3,"tpd_set_sensibility_level");
  return 0;
}



/* 0012c26c tpd_get_follow_hand_level */

undefined8 tpd_get_follow_hand_level(long param_1)

{
  *(undefined4 *)(param_1 + 0x468) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x600);
  return 0;
}



/* 0012c288 tpd_set_follow_hand_level */

undefined8 tpd_set_follow_hand_level(long param_1,int param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long *plVar4;
  
  plVar4 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_follow_hand_level");
  if (plVar4 == (long *)0x0) {
    return 0xffffffea;
  }
  if ((*(int *)(plVar4[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar4[0x4e] + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*plVar4 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  if (3 < param_2) {
    param_2 = 4;
  }
  *(int *)(plVar4 + 0xc0) = param_2;
  if (*(int *)((long)plVar4 + 0x57c) == 1) {
    iVar1 = syna_dev_set_follow_hand_level(plVar4,param_2,uVar3);
    if (-1 < iVar1) {
      return 0;
    }
    puVar2 = &DAT_00136316;
  }
  else {
    puVar2 = &DAT_0013c39a;
  }
  _printk(puVar2,"tpd_set_follow_hand_level");
  return 0;
}



/* 0012c348 tpd_get_stability_level */

undefined8 tpd_get_stability_level(long param_1)

{
  *(undefined4 *)(param_1 + 0x46c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x604);
  return 0;
}



/* 0012c364 tpd_set_stability_level */

undefined8 tpd_set_stability_level(long param_1,int param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long *plVar4;
  
  plVar4 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_stability_level");
  if (plVar4 == (long *)0x0) {
    return 0xffffffea;
  }
  if ((*(int *)(plVar4[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar4[0x4e] + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*plVar4 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  if (3 < param_2) {
    param_2 = 4;
  }
  *(int *)((long)plVar4 + 0x604) = param_2;
  if (*(int *)((long)plVar4 + 0x57c) == 1) {
    iVar1 = syna_dev_set_stability_level(plVar4,param_2,uVar3);
    if (-1 < iVar1) {
      return 0;
    }
    puVar2 = &DAT_0013d746;
  }
  else {
    puVar2 = &DAT_0013c39a;
  }
  _printk(puVar2,"tpd_set_stability_level");
  return 0;
}



/* 0012c424 tpd_get_rotation_limit_level */

undefined8 tpd_get_rotation_limit_level(long param_1)

{
  *(undefined4 *)(param_1 + 0xc) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x60c);
  return 0;
}



/* 0012c440 tpd_set_rotation_limit_level */

undefined8 tpd_set_rotation_limit_level(long param_1,int param_2)

{
  undefined8 uVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long *plVar4;
  
  plVar4 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_rotation_limit_level");
  if (plVar4 == (long *)0x0) {
    uVar1 = 0xffffffea;
  }
  else {
    if ((*(int *)(plVar4[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar4[0x4e] + 0xbc) & 1) == 0)) {
      uVar3 = *(undefined4 *)(*plVar4 + 0x20c);
    }
    else {
      uVar3 = 0;
    }
    if (2 < param_2) {
      param_2 = 3;
    }
    *(int *)((long)plVar4 + 0x60c) = param_2;
    if (*(int *)((long)plVar4 + 0x57c) == 1) {
      uVar1 = syna_dev_set_display_rotation(plVar4,*(undefined4 *)(param_1 + 0x10),uVar3);
      if ((int)uVar1 == 0) {
        return uVar1;
      }
      puVar2 = &DAT_00132a2c;
    }
    else {
      puVar2 = &DAT_0013c39a;
    }
    _printk(puVar2,"tpd_set_rotation_limit_level");
    uVar1 = 0;
  }
  return uVar1;
}



/* 0012c50c tpd_set_display_rotation */

undefined4 tpd_set_display_rotation(long param_1,undefined4 param_2)

{
  int iVar1;
  long *plVar2;
  undefined4 uVar3;
  
  plVar2 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_display_rotation");
  if (plVar2 == (long *)0x0) {
LAB_0012c544:
    uVar3 = 0xffffffea;
  }
  else {
    if ((*(int *)(plVar2[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar2[0x4e] + 0xbc) & 1) == 0)) {
      uVar3 = *(undefined4 *)(*plVar2 + 0x20c);
    }
    else {
      uVar3 = 0;
    }
    *(undefined4 *)(param_1 + 0x10) = param_2;
    *(undefined4 *)(plVar2 + 0xc1) = param_2;
    _printk(&DAT_001386d6,"tpd_set_display_rotation",*(undefined4 *)(param_1 + 0x10));
    if (*(int *)((long)plVar2 + 0x57c) != 1) {
      _printk(&DAT_0013d207,"tpd_set_display_rotation",0);
      msleep(200);
      if (*(int *)((long)plVar2 + 0x57c) != 1) {
        _printk(&DAT_0013d207,"tpd_set_display_rotation",1);
        msleep(200);
        if (*(int *)((long)plVar2 + 0x57c) != 1) {
          _printk(&DAT_0013d207,"tpd_set_display_rotation",2);
          msleep(200);
          if (*(int *)((long)plVar2 + 0x57c) != 1) {
            _printk(&DAT_0013d207,"tpd_set_display_rotation",3);
            msleep(200);
            if (*(int *)((long)plVar2 + 0x57c) != 1) {
              _printk(&DAT_0013d207,"tpd_set_display_rotation",4);
              msleep(200);
              _printk(&DAT_0013985e,"tpd_set_display_rotation");
              goto LAB_0012c544;
            }
          }
        }
      }
    }
    iVar1 = syna_dev_set_display_rotation(plVar2,*(undefined4 *)(param_1 + 0x10),uVar3);
    if (iVar1 < 0) {
      _printk(&DAT_00137455,"tpd_set_display_rotation");
    }
    uVar3 = *(undefined4 *)(param_1 + 0x10);
  }
  return uVar3;
}



/* 0012c6cc tpd_get_play_game */

undefined8 tpd_get_play_game(long param_1)

{
  *(undefined4 *)(param_1 + 0x45c) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5dc);
  return 0;
}



/* 0012c6e8 tpd_set_play_game */

undefined4 tpd_set_play_game(long param_1,int param_2)

{
  int iVar1;
  undefined *puVar2;
  undefined4 uVar3;
  long *plVar4;
  
  plVar4 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_play_game");
  if (plVar4 == (long *)0x0) {
    return 0xffffffea;
  }
  if ((*(int *)(plVar4[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar4[0x4e] + 0xbc) & 1) == 0)) {
    uVar3 = *(undefined4 *)(*plVar4 + 0x20c);
  }
  else {
    uVar3 = 0;
  }
  if (*(int *)((long)plVar4 + 0x57c) == 1) {
    if (*(int *)((long)plVar4 + 0x5dc) == param_2) {
      puVar2 = &DAT_00133617;
    }
    else {
      *(int *)((long)plVar4 + 0x5dc) = param_2;
      iVar1 = syna_dev_set_play_game(plVar4,param_2,uVar3);
      if (-1 < iVar1) goto LAB_0012c770;
      puVar2 = &DAT_00135616;
    }
  }
  else {
    puVar2 = &DAT_0013c39a;
  }
  _printk(puVar2,"tpd_set_play_game");
LAB_0012c770:
  return *(undefined4 *)(param_1 + 0x10);
}



/* 0012c7c4 tpd_set_game_partition */

undefined8 tpd_set_game_partition(void)

{
  _printk(&DAT_0013b5e5,"tpd_set_game_partition","tpd_set_game_partition");
  return 0;
}



/* 0012c7fc tpd_get_frame_data */

undefined8 tpd_get_frame_data(long param_1)

{
  *(undefined4 *)(param_1 + 0x460) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e0);
  return 0;
}



/* 0012c818 tpd_set_frame_data */

undefined8 tpd_set_frame_data(long param_1,undefined4 param_2)

{
  int iVar1;
  undefined *puVar2;
  long *plVar3;
  undefined4 uVar4;
  
  plVar3 = *(long **)(param_1 + 0xdb8);
  _printk(&DAT_001352c7,"tpd_set_frame_data");
  if (plVar3 == (long *)0x0) {
    return 0xffffffea;
  }
  if ((*(int *)(plVar3[0x4e] + 0xb8) == 0) || ((*(byte *)(plVar3[0x4e] + 0xbc) & 1) == 0)) {
    uVar4 = *(undefined4 *)(*plVar3 + 0x20c);
  }
  else {
    uVar4 = 0;
  }
  if (*(int *)((long)plVar3 + 0x57c) == 1) {
    *(undefined4 *)(plVar3 + 0xbc) = param_2;
    zte_reset_frame_list(plVar3);
    iVar1 = syna_dev_get_frame_data(plVar3,param_2,uVar4);
    if (-1 < iVar1) {
      return 0;
    }
    puVar2 = &DAT_00134f6a;
  }
  else {
    puVar2 = &DAT_0013c39a;
  }
  _printk(puVar2,"tpd_set_frame_data");
  return 0;
}



/* 0012c8e4 tpd_get_palm_mode */

undefined8 tpd_get_palm_mode(long param_1)

{
  *(undefined4 *)(param_1 + 0x478) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e4);
  return 0;
}



/* 0012c900 tpd_set_palm_mode */

undefined8 tpd_set_palm_mode(long param_1,undefined4 param_2)

{
  *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e4) = param_2;
  _printk(&DAT_001386f8,"tpd_set_palm_mode",param_2);
  return 0;
}



/* 0012c940 syna_ghost_check_reset */

undefined8 syna_ghost_check_reset(long param_1)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  syna_dev_free_input_events(lVar1);
  syna_spi_hw_reset(*(undefined8 *)(lVar1 + 0x270));
  syna_recovery_game_mode_after_reset(lVar1);
  syna_dev_set_screen_on_fp_mode(lVar1,0);
  _printk(&DAT_0013bc68,"syna_ghost_check_reset");
  return 0;
}



/* 0012c9a4 tpd_set_fake_sleep */

undefined8 tpd_set_fake_sleep(long param_1,undefined4 param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  *(undefined4 *)(lVar1 + 0x5ec) = param_2;
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(undefined4 *)(lVar1 + 0x5e8) = param_2;
    is_fake_sleep_mode = param_2;
    return 0;
  }
  _printk(&DAT_0013c39a,"tpd_set_fake_sleep");
  return 0;
}



/* 0012ca00 tpd_get_fake_sleep */

undefined8 tpd_get_fake_sleep(long param_1)

{
  *(undefined4 *)(param_1 + 0x480) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5e8);
  return 0;
}



/* 0012ca1c tpd_set_screen_off_awake */

undefined8 tpd_set_screen_off_awake(long param_1,undefined4 param_2)

{
  long lVar1;
  
  lVar1 = *(long *)(param_1 + 0xdb8);
  *(undefined4 *)(lVar1 + 0x5f4) = param_2;
  if (*(int *)(lVar1 + 0x57c) == 1) {
    *(undefined4 *)(lVar1 + 0x5f0) = param_2;
    is_screen_off_awake_mode = param_2;
    return 0;
  }
  _printk(&DAT_0013c39a,"tpd_set_screen_off_awake");
  return 0;
}



/* 0012ca78 tpd_get_screen_off_awake */

undefined8 tpd_get_screen_off_awake(long param_1)

{
  *(undefined4 *)(param_1 + 0x484) = *(undefined4 *)(*(long *)(param_1 + 0xdb8) + 0x5f0);
  return 0;
}



/* 0012ca94 syna_charger_notify_call */

undefined8 syna_charger_notify_call(long param_1,long param_2,undefined8 *param_3)

{
  int iVar1;
  char *__s1;
  
  if (param_2 != 0) {
    return 0;
  }
  __s1 = *(char **)*param_3;
  iVar1 = strcmp(__s1,"usb");
  if ((iVar1 == 0) || (((*__s1 == 'a' && (__s1[1] == 'c')) && (__s1[2] == '\0')))) {
    queue_delayed_work_on(0x20,*(undefined8 *)(param_1 + -8),param_1 + -0x70,0x7d);
  }
  return 0;
}



/* 0013159c init_module */

void init_module(void)

{
  _printk(&DAT_0013dd9e,"zte_touch_init");
  __platform_driver_register(zte_touch_device_driver,&__this_module);
  return;
}



/* 001315e0 cleanup_module */

void cleanup_module(void)

{
  syna_dev_module_exit();
  zte_touch_deinit();
  platform_driver_unregister(zte_touch_device_driver);
  return;
}



