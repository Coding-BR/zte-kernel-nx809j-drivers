/* 00100554 fill_nvmem_buf */

void fill_nvmem_buf(char *param_1,char *param_2,long param_3,long param_4,ulong param_5)

{
  ulong uVar1;
  size_t __n;
  ulong __n_00;
  
  if (param_1 == (char *)0x0) {
    uVar1 = 0;
  }
  else {
    uVar1 = strlen(param_1);
  }
  if (param_2 == (char *)0x0) {
    __n = 0;
  }
  else {
    __n = strlen(param_2);
  }
  __n_00 = 0;
  if ((param_1 != (char *)0x0) && (__n_00 = 0, uVar1 != 0)) {
    __n_00 = uVar1;
    if (param_5 <= uVar1) {
      __n_00 = param_5;
    }
    memcpy((void *)(param_3 + param_4),param_1,__n_00);
    if (param_5 <= uVar1) {
      return;
    }
  }
  if ((param_2 != (char *)0x0) && (__n != 0)) {
    if (param_5 - __n_00 <= __n) {
      __n = param_5 - __n_00;
    }
    memcpy((void *)(param_3 + __n_00 + param_4),param_2,__n);
    __n_00 = __n + __n_00;
    if (param_5 <= __n_00) {
      return;
    }
  }
  if (__n_00 <= param_5 && param_5 - __n_00 != 0) {
    memset((void *)(param_3 + __n_00 + param_4),0,param_5 - __n_00);
  }
  return;
}



/* 00100654 count_format_args */

int count_format_args(byte *param_1,int *param_2)

{
  byte bVar1;
  bool bVar2;
  void *pvVar3;
  int iVar4;
  int iVar5;
  
  iVar4 = -1;
  if (param_2 != (int *)0x0) {
    *param_2 = -1;
    iVar4 = 0;
    if (param_1 != (byte *)0x0) {
      bVar2 = false;
      iVar5 = -1;
LAB_001006a4:
      for (; bVar1 = *param_1, bVar1 == 0x25; param_1 = param_1 + 1) {
        bVar2 = (bool)(bVar2 ^ 1);
LAB_001006fc:
      }
      if (bVar1 == 0) {
        return iVar4;
      }
      if (!bVar2) {
        bVar2 = false;
        param_1 = param_1 + 1;
        goto LAB_001006a4;
      }
      pvVar3 = memchr("diouxXfFeEgGaAcsSpn",(uint)bVar1,0x14);
      if (pvVar3 != (void *)0x0) {
        bVar2 = false;
        iVar4 = iVar4 + 1;
        if ((bVar1 != 0x73) || (iVar5 != -1)) goto LAB_001006fc;
        bVar2 = false;
        *param_2 = iVar4;
        param_1 = param_1 + 1;
        iVar5 = iVar4;
        goto LAB_001006a4;
      }
      if (bVar1 != 0x2a) {
        bVar2 = true;
        param_1 = param_1 + 1;
        goto LAB_001006a4;
      }
      iVar4 = -1;
    }
  }
  return iVar4;
}



/* 0010073c entry_panic */

undefined8 entry_panic(undefined8 param_1,undefined8 *param_2)

{
  bool bVar1;
  byte bVar2;
  byte bVar7;
  long lVar8;
  bool bVar9;
  byte bVar10;
  byte bVar11;
  byte bVar12;
  byte bVar13;
  byte bVar14;
  int iVar15;
  code *pcVar16;
  int iVar17;
  size_t sVar18;
  void *pvVar19;
  undefined *puVar20;
  uint uVar21;
  char *__s1;
  char *__s;
  int iVar22;
  ulong uVar23;
  byte local_170 [256];
  long local_70;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  byte bVar6;
  
  lVar8 = sp_el0;
  local_70 = *(long *)(lVar8 + 0x710);
  __s = (char *)*param_2;
  local_170[0xf0] = 0;
  local_170[0xf1] = 0;
  local_170[0xf2] = 0;
  local_170[0xf3] = 0;
  local_170[0xf4] = 0;
  local_170[0xf5] = 0;
  local_170[0xf6] = 0;
  local_170[0xf7] = 0;
  local_170[0xf8] = 0;
  local_170[0xf9] = 0;
  local_170[0xfa] = 0;
  local_170[0xfb] = 0;
  local_170[0xfc] = 0;
  local_170[0xfd] = 0;
  local_170[0xfe] = 0;
  local_170[0xff] = 0;
  local_170[0xe0] = 0;
  local_170[0xe1] = 0;
  local_170[0xe2] = 0;
  local_170[0xe3] = 0;
  local_170[0xe4] = 0;
  local_170[0xe5] = 0;
  local_170[0xe6] = 0;
  local_170[0xe7] = 0;
  local_170[0xe8] = 0;
  local_170[0xe9] = 0;
  local_170[0xea] = 0;
  local_170[0xeb] = 0;
  local_170[0xec] = 0;
  local_170[0xed] = 0;
  local_170[0xee] = 0;
  local_170[0xef] = 0;
  uVar21 = once_entry_panic_count + 1;
  local_170[0xd0] = 0;
  local_170[0xd1] = 0;
  local_170[0xd2] = 0;
  local_170[0xd3] = 0;
  local_170[0xd4] = 0;
  local_170[0xd5] = 0;
  local_170[0xd6] = 0;
  local_170[0xd7] = 0;
  local_170[0xd8] = 0;
  local_170[0xd9] = 0;
  local_170[0xda] = 0;
  local_170[0xdb] = 0;
  local_170[0xdc] = 0;
  local_170[0xdd] = 0;
  local_170[0xde] = 0;
  local_170[0xdf] = 0;
  local_170[0xc0] = 0;
  local_170[0xc1] = 0;
  local_170[0xc2] = 0;
  local_170[0xc3] = 0;
  local_170[0xc4] = 0;
  local_170[0xc5] = 0;
  local_170[0xc6] = 0;
  local_170[199] = 0;
  local_170[200] = 0;
  local_170[0xc9] = 0;
  local_170[0xca] = 0;
  local_170[0xcb] = 0;
  local_170[0xcc] = 0;
  local_170[0xcd] = 0;
  local_170[0xce] = 0;
  local_170[0xcf] = 0;
  local_170[0xb0] = 0;
  local_170[0xb1] = 0;
  local_170[0xb2] = 0;
  local_170[0xb3] = 0;
  local_170[0xb4] = 0;
  local_170[0xb5] = 0;
  local_170[0xb6] = 0;
  local_170[0xb7] = 0;
  local_170[0xb8] = 0;
  local_170[0xb9] = 0;
  local_170[0xba] = 0;
  local_170[0xbb] = 0;
  local_170[0xbc] = 0;
  local_170[0xbd] = 0;
  local_170[0xbe] = 0;
  local_170[0xbf] = 0;
  local_170[0xa0] = 0;
  local_170[0xa1] = 0;
  local_170[0xa2] = 0;
  local_170[0xa3] = 0;
  local_170[0xa4] = 0;
  local_170[0xa5] = 0;
  local_170[0xa6] = 0;
  local_170[0xa7] = 0;
  local_170[0xa8] = 0;
  local_170[0xa9] = 0;
  local_170[0xaa] = 0;
  local_170[0xab] = 0;
  local_170[0xac] = 0;
  local_170[0xad] = 0;
  local_170[0xae] = 0;
  local_170[0xaf] = 0;
  local_170[0x90] = 0;
  local_170[0x91] = 0;
  local_170[0x92] = 0;
  local_170[0x93] = 0;
  local_170[0x94] = 0;
  local_170[0x95] = 0;
  local_170[0x96] = 0;
  local_170[0x97] = 0;
  local_170[0x98] = 0;
  local_170[0x99] = 0;
  local_170[0x9a] = 0;
  local_170[0x9b] = 0;
  local_170[0x9c] = 0;
  local_170[0x9d] = 0;
  local_170[0x9e] = 0;
  local_170[0x9f] = 0;
  local_170[0x80] = 0;
  local_170[0x81] = 0;
  local_170[0x82] = 0;
  local_170[0x83] = 0;
  local_170[0x84] = 0;
  local_170[0x85] = 0;
  local_170[0x86] = 0;
  local_170[0x87] = 0;
  local_170[0x88] = 0;
  local_170[0x89] = 0;
  local_170[0x8a] = 0;
  local_170[0x8b] = 0;
  local_170[0x8c] = 0;
  local_170[0x8d] = 0;
  local_170[0x8e] = 0;
  local_170[0x8f] = 0;
  local_170[0x70] = 0;
  local_170[0x71] = 0;
  local_170[0x72] = 0;
  local_170[0x73] = 0;
  local_170[0x74] = 0;
  local_170[0x75] = 0;
  local_170[0x76] = 0;
  local_170[0x77] = 0;
  local_170[0x78] = 0;
  local_170[0x79] = 0;
  local_170[0x7a] = 0;
  local_170[0x7b] = 0;
  local_170[0x7c] = 0;
  local_170[0x7d] = 0;
  local_170[0x7e] = 0;
  local_170[0x7f] = 0;
  local_170[0x60] = 0;
  local_170[0x61] = 0;
  local_170[0x62] = 0;
  local_170[99] = 0;
  local_170[100] = 0;
  local_170[0x65] = 0;
  local_170[0x66] = 0;
  local_170[0x67] = 0;
  local_170[0x68] = 0;
  local_170[0x69] = 0;
  local_170[0x6a] = 0;
  local_170[0x6b] = 0;
  local_170[0x6c] = 0;
  local_170[0x6d] = 0;
  local_170[0x6e] = 0;
  local_170[0x6f] = 0;
  local_170[0x50] = 0;
  local_170[0x51] = 0;
  local_170[0x52] = 0;
  local_170[0x53] = 0;
  local_170[0x54] = 0;
  local_170[0x55] = 0;
  local_170[0x56] = 0;
  local_170[0x57] = 0;
  local_170[0x58] = 0;
  local_170[0x59] = 0;
  local_170[0x5a] = 0;
  local_170[0x5b] = 0;
  local_170[0x5c] = 0;
  local_170[0x5d] = 0;
  local_170[0x5e] = 0;
  local_170[0x5f] = 0;
  local_170[0x40] = 0;
  local_170[0x41] = 0;
  local_170[0x42] = 0;
  local_170[0x43] = 0;
  local_170[0x44] = 0;
  local_170[0x45] = 0;
  local_170[0x46] = 0;
  local_170[0x47] = 0;
  local_170[0x48] = 0;
  local_170[0x49] = 0;
  local_170[0x4a] = 0;
  local_170[0x4b] = 0;
  local_170[0x4c] = 0;
  local_170[0x4d] = 0;
  local_170[0x4e] = 0;
  local_170[0x4f] = 0;
  local_170[0x30] = 0;
  local_170[0x31] = 0;
  local_170[0x32] = 0;
  local_170[0x33] = 0;
  local_170[0x34] = 0;
  local_170[0x35] = 0;
  local_170[0x36] = 0;
  local_170[0x37] = 0;
  local_170[0x38] = 0;
  local_170[0x39] = 0;
  local_170[0x3a] = 0;
  local_170[0x3b] = 0;
  local_170[0x3c] = 0;
  local_170[0x3d] = 0;
  local_170[0x3e] = 0;
  local_170[0x3f] = 0;
  local_170[0x20] = 0;
  local_170[0x21] = 0;
  local_170[0x22] = 0;
  local_170[0x23] = 0;
  local_170[0x24] = 0;
  local_170[0x25] = 0;
  local_170[0x26] = 0;
  local_170[0x27] = 0;
  local_170[0x28] = 0;
  local_170[0x29] = 0;
  local_170[0x2a] = 0;
  local_170[0x2b] = 0;
  local_170[0x2c] = 0;
  local_170[0x2d] = 0;
  local_170[0x2e] = 0;
  local_170[0x2f] = 0;
  local_170[0x10] = 0;
  local_170[0x11] = 0;
  local_170[0x12] = 0;
  local_170[0x13] = 0;
  local_170[0x14] = 0;
  local_170[0x15] = 0;
  local_170[0x16] = 0;
  local_170[0x17] = 0;
  local_170[0x18] = 0;
  local_170[0x19] = 0;
  local_170[0x1a] = 0;
  local_170[0x1b] = 0;
  local_170[0x1c] = 0;
  local_170[0x1d] = 0;
  local_170[0x1e] = 0;
  local_170[0x1f] = 0;
  local_170[0] = 0;
  local_170[1] = 0;
  local_170[2] = 0;
  local_170[3] = 0;
  local_170[4] = 0;
  local_170[5] = 0;
  local_170[6] = 0;
  local_170[7] = 0;
  local_170[8] = 0;
  local_170[9] = 0;
  local_170[10] = 0;
  local_170[0xb] = 0;
  local_170[0xc] = 0;
  local_170[0xd] = 0;
  local_170[0xe] = 0;
  local_170[0xf] = 0;
  if (once_entry_panic_count == 0) {
    once_entry_panic_count = uVar21;
    if (__s != (char *)0x0) {
      sVar18 = strlen(__s);
      if (sVar18 + 0x15 < 0x101) {
        snprintf((char *)local_170,0x100,"%s%s","ztedbg panic_hook:",__s);
        bVar9 = false;
        iVar22 = 0;
        iVar17 = -1;
        uVar21 = 0xffffffff;
        uVar23 = 0;
        do {
          bVar7 = local_170[uVar23];
          iVar15 = iVar22;
          if (bVar7 == 0x25) {
            bVar9 = (bool)(bVar9 ^ 1);
          }
          else {
            if (bVar7 == 0) {
LAB_001009cc:
              if (uVar21 - 1 < 7) {
                __s1 = (char *)param_2[uVar21];
                if (__s1 == (char *)0x0) {
                  _printk(&DAT_001018d3,uVar21);
                  goto LAB_001009f0;
                }
                _printk(&DAT_00101793,__s1);
                iVar17 = strcmp(__s1,"panicinpanic");
                if (iVar17 == 0) {
                    /* WARNING: Subroutine does not return */
                  panic("panicinpanic %d",once_entry_panic_count);
                }
              }
              else {
LAB_001009f0:
                __s1 = (char *)0x0;
              }
              if (iVar22 < 2) {
                if (iVar22 == 0) {
                  _printk(local_170);
                  goto LAB_00100918;
                }
                if (iVar22 == 1) {
                  _printk(local_170,param_2[1]);
                  goto LAB_00100918;
                }
              }
              else {
                if (iVar22 == 2) {
                  _printk(local_170,param_2[1],param_2[2]);
                  goto LAB_00100918;
                }
                if (iVar22 == 3) {
                  _printk(local_170,param_2[1],param_2[2],param_2[3]);
                  goto LAB_00100918;
                }
              }
              _printk(&DAT_00101848,iVar22,__s);
              goto LAB_00100918;
            }
            if (bVar9) {
              pvVar19 = memchr("diouxXfFeEgGaAcsSpn",(uint)bVar7,0x14);
              if (pvVar19 == (void *)0x0) {
                if (bVar7 == 0x2a) {
                  iVar22 = -1;
                  goto LAB_001009cc;
                }
                bVar9 = true;
              }
              else {
                bVar9 = false;
                iVar15 = iVar22 + 1;
                if (bVar7 == 0x73 && iVar17 == -1) {
                  uVar21 = iVar22 + 1;
                  iVar17 = iVar22 + 1;
                }
              }
            }
            else {
              bVar9 = false;
            }
          }
          iVar22 = iVar15;
          bVar1 = 0xfe < uVar23;
          uVar23 = uVar23 + 1;
          if (bVar1) {
                    /* WARNING: Does not return */
            pcVar16 = (code *)SoftwareBreakpoint(1,0x100ab4);
            (*pcVar16)();
          }
        } while( true );
      }
      _printk(&DAT_00101a13,sVar18 + 0x12,__s);
    }
    __s1 = (char *)0x0;
LAB_00100918:
    DAT_00100003 = 0x50;
    fill_nvmem_buf(__s1,__s,0x100000,4,1);
    puVar20 = &DAT_0010150e;
    uVar21 = (uint)saved_nvmem_buf;
    bVar2 = DAT_00100001;
    bVar3 = DAT_00100002;
    bVar4 = DAT_00100003;
    bVar7 = DAT_00100004;
    bVar5 = DAT_00100005;
    bVar6 = DAT_00100006;
    bVar10 = DAT_00100007;
    bVar11 = DAT_00100008;
    bVar12 = DAT_00100009;
    bVar13 = DAT_0010000a;
    bVar14 = DAT_0010000b;
  }
  else {
    puVar20 = &DAT_001016f2;
    bVar2 = saved_nvmem_buf;
    bVar3 = DAT_00100001;
    bVar4 = DAT_00100002;
    bVar7 = DAT_00100003;
    bVar5 = DAT_00100004;
    bVar6 = DAT_00100005;
    once_entry_panic_count = uVar21;
    bVar10 = DAT_00100006;
    bVar11 = DAT_00100007;
    bVar12 = DAT_00100008;
    bVar13 = DAT_00100009;
    bVar14 = DAT_0010000a;
  }
  _printk(puVar20,uVar21,bVar2,bVar3,bVar4,bVar7,bVar5,bVar6,bVar10,bVar11,bVar12,bVar13,bVar14);
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_70) {
    return 0;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 00100acc zte_reboot_ext_probe */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void zte_reboot_ext_probe(long param_1)

{
  long lVar1;
  undefined8 uVar2;
  int iVar3;
  long *plVar4;
  ulong uVar5;
  undefined1 *puVar6;
  long *plVar7;
  long local_40;
  long local_38;
  
  lVar1 = sp_el0;
  local_38 = *(long *)(lVar1 + 0x710);
  local_40 = 0;
  plVar4 = (long *)devm_kmalloc(param_1 + 0x10,0xa0,0xdc0);
  uVar2 = _kernel_kobj;
  if (plVar4 == (long *)0x0) {
    iVar3 = -0xc;
  }
  else {
    plVar7 = plVar4 + 1;
    *plVar4 = param_1 + 0x10;
    iVar3 = kobject_init_and_add(plVar7,bootreason_nvmem_kobj_type,uVar2,"bootreason");
    if (iVar3 == 0) {
      iVar3 = sysfs_create_group(plVar7,qcom_boot_nvmem_attr_group);
      if (iVar3 == 0) {
        uVar5 = nvmem_cell_get(*plVar4,"vendor_zlog_ss");
        plVar4[0x10] = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          puVar6 = (undefined1 *)nvmem_cell_read(uVar5,&local_40);
          if (puVar6 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_00101636,0);
            }
            else {
              DAT_0010000e = *puVar6;
              _printk(&DAT_00101902);
            }
            kfree(puVar6);
          }
          else {
            _printk(&DAT_00101a9c,(ulong)puVar6 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_0010181e,uVar5);
        }
        uVar5 = nvmem_cell_get(*plVar4,"vendor_zlog_w");
        plVar4[0x11] = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          puVar6 = (undefined1 *)nvmem_cell_read(uVar5,&local_40);
          if (puVar6 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_00101494,0);
            }
            else {
              DAT_0010000d = *puVar6;
              _printk(&DAT_0010186f);
            }
            kfree(puVar6);
          }
          else {
            _printk(&DAT_00101b54,(ulong)puVar6 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_00101ad5,uVar5);
        }
        uVar5 = nvmem_cell_get(*plVar4,"vendor_zlog_p");
        plVar4[0x12] = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          puVar6 = (undefined1 *)nvmem_cell_read(uVar5,&local_40);
          if (puVar6 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_001019e8,0);
            }
            else {
              DAT_0010000f = *puVar6;
              _printk(&DAT_001019bd);
            }
            kfree(puVar6);
          }
          else {
            _printk(&DAT_001017b4,(ulong)puVar6 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_00101740,uVar5);
        }
        uVar5 = nvmem_cell_get(*plVar4,"vendor_zlog_panic_ext");
        plVar4[0x13] = uVar5;
        if (uVar5 < 0xfffffffffffff001) {
          puVar6 = (undefined1 *)nvmem_cell_read(uVar5,&local_40);
          if (puVar6 < (undefined1 *)0xfffffffffffff001) {
            if (local_40 == 0) {
              _printk(&DAT_00101552);
            }
            else {
              DAT_00100010 = *puVar6;
              _printk(&DAT_001016a0,local_40,DAT_00100010,DAT_00100011,DAT_00100012,DAT_00100013,
                      DAT_00100014,DAT_00100015,DAT_00100016,DAT_00100017);
            }
            kfree(puVar6);
          }
          else {
            _printk(&DAT_001017de,(ulong)puVar6 & 0xffffffff);
          }
        }
        else {
          _printk(&DAT_001015ce,uVar5);
        }
        save_panic_buf_data_to_nvmem(plVar4);
        register_panic_hook(param_1);
        plVar4[0xd] = (long)zte_reboot_ext_panic;
        *(undefined4 *)(plVar4 + 0xf) = 0x7fffffff;
        atomic_notifier_chain_register(&panic_notifier_list);
        iVar3 = 0;
        *(long **)(param_1 + 0xa8) = plVar4;
      }
      else {
        _printk(&DAT_00101afe,"zte_reboot_ext_probe");
        kobject_del(plVar7);
      }
    }
    else {
      _printk(&DAT_001015a9,"zte_reboot_ext_probe");
      kobject_put(plVar7);
    }
  }
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(iVar3);
}



/* 00100ea8 zte_reboot_ext_remove */

void zte_reboot_ext_remove(long param_1)

{
  atomic_notifier_chain_unregister(&panic_notifier_list,*(long *)(param_1 + 0xa8) + 0x68);
  unregister_kretprobe(panic_probe);
  _printk(&DAT_00101b39);
  return;
}



/* 00100eec save_panic_buf_data_to_nvmem */

void save_panic_buf_data_to_nvmem(long param_1)

{
  if (param_1 == 0) {
    _printk(&DAT_00101769);
  }
  else {
    if (*(ulong *)(param_1 + 0x90) < 0xfffffffffffff001) {
      _printk(&DAT_00101585,DAT_00100003);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x90),&DAT_00100003,1);
    }
    else {
      _printk(&DAT_00101a43);
    }
    if (*(ulong *)(param_1 + 0x88) < 0xfffffffffffff001) {
      _printk(&DAT_00101941,DAT_00100001);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x88),&DAT_00100001,1);
    }
    else {
      _printk(&DAT_001018b0);
    }
    if (*(ulong *)(param_1 + 0x80) < 0xfffffffffffff001) {
      _printk(&DAT_00101b8c,saved_nvmem_buf);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x80),0x100000,1);
    }
    else {
      _printk(&DAT_00101612);
    }
    if (*(ulong *)(param_1 + 0x98) < 0xfffffffffffff001) {
      _printk(&DAT_001014bf,DAT_00100004,DAT_00100005,DAT_00100006,DAT_00100007,DAT_00100008,
              DAT_00100009,DAT_0010000a,DAT_0010000b);
      nvmem_cell_write(*(undefined8 *)(param_1 + 0x98),&DAT_00100004,1);
    }
    else {
      _printk(&DAT_0010196b);
    }
  }
  return;
}



/* 0010105c register_panic_hook */

void register_panic_hook(long param_1)

{
  int iVar1;
  
  iVar1 = register_kretprobe(panic_probe);
  if (iVar1 == 0) {
    _dev_info(param_1 + 0x10,"ztedbg register p_hook\n");
  }
  else {
    _dev_err(param_1 + 0x10,"ztedbg failed to register p_hook: %d\n",iVar1);
  }
  return;
}



/* 001010bc zte_reboot_ext_panic */

undefined8 zte_reboot_ext_panic(long param_1)

{
  saved_nvmem_buf = get_ss_panic_buf_byte();
  save_panic_buf_data_to_nvmem(param_1 + -0x68);
  return 1;
}



/* 001010fc attr_show */

undefined8 attr_show(undefined8 param_1,long param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(param_2 + 0x10);
  if (pcVar2 == (code *)0x0) {
    return 0xfffffffffffffffb;
  }
  if (*(int *)(pcVar2 + -4) != 0x618e6a55) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x101128);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1;
}



/* 00101144 attr_store */

undefined8 attr_store(undefined8 param_1,long param_2)

{
  undefined8 uVar1;
  code *pcVar2;
  
  pcVar2 = *(code **)(param_2 + 0x18);
  if (pcVar2 == (code *)0x0) {
    return 0xfffffffffffffffb;
  }
  if (*(int *)(pcVar2 + -4) != 0x7a5b5d2f) {
                    /* WARNING: Does not return */
    pcVar2 = (code *)SoftwareBreakpoint(0x8228,0x101170);
    (*pcVar2)();
  }
  uVar1 = (*pcVar2)();
  return uVar1;
}



/* 0010118c boot_nvmem_show */

long boot_nvmem_show(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  int iVar2;
  byte local_58;
  byte local_57;
  byte local_56;
  byte local_55;
  byte local_54;
  byte local_53;
  byte local_52;
  byte local_51;
  byte local_50;
  byte local_4f;
  byte local_4e;
  byte local_4d;
  undefined2 local_4c;
  undefined8 local_4a;
  undefined8 local_42;
  undefined8 local_3a;
  undefined8 local_32;
  undefined8 local_2a;
  undefined8 local_22;
  undefined2 local_1a;
  long local_18;
  
  lVar1 = sp_el0;
  local_18 = *(long *)(lVar1 + 0x710);
  local_1a = 0;
  local_22 = 0;
  local_2a = 0;
  local_58 = 0x2a;
  if (((&_ctype)[read_nvmem_buf] & 0x97) != 0) {
    local_58 = read_nvmem_buf;
  }
  local_57 = 0x2a;
  if (((&_ctype)[DAT_0010000d] & 0x97) != 0) {
    local_57 = DAT_0010000d;
  }
  local_53 = 0x2a;
  local_56 = local_53;
  if (((&_ctype)[DAT_0010000e] & 0x97) != 0) {
    local_56 = DAT_0010000e;
  }
  local_55 = local_53;
  if (((&_ctype)[DAT_0010000f] & 0x97) != 0) {
    local_55 = DAT_0010000f;
  }
  local_54 = local_53;
  if (((&_ctype)[DAT_00100010] & 0x97) != 0) {
    local_54 = DAT_00100010;
  }
  if (((&_ctype)[DAT_00100011] & 0x97) != 0) {
    local_53 = DAT_00100011;
  }
  local_32 = 0;
  local_4d = 0x2a;
  local_52 = local_4d;
  if (((&_ctype)[DAT_00100012] & 0x97) != 0) {
    local_52 = DAT_00100012;
  }
  local_51 = local_4d;
  if (((&_ctype)[DAT_00100013] & 0x97) != 0) {
    local_51 = DAT_00100013;
  }
  local_50 = local_4d;
  if (((&_ctype)[DAT_00100014] & 0x97) != 0) {
    local_50 = DAT_00100014;
  }
  local_3a = 0;
  local_4f = local_4d;
  if (((&_ctype)[DAT_00100015] & 0x97) != 0) {
    local_4f = DAT_00100015;
  }
  local_42 = 0;
  local_4e = local_4d;
  if (((&_ctype)[DAT_00100016] & 0x97) != 0) {
    local_4e = DAT_00100016;
  }
  local_4a = 0;
  if (((&_ctype)[DAT_00100017] & 0x97) != 0) {
    local_4d = DAT_00100017;
  }
  local_4c = 10;
  iVar2 = scnprintf(param_3,0x1000,&DAT_0010181b,&local_58);
  lVar1 = sp_el0;
  if (*(long *)(lVar1 + 0x710) == local_18) {
    return (long)iVar2;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}



/* 0010131c boot_nvmem_store */

undefined8 boot_nvmem_store(void)

{
  _printk(&DAT_00101a7a);
  return 0xffffffffffffffea;
}



/* 00101348 init_module */

void init_module(void)

{
  __platform_driver_register(zte_reboot_ext_driver,&__this_module);
  return;
}



/* 00101378 cleanup_module */

void cleanup_module(void)

{
  platform_driver_unregister(zte_reboot_ext_driver);
  return;
}



