#!/usr/bin/env python3
"""
Validation script for the zte_ir built-in driver.
1. Waits for fastboot device
2. Boots custom kernel image
3. Waits for ADB
4. Immediately captures dmesg, uname, /dev/zte_ir, lsmod, modinfo
"""
import subprocess
import sys
import time
import os
import glob

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

# Locate the compiled module dynamically
KO_FILE = os.path.join(os.path.dirname(IMG), "zte_ir.ko")
if not os.path.exists(KO_FILE):
    print(f"ERROR: Could not find compiled module zte_ir.ko at {KO_FILE}")
    sys.exit(1)

print("[4/4] Capturing kernel info and custom zte_ir state...")
time.sleep(2)

# === STEP A: Check which kernel is running ===
print("\n=== KERNEL VERSION ===")
r = subprocess.run(["adb", "shell", "uname", "-a"], capture_output=True)
stdout = r.stdout.decode('utf-8', errors='replace')
print(stdout.strip())
running_our_kernel = "curator" in stdout  # our kernel build user is curator

if not running_our_kernel:
    print("\nWARNING: Device is NOT running our custom kernel (Stock kernel detected).")
    print("Cannot perform custom module load check due to symbol mismatch on stock kernel.")
    print("==> RETEST NEEDED: Ensure fastboot boot loaded our kernel successfully.")
    sys.exit(1)

# === STEP B: Automated custom driver push and load ===
print(f"\n=== PUSHING AND LOADING CUSTOM MODULE: {KO_FILE} ===")
r_push = subprocess.run(["adb", "push", KO_FILE, "/data/local/tmp/zte_ir_custom.ko"], capture_output=True)
print(r_push.stdout.decode('utf-8', errors='replace').strip())

# Unload stock module
print("Unloading stock zte_ir module...")
subprocess.run(["adb", "shell", "su root rmmod zte_ir"], capture_output=True)

# Load custom module
print("Loading custom zte_ir_custom.ko...")
r_insmod = subprocess.run(["adb", "shell", "su root insmod /data/local/tmp/zte_ir_custom.ko"], capture_output=True)
insmod_err = r_insmod.stderr.decode('utf-8', errors='replace').strip()
if insmod_err:
    print(f"  insmod error: {insmod_err}")

# === STEP C: Check dmesg for zte_ir messages ===
print("\n=== dmesg | zte_ir ===")
r = subprocess.run(["adb", "shell", "dmesg"], capture_output=True, timeout=30)
stdout_dmesg = r.stdout.decode('utf-8', errors='replace')
zte_ir_lines = [l for l in stdout_dmesg.splitlines() if "zte_ir" in l.lower()]
if zte_ir_lines:
    for l in zte_ir_lines:
        print(l)
else:
    print("  (no zte_ir messages in dmesg)")

# === STEP D: Check /dev/zte_ir ===
print("\n=== /dev/zte_ir ===")
r = subprocess.run(["adb", "shell", "ls", "-la", "/dev/zte_ir"], capture_output=True)
stdout_ls = r.stdout.decode('utf-8', errors='replace')
stderr_ls = r.stderr.decode('utf-8', errors='replace')
print(stdout_ls.strip() or stderr_ls.strip())

# === STEP E: lsmod ===
print("\n=== lsmod | zte_ir ===")
r = subprocess.run(["adb", "shell", "lsmod"], capture_output=True)
stdout_lsmod = r.stdout.decode('utf-8', errors='replace')
for l in stdout_lsmod.splitlines():
    if "zte_ir" in l:
        print(l)

# === STEP F: modinfo zte_ir ===
print("\n=== modinfo custom zte_ir ===")
r = subprocess.run(["adb", "shell", "su root modinfo /data/local/tmp/zte_ir_custom.ko"], capture_output=True)
stdout_modinfo = r.stdout.decode('utf-8', errors='replace')
print(stdout_modinfo.strip() or "(modinfo failed)")

# === FINAL VERDICT ===
print("\n" + "="*50)
print("KERNEL: Our custom kernel IS running!")
custom_loaded = any("module loaded successfully" in l for l in zte_ir_lines)
if custom_loaded:
    print("DRIVER: Custom zte_ir driver loaded and initialized successfully!")
    for l in zte_ir_lines:
        if "module loaded successfully" in l:
            print(f"  dmesg: {l}")
    print("==> FULL SUCCESS: Custom kernel + loaded custom driver validated!")
else:
    print("==> FAILED: Custom kernel booted, but custom driver failed to initialize (see dmesg above).")
