
uint zte_power_supply_get_battery_info(long param_1,long param_2)

{
  long lVar1;
  uint uVar2;
  uint uVar3;
  ulong uVar4;
  ulong uVar5;
  code *pcVar6;
  int iVar7;
  uint uVar8;
  undefined8 uVar9;
  long lVar10;
  long lVar11;
  ulong uVar12;
  undefined8 *puVar13;
  ulong uVar14;
  ulong uVar15;
  uint local_c4;
  char *local_c0;
  ulong local_b8;
  undefined8 uStack_b0;
  undefined8 local_a8;
  undefined8 uStack_a0;
  undefined8 local_98;
  undefined8 uStack_90;
  undefined8 local_88;
  undefined8 uStack_80;
  undefined8 local_78;
  undefined8 uStack_70;
  long local_68;
  
  lVar10 = sp_el0;
  local_68 = *(long *)(lVar10 + 0x710);
  *(undefined4 *)(param_2 + 0x5c) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x1b8) = 0;
  *(undefined8 *)(param_2 + 0x178) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x180) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x188) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 400) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 4) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0xc) = 0xffffffeaffffffea;
  *(undefined4 *)(param_2 + 0x18) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x20) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x2c) = 0xffffffeaffffffea;
  *(undefined4 *)(param_2 + 0x54) = 0xffffffea;
  puVar13 = (undefined8 *)(param_2 + 200);
  *puVar13 = 0;
  *(undefined4 *)(param_2 + 0x168) = 0xffffffea;
  *(undefined8 *)(param_2 + 0xd0) = 0;
  *(undefined8 *)(param_2 + 0x60) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x16c) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0xd8) = 0;
  *(undefined8 *)(param_2 + 0xe0) = 0;
  *(undefined4 *)(param_2 + 0x174) = 0xffffffea;
  *(undefined8 *)(param_2 + 0xe8) = 0;
  *(undefined4 *)(param_2 + 0x68) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x6c) = 0xffffffea;
  *(undefined8 *)(param_2 + 0xf0) = 0;
  *(undefined8 *)(param_2 + 0x70) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0xf8) = 0;
  *(undefined8 *)(param_2 + 0x100) = 0;
  *(undefined8 *)(param_2 + 0x78) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x108) = 0;
  *(undefined8 *)(param_2 + 0x110) = 0;
  *(undefined8 *)(param_2 + 0x80) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x118) = 0;
  *(undefined8 *)(param_2 + 0x120) = 0;
  *(undefined8 *)(param_2 + 0x128) = 0;
  *(undefined4 *)(param_2 + 0x88) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x8c) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x198) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x130) = 0;
  *(undefined4 *)(param_2 + 0x19c) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x138) = 0;
  *(undefined4 *)(param_2 + 0x90) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x94) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x1a0) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x140) = 0;
  *(undefined4 *)(param_2 + 0x1a4) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x148) = 0;
  *(undefined4 *)(param_2 + 0x98) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x9c) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x1a8) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x150) = 0;
  *(undefined4 *)(param_2 + 0x1ac) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x158) = 0;
  *(undefined4 *)(param_2 + 0xa0) = 0xffffffea;
  *(undefined4 *)(param_2 + 0xa4) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x1b0) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x160) = 0;
  *(undefined4 *)(param_2 + 0xa8) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x1b4) = 0xffffffea;
  local_c0 = (char *)0x0;
  local_c4 = 0;
  if (*(long *)(param_1 + 0x28) == 0) {
    _dev_warn(param_1 + 0x38,"%s currently only supports devicetree\n",
              "zte_power_supply_get_battery_info");
    uVar8 = 0xfffffffa;
  }
  else {
    local_78 = 0;
    uStack_70 = 0;
    local_88 = 0;
    uStack_80 = 0;
    local_98 = 0;
    uStack_90 = 0;
    local_a8 = 0;
    uStack_a0 = 0;
    local_b8 = 0;
    uStack_b0 = 0;
    iVar7 = __of_parse_phandle_with_args
                      (*(long *)(param_1 + 0x28),"monitored-battery",0,0,0,&local_b8);
    uVar5 = local_b8;
    uVar8 = 0xffffffed;
    if (((iVar7 == 0) && (local_b8 != 0)) &&
       (uVar8 = of_property_read_string(local_b8,"compatible",&local_c0), uVar8 == 0)) {
      iVar7 = strcmp("simple-battery",local_c0);
      if (iVar7 == 0) {
        of_property_read_variable_u32_array
                  (uVar5,"energy-full-design-microwatt-hours",(undefined8 *)(param_2 + 4),1,0);
        of_property_read_variable_u32_array
                  (uVar5,"charge-full-design-microamp-hours",param_2 + 8,1,0);
        of_property_read_variable_u32_array
                  (uVar5,"voltage-min-design-microvolt",(undefined8 *)(param_2 + 0xc),1,0);
        of_property_read_variable_u32_array(uVar5,"voltage-max-design-microvolt",param_2 + 0x10,1,0)
        ;
        of_property_read_variable_u32_array
                  (uVar5,"precharge-current-microamp",(undefined4 *)(param_2 + 0x18),1,0);
        of_property_read_variable_u32_array
                  (uVar5,"charge-term-current-microamp",(undefined4 *)(param_2 + 0x20),1,0);
        of_property_read_variable_u32_array
                  (uVar5,"constant-charge-current-max-microamp",(undefined8 *)(param_2 + 0x2c),1,0);
        of_property_read_variable_u32_array
                  (uVar5,"constant-charge-voltage-max-microvolt",param_2 + 0x30,1,0);
        of_property_read_variable_u32_array
                  (uVar5,"factory-internal-resistance-micro-ohms",(undefined4 *)(param_2 + 0x54),1,0
                  );
        local_c4 = of_property_count_elems_of_size(uVar5,"ocv-capacity-celsius",4);
        if ((-1 < (int)local_c4) || (uVar8 = local_c4, local_c4 == 0xffffffea)) {
          if ((int)local_c4 < 0x15) {
            if (0 < (int)local_c4) {
              uVar15 = (ulong)local_c4;
              of_property_read_variable_u32_array
                        (uVar5,"ocv-capacity-celsius",(undefined4 *)(param_2 + 0x5c),uVar15,0);
              uVar14 = 0;
              do {
                local_b8 = local_b8 & 0xffffffff00000000;
                uVar9 = kasprintf(0xcc0,"ocv-capacity-table-%d",uVar14 & 0xffffffff);
                lVar10 = of_get_property(uVar5,uVar9,&local_b8);
                if ((lVar10 == 0) || ((uint)local_b8 == 0)) {
                  _dev_err(param_1 + 0x38,"failed to get %s\n",uVar9);
                  kfree(uVar9);
                  lVar10 = 0;
                  do {
                    if (*(long *)((long)puVar13 + lVar10) != 0) {
                      devm_kfree(param_1 + 0x38);
                    }
                    lVar10 = lVar10 + 8;
                  } while (lVar10 != 0xa0);
                  uVar8 = 0xffffffea;
                  lVar10 = *(long *)(param_2 + 0x1b8);
joined_r0x00101db4:
                  if (lVar10 != 0) {
                    devm_kfree(param_1 + 0x38);
                  }
                  goto LAB_00101c4c;
                }
                kfree(uVar9);
                if (uVar14 == 0x14) {
                    /* WARNING: Does not return */
                  pcVar6 = (code *)SoftwareBreakpoint(0x5512,0x101e30);
                  (*pcVar6)();
                }
                uVar2 = (uint)local_b8;
                uVar8 = (int)(uint)local_b8 >> 3;
                *(uint *)(param_2 + 0x168 + uVar14 * 4) = uVar8;
                if ((int)uVar8 < 0) {
                  puVar13[uVar14] = 0;
LAB_00101dc0:
                  lVar10 = 0;
                  do {
                    if (*(long *)((long)puVar13 + lVar10) != 0) {
                      devm_kfree(param_1 + 0x38);
                    }
                    lVar10 = lVar10 + 8;
                  } while (lVar10 != 0xa0);
                  uVar8 = 0xfffffff4;
                  lVar10 = *(long *)(param_2 + 0x1b8);
                  goto joined_r0x00101db4;
                }
                uVar4 = (ulong)uVar8 << 3;
                lVar11 = devm_kmalloc(param_1 + 0x38,uVar4,0xdc0);
                puVar13[uVar14] = lVar11;
                if (lVar11 == 0) goto LAB_00101dc0;
                if (7 < uVar2) {
                  uVar12 = 0;
                  if (uVar8 < 2) {
                    uVar8 = 1;
                  }
                  do {
                    if (uVar4 <= uVar12) goto LAB_00101e08;
                    uVar2 = *(uint *)(lVar10 + uVar12);
                    uVar2 = (uVar2 & 0xff00ff00) >> 8 | (uVar2 & 0xff00ff) << 8;
                    *(uint *)(lVar11 + uVar12) = uVar2 >> 0x10 | uVar2 << 0x10;
                    if (uVar4 < uVar12 + 4) goto LAB_00101e08;
                    uVar2 = ((uint *)(lVar10 + uVar12))[1];
                    lVar1 = lVar11 + uVar12;
                    uVar12 = uVar12 + 8;
                    uVar2 = (uVar2 & 0xff00ff00) >> 8 | (uVar2 & 0xff00ff) << 8;
                    *(uint *)(lVar1 + 4) = uVar2 >> 0x10 | uVar2 << 0x10;
                  } while ((ulong)uVar8 << 3 != uVar12);
                }
                uVar14 = uVar14 + 1;
              } while (uVar14 < uVar15);
            }
            lVar10 = of_get_property(uVar5,"resistance-temp-table",&local_c4);
            uVar8 = 0;
            if ((lVar10 != 0) && (local_c4 != 0)) {
              uVar8 = (int)local_c4 >> 3;
              *(uint *)(param_2 + 0x1c0) = uVar8;
              if ((int)uVar8 < 0) {
                *(undefined8 *)(param_2 + 0x1b8) = 0;
              }
              else {
                uVar5 = (ulong)uVar8 << 3;
                lVar11 = devm_kmalloc(param_1 + 0x38,uVar5,0xdc0);
                *(long *)(param_2 + 0x1b8) = lVar11;
                if (lVar11 != 0) {
                  uVar2 = *(uint *)(param_2 + 0x1c0);
                  if ((int)uVar2 < 1) {
                    uVar8 = 0;
                  }
                  else {
                    uVar14 = 0;
                    do {
                      if (uVar5 <= uVar14) {
LAB_00101e08:
                    /* WARNING: Does not return */
                        pcVar6 = (code *)SoftwareBreakpoint(1,0x101e0c);
                        (*pcVar6)();
                      }
                      uVar8 = *(uint *)(lVar10 + uVar14);
                      uVar8 = (uVar8 & 0xff00ff00) >> 8 | (uVar8 & 0xff00ff) << 8;
                      *(uint *)(lVar11 + uVar14) = uVar8 >> 0x10 | uVar8 << 0x10;
                      if (uVar5 < uVar14 + 4) goto LAB_00101e08;
                      uVar3 = ((uint *)(lVar10 + uVar14))[1];
                      lVar1 = lVar11 + uVar14;
                      uVar14 = uVar14 + 8;
                      uVar8 = 0;
                      uVar3 = (uVar3 & 0xff00ff00) >> 8 | (uVar3 & 0xff00ff) << 8;
                      *(uint *)(lVar1 + 4) = uVar3 >> 0x10 | uVar3 << 0x10;
                    } while ((ulong)uVar2 * 8 - uVar14 != 0);
                  }
                  goto LAB_00101c4c;
                }
              }
              zte_power_supply_put_battery_info(param_1,param_2);
              uVar8 = 0xfffffff4;
            }
          }
          else {
            _dev_err(param_1 + 0x38,"Too many temperature values\n");
            uVar8 = 0xffffffea;
          }
        }
      }
      else {
        uVar8 = 0xffffffed;
      }
    }
  }
LAB_00101c4c:
  lVar10 = sp_el0;
  if (*(long *)(lVar10 + 0x710) == local_68) {
    return uVar8;
  }
                    /* WARNING: Subroutine does not return */
  __stack_chk_fail();
}

