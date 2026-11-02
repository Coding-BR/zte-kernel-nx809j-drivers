
void richtap_rtp_work(long param_1)

{
  bool bVar1;
  char cVar2;
  ulong uVar3;
  int iVar4;
  undefined1 *puVar5;
  code *pcVar6;
  long lVar7;
  uint uVar8;
  uint *puVar9;
  uint uVar10;
  
  *(undefined4 *)(param_1 + 0x78) = 0;
  uVar8 = 0;
  uVar10 = 0;
  lVar7 = param_1 + -0x648;
  puVar9 = (uint *)(param_1 + -0x1f0);
  *(undefined8 *)(param_1 + -0x28) = *(undefined8 *)(param_1 + -0x38);
  do {
    cVar2 = **(char **)(param_1 + -0x28);
    if (cVar2 == 'U') {
      iVar4 = (int)*(short *)(*(char **)(param_1 + -0x28) + 2);
      if (*puVar9 < uVar8 + iVar4) {
        memcpy((void *)(*(long *)(param_1 + -0x40) + (ulong)uVar8),
               (void *)(*(long *)(param_1 + -0x28) + 0x18),(ulong)(*puVar9 - uVar8));
        *(short *)(param_1 + 0x70) = (short)*puVar9 - (short)uVar8;
        uVar8 = *puVar9;
      }
      else {
        memcpy((void *)(*(long *)(param_1 + -0x40) + (ulong)uVar8),
               (void *)(*(long *)(param_1 + -0x28) + 0x18),(long)iVar4);
        puVar5 = *(undefined1 **)(param_1 + -0x28);
        *puVar5 = 0xff;
        uVar8 = uVar8 + (int)*(short *)(puVar5 + 2);
        *(undefined2 *)(*(long *)(param_1 + -0x28) + 2) = 0;
        *(undefined2 *)(param_1 + 0x70) = 0;
        *(undefined8 *)(param_1 + -0x28) = *(undefined8 *)(*(long *)(param_1 + -0x28) + 8);
      }
    }
    else {
      if (cVar2 == -0x56) break;
      msleep(1);
    }
    if ((*puVar9 <= uVar8) || (bVar1 = 0x1d < uVar10, uVar10 = uVar10 + 1, bVar1)) break;
  } while( true );
  uVar3 = richtap_rtp_start(lVar7);
  if ((uVar3 & 1) != 0) {
    pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0xd0);
    if (*(int *)(pcVar6 + -4) != -0x39584d65) {
                    /* WARNING: Does not return */
      pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10ade0);
      (*pcVar6)();
    }
    (*pcVar6)(lVar7,*(undefined8 *)(param_1 + -0x40),uVar8);
    if (*(char *)(param_1 + -0x637) == '\x01') {
      *(undefined4 *)(param_1 + 0x74) = 1;
      do {
        pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0x170);
        if (*(int *)(pcVar6 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10ae20);
          (*pcVar6)();
        }
        cVar2 = (*pcVar6)(lVar7);
        if (((cVar2 != '\0') || (*(char *)(param_1 + -0x631) != '\x02')) ||
           (**(char **)(param_1 + -0x28) != 'U')) break;
        richtap_update_fifo_data(lVar7,*puVar9 >> 2);
        pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0x160);
        if (*(int *)(pcVar6 + -4) != 0x784b3854) {
                    /* WARNING: Does not return */
          pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10ae7c);
          (*pcVar6)();
        }
        uVar3 = (*pcVar6)(lVar7);
      } while ((uVar3 & 0xf) != 0);
      pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0xf0);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10aeac);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0x110);
      if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10aed8);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7,1);
    }
    else {
      pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0x110);
      if (*(int *)(pcVar6 + -4) != 0x1d0adf6e) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10af0c);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7,1);
      pcVar6 = *(code **)(*(long *)(param_1 + -0x80) + 0xf0);
      if (*(int *)(pcVar6 + -4) != -0x7b85f7d0) {
                    /* WARNING: Does not return */
        pcVar6 = (code *)SoftwareBreakpoint(0x8228,0x10af34);
        (*pcVar6)();
      }
      (*pcVar6)(lVar7);
      *(undefined4 *)(param_1 + 0x74) = 1;
    }
  }
  return;
}

