#include "zlog_test.h"
extern struct zlog_client_ops ops;
struct zlog_mod_info test_dev_4 = { .module_no = 1, .client_name = "test_dev_4", .device_name = "CP", .ic_name = "bq25970", .module_name = "TI", .ops = &ops };
