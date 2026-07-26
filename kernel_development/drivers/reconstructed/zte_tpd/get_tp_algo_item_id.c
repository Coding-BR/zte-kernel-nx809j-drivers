int get_tp_algo_item_id(char *name)
{
	struct ztp_algo_item *item = &ztp_algo_info_l[0];

#ifdef __aarch64__
	/* The stock implementation keeps each selected keyword live in x20. */
	register const char *keyword __asm__("x20");
#define ZTP_ALGO_SET_KEYWORD(item_) \
	do { \
		keyword = (item_)->keyword; \
		asm volatile("" : "+r"(keyword)); \
	} while (0)
#else
	const char *keyword;
#define ZTP_ALGO_SET_KEYWORD(item_) \
	do { \
		keyword = (item_)->keyword; \
	} while (0)
#endif

	ZTP_ALGO_SET_KEYWORD(item);
	if (!strnstr(name, keyword, strlen(name))) {
		item = &ztp_algo_info_l[1];
		ZTP_ALGO_SET_KEYWORD(item);
		if (!strnstr(name, keyword, strlen(name))) {
			item = &ztp_algo_info_l[2];
			ZTP_ALGO_SET_KEYWORD(item);
			if (!strnstr(name, keyword, strlen(name))) {
				item = &ztp_algo_info_l[3];
				ZTP_ALGO_SET_KEYWORD(item);
				if (!strnstr(name, keyword, strlen(name))) {
					item = &ztp_algo_info_l[4];
					ZTP_ALGO_SET_KEYWORD(item);
					if (!strnstr(name, keyword, strlen(name))) {
						item = &ztp_algo_info_l[5];
						ZTP_ALGO_SET_KEYWORD(item);
						if (!strnstr(name, keyword, strlen(name))) {
							item = &ztp_algo_info_l[6];
							ZTP_ALGO_SET_KEYWORD(item);
							if (!strnstr(name, keyword, strlen(name)))
								return -EIO;
						}
					}
				}
			}
		}
	}

#undef ZTP_ALGO_SET_KEYWORD

	printk("\0015tpd: %s: ztp_algo_item_id:%d.\n",
	       "get_tp_algo_item_id", item->id);
	return item->id;
}
