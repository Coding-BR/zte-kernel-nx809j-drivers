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
    candidate = os.path.join(folder, "dev_reverse_perfect.img")
    if os.path.exists(candidate):
        IMG = candidate
        print(f"Using dynamically discovered boot image: {IMG}")
        break

if not IMG:
    print("ERROR: No dev_reverse_perfect.img found in any build folder in artifacts/")
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

print("[4/4] Capturing kernel info and zte_ir state...")
time.sleep(2)

# === STEP A: Check which kernel is running ===
print("\n=== KERNEL VERSION ===")
r = subprocess.run(["adb", "shell", "uname", "-a"], capture_output=True)
stdout = r.stdout.decode('utf-8', errors='replace')
print(stdout.strip())
running_our_kernel = "curator" in stdout  # our kernel build user is curator

# === STEP B: Check dmesg for zte_ir messages ===
print("\n=== dmesg | zte_ir ===")
r = subprocess.run(["adb", "shell", "dmesg"], capture_output=True, timeout=30)
stdout_dmesg = r.stdout.decode('utf-8', errors='replace')
zte_ir_lines = [l for l in stdout_dmesg.splitlines() if "zte_ir" in l.lower()]
if zte_ir_lines:
    for l in zte_ir_lines:
        print(l)
else:
    print("  (no zte_ir messages in dmesg)")

# === STEP C: Check /dev/zte_ir ===
print("\n=== /dev/zte_ir ===")
r = subprocess.run(["adb", "shell", "ls", "-la", "/dev/zte_ir"], capture_output=True)
stdout_ls = r.stdout.decode('utf-8', errors='replace')
stderr_ls = r.stderr.decode('utf-8', errors='replace')
print(stdout_ls.strip() or stderr_ls.strip())

# === STEP D: lsmod ===
print("\n=== lsmod | zte_ir ===")
r = subprocess.run(["adb", "shell", "lsmod"], capture_output=True)
stdout_lsmod = r.stdout.decode('utf-8', errors='replace')
for l in stdout_lsmod.splitlines():
    if "zte_ir" in l:
        print(l)

# === STEP E: modinfo zte_ir ===
print("\n=== modinfo zte_ir ===")
r = subprocess.run(["adb", "shell", "su root modinfo zte_ir"], capture_output=True)
stdout_modinfo = r.stdout.decode('utf-8', errors='replace')
print(stdout_modinfo.strip() or "(modinfo failed)")

# === FINAL VERDICT ===
print("\n" + "="*50)
if running_our_kernel:
    print("KERNEL: Our custom kernel IS running!")
    if zte_ir_lines and any("module loaded successfully" in l for l in zte_ir_lines):
        print(f"DRIVER: Built-in zte_ir_init() executed!")
        for l in zte_ir_lines:
            if "module loaded successfully" in l:
                print(f"  {l}")
        print("==> FULL SUCCESS: custom kernel + built-in zte_ir driver validated!")
    else:
        print("==> PARTIAL: Our kernel running. /dev/zte_ir check above for confirmation.")
else:
    print("KERNEL: Stock kernel detected - device rebooted before ADB connected.")
    print("==> RETEST NEEDED")
