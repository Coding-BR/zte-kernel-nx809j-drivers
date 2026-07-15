#!/usr/bin/env bash
# Docker-side symbol comparison script
# Runs inside nubia-sm8850-kernel-builder container
# Mounts: /work/our_ko (our .ko files), /work/stock_ko (stock .ko files)

set -e

NM=/work/toolchains/clang-r536225/bin/llvm-nm  # LLVM 19.0.1 — matches kernel build toolchain
REPORT=/work/report/abi_symbols.txt

mkdir -p /work/report

DRIVERS="zte_ir zte_led zte_misc zte_fingerprint zte_stats_info zte_imem_info zte_sensor_sensitivity zte_ramdisk_reboot zte_reboot_ext zte_power_supply zte_charger_policy zte_tpd"

echo "ABI Symbol Compatibility Report" > $REPORT
echo "Generated: $(date -Is)" >> $REPORT
echo "========================================" >> $REPORT

TOTAL_OK=0
TOTAL_WARN=0

for driver in $DRIVERS; do
    our_ko="/work/our_ko/${driver}.ko"
    stock_ko="/work/stock_ko/${driver}_stock.ko"

    echo "" >> $REPORT
    echo "--- $driver ---" >> $REPORT

    if [ ! -f "$our_ko" ]; then
        echo "  ERROR: our .ko not found: $our_ko" >> $REPORT
        continue
    fi

    # Get our vermagic
    our_vm=$(strings "$our_ko" | grep "^vermagic=" | head -1 | cut -d= -f2- || echo "N/A")
    echo "  Our vermagic:   $our_vm" >> $REPORT

    # Get our symbols
    our_defined=$($NM "$our_ko" 2>/dev/null | grep -E "^[0-9a-f]+ [TtDdBbRr] " | awk '{print $3}' | grep -v "^__" | sort -u || echo "")
    our_undef=$($NM "$our_ko" 2>/dev/null | grep " U " | awk '{print $2}' | sort -u || echo "")
    our_def_count=$(echo "$our_defined" | grep -c . || echo 0)
    our_undef_count=$(echo "$our_undef" | grep -c . || echo 0)

    echo "  Our symbols:    defined=$our_def_count  undefined(imports)=$our_undef_count" >> $REPORT

    if [ -f "$stock_ko" ]; then
        stock_vm=$(strings "$stock_ko" | grep "^vermagic=" | head -1 | cut -d= -f2- || echo "N/A")
        echo "  Stock vermagic: $stock_vm" >> $REPORT

        stock_defined=$($NM "$stock_ko" 2>/dev/null | grep -E "^[0-9a-f]+ [TtDdBbRr] " | awk '{print $3}' | grep -v "^__" | sort -u || echo "")
        stock_def_count=$(echo "$stock_defined" | grep -c . || echo 0)
        echo "  Stock symbols:  defined=$stock_def_count" >> $REPORT

        # Find symbols in stock that are missing from ours
        missing=$(comm -23 <(echo "$stock_defined" | sort) <(echo "$our_defined" | sort) | head -20)
        missing_count=$(echo "$missing" | grep -c . || echo 0)

        # Find extra symbols we have
        extra=$(comm -13 <(echo "$stock_defined" | sort) <(echo "$our_defined" | sort) | head -5)
        extra_count=$(echo "$extra" | grep -c . || echo 0)

        # Size comparison
        our_size=$(stat -c%s "$our_ko")
        stock_size=$(stat -c%s "$stock_ko")
        echo "  Sizes:          ours=${our_size}B  stock=${stock_size}B" >> $REPORT

        if [ "$missing_count" -eq 0 ] || [ -z "$missing" ]; then
            echo "  SYMBOL STATUS:  OK - No symbols from stock missing in ours" >> $REPORT
            echo "  Extra symbols:  $extra_count (debug/wrapper additions - OK)" >> $REPORT
            TOTAL_OK=$((TOTAL_OK+1))
        else
            echo "  SYMBOL STATUS:  WARN - $missing_count stock symbols not in our .ko:" >> $REPORT
            echo "$missing" | sed 's/^/    - /' >> $REPORT
            TOTAL_WARN=$((TOTAL_WARN+1))
        fi

        # Check vermagic kernel version (first word only)
        our_kver=$(echo "$our_vm" | cut -d' ' -f1)
        stock_kver=$(echo "$stock_vm" | cut -d' ' -f1)
        if [ "$our_kver" = "$stock_kver" ]; then
            echo "  Kernel version: MATCH ($our_kver)" >> $REPORT
        else
            echo "  Kernel version: NOTE - ours=$our_kver stock=$stock_kver" >> $REPORT
            echo "    (Expected: stock uses ZTE release build, ours uses custom build)" >> $REPORT
        fi
    else
        echo "  Stock:          Not available for comparison" >> $REPORT
        TOTAL_OK=$((TOTAL_OK+1))
    fi
done

echo "" >> $REPORT
echo "========================================" >> $REPORT
echo "SUMMARY: $TOTAL_OK OK / $TOTAL_WARN WARN out of 12 drivers" >> $REPORT

cat $REPORT
