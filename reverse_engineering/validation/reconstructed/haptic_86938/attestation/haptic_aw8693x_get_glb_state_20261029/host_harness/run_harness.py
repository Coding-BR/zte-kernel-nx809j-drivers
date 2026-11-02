#!/usr/bin/env python3
"""Run the aw8693x_get_glb_state contract and seeded source mutants."""
from __future__ import annotations
import argparse, datetime as dt, hashlib, json, re, subprocess, tempfile
from pathlib import Path
from typing import Any

IMAGE = "nubia-sm8850-kernel-builder:latest"
FAILURE = "FAIL: return byte, register, transfer length, or call count mismatch"
MUTATIONS = {
    "mutant_register": ("0x3fU", "0x3eU"),
    "mutant_length": ("&data, 1U", "&data, 2U"),
    "mutant_initial_value": ("u8 data = 0;", "u8 data = 0xffU;"),
    "mutant_return_value": ("return data;", "return (u8)(data + 1U);"),
}

def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def main() -> int:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo-root",type=Path,required=True)
    parser.add_argument("--candidate-source",default="kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_047_aw8693x_get_glb_state.c")
    parser.add_argument("--output",type=Path)
    args=parser.parse_args()
    repo=args.repo_root.resolve(strict=True)
    source_path=(repo/args.candidate_source).resolve(strict=True); source_path.relative_to(repo)
    harness_dir=Path(__file__).resolve().parent; harness_rel=harness_dir.relative_to(repo).as_posix()
    original=source_path.read_text(encoding="utf-8"); variants={"baseline":original}
    for name,(old,new) in MUTATIONS.items():
        if old not in original: raise ValueError(f"mutation anchor missing: {name}")
        variants[name]=original.replace(old,new,1)
    image=subprocess.run(["docker","image","inspect","--format","{{.Id}}",IMAGE],check=True,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT).stdout.strip()
    output=args.output or harness_dir/"harness_result.json"
    with tempfile.TemporaryDirectory(prefix="aw8693x-glb-state-") as tmp:
        work=Path(tmp).resolve()
        for name,source in variants.items(): (work/f"{name}.c").write_text(source,encoding="utf-8")
        script="\n".join([
            "set -eu",f"cd /repo/{harness_rel}",
            "for case in baseline mutant_register mutant_length mutant_initial_value mutant_return_value; do",
            "  gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -fsanitize=address,undefined -fno-omit-frame-pointer -I include -DCANDIDATE_SOURCE=/work/$case.c aw8693x_get_glb_state_harness.c -o /work/$case",
            "done",
            "for case in baseline mutant_register mutant_length mutant_initial_value mutant_return_value; do",
            "  set +e","  output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 /work/$case 2>&1)","  status=$?","  set -e",
            "  printf 'CASE_RESULT:%s:%s\\n%s\\nCASE_END\\n' \"$case\" \"$status\" \"$output\"","done",
        ])
        docker=subprocess.run(["docker","run","--rm","--mount",f"type=bind,source={repo},target=/repo,readonly","--mount",f"type=bind,source={work},target=/work",IMAGE,"bash","-lc",script],text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
    parsed={m.group(1):{"returncode":int(m.group(2)),"output":m.group(3)} for m in re.finditer(r"CASE_RESULT:([a-z0-9_]+):(-?[0-9]+)\n(.*?)\nCASE_END",docker.stdout,re.DOTALL)}
    results:dict[str,dict[str,Any]]={}
    for name in variants:
        found=parsed.get(name); ok=bool(docker.returncode==0 and found and ((found["returncode"]==0 and found["output"].startswith("PASS:")) if name=="baseline" else (found["returncode"]!=0 and FAILURE in found["output"])))
        results[name]={"passed":ok,"observed_returncode":found["returncode"] if found else None,"output":found["output"] if found else "case output missing"}
    payload={"schema_version":"1.0","generated_utc":dt.datetime.now(dt.timezone.utc).isoformat(),"passed":all(x["passed"] for x in results.values()),"scope":"host-only wrapper contract; no kernel or physical device execution","candidate_source":source_path.relative_to(repo).as_posix(),"candidate_source_sha256":digest(source_path.read_bytes()),"harness_source_sha256":digest((harness_dir/"aw8693x_get_glb_state_harness.c").read_bytes()),"harness_runner_sha256":digest(Path(__file__).read_bytes()),"docker_image":IMAGE,"docker_image_id":image,"sanitizers":["AddressSanitizer","UndefinedBehaviorSanitizer"],"cases":results,"docker_output_tail":docker.stdout[-4000:]}
    output=output.resolve(); output.parent.mkdir(parents=True,exist_ok=True); output.write_text(json.dumps(payload,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({"passed":payload["passed"],"output":str(output)},sort_keys=True)); return 0 if payload["passed"] else 1

if __name__=="__main__": raise SystemExit(main())
