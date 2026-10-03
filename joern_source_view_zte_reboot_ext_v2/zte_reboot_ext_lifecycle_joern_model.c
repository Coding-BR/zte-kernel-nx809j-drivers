/*
 * Analysis-only model for the compiler-generated module lifecycle wrappers.
 *
 * The stock ELF/Ghidra exports contain these symbols even though the
 * reconstructed source spells them through module_platform_driver().  Keep
 * this model separate from the production source and use it only for the
 * function-scoped Joern structural gate.
 */
struct platform_driver;
struct module;

extern void __platform_driver_register(struct platform_driver *driver,
                                       struct module *owner);
extern void platform_driver_unregister(struct platform_driver *driver);
extern struct platform_driver zte_reboot_ext_driver;
extern struct module __this_module;

void init_module(void)
{
	__platform_driver_register(&zte_reboot_ext_driver, &__this_module);
}

void cleanup_module(void)
{
	platform_driver_unregister(&zte_reboot_ext_driver);
}
