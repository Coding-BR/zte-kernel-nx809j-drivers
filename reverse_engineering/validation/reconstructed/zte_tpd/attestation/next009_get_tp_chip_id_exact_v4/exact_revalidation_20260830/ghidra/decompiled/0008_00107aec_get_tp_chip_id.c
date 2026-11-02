
undefined8 get_tp_chip_id(void)

{
  long lVar1;
  long lVar2;
  undefined1 *puVar3;
  
  lVar1 = tpd_cdev;
  _printk(&DAT_00138c7f,"get_tp_chip_id");
  *(undefined1 *)(lVar1 + 0x446) = 0xff;
  _printk(&DAT_0013d7f2,"get_tp_chip_id","Unknown_lcd");
  puVar3 = &tp_ic_vendor_info_l;
  lVar2 = strnstr("Unknown_lcd",PTR_s_synaptics_001003f8,0xb);
  if (lVar2 == 0) {
    puVar3 = &DAT_00100400;
    lVar2 = strnstr("Unknown_lcd",PTR_s_focal_00100408,0xb);
    if (lVar2 == 0) {
      puVar3 = &DAT_00100410;
      lVar2 = strnstr("Unknown_lcd",PTR_s_goodix_00100418,0xb);
      if (lVar2 == 0) {
        puVar3 = &DAT_00100420;
        lVar2 = strnstr("Unknown_lcd",PTR_s_himax_00100428,0xb);
        if (lVar2 == 0) {
          puVar3 = &DAT_00100430;
          lVar2 = strnstr("Unknown_lcd",PTR_s_novatek_00100438,0xb);
          if (lVar2 == 0) {
            puVar3 = &DAT_00100440;
            lVar2 = strnstr("Unknown_lcd",PTR_s_ilitek_00100448,0xb);
            if (lVar2 == 0) {
              puVar3 = &DAT_00100450;
              lVar2 = strnstr("Unknown_lcd",PTR_DAT_00100458,0xb);
              if (lVar2 == 0) {
                puVar3 = &DAT_00100460;
                lVar2 = strnstr("Unknown_lcd",PTR_s_chipone_00100468,0xb);
                if (lVar2 == 0) {
                  puVar3 = &DAT_00100470;
                  lVar2 = strnstr("Unknown_lcd",PTR_s_galaxycore_00100478,0xb);
                  if (lVar2 == 0) {
                    puVar3 = &DAT_00100480;
                    lVar2 = strnstr("Unknown_lcd",PTR_s_omnivision_00100488,0xb);
                    if (lVar2 == 0) {
                      puVar3 = &DAT_00100490;
                      lVar2 = strnstr("Unknown_lcd",PTR_s_Unknown_00100498,0xb);
                      if (lVar2 == 0) {
                        return 0xfffffffb;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  *(undefined1 *)(lVar1 + 0x446) = *puVar3;
  _printk(&DAT_00138004,"get_tp_chip_id");
  return 0;
}

