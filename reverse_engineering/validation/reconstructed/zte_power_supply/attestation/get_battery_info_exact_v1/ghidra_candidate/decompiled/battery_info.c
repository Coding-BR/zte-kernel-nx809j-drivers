
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
  long lVar9;
  long lVar10;
  ulong uVar11;
  undefined8 *puVar12;
  ulong uVar13;
  ulong uVar14;
  uint local_c4;
  char *local_c0;
  ulong local_b8 [11];
  
  lVar9 = sp_el0;
  local_b8[10] = *(long *)(lVar9 + 0x710);
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
  puVar12 = (undefined8 *)(param_2 + 200);
  *puVar12 = 0;
  *(undefined4 *)(param_2 + 0x168) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x60) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0xd0) = 0;
  *(undefined8 *)(param_2 + 0x16c) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0xd8) = 0;
  *(undefined4 *)(param_2 + 0x68) = 0xffffffea;
  *(undefined8 *)(param_2 + 0xe0) = 0;
  *(undefined4 *)(param_2 + 0x174) = 0xffffffea;
  *(undefined8 *)(param_2 + 0xe8) = 0;
  *(undefined8 *)(param_2 + 0xf0) = 0;
  *(undefined8 *)(param_2 + 0x6c) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x74) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0xf8) = 0;
  *(undefined8 *)(param_2 + 0x100) = 0;
  *(undefined8 *)(param_2 + 0x108) = 0;
  *(undefined8 *)(param_2 + 0x110) = 0;
  *(undefined8 *)(param_2 + 0x7c) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x84) = 0xffffffeaffffffea;
  *(undefined8 *)(param_2 + 0x118) = 0;
  *(undefined8 *)(param_2 + 0x120) = 0;
  *(undefined8 *)(param_2 + 0x128) = 0;
  *(undefined4 *)(param_2 + 0x198) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x8c) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x90) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x130) = 0;
  *(undefined4 *)(param_2 + 0x19c) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x138) = 0;
  *(undefined4 *)(param_2 + 0x1a0) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x94) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x98) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x140) = 0;
  *(undefined4 *)(param_2 + 0x1a4) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x148) = 0;
  *(undefined4 *)(param_2 + 0x1a8) = 0xffffffea;
  *(undefined4 *)(param_2 + 0x9c) = 0xffffffea;
  *(undefined4 *)(param_2 + 0xa0) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x150) = 0;
  *(undefined4 *)(param_2 + 0x1ac) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x158) = 0;
  *(undefined4 *)(param_2 + 0x1b0) = 0xffffffea;
  *(undefined4 *)(param_2 + 0xa4) = 0xffffffea;
  *(undefined4 *)(param_2 + 0xa8) = 0xffffffea;
  *(undefined8 *)(param_2 + 0x160) = 0;
  *(undefined4 *)(param_2 + 0x1b4) = 0xffffffea;
  local_c0 = (char *)0x0;
  local_c4 = 0;
  if (*(long *)(param_1 + 0x28) == 0) {
    _dev_warn(param_1 + 0x38,"%s currently only supports devicetree\n",
              "zte_power_supply_get_battery_info");
    uVar8 = 0xfffffffa;
  }
  else {
    local_b8[8] = 0;
    local_b8[9] = 0;
    local_b8[6] = 0;
    local_b8[7] = 0;
    local_b8[4] = 0;
    local_b8[5] = 0;
    local_b8[2] = 0;
    local_b8[3] = 0;
    local_b8[0] = 0;
    local_b8[1] = 0;
    iVar7 = __of_parse_phandle_with_args
                      (*(long *)(param_1 + 0x28),"monitored-battery",0,0,0,local_b8);
    uVar5 = local_b8[0];
    uVar8 = 0xffffffed;
    if ((iVar7 == 0) && (local_b8[0] != 0)) {
      uVar8 = of_property_read_string(local_b8[0],"compatible",&local_c0);
      if (uVar8 == 0) {
        iVar7 = strcmp("simple-battery",local_c0);
        if (iVar7 == 0) {
          of_property_read_variable_u32_array
                    (uVar5,"energy-full-design-microwatt-hours",(undefined8 *)(param_2 + 4),1,0);
          of_property_read_variable_u32_array
                    (uVar5,"charge-full-design-microamp-hours",param_2 + 8,1,0);
          of_property_read_variable_u32_array
                    (uVar5,"voltage-min-design-microvolt",(undefined8 *)(param_2 + 0xc),1,0);
          of_property_read_variable_u32_array
                    (uVar5,"voltage-max-design-microvolt",param_2 + 0x10,1,0);
          of_property_read_variable_u32_array
                    (uVar5,"precharge-current-microamp",(undefined4 *)(param_2 + 0x18),1,0);
          of_property_read_variable_u32_array
                    (uVar5,"charge-term-current-microamp",(undefined4 *)(param_2 + 0x20),1,0);
          of_property_read_variable_u32_array
                    (uVar5,"constant-charge-current-max-microamp",(undefined8 *)(param_2 + 0x2c),1,0
                    );
          of_property_read_variable_u32_array
                    (uVar5,"constant-charge-voltage-max-microvolt",param_2 + 0x30,1,0);
          of_property_read_variable_u32_array
                    (uVar5,"factory-internal-resistance-micro-ohms",(undefined4 *)(param_2 + 0x54),1
                     ,0);
          local_c4 = of_property_count_elems_of_size(uVar5,"ocv-capacity-celsius",4);
          if ((-1 < (int)local_c4) || (uVar8 = local_c4, local_c4 == 0xffffffea)) {
            if ((int)local_c4 < 0x15) {
              if (0 < (int)local_c4) {
                uVar14 = (ulong)local_c4;
                of_property_read_variable_u32_array
                          (uVar5,"ocv-capacity-celsius",(undefined4 *)(param_2 + 0x5c),uVar14,0);
                uVar13 = 0;
                do {
                  local_b8[0] = local_b8[0] & 0xffffffff00000000;
                  lVar9 = kasprintf(0xcc0,"ocv-capacity-table-%d",uVar13 & 0xffffffff);
                  if (lVar9 == 0) {
                    if (0x13 < (uint)uVar13) {
LAB_00102954:
                    /* WARNING: Does not return */
                      pcVar6 = (code *)SoftwareBreakpoint(0x5512,0x102958);
                      (*pcVar6)();
                    }
LAB_0010295c:
                    puVar12[uVar13 & 0xffffffff] = 0;
LAB_00102960:
                    lVar9 = 0;
                    do {
                      if (*(long *)((long)puVar12 + lVar9) != 0) {
                        devm_kfree(param_1 + 0x38);
                      }
                      lVar9 = lVar9 + 8;
                    } while (lVar9 != 0xa0);
                    uVar8 = 0xfffffff4;
LAB_00102990:
                    if (*(long *)(param_2 + 0x1b8) != 0) {
                      devm_kfree(param_1 + 0x38);
                    }
                    goto LAB_0010285c;
                  }
                  lVar10 = of_get_property(uVar5,lVar9,local_b8);
                  if ((lVar10 == 0) || ((uint)local_b8[0] == 0)) {
                    _dev_err(param_1 + 0x38,"failed to get %s\n",lVar9);
                    kfree(lVar9);
                    lVar9 = 0;
                    uVar8 = 0xffffffea;
                    do {
                      if (*(long *)((long)puVar12 + lVar9) != 0) {
                        devm_kfree(param_1 + 0x38);
                      }
                      lVar9 = lVar9 + 8;
                    } while (lVar9 != 0xa0);
                    goto LAB_00102990;
                  }
                  kfree(lVar9);
                  if (uVar13 == 0x14) goto LAB_00102954;
                  uVar2 = (uint)local_b8[0];
                  uVar8 = (int)(uint)local_b8[0] >> 3;
                  *(uint *)(param_2 + 0x168 + uVar13 * 4) = uVar8;
                  if ((int)uVar8 < 0) {
                    puVar12[uVar13] = 0;
                    goto LAB_0010295c;
                  }
                  uVar4 = (ulong)uVar8 << 3;
                  lVar9 = devm_kmalloc(param_1 + 0x38,uVar4,0xdc0);
                  puVar12[uVar13] = lVar9;
                  if (lVar9 == 0) goto LAB_00102960;
                  if (7 < uVar2) {
                    uVar11 = 0;
                    if (uVar8 < 2) {
                      uVar8 = 1;
                    }
                    do {
                      if (uVar4 <= uVar11) goto LAB_00102a20;
                      uVar2 = *(uint *)(lVar10 + uVar11);
                      uVar2 = (uVar2 & 0xff00ff00) >> 8 | (uVar2 & 0xff00ff) << 8;
                      *(uint *)(lVar9 + uVar11) = uVar2 >> 0x10 | uVar2 << 0x10;
                      if (uVar4 < uVar11 + 4) goto LAB_00102a20;
                      uVar2 = ((uint *)(lVar10 + uVar11))[1];
                      lVar1 = lVar9 + uVar11;
                      uVar11 = uVar11 + 8;
                      uVar2 = (uVar2 & 0xff00ff00) >> 8 | (uVar2 & 0xff00ff) << 8;
                      *(uint *)(lVar1 + 4) = uVar2 >> 0x10 | uVar2 << 0x10;
                    } while ((ulong)uVar8 << 3 != uVar11);
                  }
                  uVar13 = uVar13 + 1;
                } while (uVar13 < uVar14);
              }
              lVar9 = of_get_property(uVar5,"resistance-temp-table",&local_c4);
              uVar8 = 0;
              if ((lVar9 != 0) && (local_c4 != 0)) {
                uVar8 = (int)local_c4 >> 3;
                *(uint *)(param_2 + 0x1c0) = uVar8;
                if ((int)uVar8 < 0) {
                  *(undefined8 *)(param_2 + 0x1b8) = 0;
                }
                else {
                  uVar5 = (ulong)uVar8 << 3;
                  lVar10 = devm_kmalloc(param_1 + 0x38,uVar5,0xdc0);
                  *(long *)(param_2 + 0x1b8) = lVar10;
                  if (lVar10 != 0) {
                    uVar2 = *(uint *)(param_2 + 0x1c0);
                    if ((int)uVar2 < 1) {
                      uVar8 = 0;
                    }
                    else {
                      uVar13 = 0;
                      do {
                        if (uVar5 <= uVar13) {
LAB_00102a20:
                    /* WARNING: Does not return */
                          pcVar6 = (code *)SoftwareBreakpoint(1,0x102a24);
                          (*pcVar6)();
                        }
                        uVar8 = *(uint *)(lVar9 + uVar13);
                        uVar8 = (uVar8 & 0xff00ff00) >> 8 | (uVar8 & 0xff00ff) << 8;
                        *(uint *)(lVar10 + uVar13) = uVar8 >> 0x10 | uVar8 << 0x10;
                        if (uVar5 < uVar13 + 4) goto LAB_00102a20;
                        uVar3 = ((uint *)(lVar9 + uVar13))[1];
                        lVar1 = lVar10 + uVar13;
                        uVar13 = uVar13 + 8;
                        uVar8 = 0;
                        uVar3 = (uVar3 & 0xff00ff00) >> 8 | (uVar3 & 0xff00ff) << 8;
                        *(uint *)(lVar1 + 4) = uVar3 >> 0x10 | uVar3 << 0x10;
                      } while ((ulong)uVar2 * 8 - uVar13 != 0);
                    }
                    goto LAB_0010285c;
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
  }
LAB_0010285c:
  lVar9 = sp_el0;
  if (*(long *)(lVar9 + 0x710) != local_b8[10]) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return uVar8;
}

