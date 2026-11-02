#!/usr/bin/env python3
"""Run the reproducible ASan/UBSan contract harness for max RW size checks."""
from __future__ import annotations
import argparse, datetime as dt, hashlib, json, subprocess
from pathlib import Path

def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1048576), b""): h.update(chunk)
    return h.hexdigest()

def invoke(command: list[str]) -> dict[str, object]:
    r = subprocess.run(command, capture_output=True, text=True, check=False)
    return {"command": command, "returncode": r.returncode, "stdout": r.stdout[-4000:], "stderr": r.stderr[-4000:]}

def main() -> int:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--output", type=Path, required=True); p.add_argument("--repetitions", type=int, default=2)
    p.add_argument("--image", default="nubia-sm8850-kernel-builder:latest"); p.add_argument("--toolchain-volume", default="nubia_sm8850_kernel_toolchains"); p.add_argument("--clang-revision", default="clang-r536225")
    a = p.parse_args()
    if a.repetitions < 2: p.error("--repetitions must be at least 2")
    repo = Path(__file__).resolve().parents[2]; drivers = repo / "kernel_development" / "drivers"
    harness = drivers / "validation/zte_tpd/host/syna_tcm_v1_check_max_rw_size_contract_test.c"; source = drivers / "reconstructed/zte_tpd/syna_tcm_v1_check_max_rw_size.c"
    root = a.output.resolve().parent / "host-build"; root.mkdir(parents=True, exist_ok=False); cycles=[]; hashes=[]
    for i in range(1, a.repetitions + 1):
        out=root/f"cycle{i}"; out.mkdir(); binary=out/"test"
        compile=invoke(["docker","run","--rm","-v",f"{drivers}:/drivers:ro","-v",f"{out}:/output","-v",f"{a.toolchain_volume}:/toolchains:ro",a.image,f"/toolchains/{a.clang_revision}/bin/clang","-std=gnu11","-O1","-Wall","-Wextra","-Werror","-fno-pie","-no-pie","-fsanitize=address,undefined","-Wl,--build-id=none","/drivers/validation/zte_tpd/host/syna_tcm_v1_check_max_rw_size_contract_test.c","-o","/output/test"])
        run={"command":[],"returncode":None,"stdout":"","stderr":""}; sha=None
        if compile["returncode"] == 0: run=invoke(["docker","run","--rm","-v",f"{out}:/output:ro",a.image,"/output/test"]); sha=digest(binary); hashes.append(sha)
        ok=compile["returncode"]==0 and run["returncode"]==0 and "PASS syna_tcm_v1_check_max_rw_size contract test (5 cases)" in str(run["stdout"])
        cycles.append({"cycle":i,"compile":compile,"run":run,"binary_sha256":sha,"passed":ok})
    ok=all(c["passed"] for c in cycles) and len(set(hashes))==1
    report={"schema_version":"1.0","generated_utc":dt.datetime.now(dt.timezone.utc).isoformat(),"driver":"zte_tpd","target":"syna_tcm_v1_check_max_rw_size","covered_functions":["syna_tcm_v1_check_max_rw_size"],"mode":"offline_contract_model_asan_ubsan","inputs":[{"path":str(harness),"sha256":digest(harness)},{"path":str(source),"sha256":digest(source)}],"cycles":cycles,"passed":ok,"status":"PASS" if ok else "FAIL","limitations":["The harness validates error and limit-selection contracts; exact AArch64, KCFI, Ghidra and Joern are separate gates."]}
    a.output.parent.mkdir(parents=True, exist_ok=True); a.output.write_text(json.dumps(report,indent=2,sort_keys=True)+"\n",encoding="utf-8"); print(json.dumps({"output":str(a.output),"passed":ok,"cycles":len(cycles)})); return 0 if ok else 1
if __name__ == "__main__": raise SystemExit(main())
