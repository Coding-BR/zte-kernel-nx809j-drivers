#!/usr/bin/env python3
from __future__ import annotations
import argparse, datetime as dt, hashlib, json, re, subprocess, tempfile
from pathlib import Path
from typing import Any
IMAGE = "nubia-sm8850-kernel-builder:latest"
FAILURE = "FAIL: repeat sequence calls, order, payload, mask, or status handling mismatch"
MUTATIONS = {
    "mutant_first_register": ("0x0aU", "0x0bU"),
    "mutant_length": ("data, 1U", "data, 2U"),
    "mutant_sequence_byte": ("data[0] = sequence", "data[0] = sequence + 1U"),
    "mutant_second_register": ("0x12U", "0x13U"),
    "mutant_mask": ("0xffffff0fU", "0xfffffff0U"),
    "mutant_value": ("0xf0U", "0x0fU"),
}
def digest(data: bytes) -> str: return hashlib.sha256(data).hexdigest()
def main() -> int:
    p=argparse.ArgumentParser(); p.add_argument("--repo-root",type=Path,required=True); p.add_argument("--candidate-source",default="kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_057_aw8693x_set_repeat_seq.c"); p.add_argument("--output",type=Path); a=p.parse_args()
    repo=a.repo_root.resolve(strict=True); src=(repo/a.candidate_source).resolve(strict=True); src.relative_to(repo); hd=Path(__file__).resolve().parent; hrel=hd.relative_to(repo).as_posix()
    original=src.read_text(encoding="utf-8"); variants={"baseline":original}
    for key,(old,new) in MUTATIONS.items():
        if old not in original: raise ValueError(f"mutation anchor missing: {key}")
        variants[key]=original.replace(old,new,1)
    image=subprocess.run(["docker","image","inspect","--format","{{.Id}}",IMAGE],check=True,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT).stdout.strip(); out=a.output or hd/"harness_result.json"
    with tempfile.TemporaryDirectory(prefix="aw8693x-repeat-seq-") as td:
        work=Path(td).resolve()
        for key,source in variants.items(): (work/f"{key}.c").write_text(source,encoding="utf-8")
        names=" ".join(variants)
        script="\n".join(["set -eu",f"cd /repo/{hrel}",f"for case in {names}; do gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -fsanitize=address,undefined -fno-omit-frame-pointer -I include -DCANDIDATE_SOURCE=/work/$case.c aw8693x_set_repeat_seq_harness.c -o /work/$case; done",f"for case in {names}; do set +e; output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 /work/$case 2>&1); status=$?; set -e; printf 'CASE_RESULT:%s:%s\n%s\nCASE_END\n' \"$case\" \"$status\" \"$output\"; done"])
        proc=subprocess.run(["docker","run","--rm","--mount",f"type=bind,source={repo},target=/repo,readonly","--mount",f"type=bind,source={work},target=/work",IMAGE,"bash","-lc",script],text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
    parsed={m.group(1):{"rc":int(m.group(2)),"out":m.group(3)} for m in re.finditer(r"CASE_RESULT:([a-z0-9_]+):(-?[0-9]+)\n(.*?)\nCASE_END",proc.stdout,re.DOTALL)}
    results:dict[str,dict[str,Any]]={}
    for key in variants:
        item=parsed.get(key); ok=bool(proc.returncode==0 and item and ((item["rc"]==0 and item["out"].startswith("PASS:")) if key=="baseline" else (item["rc"]!=0 and FAILURE in item["out"])))
        results[key]={"passed":ok,"observed_returncode":item["rc"] if item else None,"output":item["out"] if item else "case output missing"}
    result={"schema_version":"1.0","generated_utc":dt.datetime.now(dt.timezone.utc).isoformat(),"passed":all(x["passed"] for x in results.values()),"scope":"host-only helper-call contract; no kernel or physical device execution","candidate_source":src.relative_to(repo).as_posix(),"candidate_source_sha256":digest(src.read_bytes()),"harness_source_sha256":digest((hd/"aw8693x_set_repeat_seq_harness.c").read_bytes()),"harness_runner_sha256":digest(Path(__file__).read_bytes()),"docker_image":IMAGE,"docker_image_id":image,"sanitizers":["AddressSanitizer","UndefinedBehaviorSanitizer"],"cases":results,"docker_output_tail":proc.stdout[-4000:]}
    out=out.resolve(); out.parent.mkdir(parents=True,exist_ok=True); out.write_text(json.dumps(result,indent=2)+"\n",encoding="utf-8"); print(json.dumps({"passed":result["passed"],"output":str(out)},sort_keys=True)); return 0 if result["passed"] else 1
if __name__=="__main__": raise SystemExit(main())
