
void aw_get_single_bin_header_1_0_0(undefined8 *param_1)

{
  uint uVar1;
  undefined1 uVar2;
  long lVar3;
  code *pcVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  
  _printk(&DAT_0010bd85,"aw_get_single_bin_header_1_0_0",0x10e,"aw_get_single_bin_header_1_0_0");
  if (*(uint *)(param_1 + 1) < 100) {
    puVar5 = (undefined4 *)((long)param_1 + (ulong)*(uint *)(param_1 + 1) * 0x54 + 0x14);
    puVar6 = (undefined4 *)*param_1;
    *puVar5 = 0x3c;
    puVar5[1] = *puVar6;
    puVar5[2] = puVar6[1];
    puVar5[3] = puVar6[2];
    puVar5[4] = puVar6[3];
    puVar5[5] = puVar6[4];
    puVar5[6] = puVar6[5];
    puVar5[0xc] = puVar6[8];
    puVar5[0xd] = puVar6[9];
    puVar5[0xe] = puVar6[10];
    *(undefined1 *)(puVar5 + 7) = *(undefined1 *)(puVar6 + 6);
    *(undefined1 *)((long)puVar5 + 0x1d) = *(undefined1 *)((long)puVar6 + 0x19);
    *(undefined1 *)((long)puVar5 + 0x1e) = *(undefined1 *)((long)puVar6 + 0x1a);
    *(undefined1 *)((long)puVar5 + 0x1f) = *(undefined1 *)((long)puVar6 + 0x1b);
    *(undefined1 *)(puVar5 + 8) = *(undefined1 *)(puVar6 + 7);
    *(undefined1 *)((long)puVar5 + 0x21) = *(undefined1 *)((long)puVar6 + 0x1d);
    *(undefined1 *)((long)puVar5 + 0x22) = *(undefined1 *)((long)puVar6 + 0x1e);
    uVar2 = *(undefined1 *)((long)puVar6 + 0x1f);
    *(undefined1 *)(puVar5 + 9) = 0;
    *(undefined1 *)((long)puVar5 + 0x23) = uVar2;
    _printk(&DAT_0010c522,"aw_get_single_bin_header_1_0_0",0x131,"aw_get_single_bin_header_1_0_0");
    uVar1 = *(uint *)(param_1 + 1);
    if (uVar1 < 100) {
      lVar3 = (ulong)uVar1 * 0x54;
      *(undefined4 *)((long)param_1 + lVar3 + 0x50) = 0;
      *(undefined8 *)((long)param_1 + lVar3 + 0x58) = 0;
      *(undefined8 *)((long)param_1 + lVar3 + 0x60) = 0;
      *(uint *)(param_1 + 1) = uVar1 + 1;
      return;
    }
  }
                    /* WARNING: Does not return */
  pcVar4 = (code *)SoftwareBreakpoint(0x5512,0x100ca4);
  (*pcVar4)();
}

