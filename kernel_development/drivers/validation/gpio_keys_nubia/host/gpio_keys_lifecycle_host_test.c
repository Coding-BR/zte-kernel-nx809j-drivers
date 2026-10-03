#include <stdbool.h>
#include <stdio.h>

struct platform_driver { unsigned int marker; };
struct module { unsigned int marker; };

static struct platform_driver driver = { .marker = 0x1234 };
static struct module owner = { .marker = 0x5678 };
static int register_result;
static unsigned int register_count;
static unsigned int unregister_count;
static struct platform_driver *registered_driver;
static struct module *registered_owner;
static struct platform_driver *unregistered_driver;

static void reset_hooks(void)
{
	register_result = 0;
	register_count = 0;
	unregister_count = 0;
	registered_driver = NULL;
	registered_owner = NULL;
	unregistered_driver = NULL;
}

static int __platform_driver_register(struct platform_driver *drv,
					      struct module *mod)
{
	register_count++;
	registered_driver = drv;
	registered_owner = mod;
	return register_result;
}

static void platform_driver_unregister(struct platform_driver *drv)
{
	unregister_count++;
	unregistered_driver = drv;
}

static int init_module(void)
{
	return __platform_driver_register(&driver, &owner);
}

static void cleanup_module(void)
{
	platform_driver_unregister(&driver);
}

#define REQUIRE(condition) do { \
	if (!(condition)) { \
		fprintf(stderr, "assertion failed at %s:%d: %s\n", \
			__FILE__, __LINE__, #condition); \
		return false; \
	} \
} while (0)

static bool test_init_registers_driver_and_owner(void)
{
	reset_hooks();
	REQUIRE(init_module() == 0);
	REQUIRE(register_count == 1);
	REQUIRE(registered_driver == &driver && registered_owner == &owner);
	return true;
}

static bool test_init_propagates_registration_failure(void)
{
	reset_hooks();
	register_result = -19;
	REQUIRE(init_module() == -19);
	REQUIRE(register_count == 1);
	REQUIRE(registered_driver == &driver && registered_owner == &owner);
	return true;
}

static bool test_cleanup_unregisters_exact_driver(void)
{
	reset_hooks();
	cleanup_module();
	REQUIRE(unregister_count == 1 && unregistered_driver == &driver);
	REQUIRE(register_count == 0);
	return true;
}

static bool test_cleanup_is_direct_and_repeatable(void)
{
	reset_hooks();
	cleanup_module();
	cleanup_module();
	REQUIRE(unregister_count == 2 && unregistered_driver == &driver);
	return true;
}

int main(void)
{
	if (!test_init_registers_driver_and_owner() ||
	    !test_init_propagates_registration_failure() ||
	    !test_cleanup_unregisters_exact_driver() ||
	    !test_cleanup_is_direct_and_repeatable())
		return 1;

	puts("PASS gpio_keys lifecycle host tests (4 scenarios)");
	return 0;
}
