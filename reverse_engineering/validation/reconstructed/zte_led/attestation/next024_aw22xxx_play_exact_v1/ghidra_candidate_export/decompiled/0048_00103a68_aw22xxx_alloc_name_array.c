
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined8 aw22xxx_alloc_name_array(void)

{
  uint uVar1;
  long lVar2;
  undefined8 *puVar3;
  undefined8 uVar4;
  long lVar5;
  ulong uVar6;
  
  _printk(&DAT_001095b8,"aw22xxx_alloc_name_array");
  aw22xxx_cfg_name = (undefined8 *)__kmalloc_cache_noprof(___kmalloc_cache_noprof,0xcc0,0x58);
  if (aw22xxx_cfg_name == (undefined8 *)0x0) {
LAB_00103b54:
    uVar4 = 0xfffffff4;
  }
  else {
    lVar5 = 0;
    uVar4 = sp_el0;
    do {
      lVar2 = __kmalloc_cache_noprof(_strlen,0xcc0,0x40);
      puVar3 = aw22xxx_cfg_name;
      aw22xxx_cfg_name[lVar5] = lVar2;
      if (lVar2 == 0) {
        if ((int)lVar5 != 0) {
          uVar6 = lVar5 + 1;
          do {
            kfree(aw22xxx_cfg_name[(int)uVar6 - 2]);
            uVar1 = (int)uVar6 - 1;
            uVar6 = (ulong)uVar1;
            puVar3 = aw22xxx_cfg_name;
          } while (1 < (int)uVar1);
        }
        kfree(puVar3);
        aw22xxx_cfg_name = (undefined8 *)0x0;
        goto LAB_00103b54;
      }
      lVar5 = lVar5 + 1;
    } while (lVar5 != 0xb);
    builtin_strncpy((char *)*puVar3,"m_led_off.bin",0xe);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[1],"fan_led_on.bin",0xf);
    builtin_strncpy((char *)puVar3[2],"fan_led_off.bin",0x10);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[3],"touch_led_off.bin",0x12);
    builtin_strncpy((char *)puVar3[4],"lamps_init.bin",0xf);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[5],"nubia_all_rgb_red.bin",0x16);
    builtin_strncpy((char *)puVar3[6],"nubia_all_rgb_green.bin",0x18);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[7],"nubia_all_rgb_blue.bin",0x17);
    builtin_strncpy((char *)puVar3[8],"nubia_all_rgb_red.bin",0x16);
    puVar3 = aw22xxx_cfg_name;
    builtin_strncpy((char *)aw22xxx_cfg_name[9],"nubia_all_rgb_green.bin",0x18);
    builtin_strncpy((char *)puVar3[10],"nubia_all_rgb_blue.bin",0x17);
    _printk(&DAT_001084bc,"aw22xxx_alloc_name_array");
    uVar4 = 0;
  }
  return uVar4;
}

