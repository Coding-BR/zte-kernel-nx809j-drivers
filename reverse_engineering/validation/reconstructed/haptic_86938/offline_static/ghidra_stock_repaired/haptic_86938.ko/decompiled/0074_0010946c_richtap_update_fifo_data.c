
void richtap_update_fifo_data(long param_1,uint param_2)

{
  char cVar1;
  ushort uVar2;
  undefined8 uVar3;
  code *pcVar4;
  int iVar5;
  uint uVar6;
  size_t __n;
  int iVar7;
  
  iVar5 = 0;
  iVar7 = 3;
  do {
    cVar1 = **(char **)(param_1 + 0x620);
    if (cVar1 == 'U') {
      uVar2 = *(ushort *)(param_1 + 0x6b8);
      __n = (long)*(short *)(*(char **)(param_1 + 0x620) + 2) - (long)(short)uVar2;
      uVar6 = (uint)__n;
      if (param_2 < uVar6 || param_2 - uVar6 == 0) {
        if ((1000 < uVar2) || (1000 < (ulong)*(ushort *)(param_1 + 0x6b8))) {
LAB_001095f8:
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x1095fc);
          (*pcVar4)();
        }
        memcpy((void *)(*(long *)(param_1 + 0x608) + (long)iVar5),
               (void *)(*(long *)(param_1 + 0x620) + (ulong)*(ushort *)(param_1 + 0x6b8) + 0x18),
               (ulong)param_2);
        iVar5 = param_2 + iVar5;
        *(short *)(param_1 + 0x6b8) = *(short *)(param_1 + 0x6b8) + (short)param_2;
LAB_0010959c:
        pcVar4 = *(code **)(*(long *)(param_1 + 0x5c8) + 0xd0);
        if (*(int *)(pcVar4 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
          pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x1095c8);
          (*pcVar4)();
        }
        (*pcVar4)(param_1,*(undefined8 *)(param_1 + 0x608),iVar5);
        return;
      }
      if ((1000 < uVar2) || (1000 < (ulong)*(ushort *)(param_1 + 0x6b8))) goto LAB_001095f8;
      memcpy((void *)(*(long *)(param_1 + 0x608) + (long)iVar5),
             (void *)(*(long *)(param_1 + 0x620) + (ulong)*(ushort *)(param_1 + 0x6b8) + 0x18),__n);
      iVar5 = uVar6 + iVar5;
      **(undefined1 **)(param_1 + 0x620) = 0xff;
      *(undefined2 *)(*(long *)(param_1 + 0x620) + 2) = 0;
      uVar3 = *(undefined8 *)(*(long *)(param_1 + 0x620) + 8);
      *(undefined2 *)(param_1 + 0x6b8) = 0;
      *(undefined8 *)(param_1 + 0x620) = uVar3;
      param_2 = param_2 - uVar6;
    }
    else {
      if (cVar1 == -0x56) goto LAB_0010959c;
      if (iVar7 < 1) {
        _printk(&DAT_0011165e);
        goto LAB_0010959c;
      }
      iVar7 = iVar7 + -1;
      usleep_range_state(1000,1000,2);
    }
    if ((param_2 == 0) || (*(int *)(param_1 + 0x6bc) == 0)) goto LAB_0010959c;
  } while( true );
}

