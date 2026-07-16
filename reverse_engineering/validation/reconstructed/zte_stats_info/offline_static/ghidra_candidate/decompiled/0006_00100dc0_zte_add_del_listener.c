
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 zte_add_del_listener(int param_1,uint *param_2,int param_3)

{
  uint uVar1;
  undefined *puVar2;
  undefined8 *puVar3;
  undefined8 *puVar4;
  ulong uVar5;
  long lVar6;
  undefined8 *puVar7;
  undefined8 *extraout_x9;
  undefined8 *puVar8;
  undefined8 uVar9;
  ulong uVar10;
  
  if ((*param_2 & (___cpu_possible_mask ^ 0xffffffff)) == 0) {
    uVar9 = sp_el0;
    puVar2 = (undefined *)task_active_pid_ns(uVar9);
    if (puVar2 == &init_pid_ns) {
      if (param_3 == 0) {
        uVar5 = 0;
        while( true ) {
          uVar1 = (uint)(-1L << (uVar5 & 0x3f)) & *param_2;
          if (uVar1 == 0) {
            return 0;
          }
          puVar7 = (undefined8 *)
                   __kmalloc_cache_node_noprof(___list_del_entry_valid_or_report,0xcc0,0,0x18);
          if (puVar7 == (undefined8 *)0x0) break;
          uVar5 = ((ulong)uVar1 & 0xaaaaaaaaaaaaaaaa) >> 1 |
                  ((ulong)uVar1 & 0x5555555555555555) << 1;
          uVar5 = (uVar5 & 0xcccccccccccccccc) >> 2 | (uVar5 & 0x3333333333333333) << 2;
          uVar5 = (uVar5 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar5 & 0xf0f0f0f0f0f0f0f) << 4;
          uVar5 = (uVar5 & 0xff00ff00ff00ff00) >> 8 | (uVar5 & 0xff00ff00ff00ff) << 8;
          *(int *)(puVar7 + 2) = param_1;
          *(undefined1 *)((long)puVar7 + 0x14) = 1;
          uVar10 = LZCOUNT((uVar5 >> 0x10 | (uVar5 & 0xffff0000ffff) << 0x10) << 0x20);
          lVar6 = *(long *)(&__per_cpu_offset + uVar10 * 8);
          down_write(zte_listener_array + lVar6);
          puVar8 = (undefined8 *)(zte_listener_array + lVar6 + 0x40);
          puVar3 = (undefined8 *)*puVar8;
          for (puVar4 = puVar3; puVar4 != puVar8; puVar4 = (undefined8 *)*puVar4) {
            if ((*(int *)(puVar4 + 2) == param_1) && (*(char *)((long)puVar4 + 0x14) != '\0'))
            goto LAB_00100e7c;
          }
          if ((((undefined8 *)puVar3[1] == puVar8) && (puVar7 != puVar8)) && (puVar3 != puVar7)) {
            puVar3[1] = puVar7;
            *puVar7 = puVar3;
            puVar7[1] = puVar8;
            *puVar8 = puVar7;
          }
          else {
            __list_add_valid_or_report(puVar7);
          }
          puVar7 = (undefined8 *)0x0;
LAB_00100e7c:
          up_write(zte_listener_array + lVar6);
          kfree(puVar7);
          uVar5 = uVar10 + 1;
          if (0x1e < uVar10) {
            return 0;
          }
        }
        uVar9 = 0xfffffff4;
      }
      else {
        uVar9 = 0;
      }
      uVar5 = 0;
      do {
        uVar1 = (uint)(-1L << (uVar5 & 0x3f)) & *param_2;
        if (uVar1 == 0) {
          return uVar9;
        }
        uVar5 = ((ulong)uVar1 & 0xaaaaaaaaaaaaaaaa) >> 1 | ((ulong)uVar1 & 0x5555555555555555) << 1;
        uVar5 = (uVar5 & 0xcccccccccccccccc) >> 2 | (uVar5 & 0x3333333333333333) << 2;
        uVar5 = (uVar5 & 0xf0f0f0f0f0f0f0f0) >> 4 | (uVar5 & 0xf0f0f0f0f0f0f0f) << 4;
        uVar5 = (uVar5 & 0xff00ff00ff00ff00) >> 8 | (uVar5 & 0xff00ff00ff00ff) << 8;
        uVar10 = LZCOUNT((uVar5 >> 0x10 | (uVar5 & 0xffff0000ffff) << 0x10) << 0x20);
        lVar6 = *(long *)(&__per_cpu_offset + uVar10 * 8);
        down_write(zte_listener_array + lVar6);
        puVar7 = *(undefined8 **)(zte_listener_array + lVar6 + 0x40);
        do {
          puVar4 = puVar7;
          if (puVar4 == (undefined8 *)(zte_listener_array + lVar6 + 0x40)) goto LAB_00100fb8;
          puVar7 = (undefined8 *)*puVar4;
        } while (*(int *)(puVar4 + 2) != param_1);
        puVar8 = (undefined8 *)puVar4[1];
        if (((undefined8 *)*puVar8 == puVar4) && ((undefined8 *)puVar7[1] == puVar4)) {
          puVar7[1] = puVar8;
          *puVar8 = puVar7;
        }
        else {
          __list_del_entry_valid_or_report();
          puVar4 = extraout_x9;
        }
        *puVar4 = 0xdead000000000100;
        puVar4[1] = 0xdead000000000122;
        kfree();
LAB_00100fb8:
        up_write(zte_listener_array + lVar6);
        uVar5 = uVar10 + 1;
        if (0x1e < uVar10) {
          return uVar9;
        }
      } while( true );
    }
  }
  return 0xffffffea;
}

