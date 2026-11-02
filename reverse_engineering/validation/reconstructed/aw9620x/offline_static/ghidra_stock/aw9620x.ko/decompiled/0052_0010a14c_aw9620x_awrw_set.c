
undefined8 aw9620x_awrw_set(long param_1,undefined8 param_2,char *param_3,undefined8 param_4)

{
  byte bVar1;
  byte bVar2;
  undefined2 uVar3;
  int iVar4;
  long lVar5;
  long lVar6;
  size_t sVar7;
  undefined8 uVar8;
  char *pcVar9;
  ulong uVar10;
  char *pcVar11;
  undefined8 uVar12;
  ulong uVar13;
  ulong __n;
  ulong uVar14;
  uint uVar15;
  long lVar16;
  uint uVar17;
  undefined1 auVar18 [16];
  undefined4 uStack_120;
  undefined2 auStack_11c [2];
  long lStack_118;
  undefined1 *puStack_110;
  code *pcStack_108;
  ulong uStack_100;
  undefined8 uStack_f0;
  long lStack_e8;
  char *pcStack_e0;
  char *pcStack_d8;
  undefined *puStack_d0;
  ulong uStack_c8;
  ulong uStack_c0;
  undefined8 uStack_b8;
  undefined4 local_b0;
  long local_a0;
  undefined8 local_98;
  undefined8 local_90;
  ulong local_88;
  long local_80;
  undefined8 local_78;
  long local_70;
  long local_68;
  
  lVar16 = sp_el0;
  local_68 = *(long *)(lVar16 + 0x710);
  lVar16 = *(long *)(param_1 + 0x98);
  local_98 = 0;
  local_90 = 0;
  iVar4 = sscanf(param_3,"0x%02x 0x%02x 0x%02x 0x%02x",(long)&local_90 + 4,&local_90,
                 (long)&local_98 + 4,&local_98);
  uVar8 = *(undefined8 *)(lVar16 + -8);
  if (iVar4 == 4) {
    local_b0 = (uint)local_98;
    _dev_printk(&DAT_0010eb37,uVar8,"[%s:%d] aw9620x 0x%02x 0x%02x 0x%02x 0x%02x\n",
                "aw9620x_awrw_set",0xb4f,local_90._4_4_,local_90 & 0xffffffff,local_98._4_4_);
    if (local_90._4_4_ < 2) {
      *(char *)(lVar16 + 0x238) = (char)(local_90 >> 0x20);
      *(char *)(lVar16 + 0x239) = (char)local_90;
      *(char *)(lVar16 + 0x23a) = (char)((ulong)local_98 >> 0x20);
      *(char *)(lVar16 + 0x23b) = (char)local_98;
      uVar15 = ((uint)local_98 & 0xff) * (local_98._4_4_ & 0xff) + ((uint)local_90 & 0xff);
      *(uint *)(lVar16 + 0x23c) = uVar15;
      if (*(long *)(lVar16 + 0x240) != 0) {
        devm_kfree(*(undefined8 *)(lVar16 + -8));
        uVar15 = *(uint *)(lVar16 + 0x23c);
        *(undefined8 *)(lVar16 + 0x240) = 0;
      }
      uVar13 = (ulong)uVar15;
      lVar5 = devm_kmalloc(*(undefined8 *)(lVar16 + -8),uVar13,0xdc0);
      *(long *)(lVar16 + 0x240) = lVar5;
      if (lVar5 == 0) {
        uVar8 = *(undefined8 *)(lVar16 + -8);
        pcVar9 = "[%s:%d] devm_kzalloc error\n";
        uVar12 = 0xb69;
      }
      else {
        if (*(char *)(lVar16 + 0x238) != '\x01') {
          if (*(char *)(lVar16 + 0x238) == '\0') {
            iVar4 = aw9620x_awrw_data_analysis
                              (lVar16 + -0x38,param_3,*(undefined4 *)(lVar16 + 0x23c));
            if (iVar4 == 0) {
              uVar15 = 5;
              do {
                local_80 = *(long *)(lVar16 + 0x240);
                local_88 = (ulong)(ushort)*(undefined4 *)(lVar16 + 0x23c) << 0x20;
                local_88 = CONCAT62(local_88._2_6_,*(undefined2 *)(*(long *)(lVar16 + -0x10) + 2));
                iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar16 + -0x10) + 0x18),&local_88,1);
                if (-1 < iVar4) {
                  if ((uVar15 >> 7 & 1) == 0) {
                    if (*(long *)(lVar16 + 0x240) == 0) goto LAB_0010a328;
                    goto LAB_0010a44c;
                  }
                  break;
                }
                _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar16 + -8),
                            "[%s:%d] aw9620x i2c write seq error %d\n","i2c_write_seq",0x28a,iVar4);
                usleep_range_state(2000,3000,2);
                uVar17 = uVar15 & 0xff;
                uVar15 = uVar15 - 1;
              } while (uVar17 != 0);
              uVar8 = *(undefined8 *)(lVar16 + -8);
              pcVar9 = "[%s:%d] i2c write error!\n";
              pcVar11 = "i2c_write_seq";
              uVar12 = 0x291;
            }
            else {
              uVar8 = *(undefined8 *)(lVar16 + -8);
              pcVar9 = "[%s:%d] awrw_write error\n";
              pcVar11 = "aw9620x_awrw_set";
              uVar12 = 0xb70;
            }
            _dev_printk(&DAT_0010dd3c,uVar8,pcVar9,pcVar11,uVar12);
            if (*(long *)(lVar16 + 0x240) != 0) {
LAB_0010a44c:
              devm_kfree(*(undefined8 *)(lVar16 + -8));
              *(undefined8 *)(lVar16 + 0x240) = 0;
            }
          }
          goto LAB_0010a328;
        }
        uVar14 = (ulong)*(byte *)(lVar16 + 0x239);
        bVar1 = *(byte *)(lVar16 + 0x23a);
        bVar2 = *(byte *)(lVar16 + 0x23b);
        local_a0 = lVar5;
        iVar4 = aw9620x_awrw_data_analysis(lVar16 + -0x38,param_3,uVar14);
        if (iVar4 == 0) {
          __n = (ulong)bVar2 * (ulong)bVar1;
          uVar15 = 5;
          do {
            local_80 = *(long *)(lVar16 + 0x240);
            uVar3 = *(undefined2 *)(*(long *)(lVar16 + -0x10) + 2);
            local_70 = local_80 + (ulong)*(byte *)(lVar16 + 0x239);
            local_88 = (ulong)CONCAT32((int3)(((uint5)*(byte *)(lVar16 + 0x239) << 0x20) >> 0x10),
                                       uVar3);
            local_78 = (ulong)CONCAT24((ushort)*(byte *)(lVar16 + 0x23b) *
                                       (ushort)*(byte *)(lVar16 + 0x23a),CONCAT22(1,uVar3));
            iVar4 = i2c_transfer(*(undefined8 *)(*(long *)(lVar16 + -0x10) + 0x18),&local_88,2);
            if (-1 < iVar4) {
              if ((uVar15 >> 7 & 1) == 0) goto LAB_0010a328;
              break;
            }
            _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar16 + -8),
                        "[%s:%d] aw9620x i2c write error %d\n","i2c_read_seq",0x2a4,iVar4);
            usleep_range_state(2000,3000,2);
            uVar17 = uVar15 & 0xff;
            uVar15 = uVar15 - 1;
          } while (uVar17 != 0);
          _dev_printk(&DAT_0010dd3c,*(undefined8 *)(lVar16 + -8),"[%s:%d] i2c write error!\n",
                      "i2c_read_seq",0x2ab);
          uVar10 = 0;
          if (uVar14 <= uVar13) {
            uVar10 = uVar13 - uVar14;
          }
          if (uVar10 < __n) {
            uVar10 = __n;
            auVar18 = __fortify_panic(0xf);
            lVar6 = auVar18._0_8_;
            pcStack_108 = aw9620x_awrw_data_analysis;
            uStack_f0 = 1;
            pcStack_e0 = "i2c_read_seq";
            pcStack_d8 = "[%s:%d] aw9620x i2c write error %d\n";
            puStack_d0 = &DAT_0010dd3c;
            lVar5 = sp_el0;
            lStack_118 = *(long *)(lVar5 + 0x710);
            uVar15 = ((uint)uVar10 & 0xff) + ((uint)uVar10 & 0xff) * 4;
            iVar4 = uVar15 + 0x14;
            uStack_120 = 0;
            puStack_110 = &stack0xffffffffffffffa0;
            uStack_100 = uVar14;
            lStack_e8 = lVar16;
            uStack_c8 = uVar13;
            uStack_c0 = __n;
            uStack_b8 = param_4;
            sVar7 = strlen(auVar18._8_8_);
            _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),"[%s:%d] enter\n",
                        "aw9620x_awrw_data_analysis",0xae9);
            if (iVar4 == (int)sVar7) {
              if ((uVar10 & 0xff) != 0) {
                uVar17 = 0;
                uVar13 = 0;
                do {
                  auStack_11c[0] = *(undefined2 *)(auVar18._8_8_ + (ulong)uVar17 + 0x16);
                  iVar4 = sscanf((char *)auStack_11c,"%02x",&uStack_120);
                  if (iVar4 == 1) {
                    *(char *)(*(long *)(lVar6 + 0x278) + (uVar13 & 0xff)) = (char)uStack_120;
                    _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                                "[%s:%d] tranfar_data = 0x%2x\n","aw9620x_awrw_data_analysis",0xafb,
                                *(undefined1 *)(*(long *)(lVar6 + 0x278) + (uVar13 & 0xff)));
                  }
                  uVar13 = (ulong)((int)uVar13 + 1);
                  uVar17 = uVar17 + 5 & 0xff;
                } while (uVar17 < uVar15);
              }
              uVar8 = 0;
            }
            else {
              _dev_printk(&DAT_0010eb37,*(undefined8 *)(lVar6 + 0x30),
                          "[%s:%d] error theory_len = %d actual_len = %d\n",
                          "aw9620x_awrw_data_analysis",0xaee,iVar4,sVar7 & 0xffffffff);
              uVar8 = 0xffffffff;
            }
            lVar16 = sp_el0;
            if (*(long *)(lVar16 + 0x710) != lStack_118) {
                    /* WARNING: Subroutine does not return */
              __stack_chk_fail(uVar8);
            }
            return uVar8;
          }
          memset((void *)(local_a0 + uVar14),0xff,__n);
        }
        uVar8 = *(undefined8 *)(lVar16 + -8);
        pcVar9 = "[%s:%d] awrw_read error\n";
        uVar12 = 0xb79;
      }
    }
    else {
      uVar8 = *(undefined8 *)(lVar16 + -8);
      pcVar9 = "[%s:%d] parameter err\n";
      uVar12 = 0xb52;
    }
  }
  else {
    pcVar9 = "[%s:%d] sscanf parse err\n";
    uVar12 = 0xb4a;
  }
  _dev_printk(&DAT_0010dd3c,uVar8,pcVar9,"aw9620x_awrw_set",uVar12);
LAB_0010a328:
  lVar16 = sp_el0;
  if (*(long *)(lVar16 + 0x710) != local_68) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return param_4;
}

