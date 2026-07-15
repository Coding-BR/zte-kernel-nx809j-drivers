
void zte_mk_reply(long param_1,int param_2,undefined4 param_3)

{
  short *psVar1;
  uint uVar2;
  code *pcVar3;
  int iVar4;
  long lVar5;
  undefined4 uVar6;
  short *psVar7;
  long lVar8;
  undefined4 local_3c;
  long local_38;
  
  lVar8 = sp_el0;
  local_38 = *(long *)(lVar8 + 0x710);
  lVar8 = *(long *)(param_1 + 0xd8);
  uVar2 = *(uint *)(param_1 + 0xd0);
  uVar6 = 4;
  if (param_2 != 1) {
    uVar6 = 5;
  }
  local_3c = param_3;
  iVar4 = nla_put(param_1,uVar6,0,0);
  lVar5 = 0;
  if ((-1 < iVar4) && (psVar1 = (short *)(lVar8 + (ulong)uVar2), psVar1 != (short *)0x0)) {
    iVar4 = nla_put(param_1,param_2,4,&local_3c);
    if (iVar4 < 0) {
      psVar7 = *(short **)(param_1 + 0xe0);
      if (psVar1 < psVar7) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x800,0x100fec);
        (*pcVar3)();
      }
    }
    else {
      lVar5 = nla_reserve_64bit(param_1,3,0x160,6);
      if (lVar5 != 0) {
        lVar5 = lVar5 + 4;
        *psVar1 = ((short)*(undefined4 *)(param_1 + 0xd8) + (short)*(undefined4 *)(param_1 + 0xd0))
                  - (short)psVar1;
        goto LAB_0010100c;
      }
      psVar7 = *(short **)(param_1 + 0xe0);
      if (psVar1 < psVar7) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x800,0x10103c);
        (*pcVar3)();
      }
    }
    skb_trim(param_1,(int)psVar1 - (int)psVar7);
    lVar5 = 0;
  }
LAB_0010100c:
  lVar8 = sp_el0;
  if (*(long *)(lVar8 + 0x710) == local_38) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail(lVar5);
}

