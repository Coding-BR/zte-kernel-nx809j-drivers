# SPDX-License-Identifier: GPL-2.0-only
obj-m += zte_power_supply.o
zte_power_supply-objs := zte_power_supply_core.o zte_power_supply_get_battery_info_exact.o

# Compile the preserved C source as the module core while the difficult target
# function is supplied by the mechanically lifted AArch64 island.
CFLAGS_zte_power_supply_core.o += -DZTE_POWER_SUPPLY_EXACT_ISLAND
$(obj)/zte_power_supply_core.o: $(src)/zte_power_supply.c
	$(call if_changed_dep,cc_o_c)
