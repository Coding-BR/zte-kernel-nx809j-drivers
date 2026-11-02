
undefined4 aw8693x_container_update(long param_1,int *param_2)

{
  ushort uVar1;
  int iVar2;
  code *pcVar3;
  long lVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  byte local_470;
  undefined1 local_46f;
  byte local_46e;
  ushort local_46c [2];
  char local_468 [1024];
  long local_68;
  
  lVar4 = sp_el0;
  local_68 = *(long *)(lVar4 + 0x710);
  memset(local_468,0,0x400);
  mutex_lock(param_1 + 0x2f0);
  *(undefined2 *)(param_1 + 0x45e) = 0x204;
  aw8693x_stop(param_1);
  i2c_w_bits(param_1,0x45,0xfffffffb,4);
  usleep_range_state(500,600,2);
  uVar1 = *(ushort *)((long)param_2 + (ulong)*(byte *)(param_1 + 0x45f) + 4);
  *(uint *)(param_1 + 0x458) = (uint)(uVar1 >> 8) | (uVar1 & 0xff00ff) << 8;
  _printk(&DAT_001088e0,"haptic_hv",0x657,"aw8693x_container_update");
  uVar7 = *(uint *)(param_1 + 0x458);
  iVar5 = uVar7 - (uVar7 >> 2);
  local_470 = (byte)(uVar7 >> 5) & 0xf0 | (byte)((uint)iVar5 >> 8) & 0xf;
  local_46f = (undefined1)(uVar7 >> 1);
  local_46e = (byte)iVar5;
  i2c_w_bytes(param_1,0x2f,&local_470,3);
  i2c_r_bytes(param_1,0x2f,&local_470,3);
  _printk(&DAT_00108f48,"haptic_hv",0x665,"aw8693x_container_update",
          CONCAT11(local_470 >> 4,local_46f));
  _printk(&DAT_00108bc2,"haptic_hv",0x668,"aw8693x_container_update",
          (uint)local_46e | (local_470 & 0xf) << 8);
  uVar7 = *(uint *)(param_1 + 0x458);
  local_46c[0] = (ushort)(uVar7 >> 8) & 0xff | (ushort)((uVar7 & 0xff00ff) << 8);
  i2c_w_bits(param_1,0x2d,0xffffffe0,uVar7 >> 8);
  i2c_w_bytes(param_1,0x2e,(ulong)local_46c | 1,1);
  local_46c[0] = *(ushort *)(param_1 + 0x458) >> 8 | *(ushort *)(param_1 + 0x458) << 8;
  i2c_w_bytes(param_1,0x40,local_46c,2);
  uVar7 = (uint)*(byte *)(param_1 + 0x45e);
  iVar5 = *param_2;
  if ((int)(uint)*(byte *)(param_1 + 0x45e) < iVar5) {
    do {
      iVar2 = iVar5 - uVar7;
      if (0x7ff < iVar2) {
        iVar2 = 0x800;
      }
      i2c_w_bytes(param_1,0x42,(long)param_2 + (long)(int)uVar7 + 4,iVar2);
      iVar5 = *param_2;
      uVar7 = iVar2 + uVar7;
    } while ((int)uVar7 < iVar5);
  }
  local_46c[0] = *(ushort *)(param_1 + 0x458) >> 8 | *(ushort *)(param_1 + 0x458) << 8;
  i2c_w_bytes(param_1,0x40,local_46c,2);
  uVar7 = (uint)*(byte *)(param_1 + 0x45e);
  iVar5 = *param_2;
  if ((int)(uint)*(byte *)(param_1 + 0x45e) < iVar5) {
    do {
      iVar5 = iVar5 - uVar7;
      iVar2 = iVar5;
      if (0x3ff < iVar5) {
        iVar2 = 0x400;
      }
      i2c_r_bytes(param_1,0x42,local_468,iVar2);
      lVar4 = 0;
      if (0x3ff < iVar5) {
        iVar5 = 0x400;
      }
      do {
        if (0x3ff < (uint)lVar4) {
                    /* WARNING: Does not return */
          pcVar3 = (code *)SoftwareBreakpoint(1,0x10844c);
          (*pcVar3)();
        }
        if (local_468[lVar4] != *(char *)((long)param_2 + lVar4 + (long)(int)uVar7 + 4)) {
          _printk(&DAT_0010879e,"haptic_hv",0x630,"aw8693x_check_ram_data");
          _printk(&DAT_00108c64,"haptic_hv",0x687,"aw8693x_container_update");
          uVar6 = 0xffffffde;
          goto LAB_001083f0;
        }
        lVar4 = lVar4 + 1;
      } while (iVar5 != (int)lVar4);
      iVar5 = *param_2;
      uVar7 = iVar2 + uVar7;
    } while ((int)uVar7 < iVar5);
  }
  _printk(&DAT_0010985d,"haptic_hv",0x689,"aw8693x_container_update");
  uVar6 = 0;
LAB_001083f0:
  i2c_w_bits(param_1,0x45,0xfffffffb,0);
  mutex_unlock(param_1 + 0x2f0);
  lVar4 = sp_el0;
  if (*(long *)(lVar4 + 0x710) == local_68) {
    return uVar6;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

