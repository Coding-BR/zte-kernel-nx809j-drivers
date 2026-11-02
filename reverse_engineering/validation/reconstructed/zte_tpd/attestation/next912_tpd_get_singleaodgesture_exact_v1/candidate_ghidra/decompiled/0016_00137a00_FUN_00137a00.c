
undefined8 FUN_00137a00(void)

{
  void *__dest;
  uint uVar1;
  undefined2 uVar2;
  code *pcVar3;
  int iVar4;
  void *pvVar5;
  long lVar6;
  undefined *puVar7;
  undefined8 uVar8;
  ulong __n;
  uint uVar9;
  uint in_w8;
  uint in_w9;
  long unaff_x19;
  uint unaff_w20;
  uint unaff_w21;
  uint unaff_w23;
  long unaff_x24;
  uint uVar10;
  ulong unaff_x27;
  ulong uVar11;
  long unaff_x29;
  undefined8 in_stack_00000008;
  int in_stack_00000010;
  
  do {
    uVar11 = (ulong)in_w8 * (ulong)in_w9 >> 0x26;
    do {
      pvVar5 = (void *)(*(long *)(unaff_x29 + -8) + (ulong)unaff_w23);
      uVar10 = (uint)unaff_x27;
      if ((pvVar5 == (void *)0x0) ||
         (__dest = (void *)(*(long *)(unaff_x19 + 0x40) + 2), __dest == (void *)0x0)) {
        uVar8 = _printk(&DAT_0016d77c,"syna_tcm_write_flash",unaff_x27 & 0xffffffff);
        return uVar8;
      }
      uVar1 = *(int *)(unaff_x19 + 0x48) - 2;
      if ((in_stack_00000010 - unaff_w23 < uVar10) || (uVar1 < uVar10)) {
        uVar8 = _printk(&DAT_0016edc2,"syna_pal_mem_cpy",in_stack_00000010 - unaff_w23,uVar1,
                        unaff_x27 & 0xffffffff);
        return uVar8;
      }
      memcpy(__dest,pvVar5,unaff_x27);
      if (*(char *)(unaff_x24 + 9) != '\v') {
        uVar8 = _printk(&DAT_0016d1c4,"syna_tcm_reflash_send_command");
        return uVar8;
      }
      if (((int)uVar11 == 0) && ((*(byte *)(*(long *)(unaff_x24 + 0x48) + 0x14) & 1) == 0)) {
        uVar8 = _printk(&DAT_0016bea2,"syna_tcm_reflash_send_command",
                        *(undefined4 *)(unaff_x24 + 0x20c));
        return uVar8;
      }
      if (*(int *)(*(code **)(unaff_x24 + 0x398) + -4) != 0x24203a8e) {
                    /* WARNING: Does not return */
        pcVar3 = (code *)SoftwareBreakpoint(0x8228,0x137aa0);
        (*pcVar3)();
      }
      iVar4 = (**(code **)(unaff_x24 + 0x398))();
      if (iVar4 < 0) {
        uVar8 = _printk(&DAT_0016f442,"syna_tcm_reflash_send_command",0x12);
        return uVar8;
      }
      uVar11 = (ulong)in_stack_00000008._4_4_;
      unaff_w20 = unaff_w20 - uVar10;
      unaff_w23 = unaff_w23 + uVar10;
      *(uint *)(unaff_x19 + 0x90) = *(int *)(unaff_x19 + 0x90) + uVar10;
      if (unaff_w20 == 0) {
        if (*(char *)(unaff_x19 + 0x80) != '\x01') {
          uVar8 = _printk(&DAT_0016da50,"syna_tcm_buf_unlock",*(char *)(unaff_x19 + 0x80));
          return uVar8;
        }
        *(undefined1 *)(unaff_x19 + 0x80) = 0;
        mutex_unlock(unaff_x19 + 0x50);
        return 0;
      }
      pvVar5 = *(void **)(unaff_x19 + 0x40);
      uVar10 = unaff_w20;
      if (unaff_w21 <= unaff_w20) {
        uVar10 = unaff_w21;
      }
      unaff_x27 = (ulong)uVar10;
      uVar1 = uVar10 + 2;
      __n = (ulong)*(uint *)(unaff_x19 + 0x48);
      if (*(uint *)(unaff_x19 + 0x48) < uVar1) {
        if (pvVar5 != (void *)0x0) {
          lVar6 = syna_request_managed_device();
          if (lVar6 == 0) {
            uVar8 = _printk(&DAT_00171996,"syna_pal_mem_free");
            return uVar8;
          }
          devm_kfree(lVar6,pvVar5);
        }
        lVar6 = syna_request_managed_device();
        if (lVar6 == 0) {
          puVar7 = &DAT_00171996;
LAB_00137c28:
          uVar8 = _printk(puVar7,"syna_pal_mem_alloc");
          return uVar8;
        }
        if ((int)uVar1 < 1) {
          puVar7 = &DAT_0016da92;
          goto LAB_00137c28;
        }
        pvVar5 = (void *)devm_kmalloc(lVar6,(ulong)uVar1,0xdc0);
        *(void **)(unaff_x19 + 0x40) = pvVar5;
        if (pvVar5 == (void *)0x0) {
          uVar8 = _printk(&DAT_0016c730,"syna_tcm_buf_alloc",uVar1);
          return uVar8;
        }
        *(uint *)(unaff_x19 + 0x48) = uVar1;
        __n = (ulong)uVar1;
      }
      memset(pvVar5,0,__n);
      iVar4 = *(int *)(unaff_x29 + -0xc);
      *(undefined4 *)(unaff_x19 + 0x4c) = 0;
      uVar2 = 0;
      if (*(uint *)(unaff_x19 + 0x2c) != 0) {
        uVar2 = (undefined2)((unaff_w23 + iVar4) / *(uint *)(unaff_x19 + 0x2c));
      }
      **(undefined1 **)(unaff_x19 + 0x40) = (char)uVar2;
      *(char *)(*(long *)(unaff_x19 + 0x40) + 1) = (char)((ushort)uVar2 >> 8);
      uVar1 = *(uint *)(unaff_x19 + 0x2c);
      uVar9 = 0;
      if (uVar1 != 0) {
        uVar9 = 0;
        if (uVar1 != 0) {
          uVar9 = ((uVar10 + uVar1) - 1) / uVar1;
        }
      }
    } while (in_stack_00000008._4_4_ == 0);
    in_w8 = uVar9 * in_stack_00000008._4_4_;
    in_w9 = 0x10624dd3;
  } while( true );
}

