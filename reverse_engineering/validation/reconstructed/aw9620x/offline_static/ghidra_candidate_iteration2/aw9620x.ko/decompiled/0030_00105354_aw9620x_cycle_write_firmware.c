
undefined8 aw9620x_cycle_write_firmware(long param_1,long param_2,uint param_3)

{
  undefined1 *puVar1;
  ulong uVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  uint uVar6;
  long lVar7;
  code *pcVar8;
  int iVar9;
  int iVar10;
  undefined1 *__s;
  undefined *puVar11;
  undefined8 uVar12;
  ulong extraout_x1;
  undefined8 uVar13;
  ulong uVar14;
  uint uVar15;
  ulong uVar16;
  ulong __n;
  ulong __n_00;
  ulong uVar17;
  uint uVar18;
  uint uVar19;
  ulong uVar20;
  
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] enter\n",
              "aw9620x_cycle_write_firmware",0x815);
  if ((param_3 & 3) == 0) {
    iVar10 = 0;
  }
  else {
    iVar10 = 4 - (param_3 & 3);
    _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] word_comp_len = %d\n",
                "aw9620x_cycle_write_firmware",0x819,iVar10);
  }
  param_3 = iVar10 + param_3;
  __n_00 = (ulong)(param_3 + 8);
  uVar14 = (ulong)(param_3 >> 6) / 0x3f;
  uVar6 = param_3 + ((param_3 >> 6) / 0x3f) * -0xfc0;
  __n = (ulong)uVar6;
  _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
              "[%s:%d] firmware_len = %d cycle_cnt = %d cycle_cnt_last_len = %d send_all_len = %d\n"
              ,"aw9620x_cycle_write_firmware",0x822,param_3,uVar14,__n,param_3 + 8);
  __s = (undefined1 *)__kmalloc_noprof(__n_00,0xdc0);
  do {
    if (__s == (undefined1 *)0x0) {
      _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),"[%s:%d] devm_kzalloc err\n",
                  "aw9620x_cycle_write_firmware",0x826);
      return 0;
    }
    if (false) {
LAB_00105900:
      __fortify_panic(0xf,__n_00,__n_00);
      uVar20 = extraout_x1;
    }
    else {
      iVar10 = 0x10002000;
      uVar20 = 1;
      memset(__s,1,__n_00);
      uVar15 = (uint)uVar14;
      if (0xfbf < param_3) {
        uVar17 = 0;
        uVar2 = 0;
        if (7 < __n_00) {
          uVar2 = __n_00 - 8;
        }
        param_3 = 0x10bc3f;
        uVar19 = uVar15;
        if (uVar15 < 2) {
          uVar19 = 1;
        }
        do {
          if (__n_00 == 0) goto LAB_001058ec;
          *__s = (char)(uVar20 >> 0x18);
          if ((__n_00 == 1) || (__s[1] = (char)(uVar20 >> 0x10), __n_00 == 2)) goto LAB_001058ec;
          __s[2] = (char)(uVar20 >> 8);
          if (__n_00 < 4) goto LAB_001058ec;
          uVar18 = (uint)uVar20;
          __s[3] = (char)uVar20;
          if ((__n_00 == 4) || (__s[4] = (char)((uint)iVar10 >> 0x18), __n_00 == 5))
          goto LAB_001058ec;
          __s[5] = (char)((uint)iVar10 >> 0x10);
          if ((__n_00 < 7) || (__s[6] = (char)((uint)iVar10 >> 8), __n_00 == 7)) goto LAB_001058ec;
          uVar12 = *(undefined8 *)(param_1 + 0x30);
          __s[7] = (char)iVar10;
          _dev_printk(&DAT_0010d797,uVar12,
                      "[%s:%d] cnt = %d tranfer head info 0x%02x 0x%02x 0x%02x 0x%02x\n",
                      "aw9620x_cycle_write_firmware",0x83c,uVar17 & 0xffffffff,uVar20 >> 0x18,
                      uVar18 >> 0x10 & 0xff,uVar18 >> 8 & 0xff,uVar18 & 0xff);
          _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] cnt = %d tranfer head info 0x%02x 0x%02x 0x%02x 0x%02x\n",
                      "aw9620x_cycle_write_firmware",0x83c,uVar17 & 0xffffffff,__s[4],__s[5],__s[6],
                      __s[7]);
          _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),"[%s:%d] half_cache_len = %d\n",
                      "aw9620x_cycle_write_firmware",0x83f,0xfc0);
          if (uVar2 < 0xfc0) {
            __fortify_panic(0x11,uVar2,0xfc0);
            goto LAB_00105900;
          }
          memcpy(__s + 8,(void *)(param_2 + uVar17 * 0xfc0),0xfc0);
          uVar20 = 0xb;
          do {
            if ((__n_00 <= uVar20 - 3) || (__n_00 <= uVar20)) goto LAB_001058ec;
            puVar1 = __s + uVar20;
            uVar3 = __s[uVar20 - 3];
            uVar4 = puVar1[-1];
            __s[uVar20 - 3] = *puVar1;
            uVar16 = uVar20 - 0xb;
            uVar5 = puVar1[-2];
            uVar20 = uVar20 + 4;
            *puVar1 = uVar3;
            puVar1[-2] = uVar4;
            puVar1[-1] = uVar5;
          } while (uVar16 < 0xfbc);
          if (uVar17 == 2) {
            _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                        "[%s:%d] flash addr write err, addr=0x%08X, len=0x%04X\n",
                        "aw9620x_cycle_write_firmware",0x847,0x10003f80,0xfc0);
            goto LAB_001058dc;
          }
          iVar9 = aw9620x_send_once_cmd(param_1,1,2,__s,0xfc8);
          if (iVar9 != 0) {
            uVar12 = *(undefined8 *)(param_1 + 0x30);
            puVar11 = &DAT_0010c99c;
            uVar13 = 0x84d;
            goto LAB_001058d8;
          }
          uVar17 = uVar17 + 1;
          iVar10 = iVar10 + 0xfc0;
          uVar20 = (ulong)(uVar18 + 1);
        } while (uVar17 != uVar19);
      }
      if (uVar6 == 0) goto LAB_00105664;
      if (__n_00 == 0) goto LAB_001058ec;
      *__s = (char)(uVar20 >> 0x18);
      if ((__n_00 == 1) || (__s[1] = (char)(uVar20 >> 0x10), __n_00 == 2)) goto LAB_001058ec;
      __s[2] = (char)(uVar20 >> 8);
      if (__n_00 < 4) goto LAB_001058ec;
      uVar19 = (uint)uVar20;
      __s[3] = (char)uVar20;
      if ((__n_00 == 4) || (__s[4] = (char)((uint)iVar10 >> 0x18), __n_00 == 5)) goto LAB_001058ec;
      __s[5] = (char)((uint)iVar10 >> 0x10);
      if ((__n_00 < 7) || (__s[6] = (char)((uint)iVar10 >> 8), __n_00 == 7)) goto LAB_001058ec;
      uVar12 = *(undefined8 *)(param_1 + 0x30);
      param_3 = 0x10d797;
      __s[7] = (char)iVar10;
      _dev_printk(&DAT_0010d797,uVar12,
                  "[%s:%d] last_len = %d tranfer head info 0x%02x 0x%02x 0x%02x 0x%02x\n",
                  "aw9620x_cycle_write_firmware",0x865,uVar6,uVar20 >> 0x18,uVar19 >> 0x10 & 0xff,
                  uVar19 >> 8 & 0xff,uVar19 & 0xff);
      _dev_printk(&DAT_0010d797,*(undefined8 *)(param_1 + 0x30),
                  "[%s:%d] last_len = %d tranfer head info 0x%02x 0x%02x 0x%02x 0x%02x\n",
                  "aw9620x_cycle_write_firmware",0x865,__n,__s[4],__s[5],__s[6],__s[7]);
      uVar20 = 0;
      if (7 < __n_00) {
        uVar20 = __n_00 - 8;
      }
      if (__n <= uVar20) {
        memcpy(__s + 8,(void *)(param_2 + (ulong)(uVar15 * 0xfc0)),__n);
        uVar14 = 0xb;
        do {
          if ((__n_00 <= uVar14 - 3) || (__n_00 <= uVar14)) {
LAB_001058ec:
                    /* WARNING: Does not return */
            pcVar8 = (code *)SoftwareBreakpoint(1,0x1058f0);
            (*pcVar8)();
          }
          puVar1 = __s + uVar14;
          uVar3 = __s[uVar14 - 3];
          uVar4 = puVar1[-1];
          __s[uVar14 - 3] = *puVar1;
          uVar20 = uVar14 - 7;
          uVar5 = puVar1[-2];
          uVar14 = uVar14 + 4;
          *puVar1 = uVar3;
          puVar1[-2] = uVar4;
          puVar1[-1] = uVar5;
        } while (uVar20 < __n);
        if (iVar10 + uVar6 < 0x10004000) {
          iVar10 = aw9620x_send_once_cmd(param_1,1,2,__s,uVar6 + 8);
          if (iVar10 == 0) {
LAB_00105664:
            kfree(__s);
            return 0;
          }
          uVar12 = *(undefined8 *)(param_1 + 0x30);
          puVar11 = &DAT_0010d797;
          uVar13 = 0x876;
LAB_001058d8:
          _dev_printk(puVar11,uVar12,"[%s:%d] send_transfer_cmd_once err\n",
                      "aw9620x_cycle_write_firmware",uVar13);
        }
        else {
          _dev_printk(&DAT_0010c99c,*(undefined8 *)(param_1 + 0x30),
                      "[%s:%d] flash addr write err, addr=0x%08X, len=0x%04X\n",
                      "aw9620x_cycle_write_firmware",0x86f,iVar10,uVar6);
        }
LAB_001058dc:
        kfree(__s);
        return 0xffffffff;
      }
    }
    __fortify_panic(0x11,uVar20,__n);
    lVar7 = sp_el0;
    uVar12 = *(undefined8 *)(lVar7 + 0x50);
    *(undefined **)(lVar7 + 0x50) = &DAT_001004e8;
    __s = (undefined1 *)__kmalloc_noprof(__n_00,0xdc0);
    *(undefined8 *)(lVar7 + 0x50) = uVar12;
  } while( true );
}

