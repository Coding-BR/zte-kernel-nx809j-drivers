#!/usr/bin/env python3
import os
import pathlib
import struct
import subprocess


PAGE_SIZE = 4096
CMDLINE_SIZE = 1536
HEADER_SIZE = 1584


def align(data: bytes, size: int = PAGE_SIZE) -> bytes:
    remainder = len(data) % size
    if not remainder:
        return data
    return data + (b"\0" * (size - remainder))


def read_boot_header(path: pathlib.Path) -> dict:
    data = path.read_bytes()[:PAGE_SIZE]
    if data[:8] != b"ANDROID!":
        raise ValueError(f"{path} is not an Android boot image")
    fields = struct.unpack_from("<8s9I", data, 0)
    cmd_start = 8 + 9 * 4
    cmdline = data[cmd_start : cmd_start + CMDLINE_SIZE].split(b"\0", 1)[0]
    signature_size = struct.unpack_from("<I", data, cmd_start + CMDLINE_SIZE)[0]
    return {
        "kernel_size": fields[1],
        "ramdisk_size": fields[2],
        "os_version": fields[3],
        "header_size": fields[4],
        "reserved": fields[5:9],
        "header_version": fields[9],
        "cmdline": cmdline,
        "signature_size": signature_size,
    }


def make_boot(kernel: bytes, cmdline: bytes, output: pathlib.Path) -> None:
    if len(cmdline) > CMDLINE_SIZE:
        raise ValueError("cmdline too long")
    header = struct.pack(
        "<8s9I1536sI",
        b"ANDROID!",
        len(kernel),
        0,
        0,
        HEADER_SIZE,
        0,
        0,
        0,
        0,
        4,
        cmdline + (b"\0" * (CMDLINE_SIZE - len(cmdline))),
        0,
    )
    output.write_bytes(align(header) + align(kernel))


def run_avb(avbtool: pathlib.Path, image: pathlib.Path, partition_size: int, security_patch: str) -> None:
    subprocess.check_call(
        [
            "python3",
            str(avbtool),
            "add_hash_footer",
            "--image",
            str(image),
            "--partition_name",
            "boot",
            "--partition_size",
            str(partition_size),
            "--algorithm",
            "NONE",
            "--prop",
            "com.android.build.boot.os_version:16",
            "--prop",
            "com.android.build.boot.security_patch:" + security_patch,
        ]
    )


def main() -> None:
    root = pathlib.Path("/work/src/kernel")
    artifacts = pathlib.Path(os.environ.get("BOOT_VARIANT_OUT_DIR", "/work/artifacts/20260710-162437"))
    stock = pathlib.Path(os.environ.get("STOCK_BOOT_IMG", str(artifacts / "stock_boot_b.img")))
    kernel = root / "kernel_platform/common/arch/arm64/boot/Image"
    avbtool = root / "avbtool"
    stock_header = read_boot_header(stock)
    print("stock header:", stock_header)

    artifacts.mkdir(parents=True, exist_ok=True)
    out = artifacts / "dev_reverse_nodtb_stockcmd.img"
    make_boot(kernel.read_bytes(), stock_header["cmdline"], out)
    run_avb(avbtool, out, stock.stat().st_size, "2026-03-01")
    print("wrote", out, out.stat().st_size)
    print("new header:", read_boot_header(out))

    raw_out = artifacts / "dev_reverse_nodtb_stockcmd_raw.img"
    make_boot(kernel.read_bytes(), stock_header["cmdline"], raw_out)
    print("wrote", raw_out, raw_out.stat().st_size)
    print("raw header:", read_boot_header(raw_out))


if __name__ == "__main__":
    main()
