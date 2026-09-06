/*
 * Analysis-only model for module_init/module_exit wrappers.
 *
 * The production source uses module_init() and module_exit() macros, while
 * the stock ELF exports init_module and cleanup_module.  These wrappers are
 * kept separate from production code and are used only by function-scoped
 * Joern structural gates.
 */
extern int SENSORS_SENS_LOG_LEVEL;
extern int _printk(const char *format, ...);
extern int sensors_sensitivity_register(void);
extern void sensors_sensitivity_unregister(void);

int init_module(void)
{
	if (1 < SENSORS_SENS_LOG_LEVEL)
		_printk("%s [%s]: line %d\n", "NUBIA_SENSORS_SENS",
			"sensors_sensitivity_init", 0x1a8);
	sensors_sensitivity_register();
	return 0;
}

void cleanup_module(void)
{
	sensors_sensitivity_unregister();
}
