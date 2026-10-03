# SPDX-License-Identifier: GPL-2.0-only
obj-m += zte_power_supply.o
asflags-y += -fdebug-prefix-map=$(src)=/zte_power_supply
zte_power_supply-objs := zte_power_supply_core.o zte_power_supply_store_property_exact.o zte_power_supply_uevent_exact.o zte_power_supply_attr_is_visible_exact.o zte_power_supply_check_supplies_exact.o zte_power_supply_changed_callback_exact.o zte_power_supply_populate_supplied_from_exact.o zte_power_supply_get_battery_info_exact.o zte_power_supply_match_device_by_name_exact.o zte_power_supply_temp2resist_simple_exact.o zte_power_supply_ocv2cap_simple_exact.o zte_power_supply_batinfo_ocv2cap_exact.o

# Compile the preserved C source as the module core while the difficult target
# function is supplied by the mechanically lifted AArch64 island.
CFLAGS_zte_power_supply_core.o += -DZTE_POWER_SUPPLY_EXACT_ISLAND -DZTE_POWER_SUPPLY_UEVENT_EXACT_ISLAND -DZTE_POWER_SUPPLY_ATTR_VISIBLE_EXACT_ISLAND
AFLAGS_zte_power_supply_populate_supplied_from_exact.o := -g0 -I$(src)
$(obj)/zte_power_supply_core.o: $(src)/zte_power_supply.c
	$(call if_changed_dep,cc_o_c)
