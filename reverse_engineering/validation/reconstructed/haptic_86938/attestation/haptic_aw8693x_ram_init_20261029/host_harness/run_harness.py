#!/usr/bin/env python3
from __future__ import annotations
import argparse,datetime as dt,hashlib,json,re,subprocess,tempfile
from pathlib import Path
from typing import Any
IMAGE="nubia-sm8850-kernel-builder:latest"
FAILURE="FAIL:"
MUTATIONS={
 "mutant_register":("0x45U","0x46U"),
 "mutant_mask":("0xfffffffbU","0xfffffff7U"),
 "mutant_branch":("(ram_mode & 1U) == 0U","(ram_mode & 1U) != 0U"),
 "mutant_delay":("500U, 600U","501U, 600U"),
 "mutant_set_value":"4U);"
}
def digest(b:bytes)->str:return hashlib.sha256(b).hexdigest()
def main()->int:
 p=argparse.ArgumentParser();p.add_argument("--repo-root",type=Path,required=True);p.add_argument("--candidate-source",default="kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_055_aw8693x_ram_init.c");p.add_argument("--output",type=Path);a=p.parse_args()
 repo=a.repo_root.resolve(strict=True);src=(repo/a.candidate_source).resolve(strict=True);src.relative_to(repo);hd=Path(__file__).resolve().parent;hrel=hd.relative_to(repo).as_posix()
 original=src.read_text(encoding="utf-8");variants={"baseline":original}
 for name,mut in MUTATIONS.items():
  if name=="mutant_set_value":old,new=mut,"0U);"
  else:old,new=mut
  if old not in original:raise ValueError(f"mutation anchor missing: {name}")
  variants[name]=original.replace(old,new,1)
 image=subprocess.run(["docker","image","inspect","--format","{{.Id}}",IMAGE],check=True,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT).stdout.strip();out=a.output or hd/"harness_result.json"
 with tempfile.TemporaryDirectory(prefix="aw8693x-ram-init-") as td:
  work=Path(td).resolve()
  for n,s in variants.items():(work/f"{n}.c").write_text(s,encoding="utf-8")
  names="baseline mutant_register mutant_mask mutant_branch mutant_delay mutant_set_value"
  script="\n".join(["set -eu",f"cd /repo/{hrel}",f"for case in {names}; do gcc -std=gnu11 -O1 -g -Wall -Wextra -Werror -fsanitize=address,undefined -fno-omit-frame-pointer -I include -DCANDIDATE_SOURCE=/work/$case.c aw8693x_ram_init_harness.c -o /work/$case; done",f"for case in {names}; do set +e; output=$(ASAN_OPTIONS=detect_leaks=1:halt_on_error=1 UBSAN_OPTIONS=halt_on_error=1 /work/$case 2>&1); status=$?; set -e; printf 'CASE_RESULT:%s:%s\\n%s\\nCASE_END\\n' \"$case\" \"$status\" \"$output\"; done"])
  proc=subprocess.run(["docker","run","--rm","--mount",f"type=bind,source={repo},target=/repo,readonly","--mount",f"type=bind,source={work},target=/work",IMAGE,"bash","-lc",script],text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
 parsed={m.group(1):{"rc":int(m.group(2)),"out":m.group(3)} for m in re.finditer(r"CASE_RESULT:([a-z0-9_]+):(-?[0-9]+)\n(.*?)\nCASE_END",proc.stdout,re.DOTALL)}
 results:dict[str,dict[str,Any]]={}
 for n in variants:
  f=parsed.get(n);ok=bool(proc.returncode==0 and f and ((f["rc"]==0 and f["out"].startswith("PASS:")) if n=="baseline" else (f["rc"]!=0 and FAILURE in f["out"])))
  results[n]={"passed":ok,"observed_returncode":f["rc"] if f else None,"output":f["out"] if f else "case output missing"}
 result={"schema_version":"1.0","generated_utc":dt.datetime.now(dt.timezone.utc).isoformat(),"passed":all(x["passed"] for x in results.values()),"scope":"host-only wrapper contract; no kernel or physical device execution","candidate_source":src.relative_to(repo).as_posix(),"candidate_source_sha256":digest(src.read_bytes()),"harness_source_sha256":digest((hd/"aw8693x_ram_init_harness.c").read_bytes()),"harness_runner_sha256":digest(Path(__file__).read_bytes()),"docker_image":IMAGE,"docker_image_id":image,"sanitizers":["AddressSanitizer","UndefinedBehaviorSanitizer"],"cases":results,"docker_output_tail":proc.stdout[-4000:]}
 out=out.resolve();out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(result,indent=2)+"\n",encoding="utf-8");print(json.dumps({"passed":result["passed"],"output":str(out)},sort_keys=True));return 0 if result["passed"] else 1
if __name__=="__main__":raise SystemExit(main())
