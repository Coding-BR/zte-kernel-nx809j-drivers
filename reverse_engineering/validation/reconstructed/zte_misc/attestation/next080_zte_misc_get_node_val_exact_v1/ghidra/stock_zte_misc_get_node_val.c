
void zte_misc_get_node_val(char *param_1)

{
  int iVar1;
  undefined4 uVar2;
  size_t __n;
  size_t sVar3;
  size_t sVar4;
  undefined *puVar5;
  code *pcVar6;
  char *__s1;
  long lVar7;
  undefined4 local_8c;
  char local_88 [64];
  long local_48;
  
  lVar7 = sp_el0;
  local_48 = *(long *)(lVar7 + 0x710);
  local_8c = 0;
  if ((param_1 != (char *)0x0) && (*param_1 != '\0')) {
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
    __n = strlen(param_1);
    lVar7 = 0;
    do {
      __s1 = *(char **)((long)&node_ops_list + lVar7);
      iVar1 = strncmp(__s1,param_1,__n);
      if (iVar1 == 0) {
        sVar3 = strlen(__s1);
        sVar4 = strlen(param_1);
        if ((sVar3 == sVar4) &&
           (pcVar6 = *(code **)((long)&DAT_00100088 + lVar7), pcVar6 != (code *)0x0)) {
          if (*(int *)(pcVar6 + -4) != 0x2990b6e9) {
                    /* WARNING: Does not return */
            pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x100d30);
            (*pcVar6)();
          }
          iVar1 = (*pcVar6)(local_88,*(undefined8 *)((long)&DAT_00100098 + lVar7));
          if (iVar1 < 0) goto LAB_00100d68;
          iVar1 = sscanf(local_88,"%d",&local_8c);
          uVar2 = local_8c;
          if (iVar1 == 1) goto LAB_00100d6c;
          puVar5 = &DAT_0010295f;
          goto LAB_00100d64;
        }
      }
      lVar7 = lVar7 + 0x28;
    } while (lVar7 != 0x5a0);
    puVar5 = &DAT_001027c7;
LAB_00100d64:
    _printk(puVar5);
  }
LAB_00100d68:
  uVar2 = 0xffffffea;
LAB_00100d6c:
  lVar7 = sp_el0;
  if (*(long *)(lVar7 + 0x710) != local_48) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(uVar2);
  }
  return;
}

