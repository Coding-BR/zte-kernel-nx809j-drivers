
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void aw22xxx_alloc_name_array(void)

{
  undefined8 uVar1;
  long lVar2;
  undefined8 *puVar3;
  long lVar4;
  
  aw22xxx_cfg_name = (undefined8 *)__kmalloc_cache_noprof(___kmalloc_cache_noprof,0xcc0,0x58);
  if (aw22xxx_cfg_name == (undefined8 *)0x0) {
    _printk(&DAT_0010d087,"aw22xxx_alloc_name_array",0x687);
  }
  else {
    lVar4 = 0;
    uVar1 = sp_el0;
    do {
      lVar2 = __kmalloc_cache_noprof(_snprintf,0xcc0,0x40);
      puVar3 = aw22xxx_cfg_name;
      aw22xxx_cfg_name[lVar4] = lVar2;
      if (lVar2 == 0) {
        if (lVar4 != 0) {
          lVar4 = lVar4 + 1;
          do {
            kfree(aw22xxx_cfg_name[(int)lVar4 - 2]);
            lVar4 = lVar4 + -1;
            puVar3 = aw22xxx_cfg_name;
          } while (1 < lVar4);
        }
        kfree(puVar3);
        _printk(&DAT_0010d087,"aw22xxx_alloc_name_array",0x692);
        return;
      }
      lVar4 = lVar4 + 1;
    } while (lVar4 != 0xb);
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
  }
  return;
}

