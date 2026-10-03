#include "zlog_test.h"
extern struct zlog_client_ops ops;
struct zlog_mod_info test_dev_2 = { .module_no = 1, .client_name = "test_dev_2", .device_name = "CHGING", .ic_name = "mt6360", .module_name = "mtk", .ops = &ops };
