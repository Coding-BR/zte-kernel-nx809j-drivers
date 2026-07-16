// SPDX-License-Identifier: GPL-2.0-only
/* Platform, pinctrl, regulator and GPIO helpers for fp_goodix. */

#include "fp_goodix_internal.h"

int zte_goodix_pinctrl_init(struct gf_dev *gf_dev)
{
	const char *error;
	void **failed_state;
	int ret;

	pr_info("%s: enter\n", __func__);

	gf_dev->pinctrl = devm_pinctrl_get(&gf_dev->pdev->dev);
	if (IS_ERR_OR_NULL(gf_dev->pinctrl)) {
		error = "Target does not use pinctrl\n";
		failed_state = (void **)&gf_dev->pinctrl;
		goto err_pinctrl;
	}

	gf_dev->pins_active = pinctrl_lookup_state(gf_dev->pinctrl, "goodix_active");
	if (IS_ERR_OR_NULL(gf_dev->pins_active)) {
		error = "Can not get goodix_active pinstate\n";
		failed_state = (void **)&gf_dev->pins_active;
		goto err_pinctrl;
	}

	gf_dev->pins_suspend = pinctrl_lookup_state(gf_dev->pinctrl, "goodix_suspend");
	if (IS_ERR_OR_NULL(gf_dev->pins_suspend)) {
		error = "Can not get goodix_suspend pinstate\n";
		failed_state = (void **)&gf_dev->pins_suspend;
		goto err_pinctrl;
	}

	return 0;

err_pinctrl:
	dev_err(&gf_dev->pdev->dev, error);
	ret = PTR_ERR(*failed_state);
	gf_dev->pinctrl = NULL;
	return ret;
}

int zte_goodix_pinctrl_select(struct gf_dev *gf_dev, bool active)
{
	struct pinctrl_state *state;
	const char *error;
	int ret;

	pr_info("%s: enter, state=%d\n", __func__, active);
	state = active ? gf_dev->pins_active : gf_dev->pins_suspend;
	ret = -EINVAL;
	if (IS_ERR_OR_NULL(state)) {
		error = "not a valid '%s' pinstate\n";
		goto err_select;
	}

	ret = pinctrl_select_state(gf_dev->pinctrl, state);
	if (ret) {
		error = "can not set %s pins\n";
		goto err_select;
	}

	return 0;

err_select:
	dev_err(&gf_dev->pdev->dev, error,
		active ? "goodix_active" : "goodix_suspend");
	return ret;
}

int gf_parse_dts(struct gf_dev *gf_dev)
{
	struct platform_device *pdev = gf_dev->pdev;
	struct device_node *np = pdev->dev.of_node;
	int ret;

	ret = zte_goodix_pinctrl_init(gf_dev);
	if (!ret && gf_dev->pinctrl)
		goto parse_pinctrl;

	pr_err("%s: failed to init pinctrl, rc=%d\n", __func__, ret);
err_parse:
	pr_err("%s: gf_dev-gf_parse_dts. failed to parse dt, rc=%d\n",
		__func__, ret);
	return ret;

parse_pinctrl:
	ret = zte_goodix_pinctrl_select(gf_dev, false);
	if (ret < 0) {
		pr_err("%s: Failed to select pin to suspend state.\n", __func__);
		goto err_parse;
	}
	pr_info("%s, gf_dev-gf_parse_dts. set reset gpio suspend state\n",
		__func__);
	usleep_range(10000, 10100);

	gf_dev->vdd_reg = devm_regulator_get(&pdev->dev, "vdd");
	if (IS_ERR(gf_dev->vdd_reg)) {
		pr_err("%s: failed to get vdd regulator!\n", __func__);
		ret = PTR_ERR(gf_dev->vdd_reg);
		goto err_parse;
	}

	ret = regulator_enable(gf_dev->vdd_reg);
	if (ret) {
		pr_err("%s, gf_dev-gf_parse_dts. failed to enable vdd regulator\n",
			__func__);
		if (gf_dev->zlog_client) {
			zlog_client_record(gf_dev->zlog_client,
					   "Failed to request goodixfp pwr gpio\n");
			zlog_client_notify(gf_dev->zlog_client, 0x102);
		}
		goto err_pwr;
	}

	gf_dev->reset_gpio = of_get_named_gpio(np, "fp-gpio-reset", 0);
	if (gf_dev->reset_gpio < 0) {
		pr_err("%s: falied to get reset gpio!\n", __func__);
		ret = -1;
		goto err_pwr;
	}
	pr_info("gf_dev->reset_gpio, gpio = %d\n", gf_dev->reset_gpio);

	ret = devm_gpio_request(&pdev->dev, gf_dev->reset_gpio,
				"goodix_reset");
	if (ret) {
		pr_err("%s: failed to request reset gpio, rc = %d\n",
			__func__, ret);
		if (gf_dev->zlog_client) {
			zlog_client_record(gf_dev->zlog_client,
					   "Failed to request goodixfp rst gpio\n");
			zlog_client_notify(gf_dev->zlog_client, 0x101);
			barrier();
		}
		goto err_pwr;
	}
	pr_info("gf_dev->reset_gpio, gpio = %d\n", gf_dev->reset_gpio);

	gf_dev->irq_gpio = of_get_named_gpio(np, "fp-gpio-irq", 0);
	if (gf_dev->irq_gpio < 0) {
		pr_err("%s: falied to get irq gpio!\n", __func__);
		ret = -1;
		goto err_reset;
	}
	pr_info("gf_dev->irq_gpio, gpio = %d\n", gf_dev->irq_gpio);

	ret = devm_gpio_request(&pdev->dev, gf_dev->irq_gpio,
				"goodix_irq");
	if (ret) {
		pr_err("%s: failed to request irq gpio, rc = %d\n",
			__func__, ret);
		if (gf_dev->zlog_client) {
			zlog_client_record(gf_dev->zlog_client,
					   "Failed to request goodixfp irq gpio\n");
			zlog_client_notify(gf_dev->zlog_client, 0x100);
		}
		goto err_reset;
	}

	gpio_direction_input(gf_dev->irq_gpio);
	pr_info("%s: end, gf_dev-gf_parse_dts. rc=%d\n", __func__, ret);
	return ret;

err_reset:
	pr_err("%s: gf_dev-gf_parse_dts. err_reset\n", __func__);
err_pwr:
	pr_err("%s: gf_dev-gf_parse_dts. err_pwr\n", __func__);
	goto err_parse;
}

void gf_cleanup(struct gf_dev *gf_dev)
{
	pr_info("[info] %s gf_dev\n", __func__);

	if (gpio_is_valid(gf_dev->irq_gpio)) {
		gpio_free(gf_dev->irq_gpio);
		pr_info("gf_dev-gf_cleanup. remove irq_gpio success\n");
	}

	if (gpio_is_valid(gf_dev->reset_gpio)) {
		gpio_free(gf_dev->reset_gpio);
		pr_info("gf_dev-gf_cleanup. remove reset_gpio success\n");
	}

	if (!IS_ERR(gf_dev->vdd_reg)) {
		if (regulator_is_enabled(gf_dev->vdd_reg)) {
			regulator_disable(gf_dev->vdd_reg);
			pr_info("gf_dev-gf_cleanup. remove vdd success\n");
		} else {
			pr_warn("gf_dev-gf_cleanup vdd regulator already disabled\n");
		}
	}
}

int gf_power_on(struct gf_dev *gf_dev)
{
	int ret;

	if (!gf_dev || IS_ERR(gf_dev->vdd_reg)) {
		pr_err("Invalid device or vdd regulator\n");
		return -ENODEV;
	}

	pr_info("gf_dev-gf_power_on. enabling vdd\n");
	if (regulator_is_enabled(gf_dev->vdd_reg)) {
		pr_info("gf_dev-gf_power_on. vdd has regulatored\n");
		return 0;
	}

	ret = regulator_enable(gf_dev->vdd_reg);
	if (ret)
		pr_err("gf_dev-gf_power_on. failed to enable vdd regulator, rc=%d\n",
			ret);
	return ret;
}

int gf_power_off(struct gf_dev *gf_dev)
{
	int ret;

	if (!gf_dev || IS_ERR(gf_dev->vdd_reg)) {
		pr_err("Invalid device or vdd regulator\n");
		return -ENODEV;
	}

	pr_info("gf_dev-gf_power_off. disabling vdd\n");
	if (!regulator_is_enabled(gf_dev->vdd_reg)) {
		pr_warn("gf_dev-gf_power_off. vdd regulator already disabled\n");
		return 0;
	}

	ret = regulator_disable(gf_dev->vdd_reg);
	if (ret)
		pr_err("gf_dev-gf_power_off. failed to disable vdd regulator, rc=%d\n",
			ret);
	return ret;
}

int gf_hw_reset(struct gf_dev *gf_dev, unsigned int delay_ms)
{
	if (!gf_dev) {
		pr_err("Input buff is NULL.\n");
		return -ENODEV;
	}

	if (!gpio_is_valid(gf_dev->reset_gpio)) {
		pr_err("reset_gpio is invalid");
		return 0;
	}

	pr_info("do reset");
	gpiod_set_raw_value(gpio_to_desc(gf_dev->reset_gpio), 0);
	usleep_range(10000, 10100);
	gpiod_set_raw_value(gpio_to_desc(gf_dev->reset_gpio), 1);

	mdelay(delay_ms);
	return 0;
}

int gf_irq_num(struct gf_dev *gf_dev)
{
	struct gpio_desc *irq_desc;

	if (!gf_dev) {
		pr_err("Input buff is NULL.\n");
		return -ENODEV;
	}

	irq_desc = gpio_to_desc(gf_dev->irq_gpio);
	return gpiod_to_irq(irq_desc);
}
