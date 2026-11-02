
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

