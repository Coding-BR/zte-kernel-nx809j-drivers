#!/usr/bin/env python3
import subprocess
import sys
import time
import os
import glob

# Mappings of driver files and module names
# Format: (file_prefix, custom_module_name, stock_module_name)
DRIVERS = [
    ("zte_ir", "zte_ir", "comp_zte_ir_ko"),
    ("zte_led", "zte_led", "comp_zte_led_ko"),
    ("zte_misc", "zte_misc", "comp_zte_misc_ko"),
    ("zte_fingerprint", "zte_fingerprint", "comp_zte_fingerprint_ko"),
    ("zte_stats_info", "zte_stats_info", "comp_zte_stats_info_ko"),
    ("zte_imem_info", "zte_imem_info", "comp_zte_imem_info_ko"),
    ("zte_sensor_sensitivity", "zte_sensor_sensitivity", "comp_zte_sensor_sensitivity_ko"),
    ("zte_ramdisk_reboot", "zte_ramdisk_reboot", "comp_zte_ramdisk_reboot_ko"),
    ("zte_reboot_ext", "zte_reboot_ext", "comp_zte_reboot_ext_ko"),
    ("zte_power_supply", "zte_power_supply", "comp_zte_power_supply_ko"),
    ("zte_charger_policy", "zte_charger_policy", "comp_zte_charger_policy_ko"),
    ("zte_tpd", "zte_tpd", "comp_zte_tpd_ko"),
]

# Find the latest build folder dynamically
artifacts_dir = "artifacts"
build_folders = sorted(glob.glob(os.path.join(artifacts_dir, "2026*")), reverse=True)
IMG = None
for folder in build_folders:
    candidate = os.path.join(folder, "dev_reverse_nodtb_stockcmd.img")
    if os.path.exists(candidate):
        IMG = candidate
        print(f"Using dynamically discovered boot image: {IMG}")
        break

if not IMG:
    print("ERROR: No dev_reverse_nodtb_stockcmd.img found in any build folder in artifacts/")
    sys.exit(1)

# Check if all compiled modules exist
build_folder = os.path.dirname(IMG)
missing_modules = []
for prefix, _, _ in DRIVERS:
    ko_path = os.path.join(build_folder, f"{prefix}.ko")
    if not os.path.exists(ko_path):
        missing_modules.append(f"{prefix}.ko")

if missing_modules:
    print(f"ERROR: Missing compiled modules in build folder: {missing_modules}")
    sys.exit(1)

print("[1/4] Waiting for fastboot device...")
for _ in range(60):
    r = subprocess.run(["fastboot", "devices"], capture_output=True, text=True)
    if r.stdout.strip():
        print(f"  => {r.stdout.strip()}")
        break
    time.sleep(0.5)
else:
    print("ERROR: No fastboot device found after 30s")
    sys.exit(1)

print(f"[2/4] Booting {IMG} ...")
r = subprocess.run(["fastboot", "boot", IMG], capture_output=True, text=True)
print(r.stdout.strip())
if r.returncode != 0:
    print(f"ERROR: fastboot boot failed: {r.stderr}")
    sys.exit(1)

print("[3/4] Waiting for ADB device...")
for _ in range(120):
    r = subprocess.run(["adb", "devices"], capture_output=True, text=True)
    lines = [l for l in r.stdout.splitlines() if "device" in l and not "List" in l]
    if lines:
        print(f"  => {lines[0]}")
        break
    time.sleep(0.5)
else:
    print("ERROR: ADB device not found after 60s")
    sys.exit(1)

print("[4/4] Starting fast multi-driver deployment and validation...")
time.sleep(2)

# Verify kernel
r = subprocess.run(["adb", "shell", "cat", "/proc/version"], capture_output=True)
kernel_ver = r.stdout.decode('utf-8', errors='replace').strip()
print(f"\nRunning Kernel: {kernel_ver}")
if "curator" not in kernel_ver:
    print("ERROR: The active kernel is not our curator custom kernel!")
    sys.exit(1)

results = {}

for prefix, custom_name, stock_name in DRIVERS:
    ko_local = os.path.join(build_folder, f"{prefix}.ko")
    ko_remote = f"/data/local/tmp/{prefix}_custom.ko"
    
    print(f"\n--- Testing Driver: {custom_name} ---")
    
    # 1. Push module
    r_push = subprocess.run(["adb", "push", ko_local, ko_remote], capture_output=True)
    print(f"  Push status: {r_push.stdout.decode('utf-8').strip()}")
    
    # 2. Rmmod stock modules (ignore errors if not loaded)
    subprocess.run(["adb", "shell", f"su root rmmod {stock_name}"], capture_output=True)
    subprocess.run(["adb", "shell", f"su root rmmod {custom_name}"], capture_output=True)
    
    # 3. Insmod custom module
    r_insmod = subprocess.run(["adb", "shell", f"su root insmod {ko_remote}"], capture_output=True)
    err = r_insmod.stderr.decode('utf-8', errors='replace').strip()
    
    # 4. Check status
    r_lsmod = subprocess.run(["adb", "shell", "su root lsmod"], capture_output=True)
    lsmod_out = r_lsmod.stdout.decode('utf-8', errors='replace')
    loaded = custom_name in lsmod_out
    
    if loaded:
        print("  Status: Loaded successfully!")
        results[custom_name] = ("SUCCESS", "Loaded successfully")
    else:
        print(f"  Status: FAILED! Error: {err}")
        results[custom_name] = ("FAILED", err)

# Generate markdown report
report_path = os.path.join(build_folder, "validacao_drivers_completa.md")
print(f"\nWriting complete validation report to {report_path} ...")

with open(report_path, "w", encoding="utf-8") as f:
    f.write("# Relatório Completo de Validação dos Drivers ZTE\n\n")
    f.write(f"**Data de Execução:** {time.strftime('%Y-%m-%d %H:%M:%S')}\n")
    f.write(f"**Kernel Base:** `{kernel_ver}`\n\n")
    f.write("## Status da Carga Dinâmica dos Módulos\n\n")
    f.write("| Driver | Status | Detalhes / Erro |\n")
    f.write("|---|---|---|\n")
    for name, (status, detail) in results.items():
        icon = "✅ SUCESSO" if status == "SUCCESS" else "❌ FALHA"
        f.write(f"| `{name}` | {icon} | {detail} |\n")

print("\nValidation pipeline finished!")
