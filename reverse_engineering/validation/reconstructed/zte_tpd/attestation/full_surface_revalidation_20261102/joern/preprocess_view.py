import hashlib, json, shlex, subprocess, sys
from pathlib import Path
base=Path('/work/analysis')
view=base/'source_view'
source_root=Path('/repo/kernel_development/drivers/reconstructed/zte_tpd')
targets={'suspend_store.c','tp_wake_gesture_write.c','tpd_touch_report.c','_inline_copy_from_user.c'}
db_path=base/'compile_commands.json'
db=json.loads(db_path.read_text())
entries={Path(row['file']).name:row for row in db if Path(row['file']).name in targets}
if set(entries)!=targets:
    raise SystemExit(f'Kbuild commands missing: {sorted(targets-set(entries))}')
source_records=[]
source_files=sorted((p for p in source_root.rglob('*') if p.is_file() and p.suffix.lower() in {'.c','.h'} and not any(x in {'tests','validation','build'} for x in p.relative_to(source_root).parts)),key=lambda p:p.relative_to(source_root).as_posix())
tree=hashlib.sha256()
for path in source_files:
    rel=path.relative_to(source_root).as_posix()
    digest=hashlib.sha256(path.read_bytes().replace(b'\r\n',b'\n')).hexdigest()
    tree.update(rel.encode()); tree.update(b'\\0'); tree.update(digest.encode()); tree.update(b'\\n')
    source_records.append({'path':rel,'sha256':digest})
makefile_hash=hashlib.sha256((source_root/'Makefile').read_bytes().replace(b'\r\n',b'\n')).hexdigest()
results=[]
for name in sorted(targets):
    row=entries[name]
    args=shlex.split(row['command'])
    filtered=[]; i=0
    source_arg=row['file']
    while i<len(args):
        arg=args[i]
        if arg=='-c': i+=1; continue
        if arg=='-o': i+=2; continue
        if arg.startswith('-Wp,-MMD,'): i+=1; continue
        if arg=='-mllvm': i+=2; continue
        if arg==source_arg: i+=1; continue
        filtered.append(arg); i+=1
    rel=Path(row['file'].removeprefix('/repo/kernel_development/drivers/reconstructed/zte_tpd/'))
    target=view/rel.with_suffix('.i')
    target.parent.mkdir(parents=True,exist_ok=True)
    filtered.extend(['-E','-o',str(target),source_arg])
    proc=subprocess.run(filtered,cwd='/work/out',text=True,capture_output=True)
    if proc.returncode:
        print('FAILED',name,'rc',proc.returncode,'stderr',proc.stderr[-6000:],flush=True)
        raise SystemExit(proc.returncode)
    digest=hashlib.sha256(target.read_bytes()).hexdigest()
    rel=target.relative_to(view).with_suffix('.c').as_posix()
    source=source_root/rel
    kbuild_cmd=Path('/work/validation/zte_tpd/cycle_1')/f'.{Path(rel).stem}.o.cmd'
    result={'source':row['file'],'source_relative':rel,'source_sha256':hashlib.sha256(source.read_bytes().replace(b'\r\n',b'\n')).hexdigest(),'preprocessed':str(target),'size':target.stat().st_size,'sha256':digest,'compile_command_sha256':hashlib.sha256(row['command'].encode()).hexdigest(),'kbuild_cmd_file':str(kbuild_cmd),'kbuild_cmd_sha256':hashlib.sha256(kbuild_cmd.read_bytes()).hexdigest()}
    results.append(result); print(json.dumps(result),flush=True)
(base/'preprocessed_sources.json').write_text(json.dumps({'schema_version':'1.0','driver':'zte_tpd','canonical_source_root':str(source_root),'source_tree_sha256':tree.hexdigest(),'source_file_count':len(source_files),'makefile_sha256':makefile_hash,'compilation_database':{'path':str(db_path),'sha256':hashlib.sha256(db_path.read_bytes()).hexdigest(),'entry_count':len(db)},'commands_source':'Docker Kbuild savedcmd/source records from .cmd files','docker_snapshot_root':'/work/validation/zte_tpd/cycle_1','clang':subprocess.run(['clang','--version'],text=True,capture_output=True).stdout.splitlines()[0],'files':results},indent=2)+'\n')
