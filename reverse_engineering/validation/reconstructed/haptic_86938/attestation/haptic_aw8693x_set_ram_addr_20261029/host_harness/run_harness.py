#!/usr/bin/env python3
"""Run aw8693x_set_ram_addr contract cases and seeded source mutants."""
from __future__ import annotations
import argparse, datetime as dt, hashlib, json, re, subprocess, tempfile
from pathlib import Path
from typing import Any
IMAGE="nubia-sm8850-kernel-builder:latest"
FAILURE="FAIL: address payload, register, length, or call count mismatch"
MUTATIONS={
 "mutant_register":("0x40U","0x41U"),
 "mutant_length":("2U);","1U);"),
 "mutant_offset":("0x458U","0x45aU"),
 "mutant_byte_order":("(u16)((address >> 8) | (address << 8))","(u16)address"),
}
def digest(data:bytes)->str: return hashlib.sha256(data).hexdigest()
def main()->int:
 p=argparse.ArgumentParser(description=__doc__)
 p.add_argument("--repo-root",type=Path,required=True)
 p.add_argument("--candidate-source",default="kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_054_aw8693x_set_ram_addr.c")
 p.add_argument("--output",type=Path); args=p.parse_args()
 repo=args.repo_root.resolve(strict=True); src=(repo/args.candidate_source).resolve(strict=True); src.relative_to(repo)
 hd=Path(__file__).resolve().parent; hrel=hd.relative_to(repo).as_posix()
 original=src.read_text(encoding="utf-8"); variants={"baseline":original}
 for key,(old,new) in MUTATIONS.items():
  if old not in original: raise ValueError(f"mutation anchor missing: {key}")
  variants[key]=original.replace(old,new,1)
 image=subprocess.run(["docker","image","inspect","--format","{{.Id}}",IMAGE],check=True,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT).stdout.strip()
 output=args.output or hd/"harness_result.json"
 with tempfile.TemporaryDirectory(prefix="aw8693x-set-ram-addr-") as td:
  work=Path(td).resolve()
  for k,v in variants.items(): (work/f"{k}.c").write_text(v,encoding="utf-8")
  cases="baseline mutant_register mutant_length mutant_offset mutant_byte_order"
  script="\n".join(["set -eu",f"cd /repo/{hrel}",
   f"for case in {cases}; do gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -fsanitize=address,undefined -fno-omit-frame-pointer -I include -DCANDIDATE_SOURCE=/work/$case.c aw8693x_set_ram_addr_harness.c -o /work/$case; done",
   f"for case in {cases}; do set +e; output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 /work/$case 2>&1); status=$?; set -e; printf 'CASE_RESULT:%s:%s\\n%s\\nCASE_END\\n' \"$case\" \"$status\" \"$output\"; done"])
  proc=subprocess.run(["docker","run","--rm","--mount",f"type=bind,source={repo},target=/repo,readonly","--mount",f"type=bind,source={work},target=/work",IMAGE,"bash","-lc",script],text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
 parsed={m.group(1):{"returncode":int(m.group(2)),"output":m.group(3)} for m in re.finditer(r"CASE_RESULT:([a-z0-9_]+):(-?[0-9]+)\n(.*?)\nCASE_END",proc.stdout,re.DOTALL)}
 results:dict[str,dict[str,Any]]={}
 for k in variants:
  found=parsed.get(k); ok=bool(proc.returncode==0 and found and ((found["returncode"]==0 and found["output"].startswith("PASS:")) if k=="baseline" else (found["returncode"]!=0 and FAILURE in found["output"])))
  results[k]={"passed":ok,"observed_returncode":found["returncode"] if found else None,"output":found["output"] if found else "case output missing"}
 result={"schema_version":"1.0","generated_utc":dt.datetime.now(dt.timezone.utc).isoformat(),"passed":all(x["passed"] for x in results.values()),"scope":"host-only wrapper contract; no kernel or physical device execution","candidate_source":src.relative_to(repo).as_posix(),"candidate_source_sha256":digest(src.read_bytes()),"harness_source_sha256":digest((hd/"aw8693x_set_ram_addr_harness.c").read_bytes()),"harness_runner_sha256":digest(Path(__file__).read_bytes()),"docker_image":IMAGE,"docker_image_id":image,"sanitizers":["AddressSanitizer","UndefinedBehaviorSanitizer"],"cases":results,"docker_output_tail":proc.stdout[-4000:]}
 output=output.resolve(); output.parent.mkdir(parents=True,exist_ok=True); output.write_text(json.dumps(result,indent=2)+"\n",encoding="utf-8")
 print(json.dumps({"passed":result["passed"],"output":str(output)},sort_keys=True)); return 0 if result["passed"] else 1
if __name__=="__main__": raise SystemExit(main())
