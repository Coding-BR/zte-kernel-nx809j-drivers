
int zte_misc_common_callback_set(undefined8 param_1,undefined8 *param_2)

{
  int iVar1;
  int iVar2;
  size_t __n;
  size_t sVar3;
  code *pcVar4;
  char *__s1;
  long lVar5;
  char local_88 [64];
  long local_48;
  
  lVar5 = sp_el0;
  local_48 = *(long *)(lVar5 + 0x710);
  local_88[0x30] = '\0';
  local_88[0x31] = '\0';
  local_88[0x32] = '\0';
  local_88[0x33] = '\0';
  local_88[0x34] = '\0';
  local_88[0x35] = '\0';
  local_88[0x36] = '\0';
  local_88[0x37] = '\0';
  local_88[0x38] = '\0';
  local_88[0x39] = '\0';
  local_88[0x3a] = '\0';
  local_88[0x3b] = '\0';
  local_88[0x3c] = '\0';
  local_88[0x3d] = '\0';
  local_88[0x3e] = '\0';
  local_88[0x3f] = '\0';
  local_88[0x20] = '\0';
  local_88[0x21] = '\0';
  local_88[0x22] = '\0';
  local_88[0x23] = '\0';
  local_88[0x24] = '\0';
  local_88[0x25] = '\0';
  local_88[0x26] = '\0';
  local_88[0x27] = '\0';
  local_88[0x28] = '\0';
  local_88[0x29] = '\0';
  local_88[0x2a] = '\0';
  local_88[0x2b] = '\0';
  local_88[0x2c] = '\0';
  local_88[0x2d] = '\0';
  local_88[0x2e] = '\0';
  local_88[0x2f] = '\0';
  local_88[0x10] = '\0';
  local_88[0x11] = '\0';
  local_88[0x12] = '\0';
  local_88[0x13] = '\0';
  local_88[0x14] = '\0';
  local_88[0x15] = '\0';
  local_88[0x16] = '\0';
  local_88[0x17] = '\0';
  local_88[0x18] = '\0';
  local_88[0x19] = '\0';
  local_88[0x1a] = '\0';
  local_88[0x1b] = '\0';
  local_88[0x1c] = '\0';
  local_88[0x1d] = '\0';
  local_88[0x1e] = '\0';
  local_88[0x1f] = '\0';
  local_88[0] = '\0';
  local_88[1] = '\0';
  local_88[2] = '\0';
  local_88[3] = '\0';
  local_88[4] = '\0';
  local_88[5] = '\0';
  local_88[6] = '\0';
  local_88[7] = '\0';
  local_88[8] = '\0';
  local_88[9] = '\0';
  local_88[10] = '\0';
  local_88[0xb] = '\0';
  local_88[0xc] = '\0';
  local_88[0xd] = '\0';
  local_88[0xe] = '\0';
  local_88[0xf] = '\0';
  iVar1 = sscanf((char *)*param_2,"%s",local_88);
  if (iVar1 == 1) {
    lVar5 = 0;
    iVar1 = 0;
    do {
      __s1 = *(char **)((long)&node_ops_list + lVar5);
      __n = strnlen(local_88,0x40);
      if (0x40 < __n) {
LAB_001013f8:
        __fortify_panic(2,0x40,__n + 1);
        goto LAB_00101404;
      }
      if (__n == 0x40) {
LAB_001013dc:
        __n = 0x41;
        __fortify_panic(4,0x40,0x41);
        goto LAB_001013f8;
      }
      iVar2 = strncmp(__s1,local_88,__n);
      if (iVar2 == 0) {
        sVar3 = strlen(__s1);
        __n = strnlen(local_88,0x40);
        if (0x40 < __n) goto LAB_001013f8;
        if (__n == 0x40) goto LAB_001013dc;
        if ((sVar3 == __n) &&
           (pcVar4 = *(code **)((long)&DAT_00100080 + lVar5), pcVar4 != (code *)0x0)) {
          if (*(int *)(pcVar4 + -4) != 0x4cf999cb) {
                    /* WARNING: Does not return */
            pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x101388);
            (*pcVar4)();
          }
          iVar1 = (*pcVar4)(param_1,*(undefined8 *)((long)&DAT_00100098 + lVar5));
          if (iVar1 < 0) break;
        }
      }
      lVar5 = lVar5 + 0x28;
    } while (lVar5 != 0x5a0);
  }
  else {
    _printk(&DAT_0010265a);
    iVar1 = -0x16;
  }
  lVar5 = sp_el0;
  if (*(long *)(lVar5 + 0x710) == local_48) {
    return iVar1;
  }
LAB_00101404:
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

