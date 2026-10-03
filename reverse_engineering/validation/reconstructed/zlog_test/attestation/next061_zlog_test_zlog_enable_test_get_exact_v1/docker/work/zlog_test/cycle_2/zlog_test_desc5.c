#include "zlog_test.h"
extern struct zlog_client_ops ops;
struct zlog_mod_info test_dev_5 = { .module_no = 1, .client_name = "test_dev_5", .device_name = "CHG_DET", .ic_name = "wt6670", .module_name = "wt", .ops = &ops };
