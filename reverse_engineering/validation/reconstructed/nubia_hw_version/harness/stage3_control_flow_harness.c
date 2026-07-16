#include <errno.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define ARRAY_SIZE(array) (sizeof(array) / sizeof((array)[0]))
#define EPROBE_DEFER 517
#define NUBIA_VERSION_LEN 12

typedef uint8_t u8;
typedef long ssize_t;

struct nubia_hw_gpio_info {
	void *pinctrl;
	void *pull_up;
	void *pull_down;
};

struct platform_device {
	void *of_node;
	struct nubia_hw_gpio_info *drvdata;
};

enum gpio_slot {
	PCB_GPIO1,
	PCB_GPIO2,
	PCB_GPIO3,
	RF_GPIO1,
	RF_GPIO2,
	GPIO_SLOT_COUNT,
};

struct probe_config {
	int named_gpio[GPIO_SLOT_COUNT];
	int request_ret[GPIO_SLOT_COUNT];
	int raw_first[GPIO_SLOT_COUNT];
	int raw_second[GPIO_SLOT_COUNT];
	int gpio_ctrl_ret;
	int gpio_ctrl1_ret;
};

static struct nubia_hw_gpio_info allocated_info;
static bool alloc_fails;
static void *configured_pinctrl;
static void *configured_pull_up;
static void *configured_pull_down;
static int configured_select_ret;
static int pinctrl_put_calls;
static int kfree_calls;
static int select_calls;
static int drvdata_set_calls;

static struct probe_config probe_config;
static int named_gpio_calls[GPIO_SLOT_COUNT];
static int gpio_request_calls[GPIO_SLOT_COUNT];
static int direction_calls;
static int raw_calls;
static int sleep_calls;
static int gpio_ctrl_calls;
static int gpio_ctrl1_calls;
static int pcb_gpio3;
static u8 nubia_pcb_gpio1_v;
static u8 nubia_pcb_gpio2_v;
static u8 nubia_pcb_gpio3_v;
static u8 nubia_rf_gpio1_v;
static u8 nubia_rf_gpio2_v;

static const char *pcb_version_result;
static int platform_register_calls;
static int sysfs_create_ret;
static int sysfs_create_calls;
static int sysfs_remove_calls;
static int kobject_put_calls;
static bool kobject_create_fails;
static void *hw_version_kobj;

static void *err_ptr(int error)
{
	return (void *)(intptr_t)error;
}

static bool is_err_or_null(const void *pointer)
{
	intptr_t value = (intptr_t)pointer;

	return !pointer || (value < 0 && value >= -4095);
}

static int ptr_err(const void *pointer)
{
	return (int)(intptr_t)pointer;
}

static void *mock_devm_kzalloc(void)
{
	if (alloc_fails)
		return NULL;
	memset(&allocated_info, 0, sizeof(allocated_info));
	return &allocated_info;
}

static void *mock_devm_pinctrl_get(void)
{
	return configured_pinctrl;
}

static void *mock_pinctrl_lookup_state(const char *name)
{
	if (strcmp(name, "pull_up_default") == 0)
		return configured_pull_up;
	return configured_pull_down;
}

static int mock_pinctrl_select_state(void *pinctrl, void *state)
{
	(void)pinctrl;
	(void)state;
	select_calls++;
	return configured_select_ret;
}

static void mock_devm_pinctrl_put(void *pinctrl)
{
	(void)pinctrl;
	pinctrl_put_calls++;
}

static void mock_devm_kfree(void *pointer)
{
	(void)pointer;
	kfree_calls++;
}

static int nubia_gpio_ctrl1_model(struct platform_device *pdev)
{
	struct nubia_hw_gpio_info *info = pdev->drvdata;

	if (!info)
		return -EINVAL;
	if (!info->pull_down)
		return -EINVAL;
	return mock_pinctrl_select_state(info->pinctrl, info->pull_down);
}

static int nubia_gpio_ctrl_model(struct platform_device *pdev)
{
	struct nubia_hw_gpio_info *info;
	int ret;

	info = mock_devm_kzalloc();
	if (!info)
		return -ENOMEM;

	info->pinctrl = mock_devm_pinctrl_get();
	if (is_err_or_null(info->pinctrl)) {
		ret = ptr_err(info->pinctrl);
		goto err_free;
	}

	info->pull_up = mock_pinctrl_lookup_state("pull_up_default");
	if (is_err_or_null(info->pull_up)) {
		ret = ptr_err(info->pull_up);
		goto err_put;
	}

	info->pull_down = mock_pinctrl_lookup_state("pull_down_default");
	if (is_err_or_null(info->pull_down)) {
		ret = ptr_err(info->pull_down);
		goto err_put;
	}

	ret = mock_pinctrl_select_state(info->pinctrl, info->pull_up);
	(void)ret;
	pdev->drvdata = info;
	drvdata_set_calls++;
	return 0;

err_put:
	mock_devm_pinctrl_put(info->pinctrl);
err_free:
	mock_devm_kfree(info);
	return ret;
}

static int slot_for_gpio(int gpio)
{
	size_t index;

	for (index = 0; index < GPIO_SLOT_COUNT; index++) {
		if (probe_config.named_gpio[index] == gpio)
			return (int)index;
	}
	return PCB_GPIO2;
}

static void *mock_gpio_to_desc(int gpio)
{
	return (void *)(intptr_t)(gpio + 1);
}

static void mock_gpiod_direction_input(void *desc)
{
	(void)desc;
	direction_calls++;
}

static void mock_msleep(int milliseconds)
{
	(void)milliseconds;
	sleep_calls++;
}

static int mock_gpiod_get_raw_value(int gpio, bool second_phase)
{
	int slot = slot_for_gpio(gpio);

	raw_calls++;
	return second_phase ? probe_config.raw_second[slot] :
		probe_config.raw_first[slot];
}

static int nubia_get_gpio_status_model(int gpio)
{
	void *desc;

	desc = mock_gpio_to_desc(gpio);
	mock_gpiod_direction_input(desc);
	mock_msleep(1);
	(void)mock_gpio_to_desc(gpio);
	return mock_gpiod_get_raw_value(gpio, true);
}

static int mock_of_get_named_gpio(enum gpio_slot slot)
{
	named_gpio_calls[slot]++;
	return probe_config.named_gpio[slot];
}

static int mock_gpio_request(enum gpio_slot slot)
{
	gpio_request_calls[slot]++;
	return probe_config.request_ret[slot];
}

static int mock_nubia_gpio_ctrl(void)
{
	gpio_ctrl_calls++;
	return probe_config.gpio_ctrl_ret;
}

static int mock_nubia_gpio_ctrl1(void)
{
	gpio_ctrl1_calls++;
	return probe_config.gpio_ctrl1_ret;
}

static int nubia_hw_ver_probe_model(struct platform_device *pdev)
{
	int pcb_gpio1;
	int pcb_gpio2 = 0;
	int pcb_gpio3_value;
	int gpio;
	int rf_gpio1;
	int rf_gpio2;
	u8 raw_value;

	pcb_gpio1 = mock_of_get_named_gpio(PCB_GPIO1);
	if (pcb_gpio1 < 0)
		return -EPROBE_DEFER;
	(void)mock_gpio_request(PCB_GPIO1);

	gpio = mock_of_get_named_gpio(PCB_GPIO2);
	if (gpio < 0)
		goto pcb_gpio2_missing;

	pcb_gpio2 = gpio;
	(void)mock_gpio_request(PCB_GPIO2);

	pcb_gpio3 = mock_of_get_named_gpio(PCB_GPIO3);
	if (pcb_gpio3 >= 0)
		(void)mock_gpio_request(PCB_GPIO3);
	goto pcb_gpio2_ready;

pcb_gpio2_missing:
	pcb_gpio2 = 0;

pcb_gpio2_ready:
	rf_gpio1 = mock_of_get_named_gpio(RF_GPIO1);
	if (rf_gpio1 < 0)
		return -EPROBE_DEFER;
	rf_gpio2 = mock_of_get_named_gpio(RF_GPIO2);
	if (rf_gpio2 < 0)
		return -EPROBE_DEFER;

	(void)mock_gpio_request(RF_GPIO1);
	(void)mock_gpio_request(RF_GPIO2);

	if (mock_nubia_gpio_ctrl())
		return -ENODEV;

	mock_gpiod_direction_input(mock_gpio_to_desc(pcb_gpio1));
	mock_msleep(1);
	raw_value = (u8)mock_gpiod_get_raw_value(pcb_gpio1, false);
	nubia_pcb_gpio1_v = raw_value;

	mock_gpiod_direction_input(mock_gpio_to_desc(pcb_gpio2));
	mock_msleep(1);
	raw_value = (u8)mock_gpiod_get_raw_value(pcb_gpio2, false);
	nubia_pcb_gpio2_v = raw_value;

	pcb_gpio3_value = pcb_gpio3;
	mock_gpiod_direction_input(mock_gpio_to_desc(pcb_gpio3_value));
	mock_msleep(1);
	raw_value = (u8)mock_gpiod_get_raw_value(pcb_gpio3_value, false);
	nubia_pcb_gpio3_v = raw_value;

	mock_gpiod_direction_input(mock_gpio_to_desc(rf_gpio1));
	mock_msleep(1);
	raw_value = (u8)mock_gpiod_get_raw_value(rf_gpio1, false);
	nubia_rf_gpio1_v = raw_value;

	mock_gpiod_direction_input(mock_gpio_to_desc(rf_gpio2));
	mock_msleep(1);
	raw_value = (u8)mock_gpiod_get_raw_value(rf_gpio2, false);
	nubia_rf_gpio2_v = raw_value;

	mock_msleep(20);
	if (mock_nubia_gpio_ctrl1())
		return -ENODEV;

	nubia_pcb_gpio1_v += (u8)nubia_get_gpio_status_model(pcb_gpio1);
	nubia_pcb_gpio2_v += (u8)nubia_get_gpio_status_model(pcb_gpio2);
	nubia_pcb_gpio3_v += (u8)nubia_get_gpio_status_model(pcb_gpio3);
	nubia_rf_gpio1_v += (u8)nubia_get_gpio_status_model(rf_gpio1);
	nubia_rf_gpio2_v += (u8)nubia_get_gpio_status_model(rf_gpio2);
	(void)pdev;
	return 0;
}

static void nubia_hw_ver_remove_model(struct platform_device *pdev)
{
	struct nubia_hw_gpio_info *info = pdev->drvdata;

	if (info && info->pinctrl)
		mock_devm_pinctrl_put(info->pinctrl);
	mock_devm_kfree(info);
}

static void mock_nubia_get_hw_pcb_version(char *result)
{
	strcpy(result, pcb_version_result);
}

static ssize_t nubia_hw_pcb_version_show_model(char *buf)
{
	if (!buf)
		return 0;
	mock_nubia_get_hw_pcb_version(buf);
	return (ssize_t)strlen(buf);
}

static int nubia_hw_version_init_model(void)
{
	platform_register_calls++;
	if (kobject_create_fails) {
		hw_version_kobj = NULL;
		return -ENOMEM;
	}
	hw_version_kobj = (void *)(intptr_t)0x1234;
	sysfs_create_calls++;
	return sysfs_create_ret;
}

static void nubia_hw_version_exit_model(void)
{
	sysfs_remove_calls++;
	kobject_put_calls++;
}

#define REQUIRE(condition) do {                                         \
	if (!(condition)) {                                                \
		fprintf(stderr, "assertion failed at %s:%d: %s\n",          \
			__FILE__, __LINE__, #condition);                        \
		return false;                                                \
	}                                                                  \
} while (0)

static void reset_state(void)
{
	size_t index;

	memset(&allocated_info, 0, sizeof(allocated_info));
	alloc_fails = false;
	configured_pinctrl = (void *)(intptr_t)0x1000;
	configured_pull_up = (void *)(intptr_t)0x2000;
	configured_pull_down = (void *)(intptr_t)0x3000;
	configured_select_ret = 0;
	pinctrl_put_calls = 0;
	kfree_calls = 0;
	select_calls = 0;
	drvdata_set_calls = 0;
	memset(&probe_config, 0, sizeof(probe_config));
	for (index = 0; index < GPIO_SLOT_COUNT; index++)
		probe_config.named_gpio[index] = 10 + (int)index;
	memset(named_gpio_calls, 0, sizeof(named_gpio_calls));
	memset(gpio_request_calls, 0, sizeof(gpio_request_calls));
	direction_calls = 0;
	raw_calls = 0;
	sleep_calls = 0;
	gpio_ctrl_calls = 0;
	gpio_ctrl1_calls = 0;
	pcb_gpio3 = 0;
	nubia_pcb_gpio1_v = 0;
	nubia_pcb_gpio2_v = 0;
	nubia_pcb_gpio3_v = 0;
	nubia_rf_gpio1_v = 0;
	nubia_rf_gpio2_v = 0;
	pcb_version_result = "MB_A";
	platform_register_calls = 0;
	sysfs_create_ret = 0;
	sysfs_create_calls = 0;
	sysfs_remove_calls = 0;
	kobject_put_calls = 0;
	kobject_create_fails = false;
	hw_version_kobj = NULL;
}

static bool test_ctrl1_no_info(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	REQUIRE(nubia_gpio_ctrl1_model(&pdev) == -EINVAL);
	REQUIRE(select_calls == 0);
	return true;
}

static bool test_ctrl1_no_pull_down(void)
{
	struct nubia_hw_gpio_info info = { .pinctrl = configured_pinctrl };
	struct platform_device pdev = { .drvdata = &info };

	reset_state();
	REQUIRE(nubia_gpio_ctrl1_model(&pdev) == -EINVAL);
	REQUIRE(select_calls == 0);
	return true;
}

static bool test_ctrl1_select_result(void)
{
	struct nubia_hw_gpio_info info;
	struct platform_device pdev;

	reset_state();
	info.pinctrl = configured_pinctrl;
	info.pull_up = configured_pull_up;
	info.pull_down = configured_pull_down;
	pdev.of_node = NULL;
	pdev.drvdata = &info;
	configured_select_ret = -EIO;
	REQUIRE(nubia_gpio_ctrl1_model(&pdev) == -EIO);
	REQUIRE(select_calls == 1);
	return true;
}

static bool test_ctrl_alloc_failure(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	alloc_fails = true;
	REQUIRE(nubia_gpio_ctrl_model(&pdev) == -ENOMEM);
	REQUIRE(kfree_calls == 0);
	return true;
}

static bool test_ctrl_pinctrl_failure(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	configured_pinctrl = err_ptr(-ENODEV);
	REQUIRE(nubia_gpio_ctrl_model(&pdev) == -ENODEV);
	REQUIRE(pinctrl_put_calls == 0);
	REQUIRE(kfree_calls == 1);
	return true;
}

static bool test_ctrl_pull_up_failure(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	configured_pull_up = err_ptr(-ENOENT);
	REQUIRE(nubia_gpio_ctrl_model(&pdev) == -ENOENT);
	REQUIRE(pinctrl_put_calls == 1);
	REQUIRE(kfree_calls == 1);
	return true;
}

static bool test_ctrl_pull_down_failure(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	configured_pull_down = err_ptr(-EINVAL);
	REQUIRE(nubia_gpio_ctrl_model(&pdev) == -EINVAL);
	REQUIRE(pinctrl_put_calls == 1);
	REQUIRE(kfree_calls == 1);
	return true;
}

static bool test_ctrl_select_failure_nonfatal(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	configured_select_ret = -EIO;
	REQUIRE(nubia_gpio_ctrl_model(&pdev) == 0);
	REQUIRE(select_calls == 1);
	REQUIRE(drvdata_set_calls == 1);
	REQUIRE(pdev.drvdata == &allocated_info);
	return true;
}

static bool test_gpio_status_sequence(void)
{
	reset_state();
	probe_config.raw_second[PCB_GPIO1] = 7;
	REQUIRE(nubia_get_gpio_status_model(
		probe_config.named_gpio[PCB_GPIO1]) == 7);
	REQUIRE(direction_calls == 1);
	REQUIRE(raw_calls == 1);
	REQUIRE(sleep_calls == 1);
	return true;
}

static bool test_pcb_show_null(void)
{
	reset_state();
	REQUIRE(nubia_hw_pcb_version_show_model(NULL) == 0);
	return true;
}

static bool test_pcb_show_value(void)
{
	char buffer[NUBIA_VERSION_LEN] = { 0 };

	reset_state();
	pcb_version_result = "MB_E1";
	REQUIRE(nubia_hw_pcb_version_show_model(buffer) == 5);
	REQUIRE(strcmp(buffer, "MB_E1") == 0);
	return true;
}

static bool test_probe_pcb1_missing(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	probe_config.named_gpio[PCB_GPIO1] = -ENOENT;
	REQUIRE(nubia_hw_ver_probe_model(&pdev) == -EPROBE_DEFER);
	REQUIRE(named_gpio_calls[PCB_GPIO2] == 0);
	return true;
}

static bool test_probe_pcb2_missing_skips_pcb3(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	probe_config.named_gpio[PCB_GPIO2] = -ENOENT;
	REQUIRE(nubia_hw_ver_probe_model(&pdev) == 0);
	REQUIRE(named_gpio_calls[PCB_GPIO3] == 0);
	REQUIRE(gpio_request_calls[PCB_GPIO3] == 0);
	return true;
}

static bool test_probe_rf1_missing(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	probe_config.named_gpio[RF_GPIO1] = -ENOENT;
	REQUIRE(nubia_hw_ver_probe_model(&pdev) == -EPROBE_DEFER);
	REQUIRE(named_gpio_calls[RF_GPIO2] == 0);
	return true;
}

static bool test_probe_rf2_missing(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	probe_config.named_gpio[RF_GPIO2] = -ENOENT;
	REQUIRE(nubia_hw_ver_probe_model(&pdev) == -EPROBE_DEFER);
	REQUIRE(gpio_ctrl_calls == 0);
	return true;
}

static bool test_probe_ctrl_failure(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	probe_config.gpio_ctrl_ret = -EIO;
	REQUIRE(nubia_hw_ver_probe_model(&pdev) == -ENODEV);
	REQUIRE(raw_calls == 0);
	return true;
}

static bool test_probe_ctrl1_failure(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	probe_config.gpio_ctrl1_ret = -EIO;
	REQUIRE(nubia_hw_ver_probe_model(&pdev) == -ENODEV);
	REQUIRE(raw_calls == GPIO_SLOT_COUNT);
	return true;
}

static bool test_probe_success_accumulates(void)
{
	struct platform_device pdev = { 0 };
	size_t index;

	reset_state();
	for (index = 0; index < GPIO_SLOT_COUNT; index++) {
		probe_config.raw_first[index] = (int)index + 1;
		probe_config.raw_second[index] = (int)index + 2;
	}
	REQUIRE(nubia_hw_ver_probe_model(&pdev) == 0);
	REQUIRE(nubia_pcb_gpio1_v == 3);
	REQUIRE(nubia_pcb_gpio2_v == 5);
	REQUIRE(nubia_pcb_gpio3_v == 7);
	REQUIRE(nubia_rf_gpio1_v == 9);
	REQUIRE(nubia_rf_gpio2_v == 11);
	REQUIRE(direction_calls == 10);
	REQUIRE(raw_calls == 10);
	REQUIRE(gpio_ctrl_calls == 1);
	REQUIRE(gpio_ctrl1_calls == 1);
	return true;
}

static bool test_remove_with_info(void)
{
	struct nubia_hw_gpio_info info;
	struct platform_device pdev;

	reset_state();
	info.pinctrl = configured_pinctrl;
	info.pull_up = configured_pull_up;
	info.pull_down = configured_pull_down;
	pdev.of_node = NULL;
	pdev.drvdata = &info;
	nubia_hw_ver_remove_model(&pdev);
	REQUIRE(pinctrl_put_calls == 1);
	REQUIRE(kfree_calls == 1);
	return true;
}

static bool test_remove_without_info(void)
{
	struct platform_device pdev = { 0 };

	reset_state();
	nubia_hw_ver_remove_model(&pdev);
	REQUIRE(pinctrl_put_calls == 0);
	REQUIRE(kfree_calls == 1);
	return true;
}

static bool test_init_no_kobject(void)
{
	reset_state();
	kobject_create_fails = true;
	REQUIRE(nubia_hw_version_init_model() == -ENOMEM);
	REQUIRE(platform_register_calls == 1);
	REQUIRE(sysfs_create_calls == 0);
	return true;
}

static bool test_init_sysfs_error(void)
{
	reset_state();
	sysfs_create_ret = -EIO;
	REQUIRE(nubia_hw_version_init_model() == -EIO);
	REQUIRE(platform_register_calls == 1);
	REQUIRE(sysfs_create_calls == 1);
	return true;
}

static bool test_init_success(void)
{
	reset_state();
	REQUIRE(nubia_hw_version_init_model() == 0);
	REQUIRE(platform_register_calls == 1);
	REQUIRE(sysfs_create_calls == 1);
	REQUIRE(hw_version_kobj != NULL);
	return true;
}

static bool test_exit_cleanup(void)
{
	reset_state();
	nubia_hw_version_exit_model();
	REQUIRE(sysfs_remove_calls == 1);
	REQUIRE(kobject_put_calls == 1);
	return true;
}

struct test_case {
	const char *name;
	bool (*run)(void);
};

int main(void)
{
	static const struct test_case tests[] = {
		{ "ctrl1_no_info", test_ctrl1_no_info },
		{ "ctrl1_no_pull_down", test_ctrl1_no_pull_down },
		{ "ctrl1_select_result", test_ctrl1_select_result },
		{ "ctrl_alloc_failure", test_ctrl_alloc_failure },
		{ "ctrl_pinctrl_failure", test_ctrl_pinctrl_failure },
		{ "ctrl_pull_up_failure", test_ctrl_pull_up_failure },
		{ "ctrl_pull_down_failure", test_ctrl_pull_down_failure },
		{ "ctrl_select_failure_nonfatal", test_ctrl_select_failure_nonfatal },
		{ "gpio_status_sequence", test_gpio_status_sequence },
		{ "pcb_show_null", test_pcb_show_null },
		{ "pcb_show_value", test_pcb_show_value },
		{ "probe_pcb1_missing", test_probe_pcb1_missing },
		{ "probe_pcb2_missing_skips_pcb3",
		  test_probe_pcb2_missing_skips_pcb3 },
		{ "probe_rf1_missing", test_probe_rf1_missing },
		{ "probe_rf2_missing", test_probe_rf2_missing },
		{ "probe_ctrl_failure", test_probe_ctrl_failure },
		{ "probe_ctrl1_failure", test_probe_ctrl1_failure },
		{ "probe_success_accumulates", test_probe_success_accumulates },
		{ "remove_with_info", test_remove_with_info },
		{ "remove_without_info", test_remove_without_info },
		{ "init_no_kobject", test_init_no_kobject },
		{ "init_sysfs_error", test_init_sysfs_error },
		{ "init_success", test_init_success },
		{ "exit_cleanup", test_exit_cleanup },
	};
	size_t index;

	for (index = 0; index < ARRAY_SIZE(tests); index++) {
		if (!tests[index].run()) {
			printf("FAIL %s\n", tests[index].name);
			return 1;
		}
		printf("PASS %s\n", tests[index].name);
	}
	printf("SUMMARY %zu/%zu\n", index, ARRAY_SIZE(tests));
	return 0;
}
