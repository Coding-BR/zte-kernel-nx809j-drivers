int get_tp_chip_id(void)
{
	struct tp_ic_vendor_item *item = &tp_ic_vendor_info_l[0];
	char *cdev = (char *)(unsigned long)tpd_cdev;
	const char *panel_name = "Unknown_lcd";

	printk("\0015tpd: %s:\n", "get_tp_chip_id");
	cdev[0x446] = (char)0xff;
	printk("\0015tpd: %s: panel name %s.\n", "get_tp_chip_id", panel_name);

	if (!strnstr(panel_name, item->keyword, 11)) {
		item = &tp_ic_vendor_info_l[1];
		if (!strnstr(panel_name, item->keyword, 11)) {
			item = &tp_ic_vendor_info_l[2];
			if (!strnstr(panel_name, item->keyword, 11)) {
				item = &tp_ic_vendor_info_l[3];
				if (!strnstr(panel_name, item->keyword, 11)) {
					item = &tp_ic_vendor_info_l[4];
					if (!strnstr(panel_name, item->keyword, 11)) {
						item = &tp_ic_vendor_info_l[5];
						if (!strnstr(panel_name, item->keyword, 11)) {
							item = &tp_ic_vendor_info_l[6];
							if (!strnstr(panel_name, item->keyword, 11)) {
								item = &tp_ic_vendor_info_l[7];
								if (!strnstr(panel_name, item->keyword, 11)) {
									item = &tp_ic_vendor_info_l[8];
									if (!strnstr(panel_name, item->keyword, 11)) {
										item = &tp_ic_vendor_info_l[9];
										if (!strnstr(panel_name, item->keyword, 11)) {
											item = &tp_ic_vendor_info_l[10];
											if (!strnstr(panel_name, item->keyword, 11))
												return -EIO;
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

	cdev[0x446] = item->id;
	printk("\0015tpd: %s: tp_chip_id is 0x%02x.\n",
	       "get_tp_chip_id", item->id);
	return 0;
}
