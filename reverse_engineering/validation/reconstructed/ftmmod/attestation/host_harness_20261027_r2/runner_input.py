"""Build/run the direct FTMMOD host harness twice and reject seeded defects."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
HEADERS = ('linux/device.h', 'linux/errno.h', 'linux/io.h', 'linux/kernel.h',
           'linux/module.h', 'linux/of.h', 'linux/of_address.h', 'linux/platform_device.h',
           'linux/sysfs.h', 'linux/types.h', 'asm/barrier.h', 'asm/pgtable-prot.h',
           'soc/qcom/qseecom_scm.h')
MUTANTS = {
    'init_errno': ('return -ENODEV;', 'return -EINVAL;'),
    'show_errno': ('\t\treturn -EFAULT;', '\t\treturn -ENOMEM;'),
    'invert_store': ('(u32)(enabled != 0)', '(u32)(enabled == 0)'),
    'remove_barrier': ('dsb(sy);', '(void)0;'),
    'qsee_command': ('qcom_scm_qseecom_call(0x02000807,', 'qcom_scm_qseecom_call(0x02000808,'),
    'qsee_high_word_shift': ('((u64)(u32)ret_hi << 32)', '((u64)(u32)ret_hi << 31)'),
    'flag_store': ('ftm_sysdev_priv_data_0 = 1;', 'ftm_sysdev_priv_data_0 = 0;'),
    'cleanup_order': ('platform_driver_unregister(&ftm_driver);\n\tplatform_device_unregister(&ftm_dev);',
                      'platform_device_unregister(&ftm_dev);\n\tplatform_driver_unregister(&ftm_driver);'),
    'format_bound': ('snprintf(buf, 0x1000, "%d\\n", is_secboot_device(dev))',
                     'snprintf(buf, 0x100, "%d\\n", is_secboot_device(dev))'),
    'malformed_initial_state': ('int enabled = 0;', 'int enabled = 1;'),
    'mmio_word_offset': ('*(u32 __force *)((u8 __iomem *)ftm_sysdev_priv_data_2 + 4) =',
                         '*(u32 __force *)((u8 __iomem *)ftm_sysdev_priv_data_2 + 0) ='),
}


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def command(argv):
    r = subprocess.run(argv, capture_output=True, text=True, timeout=180)
    return {'argv': argv, 'returncode': r.returncode, 'stdout': r.stdout, 'stderr': r.stderr}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    output = args.output.resolve()
    if output.exists():
        raise SystemExit('Output must be a new directory')
    output.mkdir(parents=True)
    source = ROOT / 'kernel_development/drivers/reconstructed/ftmmod/ftmmod.c'
    source_hash = digest(source)
    text = source.read_text(encoding='utf-8')
    target_path = ROOT / 'kernel_development/config/target_kernel.json'
    target = json.loads(target_path.read_text())
    image = target['docker_image_id']
    inspected = command(['docker', 'image', 'inspect', '--format', '{{.Id}}', target['docker_image']])
    if inspected['returncode'] or inspected['stdout'].strip() != image:
        raise SystemExit('Docker image identity differs from target manifest')
    base = ['docker', 'run', '--rm', '-v', f'{output}:/work/harness',
            '-v', 'nubia_sm8850_kernel_toolchains:/work/toolchains:ro',
            '-e', 'ASAN_OPTIONS=detect_leaks=1:abort_on_error=1',
            '-e', 'UBSAN_OPTIONS=halt_on_error=1', image]
    clang = '/work/toolchains/clang-r536225/bin/clang'
    report = {
        'schema_version': '1.0', 'driver': 'ftmmod', 'promotion_authorized': False,
        'hardware': 'DEFERRED', 'source_path': str(source), 'source_sha256': source_hash,
        'target_manifest_sha256': digest(target_path), 'docker_image': image,
        'image_inspect': inspected, 'toolchain_version': command(base+[clang, '--version']),
        'toolchain_hash': command(base+['sha256sum', clang]),
        'harness_inputs': {p.name: digest(p) for p in (HERE/'harness.c', HERE/'shim.h', HERE/'run.py')},
        'baselines': [], 'mutants': [],
        'limitations': [
            'Host x86_64 test doubles do not test the AArch64 instructions, ELF ABI or KCFI.',
            'MMIO is replaced with bounded host memory; DSB SY is a trace event that observes the preceding store, not a physical barrier.',
            'The parser corpus uses libc vsscanf only for in-range decimal strings and no-conversion cases, not all Linux sscanf inputs.',
            'The platform core model covers the specified no-binding failure only, not real kernel lifetime or concurrency.',
            'QSEE, device tree and mapping calls are contractual stubs; physical behavior remains untested.',
            'Independent review is required before adopting this harness as promotion evidence.']
    }

    def build_run(name, candidate_text, repeats):
        folder = output/name; folder.mkdir()
        for n in ('harness.c', 'shim.h'): shutil.copyfile(HERE/n, folder/n)
        (folder/'candidate').mkdir()
        (folder/'candidate/ftmmod.c').write_text(candidate_text, encoding='utf-8', newline='\n')
        for n in HEADERS:
            header = folder/'include'/n; header.parent.mkdir(parents=True, exist_ok=True)
            header.write_text('#include "shim.h"\n', encoding='utf-8', newline='\n')
        # ASan's module descriptors retain input paths even with debug prefix maps.
        # Isolate each clean host directory at the identical container path.
        container = '/work/case'
        run_base = base[:-1] + ['-v', f'{folder}:{container}', base[-1]]
        compile_result = command(run_base+[clang, '-std=gnu11', '-O1', '-g', '-Wall', '-Wextra', '-Werror',
            '-Wno-unused-parameter', '-fsanitize=address,undefined', '-fno-sanitize-recover=all',
            '-fno-omit-frame-pointer', '-ffile-prefix-map='+container+'=/ftmmod_host',
            '-fdebug-prefix-map='+container+'=/ftmmod_host', '-I'+container, '-I'+container+'/include',
            container+'/harness.c', '-o', container+'/harness.bin'])
        runs = []
        if compile_result['returncode'] == 0:
            runs = [command(run_base+[container+'/harness.bin']) for _ in range(repeats)]
        binary = folder/'harness.bin'
        return {'name': name, 'source_sha256': digest(folder/'candidate/ftmmod.c'),
                'compile': compile_result, 'runs': runs,
                'binary_sha256': digest(binary) if binary.is_file() else None}

    for name in ('cycle_1', 'cycle_2'):
        result = build_run(name, text, 2); report['baselines'].append(result)
        print(name, result['compile']['returncode'], [r['returncode'] for r in result['runs']], flush=True)
        if result['compile']['returncode'] or any(r['returncode'] for r in result['runs']):
            report['passed'] = False
            (output/'report.json').write_text(json.dumps(report, indent=2)+'\n', newline='\n')
            print(result['compile']['stderr'], [r['stderr'] for r in result['runs']], flush=True)
            return 1
    for name, (old, new) in MUTANTS.items():
        if text.count(old) != 1:
            raise ValueError(f'Mutation {name} is not uniquely anchored')
        result = build_run('mutant_'+name, text.replace(old, new, 1), 1)
        result['mutation'] = {'old': old, 'new': new}
        # Compilation failure or sanitizer crash does not count as oracle detection.
        result['detected_by_oracle'] = (result['compile']['returncode'] == 0
            and len(result['runs']) == 1 and result['runs'][0]['returncode'] == 2
            and result['runs'][0]['stderr'].startswith('FAIL '))
        report['mutants'].append(result)
        print(name, result['detected_by_oracle'], flush=True)
    report['reproducible_host_binary'] = report['baselines'][0]['binary_sha256'] == report['baselines'][1]['binary_sha256']
    report['passed'] = report['reproducible_host_binary'] and all(x['detected_by_oracle'] for x in report['mutants'])
    assert digest(source) == source_hash, 'Main candidate changed during harness execution'
    (output/'report.json').write_text(json.dumps(report, indent=2)+'\n', encoding='utf-8', newline='\n')
    print(json.dumps({'passed': report['passed'], 'mutants_detected': sum(x['detected_by_oracle'] for x in report['mutants']),
                      'reproducible_host_binary': report['reproducible_host_binary']}))
    return 0 if report['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
