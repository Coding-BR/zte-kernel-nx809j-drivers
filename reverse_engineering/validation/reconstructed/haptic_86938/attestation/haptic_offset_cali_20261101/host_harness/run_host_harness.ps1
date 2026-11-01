param(
	[Parameter(Mandatory = $true)][string]$RepoRoot,
	[Parameter(Mandatory = $true)][string]$EvidenceRoot
)

$ErrorActionPreference = 'Stop'
$repo = (Resolve-Path -LiteralPath $RepoRoot).Path
$evidence = (Resolve-Path -LiteralPath $EvidenceRoot).Path
$harness = Join-Path $evidence 'host_harness'
$source = Join-Path $harness 'aw8693x_offset_cali_harness.c'
$dockerCommand = @(
	'run', '--rm',
	'-v', "${repo}:/work/repo:ro",
	'-v', "${harness}:/work/evidence",
	'-v', 'nubia_sm8850_kernel_toolchains:/work/toolchains:ro',
	'nubia-sm8850-kernel-builder:nx809j-repro',
	'bash', '-lc',
	'set -eu; C=/work/toolchains/clang-r536225/bin/clang; "$C" --version | head -n 1; "$C" -std=gnu11 -O1 -g -fno-omit-frame-pointer -fno-sanitize-recover=all -fsanitize=address,undefined -Wall -Wextra -Werror -I/work/evidence/include -o /work/evidence/aw8693x_offset_cali_harness /work/evidence/aw8693x_offset_cali_harness.c; /work/evidence/aw8693x_offset_cali_harness'
)

$output = & docker @dockerCommand 2>&1
$exitCode = $LASTEXITCODE
$outputText = ($output | Out-String).TrimEnd()
$logPath = Join-Path $evidence 'host_harness_run.log'
$reportPath = Join-Path $evidence 'host_harness_report.json'
Set-Content -LiteralPath $logPath -Value $outputText -Encoding utf8

$headerHashes = @{}
Get-ChildItem -LiteralPath (Join-Path $harness 'include') -File -Recurse | ForEach-Object {
	$relative = $_.FullName.Substring($harness.Length + 1).Replace('\', '/')
	$headerHashes[$relative] = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash.ToLower()
}
$report = [ordered]@{
	schema_version = '1.0'
	generated_utc = [DateTime]::UtcNow.ToString('o')
	status = if ($exitCode -eq 0) { 'PASS' } else { 'FAIL' }
	return_code = $exitCode
	image = 'nubia-sm8850-kernel-builder:nx809j-repro'
	toolchain = 'clang-r536225'
	sanitizers = @('address', 'undefined')
	compile_flags = @('-std=gnu11', '-O1', '-g', '-fno-omit-frame-pointer', '-fno-sanitize-recover=all', '-Wall', '-Wextra', '-Werror')
	command = 'clang -std=gnu11 -O1 -g -fno-omit-frame-pointer -fno-sanitize-recover=all -fsanitize=address,undefined -Wall -Wextra -Werror -I/work/evidence/include -o /work/evidence/aw8693x_offset_cali_harness /work/evidence/aw8693x_offset_cali_harness.c; execute harness'
	source_sha256 = (Get-FileHash -LiteralPath (Join-Path $repo 'kernel_development/drivers/reconstructed/haptic_86938/haptic_86938_fn_131_aw8693x_offset_cali.c') -Algorithm SHA256).Hash.ToLower()
	harness_sha256 = (Get-FileHash -LiteralPath $source -Algorithm SHA256).Hash.ToLower()
	stub_header_sha256 = $headerHashes
	stdout_and_stderr = $outputText
	run_log = 'host_harness_run.log'
}
$report | ConvertTo-Json -Depth 10 | Set-Content -LiteralPath $reportPath -Encoding utf8
Write-Output $outputText
Write-Output "REPORT $reportPath"
if ($exitCode -ne 0) { exit $exitCode }
