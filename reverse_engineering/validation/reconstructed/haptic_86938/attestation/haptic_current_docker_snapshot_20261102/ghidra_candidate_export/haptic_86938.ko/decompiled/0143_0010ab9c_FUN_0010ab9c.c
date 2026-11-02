
void FUN_0010ab9c(long param_1)

{
  char cVar1;
  uint uVar2;
  undefined8 uVar3;
  code *pcVar4;
  uint in_w9;
  int unaff_w19;
  long unaff_x20;
  uint unaff_w21;
  uint uVar5;
  size_t unaff_x22;
  int unaff_w23;
  undefined1 unaff_w24;
  
  while( true ) {
    uVar5 = (uint)unaff_x22;
    uVar2 = unaff_w21 - uVar5;
    if (unaff_w21 < uVar5 || uVar2 == 0) break;
    if ((1000 < in_w9) || (1000 < (ulong)*(ushort *)(unaff_x20 + 0x6b8))) goto LAB_0010aca8;
    memcpy((void *)(*(long *)(unaff_x20 + 0x608) + param_1),
           (void *)(*(long *)(unaff_x20 + 0x620) + (ulong)*(ushort *)(unaff_x20 + 0x6b8) + 0x18),
           unaff_x22);
    unaff_w19 = unaff_w19 + uVar5;
    **(undefined1 **)(unaff_x20 + 0x620) = unaff_w24;
    *(undefined2 *)(*(long *)(unaff_x20 + 0x620) + 2) = 0;
    uVar3 = *(undefined8 *)(*(long *)(unaff_x20 + 0x620) + 8);
    *(undefined2 *)(unaff_x20 + 0x6b8) = 0;
    *(undefined8 *)(unaff_x20 + 0x620) = uVar3;
    while( true ) {
      if ((uVar2 == 0) || (*(int *)(unaff_x20 + 0x6bc) == 0)) goto LAB_0010ac4c;
      cVar1 = **(char **)(unaff_x20 + 0x620);
      if (cVar1 == 'U') break;
      if (cVar1 == -0x56) goto LAB_0010ac4c;
      if (unaff_w23 < 1) {
        _printk(&UNK_001114dc);
        goto LAB_0010ac4c;
      }
      unaff_w23 = unaff_w23 + -1;
      usleep_range_state(1000,1000,2);
    }
    unaff_x22 = (long)*(short *)(*(char **)(unaff_x20 + 0x620) + 2) -
                (long)(short)*(ushort *)(unaff_x20 + 0x6b8);
    param_1 = (long)unaff_w19;
    in_w9 = (uint)*(ushort *)(unaff_x20 + 0x6b8);
    unaff_w21 = uVar2;
  }
  if ((in_w9 < 0x3e9) && ((ulong)*(ushort *)(unaff_x20 + 0x6b8) < 0x3e9)) {
    memcpy((void *)(*(long *)(unaff_x20 + 0x608) + param_1),
           (void *)(*(long *)(unaff_x20 + 0x620) + (ulong)*(ushort *)(unaff_x20 + 0x6b8) + 0x18),
           (ulong)unaff_w21);
    *(short *)(unaff_x20 + 0x6b8) = *(short *)(unaff_x20 + 0x6b8) + (short)unaff_w21;
LAB_0010ac4c:
    pcVar4 = *(code **)(*(long *)(unaff_x20 + 0x5c8) + 0xd0);
    if (*(int *)(pcVar4 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
      pcVar4 = (code *)SoftwareBreakpoint(0x8228,0x10ac78);
      (*pcVar4)();
    }
    (*pcVar4)();
    return;
  }
LAB_0010aca8:
                    /* WARNING: Does not return */
  pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x10acac);
  (*pcVar4)();
}

