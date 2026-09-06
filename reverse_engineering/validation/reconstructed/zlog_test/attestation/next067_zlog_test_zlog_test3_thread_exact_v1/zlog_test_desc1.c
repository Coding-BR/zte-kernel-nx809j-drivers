#include "zlog_test.h"
extern struct zlog_client_ops ops;
struct zlog_mod_info test_dev_1 = { .module_no = 1, .client_name = "test_dev_1", .device_name = "TP", .ic_name = "Synopsys", .module_name = "Syn2322", .ops = &ops };
