
undefined8 syna_tcm_parse_fw_image(int *param_1,int param_2,int *param_3)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  size_t __n;
  undefined *puVar5;
  char *pcVar6;
  long lVar7;
  long lVar8;
  uint uVar9;
  int iVar10;
  uint uVar11;
  ulong __maxlen;
  char *__string;
  
  if (param_1 == (int *)0x0) {
    puVar5 = &DAT_0016f5b4;
  }
  else if (param_3 == (int *)0x0) {
    puVar5 = &DAT_0016f9b2;
  }
  else if (param_2 == 0) {
    puVar5 = &DAT_0016d75a;
  }
  else {
    memset(param_3 + 1,0,0x30c);
    *(int **)(param_3 + 2) = param_1;
    *param_3 = param_2;
    if (*param_1 == 0x4818472b) {
      iVar2 = param_1[1];
      if (iVar2 != 0) {
        iVar10 = 0;
        pcVar6 = " ";
        uVar11 = 8;
        do {
          piVar1 = (int *)((long)param_1 + (ulong)*(uint *)((long)param_1 + (ulong)uVar11));
          if (*piVar1 == 0x7c05e516) {
            uVar9 = 0x16;
            while( true ) {
              if (uVar9 < 0x17) {
                __maxlen = *(ulong *)(&UNK_0019bc48 + (ulong)uVar9 * 8);
                __string = (&PTR_s_APP_CODE_0019bd00)[uVar9];
              }
              else {
                __maxlen = 2;
                __string = pcVar6;
              }
              __n = strnlen(__string,__maxlen);
              if (__maxlen < __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(2,__maxlen,__n + 1);
              }
              if (__maxlen <= __n) {
                    /* WARNING: Subroutine does not return */
                __fortify_panic(4,__maxlen,__n + 1);
              }
              iVar3 = strncmp((char *)(piVar1 + 1),__string,__n);
              if (iVar3 == 0) break;
              uVar9 = uVar9 - 1;
              if (uVar9 == 0xfffffffe) {
                    /* WARNING: Subroutine does not return */
                _printk(&DAT_0016d804,"syna_tcm_get_partition_id",piVar1 + 1);
              }
            }
            if (uVar9 < 0x17) {
              uVar9 = uVar9 + 1;
              lVar8 = 0x1c;
              lVar7 = 0x24;
LAB_0014f4a4:
              param_3 = param_3 + (ulong)uVar9 * 8 + 4;
              if (param_3 == (int *)0x0) {
                puVar5 = &DAT_00168734;
              }
              else {
                if (piVar1 != (int *)0x0) {
                  iVar2 = *(int *)((long)piVar1 + lVar8);
                  lVar7 = (long)piVar1 + lVar7;
                  if (uVar9 == 0x14) {
                    *(long *)(param_3 + 2) = lVar7;
                    *(undefined1 *)(param_3 + 6) = 0x14;
                    param_3[4] = iVar2;
                    param_3[5] = 0;
                    *(undefined1 *)param_3 = 1;
                    /* WARNING: Subroutine does not return */
                    _printk(&DAT_0016f9ee,"syna_tcm_save_flash_partition_data",iVar2);
                  }
                  uVar11 = piVar1[8];
                  uVar4 = crc32_le(0xffffffff,lVar7,iVar2);
                  if (uVar11 == ~uVar4) {
                    iVar10 = piVar1[6];
                    *(char *)(param_3 + 6) = (char)uVar9;
                    iVar10 = iVar10 << 1;
                    *(long *)(param_3 + 2) = lVar7;
                    param_3[7] = uVar11;
                    *(undefined1 *)param_3 = 1;
                    param_3[4] = iVar2;
                    param_3[5] = iVar10;
                    if (uVar9 - 1 < 0x17) {
                      pcVar6 = (&PTR_s_APP_CODE_0019bdb8)[uVar9 - 1];
                    }
                    /* WARNING: Subroutine does not return */
                    _printk(&DAT_0016940c,"syna_tcm_save_flash_partition_data",pcVar6,iVar10,iVar10,
                            iVar2);
                  }
                  if (uVar9 - 1 < 0x17) {
                    pcVar6 = (&PTR_s_APP_CODE_0019bdb8)[uVar9 - 1];
                  }
                    /* WARNING: Subroutine does not return */
                  _printk(&DAT_00171e56,"syna_tcm_save_flash_partition_data",pcVar6,uVar11);
                }
                puVar5 = &DAT_001730ac;
              }
                    /* WARNING: Subroutine does not return */
              _printk(puVar5,"syna_tcm_save_flash_partition_data");
            }
          }
          else if (*piVar1 == -0x3e04be28) {
            uVar9 = 0x14;
            lVar8 = 4;
            lVar7 = 8;
            goto LAB_0014f4a4;
          }
          iVar10 = iVar10 + 1;
          uVar11 = uVar11 + 4;
        } while (iVar10 != iVar2);
      }
      return 0;
    }
    puVar5 = &DAT_00168042;
  }
                    /* WARNING: Subroutine does not return */
  _printk(puVar5,"syna_tcm_parse_fw_image");
}

